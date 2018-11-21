-- Pega o stock_id de um website
SELECT * FROM cataloginventory_stock ORDER BY stock_name;

-- Pega os produtos de uma categoria
SELECT * FROM catalog_category_product WHERE category_id = 720;

-- Pega todos os produto de um website
SELECT * FROM catalog_product_website WHERE website_id = 17;

-- 1. Definir o website
INSERT INTO catalog_product_website (product_id, website_id) SELECT product_id, 17 FROM catalog_category_product WHERE category_id = 720;

-- 2. Definir stoque (não gerenciar estoque)
INSERT IGNORE INTO cataloginventory_stock_item
(stock_id, qty, min_qty, use_config_min_qty, is_qty_decimal, backorders, use_config_backorders, min_sale_qty, use_config_min_sale_qty, max_sale_qty, use_config_max_sale_qty, is_in_stock, low_stock_date, notify_stock_qty, use_config_notify_stock_qty, manage_stock, use_config_manage_stock, stock_status_changed_auto, use_config_qty_increments, qty_increments, use_config_enable_qty_inc, enable_qty_increments, is_decimal_divided, product_id)
SELECT 16, 0, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 0, 0, 1, 0.0000, 1, 0, 0, product_id FROM catalog_product_website WHERE website_id = 17;


-- 3. Define preço do produto
SELECT * FROM catalog_product_entity_decimal WHERE attribute_id = 75 AND store_id = 28;
SELECT 4, 75, 28, product_id, 10.10 FROM catalog_product_website WHERE website_id = 17;
INSERT INTO catalog_product_entity_decimal (entity_type_id, attribute_id, store_id, entity_id, value) SELECT 4, 75, 28, product_id, 10.10 FROM catalog_product_website WHERE website_id = 17;

-- 4. Define a visibilidade
SELECT * FROM eav_attribute WHERE entity_type_id = 4;
INSERT INTO catalog_product_entity_int (entity_type_id, attribute_id, store_id, entity_id, value) SELECT 4, 102, 28, product_id, 4 FROM catalog_product_website WHERE website_id = 17;

-- 5. Definir o status
SELECT * FROM eav_entity_type;
SELECT * FROM eav_attribute WHERE entity_type_id = 4;
ou melh

UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id = 21528378 AND attribute_id = 102;
UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id = 21528379 AND attribute_id = 102;
UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id = 21528380 AND attribute_id = 102;
UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id = 21528381 AND attribute_id = 102;
UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id = 21528384 AND attribute_id = 102;
UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id = 21528385 AND attribute_id = 102;


SELECT * FROM catalog_product_entity WHERE sku in ('PRE10377', 'PRE10378', 'PRE10379', 'PRE10380', 'PRE10381', 'PRE10382');


INSERT INTO catalog_product_website (product_id, website_id) VALUES (21528385, 2);

SELECT * FROM catalog_product_website WHERE website_id = 2 AND product_id = 21528385;

SELECT entity_id FROM catalog_product_entity_varchar WHERE attribute_id = 185 AND store_id = 2;




SELECT * FROM catalog_product_entity_varchar WHERE attribute_id IN (97, 98) AND store_id = 2 AND entity_id =  19556918;

SELECT * FROM eav_attribute WHERE attribute_code LIKE '%url%';