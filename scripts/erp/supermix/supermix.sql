            -- Supermix(LOADED) X  Magento
-- Indaiatuba = 1117+52 = 1169  x  1169
-- São Paulo  = 5694+218= 5912  x  5912
-- Vale       = 1804+155= 1959  x  1959


-- Customers X Rep
SELECT COUNT(*) FROM P2_INDAIATUBA.dbo.VW_IV_Clientes; WHERE email IS NOT NULL AND email != '';       -- 1102
SELECT COUNT(*) FROM P2_INDAIATUBA.dbo.VW_IV_Representantes; WHERE email IS NOT NULL AND email != ''; -- 33    COLLECTED = 1135 / dif 15 - no magento 

SELECT COUNT(*) FROM P2_SP.dbo.VW_IV_Clientes; WHERE email IS NOT NULL AND email != '';               -- 5412
SELECT COUNT(*) FROM P2_SP.dbo.VW_IV_Representantes; WHERE email IS NOT NULL AND email != '';         -- 136   COLLECTED = 5548 / dif 34 - no magento
 
SELECT COUNT(*) FROM P2_VALE.dbo.VW_IV_Clientes; WHERE email IS NOT NULL AND email != '';             -- 1781
SELECT COUNT(*) FROM P2_VALE.dbo.VW_IV_Representantes; WHERE email IS NOT NULL AND email != '';       -- 98    COLLECTED = 1879 / dif 11 - no magento


SELECT * FROM core_store WHERE code LIKE 'supermix%';

SELECT COUNT(*) FROM customer_entity WHERE website_id = 27 AND store_id = 39; -- Vale       -- 2411 
SELECT COUNT(*) FROM customer_entity WHERE website_id = 27 AND store_id = 38; -- Sp         -- 5479
SELECT COUNT(*) FROM customer_entity WHERE website_id = 27 AND store_id = 40; -- indaiatuba -- 691
																			     -- total      -- 8581






SELECT 
	ce.entity_id,
	ce.email
FROM customer_entity AS ce 
INNER JOIN customer_entity_varchar AS cev ON
	cev.entity_id = ce.entity_id
AND cev.attribute_id = 183 
WHERE ce.website_id = 27 AND ce.store_id = 38 AND ce.email = "";

SELECT * FROM customer_entity_varchar WHERE entity_id = 874822;