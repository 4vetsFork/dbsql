SELECT *
FROM
	catalog_category_product
WHERE
	category_id in(
		1625, 1626, 1629
	)
	AND product_id in(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		where
			sku in(
				'EMP10000'
			)
	);

	SELECT * FROM core_store WHERE code = 'farpet';

SELECT * FROM catalog_category_product WHERE category_id = 1625;

SELECT * FROM catalog_category_product WHERE product_id = 19411;

SELECT * FROM catalog_category_entity WHERE entity_id IN (SELECT category_id FROM catalog_category_product WHERE product_id = 19411);


SELECT entity_id FROM catalog_category_entity_varchar WHERE store_id = 8 AND entity_id IN(SELECT entity_id FROM catalog_category_entity WHERE entity_id IN (SELECT category_id FROM catalog_category_product WHERE product_id = 19411));

SELECT
	*
FROM
	catalog_category_entity_varchar
WHERE
	store_id = 0
	AND value IN(
		SELECT
			value
		FROM
			catalog_category_entity_varchar
		WHERE
			store_id = 8
			AND entity_id IN(
				SELECT
					entity_id
				FROM
					catalog_category_entity
				WHERE
					entity_id IN(
						SELECT
							category_id
						FROM
							catalog_category_product
						WHERE
							product_id = 19411
					)
			)
	)
	AND entity_id NOT IN(
		SELECT
			entity_id
		FROM
			catalog_category_entity_varchar
		WHERE
			store_id = 8
			AND entity_id IN(
				SELECT
					entity_id
				FROM
					catalog_category_entity
				WHERE
					entity_id IN(
						SELECT
							category_id
						FROM
							catalog_category_product
						WHERE
							product_id = 19411
					)
			)
	);

INSERT
	IGNORE INTO
		catalog_category_product(
			category_id,
			product_iD
		) SELECT
			entity_id,
			19411
		FROM
			catalog_category_entity_varchar
		WHERE
			store_id = 0
			AND value IN(
				SELECT
					value
				FROM
					catalog_category_entity_varchar
				WHERE
					store_id = 8
					AND entity_id IN(
						SELECT
							entity_id
						FROM
							catalog_category_entity
						WHERE
							entity_id IN(
								SELECT
									category_id
								FROM
									catalog_category_product
								WHERE
									product_id = 19411
							)
					)
			)
			AND entity_id NOT IN(
				SELECT
					entity_id
				FROM
					catalog_category_entity_varchar
				WHERE
					store_id = 8
					AND entity_id IN(
						SELECT
							entity_id
						FROM
							catalog_category_entity
						WHERE
							entity_id IN(
								SELECT
									category_id
								FROM
									catalog_category_product
								WHERE
									product_id = 19411
							)
					)
			);
			

