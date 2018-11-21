SELECT * FROM core_store ;

SET @code = 'royalsul%';
SET @codRest = 34;

-- Grupo de restrição existente da distribuidora
SELECT * FROM fvets_catalogrestrictiongroup_entity WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code);

-- Produtos do grupo de restrição
SELECT * FROM fvets_catalogrestrictiongroup_entity_product WHERE catalogrestrictiongroup_id LIKE @codRest;

-- Deletar Base antiga de produtos
DELETE FROM fvets_catalogrestrictiongroup_entity_product WHERE catalogrestrictiongroup_id LIKE @codRest;

-- Setar os produtos no grupo de restrição
INSERT INTO fvets_catalogrestrictiongroup_entity_product(catalogrestrictiongroup_id, product_id, `position`) 
SELECT @codRest, entity_id,	0 FROM catalog_product_entity WHERE sku 
IN('ROY10325','ROY10500','ROY10237','ROY10044','ROY10256','ROY10272','ROY10298','ROY10155','ROY10231','ROY10550','ROY10148','ROY10027','ROY10549','ROY10483','ROY10576','ROY10133','ROY10488','ROY10490','ROY10180','ROY10217','ROY10249','ROY10252','ROY10305','ROY10303','ROY10312','ROY10383');

-- Clientes do grupo de restrição
SELECT fcec.catalogrestrictiongroup_id,cev.value FROM fvets_catalogrestrictiongroup_entity_customer AS fcec INNER JOIN customer_entity_varchar As cev ON fcec.customer_id = cev.entity_id And cev.attribute_id = 183
WHERE fcec.catalogrestrictiongroup_id LIKE @codRest;

-- Deletar Base antiga de clientes
DELETE FROM fvets_catalogrestrictiongroup_entity_customer WHERE catalogrestrictiongroup_id LIKE @codRest;

-- Setar os clientes no grupo de restrição
INSERT INTO fvets_catalogrestrictiongroup_entity_customer(catalogrestrictiongroup_id,customer_id,`position`) 
SELECT@codRest, entity_id, 0 FROM customer_entity_varchar 
WHERE attribute_id = 133 AND entity_id IN(SELECT entity_id FROM customer_entity WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code))
AND value = 'PJ';











