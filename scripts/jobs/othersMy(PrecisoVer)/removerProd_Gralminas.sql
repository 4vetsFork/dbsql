SET
@code = "bhvet";
SET
@nameDistro = "Royal Sul";	

SELECT * FROM core_store WHERE code = @code;

SELECT * FROM catalog_product_entity WHERE sku = 'BAY10063';

SELECT * FROM catalog_product_entity_varchar WHERE entity_id = 30558;

SELECT * FROM catalog_product_entity_int WHERE store_id = 30 AND entity_id = 30558;

SELECT * FROM core_store WHERE store_id = 30;

-- Produtos cadastrados globalmente (Apenas para consulta)
-- SELECT entity_id FROM catalog_product_entity WHERE sku IN ('ROY10472', 'ROY10409', 'ROY10406', 'ROY10156', 'ROY10418', 'ROY10171', 'ROY10160', 'ROY10134', 'ROY10422', 'ROY10412', 'ROY10016', 'ROY10100', 'ROY10034', 'ROY10260', 'ROY10365', 'ROY10391', 'ROY10293', 'ROY10014', 'ROY10019', 'ROY10286', 'ROY10011', 'ROY10300', 'ROY10420', 'ROY10326', 'ROY10419', 'ROY10335', 'ROY10439', 'ROY10380', 'ROY10018', 'ROY10453', 'ROY10282', 'ROY10399', 'ROY10394', 'ROY10395', 'ROY10396', 'ROY10431', 'ROY10429', 'ROY10428', 'ROY10430', 'ROY10402', 'ROY10403', 'ROY10408', 'ROY10400', 'ROY10401', 'ROY10233', 'ROY10384', 'ROY10451', 'ROY10392', 'ROY10393', 'ROY10416', 'AVE10000', 'ROY10005', 'ROY10007', 'ROY10015');

-- Pegar o sku dos produtos com id erp

SELECT
	cpe.sku
FROM
	catalog_product_entity AS cpe
INNER JOIN catalog_product_entity_varchar AS cpev ON
	cpev.entity_id = cpe.entity_id
AND cpev.attribute_id = 185
INNER JOIN core_store AS cs ON
	cs.store_id = cpev.store_id
AND cs.code LIKE @code
WHERE cpev.value IN (503, 510, 537, 545, 546, 566, 567, 584, 587, 601, 613, 615, 667, 692, 791, 752, 757, 939, 1004, 1025, 1026) ;

-- Produtos com registros de vendas 'Com SKU'
SELECT DISTINCT * FROM sales_flat_order_item WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code)AND product_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('ROY10472', 'ROY10409', 'ROY10406', 'ROY10156', 'ROY10418', 'ROY10171', 'ROY10160', 'ROY10134', 'ROY10422', 'ROY10412', 'ROY10016', 'ROY10100', 'ROY10034', 'ROY10260', 'ROY10365', 'ROY10391', 'ROY10293', 'ROY10014', 'ROY10019', 'ROY10286', 'ROY10011', 'ROY10300', 'ROY10420', 'ROY10326', 'ROY10419', 'ROY10335', 'ROY10439', 'ROY10380', 'ROY10018', 'ROY10453', 'ROY10282', 'ROY10399', 'ROY10394', 'ROY10395', 'ROY10396', 'ROY10431', 'ROY10429', 'ROY10428', 'ROY10430', 'ROY10402', 'ROY10403', 'ROY10408', 'ROY10400', 'ROY10401', 'ROY10233', 'ROY10384', 'ROY10451', 'ROY10392', 'ROY10393', 'ROY10416', 'AVE10000', 'ROY10005', 'ROY10007', 'ROY10015'));

-- Produtos sem registros de vendas, salvos na tabela temporária ORDER_ITEM
CREATE TEMPORARY TABLE ORDER_ITEM;
SELECT DISTINCT
	cpe.sku AS SKU
FROM
	catalog_product_website AS cpw
LEFT JOIN sales_flat_order_item AS sfoi ON
	sfoi.product_id = cpw.product_id
INNER JOIN core_store AS cs ON
	cs.store_id = sfoi.store_id
AND cs.website_id = cpw.website_id	
AND cs.code LIKE @code
INNER JOIN catalog_product_entity AS cpe ON
	cpe.sku IN ('ROY10472', 'ROY10409', 'ROY10406', 'ROY10156', 'ROY10418', 'ROY10171', 'ROY10160', 'ROY10134', 'ROY10422', 'ROY10412', 'ROY10016', 'ROY10100', 'ROY10034', 'ROY10260', 'ROY10365', 'ROY10391', 'ROY10293', 'ROY10014', 'ROY10019', 'ROY10286', 'ROY10011', 'ROY10300', 'ROY10420', 'ROY10326', 'ROY10419', 'ROY10335', 'ROY10439', 'ROY10380', 'ROY10018', 'ROY10453', 'ROY10282', 'ROY10399', 'ROY10394', 'ROY10395', 'ROY10396', 'ROY10431', 'ROY10429', 'ROY10428', 'ROY10430', 'ROY10402', 'ROY10403', 'ROY10408', 'ROY10400', 'ROY10401', 'ROY10233', 'ROY10384', 'ROY10451', 'ROY10392', 'ROY10393', 'ROY10416', 'AVE10000', 'ROY10005', 'ROY10007', 'ROY10015')
AND cpw.product_id = cpe.entity_id
WHERE sfoi.sku IS NULL;

-- Dados salvos ba tabela temporária
SELECT * FROM ORDER_ITEM;
DROP TABLE ORDER_ITEM;

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
