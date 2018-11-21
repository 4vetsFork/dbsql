SET @sku = 'nil10000';
SET @destiny = '/n/i/';
	
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 85, 0, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 85, 1, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);

INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 86, 0, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 86, 1, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);

INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 87, 0, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 87, 1, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);

INSERT INTO catalog_product_entity_media_gallery (attribute_id, entity_id, `value`) SELECT 88, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN (@sku);
-- 

SELECT * FROM catalog_product_entity_varchar WHERE entity_id IN(SELECT entity_id FROM catalog_product_entity WHERE sku = @sku) AND attribute_id IN (85, 86, 87);
	

SELECT * FROM catalog_product_entity_media_gallery WHERE entity_id IN(SELECT entity_id FROM catalog_product_entity WHERE sku = @sku);