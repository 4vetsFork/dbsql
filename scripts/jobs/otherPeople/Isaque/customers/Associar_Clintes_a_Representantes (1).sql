SET @store = 81;

-- Verificar Clientes e seus reps    
SELECT 
	ce.entity_id,
	cev1.value AS 'Iderp Cliente',
	fs.id_erp AS 'Rep' 
FROM customer_entity AS ce 
LEFT JOIN customer_entity_varchar AS cev 
	ON ce.entity_id = cev.entity_id AND cev.attribute_id = 148
INNER JOIN customer_entity_varchar AS cev1 
	ON ce.entity_id = cev1.entity_id AND cev1.attribute_id = 183
LEFT JOIN fvets_salesrep AS fs 
	ON fs.id = cev.value AND fs.store_id = ce.store_id
WHERE ce.store_id = @store 
	AND cev1.value IN ('8790','5884','8681','8762','7894','7061','542','8868','8714','6670','1635','8889','8986','8348','8173','8771','8707','9046','2154','187','8742','879','8198','6822','8869','7266','7241','1330','8782','6472','8852','7112','1583','361','7928','5704','6981','7288','7411','7880','8940','7017','6913','874','8767','8673','5789','6586','5682','6457','7940','8635','7326','1565','268','8670','8746','8504','578','8014','6864');

-- Associar Representante 514
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 1974 
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN 
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('8658','7810','6952','3449','2724','7670','5832','6602','8730','8671','8541','3695','7362','6603','6933','9113');

-- Associar Representante 529
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 2065 
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN 
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('8750','7261','6745','55','8876','8937','6562','8460','8568','8839','7597','5933','4345','8135','6824','8672','7716','8595','8800','6621','8778','7069','7592','6982','8626','7294','6682','8666','7147','8519','8254','8908','560','8008','8950','6234','6960','8912','8665','6678','8675','8755','6741','8334','8494','8444','6379','8565','8854','8817','6881','5905','8713','8870','8748','3777','5652','8952','6903','7539','5690','8205','8708','7448','5900','7737','6565','5586','8513','8784','6601','7994','8830','7653','6497','8718','6956','8682','6672','8735','7721','8652','7225','8490','8943','7099','7586','6988','8851','6644','6583','8264','7019','5693','5138','8951','8770','6455','8203','7511','8643','8690','534','teste1','1062','4155','8538','7409','8719','2','1319','8701','7125','3615','8903','8439','7692','946','556','9096','9028','9037','9082');

-- Associar Representante 549
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 1979 
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('8835','8860','8898','8882','8897','9056','7654','9034','8910');

-- Associar Representante 557
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 2002 
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN 
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('7114','3069','8954','3236','5748','3096','3417','8546','8252','6827','7265','3541','8311','6007','2535','8545','5602','7818','8968','8646','8573','8859','7090','8174','6440','5311','2148','6746','2150','6471','4773','7487','6978','6914');

-- Associar Representante 560
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 2068 
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('6256','6704','8480','2333','6574','5329','7710','9067','8271','6616','8625','7259','8562','9017','2087','3600','679','5576','1','6473','1360','494','9','3825','664','5653','6278','6350','982','7464','6801','1320','4908','8843','7685','6458','4716','7505','1294','1867','810','41','3742','8656','7788','6541','677','5618','7953','1329','4225','6647','7370','6692','8592','605','8359','8777','978','8842','75','730','5315','8570','8945','4613','2141','1219','173','6721','2180','10','3892','8925','7769','669','1035','8864','7600','1326','8884','6688','634','8794','8574','7661','5944','1308','3687','8783','8551');

-- Associar Representante 561
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 2069
WHERE cev.attribute_id = 148
	AND cev.entity_id IN 
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('7036','2957','8861','3080','3178','3114','7842','8942','7375','8739','8840','9093','6866','6104','736','8927','9112','9050','9078');

-- Associar Representante 563
UPDATE 	
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 2280 
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN 	
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('2196','5840','6086','7978','8804','7490','2177','8941','5720','8370','8862','5902','2145','3666','3574','7260','2195','6065','2649','5526','7612','8639','7489','9053','7713','2161','8915','8797','3140','9065','2298','3716','8877','5811','545','6006','8858','7472','8894','8781','8805','5904','2773','8709','3344','6242','8729','2146','7278');

-- Associar Representante 564
UPDATE 
	customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 
	ON cev.entity_id = cev1.entity_id 
SET cev.value = 2281
WHERE cev.attribute_id = 148 
	AND cev.entity_id IN
(SELECT entity_id FROM customer_entity WHERE store_id = @store) 
	AND cev1.attribute_id = 183 AND cev1.value IN ('8790','5884','8681','8762','7894','7061','542','8868','8714','6670','1635','8889','8986','8348','8173','8771','8707','9046','2154','187','8742','879','8198','6822','8869','7266','7241','1330','8782','6472','8852','7112','1583','361','7928','5704','6981','7288','7411','7880','8940','7017','6913','874','8767','8673','5789','6586','5682','6457','7940','8635','7326','1565','268','8670','8746','8504','578','8014','6864');
