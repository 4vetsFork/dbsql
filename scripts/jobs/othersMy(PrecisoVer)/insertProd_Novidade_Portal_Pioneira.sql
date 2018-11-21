SET
@code = 'pioneira';
SET
@att = 'id_erp';
SET
@typ = 4;

SELECT * FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (2228, 2229, 2230, 2231, 2232, 80095, 80096, 80097, 84045, 84046, 84048, 84051, 84056, 84057, 84058, 84059, 84064, 84065, 84068, 84069, 84071, 84072, 84073, 84074, 84075, 84076);

SELECT * FROM catalog_product_entity_datetime WHERE entity_id IN (SELECT entity_id FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (2228, 2229, 2230, 2231, 2232, 80095, 80096, 80097, 84045, 84046, 84048, 84051, 84056, 84057, 84058, 84059, 84064, 84065, 84068, 84069, 84071, 84072, 84073, 84074, 84075, 84076)); 

INSERT IGNORE INTO catalog_product_entity_datetime (entity_type_id, attribute_id, store_id, entity_id, `value`) SELECT 4, 93, 67, entity_id, '2017-11-09 11:46:38'  FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (2228, 2229, 2230, 2231, 2232, 80095, 80096, 80097, 84045, 84046, 84048, 84051, 84056, 84057, 84058, 84059, 84064, 84065, 84068, 84069, 84071, 84072, 84073, 84074, 84075, 84076);

INSERT IGNORE INTO catalog_product_entity_datetime (entity_type_id, attribute_id, store_id, entity_id, value) SELECT 4, 94, 67, entity_id, '2018-01-09 11:46:38'  FROM catalog_product_entity_varchar WHERE attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @att) AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND entity_type_id LIKE @typ AND value IN (2228, 2229, 2230, 2231, 2232, 80095, 80096, 80097, 84045, 84046, 84048, 84051, 84056, 84057, 84058, 84059, 84064, 84065, 84068, 84069, 84071, 84072, 84073, 84074, 84075, 84076);
