DELETE
FROM
	catalog_product_website
WHERE
	website_id = 16
	AND product_id in(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		WHERE
			sku in(
				'MON10000',
				'MON10001',
				'MON10002',
				'MON10003',
				'MON10004',
				'MON10005',
				'MON10006',
				'MON10007'
			)
	);
	

SELECT * FROM core_website WHERE code = "compet"; -- 16
	
	