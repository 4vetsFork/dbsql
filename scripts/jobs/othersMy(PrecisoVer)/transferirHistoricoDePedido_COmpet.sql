UPDATE sales_flat_order_item SET product_id =(SELECT entity_id FROM catalog_product_entity WHERE sku in(
				'GEM10003'
			)
	)
WHERE order_id in(
		6894, 10105
	) AND store_id = 27;

UPDATE
	sales_flat_order_item
SET
	sku =(
		SELECT
			sku
		FROM
			catalog_product_entity
		WHERE
			sku in(
				'GEM10003'
			)
	)
WHERE order_id in(
		6894, 10105
	) AND store_id = 27;

SELECT * FROM sales_flat_order_item WHERE sku = 'GEM10000' GROUP BY order_id;

SELECT * FROM catalog_product_entity WHERE sku = 'GEM10000';


SELECT sfoi.store_id,
cpe.sku AS sku_product,
sfoi.sku AS sku_order
FROM
catalog_product_entity AS cpe
INNER JOIN sales_flat_order_item AS sfoi ON
cpe.entity_id = sfoi.product_id
INNER JOIN sales_flat_order AS sfo ON
sfoi.order_id = sfo.entity_id WHERE sfoi.store_id IN(27)
AND cpe.sku IN(
	'6894',
	'10105',
	'GEM10002',
	'GEM10003',
	'GEM10004',
	'GEM10005',
	'GEM10006',
	'GEM10007'
);

SELECT * FROM core_store WHERE code = 'compet';
