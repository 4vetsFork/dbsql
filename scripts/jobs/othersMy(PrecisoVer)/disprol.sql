-- Acossiar cliente ao grupo de restrição
SET
@code = 'disprolpet';
SET
@act = 0;

INSERT
	IGNORE INTO
		fvets_catalogrestrictiongroup_entity_customer(
			catalogrestrictiongroup_id,
			customer_id,
			`position`
		) SELECT
			fcec.catalogrestrictiongroup_id,
			cev.entity_id,
			@act
		FROM
			customer_entity_varchar AS cev
		INNER JOIN fvets_catalogrestrictiongroup_entity_customer AS fcec ON
			fcec.customer_id = cev.entity_id
		INNER JOIN core_store AS cs ON
			cs.code = @code
		INNER JOIN fvets_catalogrestrictiongroup_entity AS fce ON
			fce.website_id = cs.website_id
		WHERE
			cev.value IN(
				107144,
				104768,
				103591,
				104819,
				106399,
				106438,
				103376,
				106397,
				105321,
				106398,
				107041,
				105093,
				105375,
				103590,
				103589,
				107087,
				105742,
				103402,
				103514,
				103479,
				107169,
				103512,
				103515,
				103513,
				103451,
				103504,
				103478,
				103528,
				103302,
				103287,
				103286,
				103285,
				103313,
				106179,
				105617,
				105613,
				103239,
				103238,
				103284,
				103269,
				103271,
				103266,
				103268,
				103267,
				103381,
				103372,
				103373,
				103371,
				103370,
				103367,
				103379,
				103380,
				103374,
				103377,
				103375,
				103321,
				103349,
				103365,
				103362,
				103363,
				103353,
				103360,
				103357,
				103211,
				106682,
				104640,
				105719,
				106716,
				104490,
				104450,
				104758,
				106549,
				104676,
				104700,
				104685,
				104973,
				104367,
				104368,
				104393,
				104366,
				104365,
				104449,
				104411,
				104423,
				104398,
				104410,
				106802,
				105991,
				105448,
				105449,
				105485,
				105377,
				105350,
				105257,
				105557,
				105578,
				105548,
				105556,
				105550,
				104985,
				105049,
				105084,
				105155,
				105034,
				105019,
				105236,
				105224,
				105226,
				105192,
				105207,
				105206,
				103541,
				103642,
				103656,
				103665,
				105785,
				103586,
				103585,
				103797,
				103805,
				103745,
				103783,
				103758,
				103806,
				103556,
				103557,
				103558,
				103555,
				103550,
				103581,
				103578,
				103580,
				103559,
				103572,
				103560,
				104324,
				104233,
				104234,
				104235,
				104229,
				104202,
				104177,
				104282,
				104323,
				104258,
				104265,
				104264,
				103852,
				103980,
				104018,
				104021,
				103964,
				103954,
				105990,
				104134,
				104140,
				104022,
				104062,
				104119,
				104080,
				105669,
				102975,
				102976,
				102974,
				102970,
				102981,
				102977,
				102978,
				102982,
				102934,
				102951,
				102926,
				102969,
				102966,
				102952,
				102965,
				102925,
				103044,
				103047,
				103041,
				103040,
				103054,
				103050,
				103053,
				102997,
				103024,
				103026,
				103015,
				103037,
				103036,
				103027,
				103028,
				103055,
				107363,
				107348,
				105868,
				102745,
				102787,
				102785,
				102786,
				102788,
				107485,
				107437,
				107503,
				102743,
				102741,
				102675,
				107385,
				102924,
				102916,
				102917,
				102914,
				102913,
				102923,
				102920,
				102922,
				102790,
				102796,
				102797,
				102793,
				102911,
				107258,
				102798,
				107295,
				102800,
				103210,
				103092,
				103188,
				103084,
				103187,
				103207,
				103189,
				103079,
				103209,
				103083,
				103082,
				103080,
				103081,
				103078,
				103135,
				103134,
				103138,
				103136,
				103137,
				103104,
				103178,
				103106,
				103132,
				103203,
				103131,
				103177,
				103196,
				103070,
				103139,
				103069,
				103075,
				103073,
				103076,
				103208,
				103061,
				103068,
				103067,
				103140,
				103064,
				103077,
				102721,
				104744,
				105136,
				104555,
				102881,
				106400,
				102830,
				102894,
				106106,
				102893,
				102891,
				102895,
				102804,
				105324,
				102802,
				105835,
				105320,
				102801,
				102878,
				102880,
				102722,
				106133,
				104259,
				102877,
				102806,
				104608,
				102900,
				102901,
				106474,
				102814,
				102813,
				107012,
				102903,
				105127,
				102902,
				105386,
				106586,
				102719,
				102896,
				104753,
				103217,
				102720,
				102899,
				102898,
				105713,
				102815,
				102831,
				102897,
				106950,
				104459,
				102847,
				102848,
				105168,
				102846,
				106785,
				102809,
				106837,
				102852,
				102850,
				105169,
				102851,
				102811,
				102841,
				102843,
				104530,
				102840,
				107240,
				105256,
				102844,
				102810,
				105743,
				106760,
				105235,
				106472,
				102870,
				102862,
				104341,
				102812,
				102807,
				105764,
				106566,
				102834,
				102869,
				105140,
				102864,
				102868,
				102866,
				106437,
				102855,
				102856,
				102857,
				102836,
				102854,
				102808,
				102861,
				102828,
				102835,
				102859,
				102860,
				105172,
				104590,
				102986,
				102987,
				102988,
				102985,
				102984,
				102983,
				102993,
				102994,
				102989,
				106545,
				102991,
				102996,
				102963,
				102967,
				107197,
				105697,
				103757,
				105500,
				107133,
				103354,
				103085,
				103352,
				103664,
				102962,
				103441,
				103440,
				103045,
				104961,
				106212,
				107162,
				104996,
				107208,
				107325,
				103378,
				107207,
				102998,
				103002,
				106134,
				103005,
				103001,
				103000,
				103011,
				103009,
				103010,
				103216,
				103543,
				103007,
				103542,
				102904,
				104800,
				106551,
				107451,
				102921,
				102919,
				102918,
				102928,
				105444,
				107070,
				105815,
				103978,
				102929,
				102907,
				102908,
				104780,
				102906,
				102905,
				102915,
				104798,
				107450,
				102909,
				104061,
				102912,
				106396,
				105450,
				102953,
				102954,
				102945,
				107088,
				102944,
				102958,
				102961,
				102955,
				102957,
				102956,
				104820,
				103932,
				102938,
				102941,
				105445,
				102933,
				102931,
				104822,
				102942,
				102943,
				105597,
				105654,
				105661,
				105655,
				103253,
				103254,
				105836,
				102816,
				103246,
				105394,
				104131,
				105736,
				106616,
				103257
			);