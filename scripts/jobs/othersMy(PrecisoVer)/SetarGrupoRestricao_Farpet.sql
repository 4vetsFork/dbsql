SET
@code = 'farpet';
SET
@codRest = 27;

-- Grupo de restrição existente da distribuidora
SELECT * FROM fvets_catalogrestrictiongroup_entity WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code);

-- Produtos do grupo de restrição
SELECT * FROM fvets_catalogrestrictiongroup_entity_product WHERE catalogrestrictiongroup_id LIKE @codRest;

-- Setar os produtos no grupo de restrição
INSERT IGNORE INTO fvets_catalogrestrictiongroup_entity_product(catalogrestrictiongroup_id, product_id, `position`) SELECT @codRest, entity_id, 0 FROM catalog_product_entity WHERE sku IN('FAR10192', 'FAR10191', 'FAR10190', 'FAR10189', 'FAR10188', 'FAR10187', 'FAR10186', 'FAR10185', 'FAR10243', 'FAR10169', 'FAR10170', 'FAR10165', 'FAR10164', 'FAR10163', 'FAR10162', 'FAR10161', 'FAR10043', 'FAR10041', 'FAR10040', 'FAR10038', 'FAR10036', 'FAR10035', 'FAR10034', 'FAR10265', 'FAR10033');
			
			
-- Clientes do grupo de restrição
SELECT * FROM fvets_catalogrestrictiongroup_entity_customer WHERE catalogrestrictiongroup_id LIKE @codRest;

-- Setar os clientes no grupo de restrição
INSERT IGNORE INTO fvets_catalogrestrictiongroup_entity_customer( catalogrestrictiongroup_id, customer_id, `position` ) SELECT @codRest, entity_id, 0 FROM customer_entity_varchar WHERE attribute_id = 183 AND entity_id IN(SELECT entity_id FROM customer_entity WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code)) AND value IN(1007, 1010, 1012, 1018, 1037, 1039, 1054, 1058, 1063, 1067, 1070, 1074, 1076, 1078, 1079, 1089, 1095, 1096, 1098, 1113, 1115, 1116, 1117, 1118, 1120, 1127, 1130, 1131, 1134, 1137, 1141, 1160, 1167, 1173, 1174, 1179, 1183, 1201, 1202, 1204, 1207, 1210, 1223, 1226, 1232, 1236, 1260, 1262, 1269, 1277, 1281, 1286, 1292, 1294, 1296, 1303, 1305, 1313, 1321, 1329, 1331, 1334, 1344, 1347, 1354, 1357, 1364, 1365, 1369, 1374, 1376, 1381, 1384, 1385, 1394, 1397, 1398, 1402, 1403, 1409, 1416, 1425, 1427, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1451, 1461, 1464, 1478, 1483, 1484, 1486, 1493, 1494, 1497, 1498, 1504, 1507, 1518, 1522, 1524, 1532, 1535, 1538, 1543, 1547, 1554, 1556, 1562, 1566, 1572, 1574, 1578, 1587, 1588, 1592, 1596, 1599, 1601, 1604, 1608, 1612, 1621, 1623, 1624, 1626, 1636, 1639, 1644, 1646, 1668, 1670, 1675, 1690, 1692, 1699, 1706, 1730, 1736, 1749, 1750, 1751, 1752, 1755, 1775, 1786, 1787, 1789, 1793, 1794, 1795, 1798, 1805, 1808, 1811, 1820, 1827, 1832, 1833, 1840, 1842, 1845, 1851, 1852, 1856, 1868, 1869, 1873, 1874, 1879, 1884, 1885, 1890, 1891, 1892, 1895, 1898, 1904, 1914, 1930, 1933, 1937, 1938, 1943, 1944, 1946, 1952, 1962, 1964, 1967, 1969, 1973, 1974, 1977, 1992, 1993, 1995, 2001, 2005, 2006, 2013, 2014, 2015, 2017, 2022, 2023, 2024, 2032, 2033, 2034, 2036, 2041, 2045, 2048, 2062, 2063, 2068, 2086, 2088, 2098, 2099, 2109, 2111);










