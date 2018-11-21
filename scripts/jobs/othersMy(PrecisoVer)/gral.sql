SET
@code = "gralminas";
SET
@sto = 26;
SET
@nameDistro = "Gral Minas";

DELETE
FROM
	sales_flat_order_item
WHERE
	store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and product_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	cataloginventory_stock_item
WHERE
	stock_id IN(
		SELECT
			stock_id
		FROM
			cataloginventory_stock
		WHERE
			stock_name LIKE @nameDistro
	)
	and product_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_website
WHERE
	website_id IN(
		SELECT
			website_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and product_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_entity_varchar
WHERE
	store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and entity_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_entity_int
WHERE
	store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and entity_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_entity_decimal
WHERE
	store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and entity_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_entity_datetime
WHERE
	store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and entity_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_entity_gallery
WHERE
	store_id IN(
		SELECT
			store_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and entity_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);

DELETE
FROM
	catalog_product_entity_group_price
WHERE
	website_id IN(
		SELECT
			website_id
		FROM
			core_store
		WHERE
			code LIKE @code
	)
	and entity_id in(
		SELECT
			entity_id
		from
			catalog_product_entity
		WHERE
			sku IN ("ROY10365", "ROY10010", "ROY10157", "ROY10135")
	);
