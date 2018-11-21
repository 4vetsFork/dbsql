SET @sku = 'PYP10037';
SET @destiny = 'Pethy/';
SET @code = 'linavet';

	
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 85, 0, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 85, 1, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');

INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 86, 0, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 86, 1, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');

INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 87, 0, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');
INSERT IGNORE INTO catalog_product_entity_varchar (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 87, 1, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');

INSERT IGNORE INTO catalog_product_entity_media_gallery (attribute_id, entity_id, `value`) SELECT 88, entity_id, concat(@destiny, sku, '.jpg') FROM catalog_product_entity WHERE SKU IN ('PYP10037');
-- 
SELECT
	*
FROM
	catalog_product_entity_varchar
WHERE
	entity_id IN(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		WHERE
			sku IN(
				'PYP10037'
			)
	) AND attribute_id IN (85, 86, 87);

SELECT
	*
FROM
	catalog_product_entity_media_gallery
WHERE
	entity_id IN(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		WHERE
			sku IN(
				'PYP10037'
			)
	);
-- 
-- SELECT * FROM catalog_product_entity WHERE sku = @sku;
-- 
-- SELECT
-- 	cpev.*
-- FROM
-- 	catalog_product_entity AS cpe
-- INNER JOIN catalog_product_entity_varchar AS cpev ON
-- 	cpev.entity_id = cpe.entity_id
-- 	WHERE cpe.sku = @sku
-- 	AND cpev.value LIKE '/%';
-- 
-- SELECT
-- 	cpemg.*
-- FROM-
-- 	catalog_product_entity AS cpe
-- INNER JOIN catalog_product_entity_media_gallery AS cpemg ON
-- 	cpemg.entity_id = cpe.entity_id
-- WHERE
-- 	cpe.sku = @sku
-- 	AND cpemg.value LIKE '/%';
