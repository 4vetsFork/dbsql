--  Clientes
SELECT
	ce.email,
	cev1.value AS id_erp,
	cev.value AS codigo_integra_rep,
	cev2.value AS tipo_pessoa
FROM
	customer_entity AS ce
INNER JOIN customer_entity_varchar AS cev ON
	ce.entity_id = cev.entity_id AND cev.attribute_id = 148
INNER JOIN customer_entity_varchar AS cev1 ON
	ce.entity_id = cev1.entity_id AND cev1.attribute_id = 183
INNER JOIN customer_entity_varchar AS cev2 ON
	ce.entity_id = cev2.entity_id AND cev2.attribute_id = 133
WHERE
	ce.website_id = 27 AND
	cev2.value != 'RC';

	
	SELECT * FROM core_store WHERE website_id = 27;
	
-- 	Representantes
SELECT
	fs.id AS codigo_integra_rep,
	fs.name AS Representante,
	fs.id_erp AS codigo_rep,
	ccev.value AS categoria
FROM
	catalog_category_entity_int AS ccei
LEFT JOIN fvets_salesrep_category AS fscc ON
	ccei.entity_id = fscc.category_id
INNER JOIN fvets_salesrep AS fs ON
	fs.id = fscc.salesrep_id
INNER JOIN catalog_category_entity_varchar AS ccev ON
	ccev.entity_id = fscc.category_id
	AND ccev.attribute_id = 41
WHERE
	ccei.attribute_id = 42
	AND ccei.value = 1
	AND ccei.store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			website_id = 27
	);