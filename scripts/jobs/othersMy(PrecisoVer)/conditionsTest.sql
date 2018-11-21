SELECT * FROM fvets_payment_condition_customer WHERE customer_id = 966398;

SELECT
	name,
	entity_id,
	id_erp,
	payment_methods,
	apply_to_all,
	status
FROM
	fvets_payment_condition_customer AS fpcc
INNER JOIN fvets_payment_condition AS fpc ON
	fpcc.condition_id = fpc.entity_id
WHERE fpcc.condition_id IN (SELECT condition_id FROM fvets_payment_condition_customer WHERE customer_id = 966398)
AND fpcc.customer_id = 966398 AND status = 1;

SELECT
	name,
	entity_id,
	id_erp,
	payment_methods,
	apply_to_all,
	status
FROM
	fvets_payment_condition
WHERE
	entity_id IN(
		SELECT
			fpc.entity_id
		FROM
			fvets_payment_condition AS fpc
		INNER JOIN fvets_payment_condition_store AS fpcs ON
			fpc.entity_id = fpcs.condition_id
			AND fpcs.store_id = 45
	);
	AND  status = 1;


SELECT * FROM fvets_payment_condition_customer WHERE entity_id = 834;

SELECT * FROM fvets_payment_condition WHERE id_erp = 3 AND entity_id = 814;

SELECT * FROM core_store WHERE code = 'davol';

SELECT * FROM fvets_payment_condition_store WHERE store_id = 45 AND condition_id = 814;




SELECT
	condition_id
FROM
	fvets_payment_condition_customer AS fpcc
INNER JOIN fvets_payment_condition AS fpc ON
	fpcc.condition_id = fpc.entity_id
WHERE
	fpcc.customer_id = "966398"
	AND status = 1
	AND entity_id IN(814,815,816,817,822,818,823,827,826,819,820)