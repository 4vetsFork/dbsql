SELECT * FROM core_store;
SELECT * FROM cataloginventory_stock;

-- Apagar Informaçoes do Produtos e Removelo do Website
-- Estoque
SELECT * FROM cataloginventory_stock_item WHERE stock_id = 48 AND product_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM cataloginventory_stock_item WHERE stock_id = 48 AND product_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));

-- Status e visibilidades dos produtos
SELECT * FROM catalog_product_entity_int WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM catalog_product_entity_int WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));

-- Preços dos produtos
SELECT * FROM catalog_product_entity_decimal WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM catalog_product_entity_decimal WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));

-- Data de promoção dos produtos
SELECT * FROM catalog_product_entity_datetime WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM catalog_product_entity_datetime WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));

-- Grupos de preços dos produtos
SELECT * FROM catalog_product_entity_group_price WHERE website_id = 51 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM catalog_product_entity_group_price WHERE website_id = 51 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));

-- Dados iderp, nome ... dos produtos
SELECT * FROM catalog_product_entity_varchar WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM catalog_product_entity_varchar WHERE store_id = 62 AND entity_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));

--  Produtos vínculados ao website
SELECT * FROM catalog_product_website WHERE website_id = 51 AND product_id IN (SELECT entity_id FROM catalog_product_entity WHERE sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));
DELETE FROM catalog_product_website WHERE website_id = 51 AND product_id IN(SELECT entity_id FROM catalog_product_entity WHERE  sku IN ('INT10014','INT10009','INT10006','INT10020','BRI10000'));