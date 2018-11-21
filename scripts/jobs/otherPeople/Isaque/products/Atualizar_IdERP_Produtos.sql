-- Verificar Informaçoes
SELECT cpe.sku,cpev.value FROM catalog_product_entity AS cpe 
INNER JOIN catalog_product_entity_varchar AS cpev ON cpe.entity_id = cpev.entity_id AND cpev.attribute_id = 185 
WHERE cpe.sku = 'INT10011' AND cpev.store_id IN (38,39,40);

-- Atuliazar Iderp
UPDATE catalog_product_entity_varchar AS cpev 
INNER JOIN catalog_product_entity AS cpe ON cpe.entity_id = cpev.entity_id AND cpev.attribute_id = 185 
SET cpev.value = '131110'
WHERE cpe.sku = 'INT10011' AND cpev.store_id IN (38,39,40);