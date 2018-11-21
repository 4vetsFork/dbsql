SET
@code = 'vetss';
SET
@att = 'id_erp';
SET
@typ = 4;

SELECT * FROM core_store WHERE code LIKE @code;

SELECT * FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (1098, 6076, 72111, 72112, 72113, 72114, 72115, 72116, 72117, 72118);

DELETE FROM catalog_product_entity_datetime WHERE entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (1098, 6076, 72111, 72112, 72113, 72114, 72115, 72116, 72117, 72118)); 

INSERT IGNORE INTO catalog_product_entity_datetime (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 93, 28, entity_id, '2017-11-09 11:46:38'  FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (1098, 6076, 72111, 72112, 72113, 72114, 72115, 72116, 72117, 72118);

INSERT IGNORE INTO catalog_product_entity_datetime (entity_type_id, attribute_id, store_id, entity_id, value) SELECT 4, 94, 28, entity_id, '2018-01-09 11:46:38'  FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (1098, 6076, 72111, 72112, 72113, 72114, 72115, 72116, 72117, 72118);
