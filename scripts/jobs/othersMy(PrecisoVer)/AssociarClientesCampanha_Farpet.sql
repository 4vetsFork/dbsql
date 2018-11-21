SET
@code = 'farpet';

-- Campanhas atribuidas ao Website
SELECT * FROM salesrule_website WHERE website_id IN (SELECT website_id FROM core_store WHERE code LIKE @code);

-- Vinculo do customer à campanha

INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 388089, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574529, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574530, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574531, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574532, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574533, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574534, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574535, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574536, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));
INSERT IGNORE INTO fvets_salesrule_customer (salesrule_id, customer_id) SELECT 574537, entity_id FROM customer_entity_varchar WHERE attribute_id = 183 AND value IN (1004, 1005, 1007, 1008, 1010, 1012, 1018, 1035, 1037, 1039, 1042, 1053, 1054, 1058, 1063, 1065, 1067, 1070, 1071, 1074, 1075, 1076, 1078, 1079, 1083, 1085, 1089, 1090, 1095, 1096, 1097, 1098, 1099, 1110, 1112, 1113, 1115, 1116, 1117, 1118, 1119, 1120, 1124, 1127, 1130, 1131, 1134, 1137, 1141, 1142, 1143, 1160, 1161, 1167, 1170, 1171, 1172, 1173, 1174, 1179, 1182, 1183, 1186, 1199, 1201, 1202, 1204, 1207, 1210, 1213, 1215, 1219, 1220, 1223, 1225, 1226, 1228, 1230, 1232, 1236, 1260, 1261, 1262, 1263, 1269, 1277, 1281, 1286, 1287, 1288, 1292, 1293, 1294, 1295, 1296, 1297, 1299, 1303, 1305, 1306, 1310, 1311, 1312, 1313, 1317, 1319, 1321, 1323, 1329, 1331, 1333, 1334, 1337, 1339, 1341, 1344, 1347, 1350, 1351, 1354, 1355, 1356, 1357, 1359, 1361, 1364, 1365, 1367, 1369, 1370, 1372, 1374, 1376, 1380, 1381, 1384, 1385, 1390, 1391, 1392, 1393, 1394, 1397, 1398, 1401, 1402, 1403, 1409, 1412, 1415, 1416, 1417, 1421, 1424, 1425, 1426, 1427, 1430, 1431, 1432, 1434, 1436, 1438, 1441, 1443, 1444, 1448, 1451, 1456, 1459, 1460, 1461, 1464, 1471, 1475, 1476, 1478, 1479, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1492, 1493, 1494, 1497, 1498, 1504, 1507, 1510, 1512, 1515, 1518, 1522, 1523, 1524, 1531, 1532, 1533, 1535, 1536, 1538, 1539, 1540, 1543, 1545, 1546, 1547, 1549, 1552, 1553, 1554, 1555, 1556, 1557, 1562, 1563, 1566, 1572, 1573, 1574, 1577, 1578, 1579, 1585, 1587, 1588, 1591, 1592, 1593, 1594, 1596, 1597, 1598, 1599, 1601, 1602, 1604, 1605, 1606, 1608, 1611, 1612, 1613, 1614, 1616, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1630, 1636, 1639, 1640, 1643, 1644, 1645, 1646, 1651, 1652, 1655, 1656, 1657, 1664, 1665, 1668, 1670, 1672, 1673, 1674, 1675, 1677, 1679, 1680, 1681, 1682, 1683, 1684, 1690, 1692, 1695, 1696, 1698, 1699, 1701, 1705, 1706, 1715, 1718, 1723, 1730, 1731, 1733, 1735, 1736, 1745, 1748, 1749, 1750, 1751, 1752, 1755, 1757, 1758, 1760, 1762, 1763, 1767, 1768, 1772, 1773, 1775, 1776, 1777, 1780, 1781, 1784, 1786, 1787, 1789, 1790, 1793, 1794, 1795, 1797, 1798, 1801, 1803, 1804, 1805, 1808, 1809, 1810, 1811, 1812, 1814, 1817, 1819, 1820, 1821, 1825, 1826, 1827, 1828, 1829, 1832, 1833, 1834, 1836, 1839, 1840, 1841, 1842, 1843, 1845, 1848, 1850, 1851, 1852, 1853, 1855, 1856, 1860, 1861, 1866, 1867, 1868, 1869, 1871, 1872, 1873, 1874, 1875, 1877, 1879, 1884, 1885, 1888, 1890, 1891, 1892, 1895, 1898, 1899, 1903, 1904, 1906, 1907, 1909, 1913, 1914, 1915, 1918, 1921, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1936, 1937, 1938, 1939, 1943, 1944, 1946, 1947, 1948, 1951, 1952, 1956, 1959, 1960, 1962, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1973, 1974, 1975, 1976, 1977, 1979, 1992, 1993, 1994, 1995, 1996, 1997, 2001, 2002, 2003, 2005, 2006, 2009, 2010, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2021, 2022, 2023, 2024, 2025, 2027, 2028, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2040, 2041, 2045, 2046, 2048, 2050, 2056, 2060, 2062, 2063, 2065, 2068, 2072, 2077, 2086, 2088, 2098, 2099, 2101, 2104, 2106, 2107, 2109, 2111, 2112) AND entity_id IN (SELECT entity_id FROM customer_entity WHERE store_id IN (SELECT store_id FROM core_store WHERE code LIKE @code));

-- Customers vinculados a campanha 
SELECT * FROM fvets_salesrule_customer WHERE salesrule_id IN (388089, 574529, 574530, 574531, 574532, 574533, 574534, 574535, 574536, 574537);