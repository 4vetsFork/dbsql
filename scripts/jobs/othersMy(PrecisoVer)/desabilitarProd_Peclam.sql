SET
@code = 'peclam';
SET

SELECT
	cpei.*
FROM 
	catalog_product_entity_varchar AS cpev
INNER JOIN core_store AS cs ON
	cs.store_id = cpev.store_id
AND cs.code LIKE @code
INNER JOIN catalog_product_entity_int AS cpei ON
	cpei.entity_id = cpev.entity_id
AND cpei.store_id = cs.store_id
WHERE cpei.attribute_id = 102 AND cpev.value IN (503, 510, 537, 545, 546, 566, 567, 584, 587, 601, 613, 615, 667, 692, 791, 752, 757, 939, 1004, 1025, 1026);

-- 
UPDATE catalog_product_entity_int SET value = 1 WHERE store_id = 2 AND entity_id IN (3016, 3056, 3058, 2417, 2448, 2456, 2457, 2476, 2477, 2493, 2496, 2509, 2521, 2523, 2562, 2583, 2423, 15082960, 15082961) AND attribute_id = 102;