-- Informar o código e nome da Distro
SET
@code = 'vetss';
SET
@nameDistro = 'Vetss';
SET
@codeRemo = "-Removido";

-- Informar os Sku's dos produtos
CREATE TEMPORARY TABLE SKU
SELECT
	sku
FROM
	catalog_product_entity
WHERE
	sku IN(
		'INT10009'
	);
	
-- Informar os id's erp's, quando não tiver os sku's dos produtos

--CREATE TEMPORARY TABLE SKU
--SELECT
--	sku
--FROM
--	catalog_product_entity
--WHERE
--	sku IN(
--		SELECT
--			cpe.sku
--		FROM
--			catalog_product_entity AS cpe
--		INNER JOIN core_store AS cs ON
--			cs.code LIKE @code
--		INNER JOIN catalog_product_entity_varchar AS cpev ON
--			cpev.entity_id = cpe.entity_id
--			AND cpev.store_id = cs.store_id
--			AND cpev.attribute_id = 185
--		WHERE
--			cpev.value IN(
--			'iderp'
--		)
--	);

SELECT sku FROM SKU;

-- Verificar os pedidos, com o entity do produto
-- SELECT * FROM catalog_product_website WHERE product_id IN(SELECT entity_id FROM catalog_product_entity WHERE  sku IN (SELECT SKU FROM SKU));
-- SELECT * FROM catalog_product_entity_varchar WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT sku FROM catalog_product_entity WHERE sku = 'DVL10079'));
-- SELECT * FROM sales_flat_order_item WHERE product_id = 15080802;

-- Produtos com registros de vendas
CREATE TEMPORARY TABLE ORDER_ITEM_1
SELECT
	sfoi.sku AS SKU
FROM
	catalog_product_website AS cpw 
INNER JOIN core_store AS cs ON
	cs.code LIKE @code
LEFT JOIN sales_flat_order_item AS sfoi ON
	sfoi.product_id = cpw.product_id
AND	sfoi.store_id = cs.store_id
INNER JOIN catalog_product_entity AS cpe ON
	cpe.sku IN (SELECT sku FROM SKU)
AND cpw.product_id = cpe.entity_id
AND cpw.website_id = cs.website_id
WHERE sfoi.sku IS NOT NULL;

-- Dados salvos na tabela temporária para desabilitar os produtos com estoque de venda
SELECT * FROM ORDER_ITEM_1;

-- Cria uma tabela temporária somente com o entity_id do produto
CREATE TEMPORARY TABLE ENTITY
SELECT
	entity_id
FROM
	catalog_product_entity
WHERE 
	sku IN (
		SELECT sku FROM ORDER_ITEM_1
	);

SELECT * FROM ENTITY;
	
-- Desabilitar os produtos com registro de vendas
UPDATE 
	catalog_product_entity_int AS cpei
INNER JOIN core_store AS cs 
	ON cs.code LIKE @code
INNER JOIN catalog_product_entity_varchar AS cpev ON 
	cpev.entity_id = cpei.entity_id
AND cpei.attribute_id = 102
INNER JOIN catalog_product_entity_int AS cpei1 ON
	cpev.entity_id = cpei1.entity_id
AND cpei1.attribute_id = 96
AND cpei1.entity_type_id = cpei.entity_type_id
AND cpei1.store_id = cpei.store_id
SET cpei.value = 1, cpei1.value = 2
WHERE cpei1.entity_type_id = 4 AND cpei.store_id = cs.store_id AND cpev.entity_id IN (SELECT entity_id FROM ENTITY);

SELECT * FROM catalog_product_entity_int WHERE store_id = 67 AND entity_id IN (SELECT entity_id FROM ENTITY); 

-- Atualizar idErp dos produtos com registro de vendas
UPDATE
	catalog_product_entity_varchar AS cpev
INNER JOIN core_store AS cs ON
	cs.code LIKE @code
INNER JOIN catalog_product_entity AS cpe ON
	cpev.entity_id = cpe.entity_id
AND cpev.store_id = cs.store_id
AND cpev.attribute_id = 185
AND cpev.entity_type_id = 4
SET cpev.value = concat(cpev.value,@codeRemo)
WHERE cpe.sku IN (SELECT SKU FROM ORDER_ITEM_1);

--  Verificar a atualização do iderp com o código de remoção
SELECT
	cpev.*
FROM
	catalog_product_entity AS cpe
INNER JOIN core_store AS cs ON
	cs.code LIKE @code
INNER JOIN catalog_product_entity_varchar AS cpev ON
	cpev.entity_id = cpe.entity_id
	AND cpev.store_id = cs.store_id
	AND cpev.attribute_id = 185
WHERE
	cpev.entity_id IN(
		SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT sku FROM SKU)
	);

-- Produtos sem registros de vendas, salvos na tabela temporária ORDER_ITEM
CREATE TEMPORARY TABLE ORDER_ITEM
SELECT DISTINCT
	cpe.sku AS SKU
FROM
	catalog_product_website AS cpw 
INNER JOIN core_store AS cs ON
	cs.code LIKE @code
LEFT JOIN sales_flat_order_item AS sfoi ON
	sfoi.product_id = cpw.product_id
AND	sfoi.store_id = cs.store_id
INNER JOIN catalog_product_entity AS cpe ON
	cpe.sku IN (SELECT sku FROM SKU)
AND cpw.product_id = cpe.entity_id
AND cpw.website_id = cs.website_id
WHERE sfoi.sku IS NULL;

-- Dados salvos na tabela temporária, para remover os produtos da distribuidora, que não tenham estoque de venda
SELECT * FROM ORDER_ITEM;

-- Deletar todos os produtos, quando não existem em outra distribuidora.
-- DELETE FROM catalog_product_entity WHERE sku IN (SELECT sku FROM ORDER_ITEM);

-- Estoque dos produtos
DELETE FROM cataloginventory_stock_item WHERE stock_id IN (SELECT stock_id FROM cataloginventory_stock WHERE stock_name LIKE @nameDistro) AND product_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- Status e visibilidades dos produtos
DELETE FROM catalog_product_entity_int WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- Preços dos produtos
DELETE FROM catalog_product_entity_decimal WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- 
DELETE FROM catalog_product_entity_datetime WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- 
DELETE FROM catalog_product_entity_gallery WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- Grupos de preços dos produtos
DELETE FROM catalog_product_entity_group_price WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));
	
-- Dados iderp, nome ... dos produtos
DELETE FROM catalog_product_entity_varchar WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

--  Produtos vínculados ao website
DELETE FROM catalog_product_website WHERE website_id IN(SELECT website_id FROM core_store WHERE code LIKE @code) AND product_id IN(SELECT entity_id FROM catalog_product_entity WHERE  sku IN (SELECT SKU FROM ORDER_ITEM));

-- Remover tabelas temporárias 
DROP TABLE ORDER_ITEM;
DROP TABLE ORDER_ITEM_1;
DROP TABLE SKU;
