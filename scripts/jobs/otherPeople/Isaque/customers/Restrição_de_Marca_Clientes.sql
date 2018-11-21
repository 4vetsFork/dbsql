SET
@code = 'royalsul';

  -- Clientes CPF
 INSERT INTO customer_entity_varchar(entity_type_id,attribute_id,entity_id,value) 
 SELECT	1,215,ce.entity_id, '1880,1462,1600,979,1875,991'	
 FROM customer_entity AS ce 
 INNER JOIN customer_entity_varchar AS cev ON cev.entity_id = ce.entity_id AND cev.attribute_id = 133
 INNER JOIN core_store AS cs ON	cs.website_id = ce.website_id AND cs.code LIKE @code 
 WHERE cev.value = 'PF'AND ce.entity_id NOT IN (890635,860592);
 
-- Consultar Restrição dos clientes	
 SELECT * FROM customer_entity_varchar 
 WHERE attribute_id = 215 AND entity_id IN(SELECT ce.entity_id FROM customer_entity AS ce
 INNER JOIN customer_entity_varchar AS cev ON cev.entity_id = ce.entity_id AND cev.attribute_id = 183 
 INNER JOIN core_store AS cs ON cs.website_id = ce.website_id AND cs.code LIKE @code);
 

