SELECT * FROM catalog_product_entity WHERE sku = '7PE10005';

SELECT * FROM catalog_product_entity_varchar WHERE entity_id = 19556918;

SELECT * FROM catalog_product_entity_media_gallery WHERE entity_id = 19556918;

SELECT * FROM catalog_product_entity_int WHERE entity_id = 19556918;


SELECT * FROM catalog_product_website WHERE product_id = 19556918;

SELECT * FROM core_store WHERE code LIKE '%farpet%';


SET
@entity = 19556918,
@iderp = 2183

INSERT INTO catalog_product_entity_int (entity_type_id, attribute_id, store_id, entity_id, value)
VALUES (4, 96, 47, @entity, 1);

INSERT INTO catalog_product_entity_int (entity_type_id, attribute_id, store_id, entity_id, value)
VALUES (4, 102, 47, @entity, 4);

UPDATE catalog_product_entity_varchar
SET value = @iderp
WHERE entity_id = @entity AND store_id = 47;