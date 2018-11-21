SELECT * FROM core_store;

SET @code = 'royalsul%';
SET @codRest = 40;

-- Grupo de restrição existente da distribuidora
SELECT * FROM fvets_catalogrestrictiongroup_entity WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code);

-- Produtos do grupo de restrição
SELECT * FROM fvets_catalogrestrictiongroup_entity_product WHERE catalogrestrictiongroup_id LIKE @codRest;

-- Setar os produtos no grupo de restrição
INSERT INTO fvets_catalogrestrictiongroup_entity_product(catalogrestrictiongroup_id, product_id, `position`) 
SELECT @codRest, entity_id,	0 FROM catalog_product_website AS cpw
INNER JOIN catalog_product_entity AS cpe ON cpw.product_id = cpe.entity_id
WHERE cpw.website_id = 41 And cpe.sku IS NOT NULL AND cpe.sku LIKE '%ROY%' AND cpe.entity_id NOT IN ('22530','25816','22545','22560','22580','22629','22649','22664','22665','22671','22696','22733','22747','22753','22765','22766','22768','22772','29173','22813','22818','22820','22823','22827','22839','22896','22898','10504642','10603870','10603865','10603863','10603925','11770141','11770142','11770146','14884371');

-- Clientes do grupo de restrição
SELECT fcec.catalogrestrictiongroup_id,cev.value,cev.entity_id FROM fvets_catalogrestrictiongroup_entity_customer AS fcec INNER JOIN customer_entity_varchar As cev ON fcec.customer_id = cev.entity_id And cev.attribute_id = 183
WHERE fcec.catalogrestrictiongroup_id LIKE @codRest;

-- Setar os clientes no grupo de restrição
INSERT INTO fvets_catalogrestrictiongroup_entity_customer(catalogrestrictiongroup_id,customer_id,`position`) 
SELECT@codRest, entity_id, 0 FROM customer_entity_varchar 
WHERE attribute_id = 133 AND entity_id IN(SELECT entity_id FROM customer_entity WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code))
AND value = 'PF' AND entity_id NOT IN (890635,860592);
