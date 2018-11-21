SET
@code = 'megavet';
SET
@atb = 'id_erp';

SELECT entity_id from catalog_product_entity WHERE sku IN ("LAB10024", "ORG10109", "ORG10108", "ORG10105", "ORG10111");

SELECT * FROM catalog_product_entity_varchar WHERE entity_type_id = 4 AND store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code) AND attribute_id IN (SELECT attribute_id FROM eav_attribute WHERE attribute_code LIKE @atb) AND entity_id IN(SELECT entity_id from catalog_product_entity WHERE sku IN ("LAB10024", "ORG10109", "ORG10108", "ORG10105", "ORG10111"));

UPDATE catalog_product_entity_varchar SET value='002551' WHERE entity_type_id =4 AND attribute_id = 185 AND store_id = 76 AND entity_id IN (SELECT entity_id from catalog_product_entity WHERE sku IN ("LAB10024"));
UPDATE catalog_product_entity_varchar SET value='002557' WHERE entity_type_id =4 AND attribute_id = 185 AND store_id = 76 AND entity_id IN (SELECT entity_id from catalog_product_entity WHERE sku IN ("ORG10109"));
UPDATE catalog_product_entity_varchar SET value='002558' WHERE entity_type_id =4 AND attribute_id = 185 AND store_id = 76 AND entity_id IN (SELECT entity_id from catalog_product_entity WHERE sku IN ("ORG10108"));
UPDATE catalog_product_entity_varchar SET value='002559' WHERE entity_type_id =4 AND attribute_id = 185 AND store_id = 76 AND entity_id IN (SELECT entity_id from catalog_product_entity WHERE sku IN ("ORG10105"));
UPDATE catalog_product_entity_varchar SET value='002563' WHERE entity_type_id =4 AND attribute_id = 185 AND store_id = 76 AND entity_id IN (SELECT entity_id from catalog_product_entity WHERE sku IN ("ORG10111"));
