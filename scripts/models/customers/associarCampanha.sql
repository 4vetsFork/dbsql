SET
@code = 'codigo';
-- Identidade da campanha
SET
@iden = 'identidade';

-- Campanhas atribuidas ao Website
SELECT * FROM salesrule_website WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code) AND rule_id = @iden;

-- Vinculo do customer à campanha
INSERT
	INTO
		fvets_salesrule_customer(
			salesrule_id,
			customer_id
		) SELECT
			@iden,
			entity_id
		FROM
			customer_entity_varchar
		WHERE
			attribute_id = 183
			AND value IN(
				'iderp'
			)
			AND entity_id IN(
				SELECT
					entity_id
				FROM
					customer_entity
				WHERE
					store_id IN(
						SELECT
							store_id
						FROM
							core_store
						WHERE
							code LIKE @code
					)
			);

-- Customers vinculados a campanha 
SELECT * FROM fvets_salesrule_customer WHERE salesrule_id IN (@iden);