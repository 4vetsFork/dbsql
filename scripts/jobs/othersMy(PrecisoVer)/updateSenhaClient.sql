SELECT * FROM core_store WHERE code LIKE "praxedes";

SELECT entity_id FROM customer_entity WHERE entity_id NOT IN (SELECT customer_id  FROM sales_flat_order WHERE store_id = 34 ) AND store_id = 34;



SELECT customer_id FROM sales_flat_order WHERE store_id = 34 AND customer_id IS not null;
	
SELECT * FROM customer_entity_varchar WHERE entity_id = 934259 AND attribute_id = 12;


--  update password

SELECT * FROM customer_entity_varchar WHERE attribute_id = 12 AND entity_id IN( SELECT entity_id FROM customer_entity WHERE entity_id NOT IN( SELECT customer_id FROM sales_flat_order WHERE store_id = 34 AND customer_id IS NOT NULL) AND store_id = 34);
	
UPDATE customer_entity_varchar SET `value` = 'a43f2fab877076fc8f783dd9e80ec96b:KN4Okci9A9aRxuGXkICK7shqlO2J2ISR' WHERE attribute_id = 12 AND entity_id IN( SELECT entity_id FROM customer_entity WHERE entity_id NOT IN(SELECT customer_id FROM sales_flat_order WHERE store_id = 34 AND customer_id IS NOT NULL) AND store_id = 34);