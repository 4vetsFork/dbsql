SELECT * FROM eav_attribute WHERE attribute_code LIKE 'price';

SELECT * FROM catalog_product_entity_group_price WHERE website_id = 10;

SELECT * FROM core_store WHERE code = 'bhvet';

SELECT * FROM core_website WHERE code = 'vetcenter';

SELECT * FROM customer_group; 


WHERE website_id = 57;


SELECT * FROM catalog_product_entity WHERE sku = 'DUP10031'

INSERT
	INTO
		customer_group(
			customer_group_code,
			tax_class_id,
			id_tabela,
			website_id
		)
	VALUES(
		'GOIANIA_1',
		3,
		1,
		17
	) ;

	SELECT * FROM customer_eav_attribute;
	
ALTER TABLE customer_group AUTO_INCREMENT = 64613;
	
SELECT * FROM customer_group WHERE website_id = 57;

select * from customer_group;

SELECT * FROM salesrule_product_attribute WHERE website_id = 57;

SELECT * FROM core_website WHERE website_id = 70;

DELETE FROM customer_group
WHERE customer_group_id >= 62367;

SELECT * FROM customer_group;


INSERT INTO customer_group (customer_group_code,tax_class_id,id_tabela,website_id,multiple_table) VALUES ('chegatto_chegatto', 3, 'chegatto_chegatto', 70, 0) ;
