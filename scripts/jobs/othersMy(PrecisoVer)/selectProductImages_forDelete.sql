

SELECT
	*
FROM
	catalog_product_entity_varchar
WHERE
	entity_id IN(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		WHERE
			SKU IN(
				'IDE10156', 'IDE10012', 'IDE10009', 'IDE10008'
			)
	) AND value LIKE '/%';



SELECT
	*
FROM
	catalog_product_entity_media_gallery
WHERE
	entity_id IN(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		WHERE
			SKU IN(
				'IDE10156', 'IDE10012', 'IDE10009', 'IDE10008'
			)
	)AND value LIKE '/%';
