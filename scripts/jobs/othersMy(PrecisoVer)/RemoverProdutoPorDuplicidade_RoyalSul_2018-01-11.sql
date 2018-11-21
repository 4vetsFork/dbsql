SET
@code = "royalsul";
SET
@nameDistro = "Royal Sul";	

-- Produtos salvos na tabela temporária ORDER_ITEM
CREATE TEMPORARY TABLE ORDER_ITEM
SELECT DISTINCT
	cpe.sku AS SKU
FROM
	catalog_product_website AS cpw
LEFT JOIN sales_flat_order_item AS sfoi ON
	sfoi.product_id = cpw.product_id
AND	sfoi.store_id = 53
INNER JOIN catalog_product_entity AS cpe ON
	cpe.sku IN ('ROY10472', 'ROY10409', 'ROY10406', 'ROY10156', 'ROY10418', 'ROY10171', 'ROY10160', 'ROY10134', 'ROY10422', 'ROY10412', 'ROY10016', 'ROY10100', 'ROY10034', 'ROY10260', 'ROY10365', 'ROY10391', 'ROY10293', 'ROY10014', 'ROY10019', 'ROY10286', 'ROY10011', 'ROY10300', 'ROY10420', 'ROY10326', 'ROY10419', 'ROY10335', 'ROY10439', 'ROY10380', 'ROY10018', 'ROY10453', 'ROY10282', 'ROY10399', 'ROY10394', 'ROY10395', 'ROY10396', 'ROY10431', 'ROY10429', 'ROY10428', 'ROY10430', 'ROY10402', 'ROY10403', 'ROY10408', 'ROY10400', 'ROY10401', 'ROY10233', 'ROY10384', 'ROY10451', 'ROY10392', 'ROY10393', 'ROY10416', 'AVE10000', 'ROY10005', 'ROY10007', 'ROY10015')
AND cpw.product_id = cpe.entity_id
AND cpw.website_id = 41;

-- Dados salvos ba tabela temporária
SELECT * FROM ORDER_ITEM;

-- Estoque dos produtos
DELETE FROM cataloginventory_stock_item WHERE stock_id IN (SELECT stock_id FROM cataloginventory_stock WHERE stock_name LIKE @nameDistro) AND product_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- Status e visibilidades dos produtos
DELETE FROM catalog_product_entity_int WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- Preços dos produtos
DELETE FROM catalog_product_entity_decimal WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

-- Grupos de preços dos produtos
DELETE FROM catalog_product_entity_group_price WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));
	
-- Dados iderp, nome ... dos produtos
DELETE FROM catalog_product_entity_varchar WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN (SELECT SKU FROM ORDER_ITEM));

--  Produtos vínculados ao website
DELETE FROM catalog_product_website WHERE website_id IN(SELECT website_id FROM core_store WHERE code LIKE @code) AND product_id IN(SELECT entity_id FROM catalog_product_entity WHERE  sku IN (SELECT SKU FROM ORDER_ITEM));

DROP TABLE ORDER_ITEM;

-- by Danilo
