SET
@code = "davol";
SET
@nameDistro = "Davol";

DELETE FROM sales_flat_order_item WHERE store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND product_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));

DELETE FROM cataloginventory_stock_item WHERE stock_id IN( SELECT stock_id FROM cataloginventory_stock WHERE stock_name LIKE @nameDistro) and product_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));

DELETE FROM catalog_product_entity_int WHERE store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) and entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));

DELETE FROM catalog_product_entity_decimal WHERE store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) and entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));

DELETE FROM catalog_product_entity_datetime WHERE store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) and entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));

DELETE FROM catalog_product_entity_gallery WHERE store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) and entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));

DELETE FROM catalog_product_entity_group_price WHERE website_id IN( SELECT website_id FROM core_store WHERE code LIKE @code) and entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));
	
DELETE FROM catalog_product_entity_varchar WHERE store_id IN(	SELECT store_id FROM core_store WHERE code LIKE @code ) and entity_id IN(11815057, 11815058, 11815059, 11815060, 11815061);

DELETE FROM catalog_product_website WHERE website_id IN( SELECT website_id FROM core_store WHERE code LIKE @code) AND product_id IN(SELECT entity_id FROM catalog_product_entity_varchar WHERE store_id IN( SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id = 185 AND value IN (1000005, 1000003, 1000002, 1000010, 1000004, 1000004));


