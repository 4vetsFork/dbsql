-- Informar o código e nome da Distro
SET
@code = "pioneira";
SET
@nameDistro = "Pioneira";
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
		SELECT
			cpe.sku
		FROM
			catalog_product_entity AS cpe
		INNER JOIN core_store AS cs ON
			cs.code LIKE @code
		INNER JOIN catalog_product_entity_varchar AS cpev ON
			cpev.entity_id = cpe.entity_id
			AND cpev.store_id = cs.store_id
			AND cpev.attribute_id = 185
		WHERE
			cpev.value IN(
			'15008', '15009', '15010', '15011', '15012', '15013', '15014', '14012', '84038', '84043', '84060', '84062', '84066', '84155', '84156', '84161', '84162', '84166', '84167', '84169', '84170', '84174', '84175', '84182', '84183', '84187', '84188', '84191', '84194', '84198', '84201', '84205', '84209', '84213', '84216', '84217', '84241', '84242', '84243', '84244', '80076', '80036', '80061', '80072', '80037', '2019', '2035', '2077', '2083', '2107', '2096', '2011', '2065', '2224', '2173', '2069', '2036', '2074', '2075', '2123', '2084', '2002', '84202', '2170', '2006', '2023', '2082', '2140', '84008', '84014', '2022', '2012', '2092', '84199', '84237', '64026', '84195', '80065', '84192', '84001', '2068', '2001', '2058', '2081', '2174', '2183', '2216', '84063', '2177', '2076', '84061', '84047', '2125', '2179', '2178', '2195', '84067', '84070', '84041', '84044', '2153', '2215', '2104', '84050', '84053', '2010', '84220', '84225', '84231', '80074', '2175', '2115', '2017', '84030', '2063', '2071', '84239', '2198', '84029', '84035', '2156', '84004', '84009', '84232', '2041', '2034', '84176', '84171', '84002', '84018', '84016', '2197', '84168', '84157', '84163', '84179', '2114', '2088', '84221', '84226', '2067', '84031', '2201', '64025', '2031', '84196', '2105', '84177', '84172', '84214', '84203', '84207', '84211', '84193', '2066', '84158', '84164', '84233', '84040', '84064', '84055', '84068', '84071', '19003', '19006', '19004', '19007', '19002', '19005', '19008', '19024', '84065', '84046', '84048', '84032', '84222', '84228', '84069', '84072', '84010', '14006', '84042', '84045', '2052', '84052', '84051', '2042', '84181', '84034', '84036', '84003', '84054', '84236', '84049', '84178', '84173', '84197', '84200', '84159', '84165', '84160', '84022', '84020', '84011', '84012', '84019', '84017', '84005', '84007', '84204', '84208', '84212', '84215', '2111'
		)
	);

SELECT sku FROM SKU;

-- Verificar os pedidos, com o entity do produto
-- SELECT * FROM catalog_product_website WHERE product_id IN(SELECT entity_id FROM catalog_product_entity WHERE  sku IN (SELECT SKU FROM SKU));
-- SELECT * FROM catalog_product_entity_varchar WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT sku FROM catalog_product_entity WHERE sku = 'DVL10079'));
-- SELECT * FROM sales_flat_order_item WHERE product_id = 15080802;

-- Produtos com registros de vendas
CREATE TEMPORARY TABLE ORDER_ITEM_1
SELECT DISTINCT
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

-- Cria uma tabela temporária somente com o entity-id do produto
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

-- Atualizar idErp com o código temporário de remoção da distribuidora
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
