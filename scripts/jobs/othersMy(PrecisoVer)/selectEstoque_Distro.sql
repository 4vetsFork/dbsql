SELECT
	cpev1.`value` AS NAME,
	cpev2.`value`AS ID_ERP,
	csi.`qty`AS ESTOQUE
FROM
	catalog_product_entity AS cpe
INNER JOIN catalog_product_website AS cpw ON
	cpe.entity_id = cpw.product_id
	AND cpw.website_id = 16
INNER JOIN catalog_product_entity_varchar AS cpev1 ON
	cpe.entity_id = cpev1.entity_id
	AND cpev1.attribute_id = 71
	AND cpev1.store_id = 27
INNER JOIN catalog_product_entity_varchar AS cpev2 ON
	cpe.entity_id = cpev2.entity_id
	AND cpev2.attribute_id = 185
	AND cpev2.store_id = 27
INNER JOIN catalog_product_entity_int AS cpei1 ON
	cpe.entity_id = cpei1.entity_id
	AND cpei1.attribute_id = 102 
	AND cpei1.store_id = 27
	AND cpei1.value = 4
INNER JOIN catalog_product_entity_int AS cpei2 ON
	cpe.entity_id = cpei2.entity_id
	AND cpei2.attribute_id = 96
	AND cpei2.store_id = 27
	AND cpei2.value = 1
INNER JOIN cataloginventory_stock_item AS csi ON
	cpe.entity_id = csi.product_id
	AND csi.stock_id = 15;