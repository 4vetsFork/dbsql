SELECT
	sfoi.store_id,
	cpe.sku AS sku_product,
	sfoi.sku AS sku_order
FROM
	catalog_product_entity AS cpe
INNER JOIN sales_flat_order_item AS sfoi ON
	cpe.entity_id = sfoi.product_id
INNER JOIN sales_flat_order AS sfo ON
	sfoi.order_id = sfo.entity_id WHERE sfoi.store_id IN(27)
	AND cpe.sku IN(
		'GEM10000',
		'GEM10001',
		'GEM10002',
		'GEm10003',
		'GEM10004',
		'GEM10005',
		'GEM10006',
		'GEM10007'
	);