DELETE
FROM
	catalog_category_product
WHERE
	category_id in(
		1221, -- categoria q será retirado o produto
		1222,
		1223
	)
	AND product_id in(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		where
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
	
	SELECT *  FROM catalog_product_entity where sku = "MON10000";