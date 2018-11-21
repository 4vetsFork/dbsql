SELECT * FROM Websites WHERE website_id = 32;
SELECT * FROM Stores WHERE store_id = 21;
SELECT * FROM Details;

SELECT * FROM whitelabel.catalog_product_entity;

SELECT store_id FROM sales_flat_order WHERE status IN ('pending', 'processing') AND state IN ('pending', 'processing') AND exported IS NULL;

SELECT exported FROM sales_flat_order WHERE entity_id IN (16505);

SELECT * FROM allpago_payment_orders WHERE order_id = 16385;

UPDATE sales_flat_order SET status = 'pending', state = 'new', exported = NULL WHERE entity_id IN (16485);

SELECT * FROM customer_entity WHERE entity_id = 1632;

SELECT * FROM customer_entity_varchar WHERE entity_id = 1632;

SELECT * FROM core_store WHERE code = 'farpet';1

SELECT
	csi.item_id
FROM
	catalog_product_entity AS cpe
INNER JOIN cataloginventory_stock_item AS csi ON
	cpe.entity_id = csi.product_id
	AND csi.stock_id = 36
WHERE
	cpe.sku IN ('ZOE10021', 'ZOE10010', 'ZOE10011', 'ZOE10017', 'ZOE10015', 'ZOE10016', 'ZOE10022', 'ZOE10012', 'ZOE10013', 'ZOE10014', 'ZOE10015', 'ZOE10016', 'ZOE10017', 'ZOE10022', 'ZOE10013', 'ZOE10012', 'ZOE10014', 'ZOE10021', 'ZOE10010, ZOE10011');

SELECT * FROM cataloginventory_stock_item WHERE item_id = 48953566 AND stock_id = 36;

update cataloginventory_stock_item set qty_increments = 5,use_config_qty_increments = 0,enable_qty_increments = 1,stock_status_changed_auto = 0,use_config_enable_qty_inc = 0 
where item_id IN (48953566, 48954344, 48953540, 48953555, 48955122, 48953969, 48955112, 48953539, 48955153, 48955488) ;
