-- Update password default `code123`
 UPDATE
	customer_entity_varchar
SET
	value = 'cab98801702174660c1e0a995deaca42:05f3irE6iLpnjCO6rWIyrrZdpPrvbYtc'
WHERE
	attribute_id = 12
	AND entity_id IN(
		SELECT
			entity_id
		FROM
			customer_entity
		WHERE
			website_id = 75
	);
