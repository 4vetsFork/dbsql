SELECT * FROM customer_entity_varchar WHERE attribute_id = 12 AND entity_id IN (SELECT entity_id FROM customer_entity WHERE website_id = 36);

UPDATE customer_entity_varchar SET value = 'b8053e0f08f24dc713153fe839388fdf:bf7ZbQ53rGTx23dBxMi3MlrW9beX0Ru4' WHERE attribute_id = 12 AND entity_id IN( SELECT entity_id FROM customer_entity WHERE website_id = 36);

UPDATE customer_entity_varchar SET value='65c69639cd323462491b7a3bd1caa116:1JEDEoP3eCzQmgjs2DfCtnxnR2Hqhqic' WHERE value_id = 13647238;