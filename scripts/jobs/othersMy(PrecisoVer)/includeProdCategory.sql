SELECT *
FROM
	catalog_category_product
WHERE
	category_id in(
		1600
	)
	AND product_id in(
		SELECT
			entity_id
		FROM
			catalog_product_entity
		where
			sku in(
				'PYP10068', 'PYP10067', 'PYP10047', 'PYP10062', 'PYP10037', 'PYP10063', 'PYP10054', 'PYP10044', 'PYP10049', 'PYP10052', 'PYP10051', 'PYP10045', 'PYP10043', 'PYP10065', 'PYP10064', 'PYP10035', 'PYP10034', 'PYP10066', 'PYP10053', 'PYP10055', 'PYP10056', 'PYP10058', 'PYP10059', 'PYP10039', 'PYP10036', 'PYP10040', 'PYP10074', 'SYP10033', 'SYP10032', 'PYP10068', 'PYP10073', 'PYP10033', 'PYP10067', 'PYP10057', 'PYP10060', 'PYP10061', 'PYP10050', 'PYP10042', 'PYP10046', 'SYP10013', 'SYP10014', 'PYP10020', 'PYP10003', 'PYP10005', 'PYP10011', 'PYP10018', 'PYP10019', 'PYP10021', 'PYP10022', 'PYP10027', 'PYP10028', 'PYP10029', 'PYP10030', 'PYP10031', 'PYP10032', 'PYP10007', 'PYP10072', 'ZOP10024', 'ZOP10026', 'ZOP10021', 'ZOP10023', 'ZOP10032', 'ZOP10027', 'ZOP10039', 'ZOP10041', 'ZOP10044', 'ZOP10030', 'ZOP10033', 'ZOP10035', 'ZOP10042', 'ZOP10052', 'ZOP10051', 'ZOP10070', 'ZOP10072', 'ZOP10066', 'ZOP10068', 'ZOP10064', 'ZOP10060', 'ZOP10058', 'ZOP10056', 'ZOP10054', 'ZOP10069', 'ZOP10071', 'ZOP10067', 'ZOP10063', 'ZOP10061', 'ZOP10059', 'ZOP10057', 'ZOP10055', 'ZOP10053', 'ZOP10075', 'ZOP10073', 'ZOP10077', 'ZOP10078', 'ZOP10076', 'ZOP10074', 'SYP10027', 'SYP10009', 'SYP10008', 'SYP10003', 'SYP10006', 'SYP10007', 'SYP10011', 'SYP10004', 'SYP10005', 'SYP10001', 'SYP10002', 'SYP10000', 'SYP10021', 'SYP10020', 'SYP10023', 'SYP10015', 'SYP10022', 'SYP10030', 'SYP10025', 'ZOP10005', 'ZOP10004', 'ZOP10007', 'ZOP10006', 'ZOP10009', 'ZOP10008', 'ZOP10011', 'ZOP10010', 'ZOP10012', 'ZOP10013', 'ZOP10014', 'ZOP10016', 'ZOP10015', 'ZOP10018', 'ZOP10017', 'ZOP10020', 'ZOP10019', 'ZOP10003', 'ZOP10002', 'ZOP10000', 'ZOP10001', 'ZOP10021', 'ZOP10022', 'ZOP10023', 'ZOP10024', 'ZOP10025', 'ZOP10026', 'ZOP10027', 'ZOP10036', 'ZOP10028', 'ZOP10029', 'ZOP10030', 'ZOP10031', 'ZOP10032', 'ZOP10033', 'ZOP10034', 'ZOP10035', 'ZOP10037', 'ZOP10038', 'ZOP10039', 'ZOP10041', 'ZOP10042', 'ZOP10044', 'ZOP10051', 'ZOP10052', 'ZOP10053', 'ZOP10054', 'ZOP10055', 'ZOP10056', 'ZOP10057', 'ZOP10058', 'ZOP10059', 'ZOP10060', 'ZOP10061', 'ZOP10063', 'ZOP10064', 'ZOP10066', 'ZOP10067', 'ZOP10068', 'ZOP10069', 'ZOP10070', 'ZOP10071', 'ZOP10072', 'ZOP10073', 'ZOP10074', 'ZOP10075', 'ZOP10076', 'ZOP10077', 'ZOP10078', 'ZOP10062', 'ZOP10040', 'ZOP10043'
			)
	);
	


SELECT * FROM catalog_category_product WHERE category_id = 1600;
	
INSERT
	IGNORE INTO
		catalog_category_product(
			category_id,
			product_id
		) SELECT
			1600,
			entity_id
		FROM
			catalog_product_entity
		WHERE
			sku IN(
				'PYP10068',
				'PYP10067',
				'PYP10047',
				'PYP10062',
				'PYP10037',
				'PYP10063',
				'PYP10054',
				'PYP10044',
				'PYP10049',
				'PYP10052',
				'PYP10051',
				'PYP10045',
				'PYP10043',
				'PYP10065',
				'PYP10064',
				'PYP10035',
				'PYP10034',
				'PYP10066',
				'PYP10053',
				'PYP10055',
				'PYP10056',
				'PYP10058',
				'PYP10059',
				'PYP10039',
				'PYP10036',
				'PYP10040',
				'PYP10074',
				'SYP10033',
				'SYP10032',
				'PYP10068',
				'PYP10073',
				'PYP10033',
				'PYP10067',
				'PYP10057',
				'PYP10060',
				'PYP10061',
				'PYP10050',
				'PYP10042',
				'PYP10046',
				'SYP10013',
				'SYP10014',
				'PYP10020',
				'PYP10003',
				'PYP10005',
				'PYP10011',
				'PYP10018',
				'PYP10019',
				'PYP10021',
				'PYP10022',
				'PYP10027',
				'PYP10028',
				'PYP10029',
				'PYP10030',
				'PYP10031',
				'PYP10032',
				'PYP10007',
				'PYP10072',
				'ZOP10024',
				'ZOP10026',
				'ZOP10021',
				'ZOP10023',
				'ZOP10032',
				'ZOP10027',
				'ZOP10039',
				'ZOP10041',
				'ZOP10044',
				'ZOP10030',
				'ZOP10033',
				'ZOP10035',
				'ZOP10042',
				'ZOP10052',
				'ZOP10051',
				'ZOP10070',
				'ZOP10072',
				'ZOP10066',
				'ZOP10068',
				'ZOP10064',
				'ZOP10060',
				'ZOP10058',
				'ZOP10056',
				'ZOP10054',
				'ZOP10069',
				'ZOP10071',
				'ZOP10067',
				'ZOP10063',
				'ZOP10061',
				'ZOP10059',
				'ZOP10057',
				'ZOP10055',
				'ZOP10053',
				'ZOP10075',
				'ZOP10073',
				'ZOP10077',
				'ZOP10078',
				'ZOP10076',
				'ZOP10074',
				'SYP10027',
				'SYP10009',
				'SYP10008',
				'SYP10003',
				'SYP10006',
				'SYP10007',
				'SYP10011',
				'SYP10004',
				'SYP10005',
				'SYP10001',
				'SYP10002',
				'SYP10000',
				'SYP10021',
				'SYP10020',
				'SYP10023',
				'SYP10015',
				'SYP10022',
				'SYP10030',
				'SYP10025',
				'ZOP10005',
				'ZOP10004',
				'ZOP10007',
				'ZOP10006',
				'ZOP10009',
				'ZOP10008',
				'ZOP10011',
				'ZOP10010',
				'ZOP10012',
				'ZOP10013',
				'ZOP10014',
				'ZOP10016',
				'ZOP10015',
				'ZOP10018',
				'ZOP10017',
				'ZOP10020',
				'ZOP10019',
				'ZOP10003',
				'ZOP10002',
				'ZOP10000',
				'ZOP10001',
				'ZOP10021',
				'ZOP10022',
				'ZOP10023',
				'ZOP10024',
				'ZOP10025',
				'ZOP10026',
				'ZOP10027',
				'ZOP10036',
				'ZOP10028',
				'ZOP10029',
				'ZOP10030',
				'ZOP10031',
				'ZOP10032',
				'ZOP10033',
				'ZOP10034',
				'ZOP10035',
				'ZOP10037',
				'ZOP10038',
				'ZOP10039',
				'ZOP10041',
				'ZOP10042',
				'ZOP10044',
				'ZOP10051',
				'ZOP10052',
				'ZOP10053',
				'ZOP10054',
				'ZOP10055',
				'ZOP10056',
				'ZOP10057',
				'ZOP10058',
				'ZOP10059',
				'ZOP10060',
				'ZOP10061',
				'ZOP10063',
				'ZOP10064',
				'ZOP10066',
				'ZOP10067',
				'ZOP10068',
				'ZOP10069',
				'ZOP10070',
				'ZOP10071',
				'ZOP10072',
				'ZOP10073',
				'ZOP10074',
				'ZOP10075',
				'ZOP10076',
				'ZOP10077',
				'ZOP10078',
				'ZOP10062',
				'ZOP10040',
				'ZOP10043'
			);

