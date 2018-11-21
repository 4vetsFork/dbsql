SET
@code = 'disprolpet';
SET
@attr = '%rep';

SELECT * FROM core_store WHERE code = @code;

-- Tipo de atributo
SELECT
	*
FROM
	eav_attribute
WHERE
	attribute_code LIKE @attr;

-- SELECT * FROM customer_entity_varchar WHERE entity_id = 102035;
-- SELECT * FROM fvets_salesrep WHERE id_erp = 102448;
 
	
-- 	Clientes na distribuidora
SELECT
	ce.*, cs.code
FROM
	core_store AS cs
INNER JOIN customer_entity AS ce ON
	ce.website_id = cs.website_id
INNER JOIN customer_entity_varchar AS cev ON
	cev.entity_id = ce.entity_id
AND cev.attribute_id = 183 AND cev.value IN (101928, 101942, 101943, 101944, 101945, 101946, 102049, 102052, 102064, 102065, 102084, 102109, 102110, 102237, 102245, 102246, 102247, 102248, 102253, 102255, 102256, 102257, 102258, 102261, 102262, 102263, 102264, 102265, 102267, 102268, 102270, 102271, 102273, 102274, 102436, 102511, 102698, 102734, 102754, 102771, 102817, 102818, 102829, 102949, 103062, 103111, 103412, 103448, 103464, 103473, 103511, 103564, 103747, 103938, 104222, 104228, 104562, 104690, 104692, 104778, 104809, 104871, 105134, 105177, 105359, 105417, 105443, 105521, 105559, 105606, 105682, 105686, 105690, 105692, 105775, 105989, 106430, 106505, 106646, 106879, 106969, 107044, 107059, 107375, 107455, 107470, 107570, 107981, 102033, 102048, 102099, 102147, 102305, 102309, 102359, 102375, 102396, 102403, 102418, 102432, 102433, 102445, 102453, 102461, 102463, 102474, 102502, 102546, 102565, 102572, 102601, 102603, 102736, 102775, 102779, 103004, 104010, 104046, 104326, 104384, 104645, 104832, 105043, 105122, 105205, 105629, 105717, 105782, 106181, 106264, 106404, 106536, 106565, 106803, 106877, 106940, 107050, 107060, 107104, 107167, 107182, 107973, 101936, 101965, 101969, 101983, 101994, 102043, 102051, 102055, 102072, 102088, 102100, 102127, 102217, 102219, 102222, 102224, 102225, 102227, 102229, 102233, 102235, 102239, 102242, 102243, 102287, 102288, 102290, 102409, 102435, 102482, 102491, 102507, 102524, 102573, 102592, 102647, 102711, 102712, 102746, 102747, 102750, 102753, 102772, 102826, 102832, 102837, 103206, 104338, 104361, 104380, 104445, 104502, 104599, 104601, 104747, 105161, 105166, 105180, 105185, 105189, 105194, 105196, 105330, 105387, 105413, 105451, 105499, 105577, 105630, 105691, 105776, 105801, 105803, 105804, 105827, 105838, 105871, 105916, 106182, 106208, 106415, 106427, 106473, 106605, 106726, 107127, 107406, 107800, 108128, 102017, 102061, 102081, 102091, 102102, 102106, 102116, 102121, 102131, 102146, 102148, 102181, 102275, 102280, 102281, 102385, 102393, 102397, 102399, 102405, 102429, 102451, 102455, 102458, 102464, 102465, 102501, 102515, 102517, 102526, 102527, 102552, 102555, 102564, 102571, 102630, 102777, 103051, 103107, 103154, 103994, 104053, 104498, 104499, 104513, 104567, 104569, 104572, 104686, 104851, 104879, 105018, 105360, 105810, 106159, 106491, 106581, 106904, 107183, 107297, 107425, 107572, 107873, 108051, 108096, 101322, 101931, 101933, 101937, 101938, 101939, 101941, 101955, 101961, 101962, 101973, 101979, 101990, 102058, 102066, 102069, 102070, 102139, 102140, 102145, 102152, 102174, 102180, 102184, 102185, 102188, 102191, 102193, 102196, 102197, 102199, 102200, 102201, 102202, 102203, 102205, 102206, 102207, 102209, 102210, 102211, 102212, 102213, 102214, 102665, 102845, 103096, 103172, 103540, 103940, 103952, 104322, 104385, 104413, 104823, 104844, 104889, 104918, 105163, 105262, 105404, 105574, 105778, 105843, 105872, 106126, 106484, 106930, 106935, 107156, 107212, 107213, 107441, 107655, 107881, 108097, 101963, 101972, 101986, 101997, 102002, 102003, 102028, 102085, 102104, 102111, 102143, 102295, 102331, 102338, 102341, 102344, 102377, 102381, 102382, 102411, 102430, 102450, 102533, 102547, 102553, 102554, 102558, 102559, 102560, 102567, 102575, 102591, 102594, 102803, 102990, 102999, 103048, 103058, 103175, 103184, 103395, 103419, 103421, 103537, 103956, 104145, 104397, 104408, 104444, 104596, 104598, 104668, 104673, 104710, 104955, 105261, 105480, 105543, 105594, 105658, 105693, 105924, 106154, 106160, 106189, 106211, 106423, 106557, 106567, 106681, 106776, 107026, 107143, 107154, 107168, 107170, 107214, 107241, 107329, 107334, 107479, 107559, 107770, 107928, 108072, 102035, 102057, 102060, 102076, 102122, 102132, 102150, 102151, 102306, 102316, 102321, 102324, 102334, 102361, 102362, 102373, 102376, 102389, 102395, 102476, 102492, 102504, 102545, 102550, 102600, 102742, 102780, 102874, 103006, 103501, 103675, 103718, 103838, 104104, 104109, 104124, 104428, 104458, 104522, 104586, 104629, 104650, 104763, 104818, 105025, 105138, 105171, 105208, 105276, 105311, 105401, 105481, 105644, 105671, 105788, 105850, 105922, 106121, 106247, 106248, 106249, 106250, 106538, 106906, 106977, 107469, 107622, 107623, 107872, 101949, 101991, 101992, 101995, 102005, 102092, 102094, 102113, 102124, 102125, 102144, 102307, 102342, 102354, 102364, 102413, 102414, 102422, 102479, 102481, 102495, 102500, 102509, 102513, 102521, 102531, 102540, 102569, 102570, 102574, 102718, 102761, 102820, 103102, 103174, 103526, 103638, 103662, 103738, 103795, 103889, 103890, 103908, 103909, 103929, 103936, 104108, 104232, 104471, 104507, 104546, 104742, 104752, 104919, 105116, 105121, 105126, 105135, 105275, 105361, 105571, 105805, 105887, 105903, 105980, 105985, 105986, 105987, 106117, 106196, 106436, 106686, 107196, 107221, 107405, 107430, 107432, 107725, 107965, 108008, 102719, 102720, 102721, 102722, 102801, 102802, 102804, 102806, 102807, 102808, 102809, 102810, 102811, 102812, 102813, 102814, 102815, 102828, 102830, 102831, 102834, 102835, 102836, 102840, 102841, 102843, 102844, 102846, 102847, 102848, 102850, 102851, 102852, 102854, 102855, 102856, 102857, 102859, 102860, 102861, 102862, 102864, 102866, 102868, 102869, 102870, 102877, 102878, 102880, 102881, 102891, 102893, 102894, 102895, 102896, 102897, 102898, 102899, 102900, 102901, 102902, 102903, 102904, 102905, 102906, 102907, 102908, 102909, 102912, 102915, 102918, 102919, 102921, 102928, 102929, 102931, 102933, 102938, 102941, 102942, 102943, 102944, 102945, 102953, 102954, 102955, 102956, 102957, 102958, 102961, 102962, 102963, 102967, 102983, 102984, 102985, 102986, 102987, 102988, 102989, 102991, 102993, 102994, 102996, 102998, 103000, 103001, 103002, 103005, 103007, 103009, 103010, 103011, 103045, 103085, 103216, 103217, 103352, 103354, 103378, 103440, 103441, 103542, 103543, 103664, 103757, 103932, 103978, 104061, 104259, 104341, 104459, 104530, 104555, 104590, 104608, 104744, 104753, 104780, 104798, 104800, 104820, 104822, 104961, 104996, 105127, 105136, 105140, 105168, 105169, 105172, 105235, 105256, 105320, 105324, 105386, 105444, 105445, 105450, 105500, 105697, 105713, 105743, 105764, 105815, 105835, 106106, 106133, 106134, 106212, 106299, 106396, 106400, 106437, 106472, 106474, 106545, 106551, 106566, 106586, 106760, 106785, 106799, 106837, 106950, 107012, 107070, 107088, 107133, 107162, 107197, 107207, 107208, 107240, 107325, 107450, 107451, 107573, 107644, 107768, 107914, 107915, 108027, 108138, 108139, 108140, 954, 101998, 102023, 102026, 102030, 102090, 102137, 102155, 102370, 102406, 102412, 102538, 102604, 103059, 103087, 103088, 104054, 104169, 104429, 104556, 104858, 104986, 105198, 105220, 105259, 105315, 105639, 106876, 107555, 3528, 102004, 102062, 102105, 102117, 102119, 102129, 102277, 102278, 102283, 102322, 102384, 102398, 102410, 102424, 102444, 102459, 102478, 102519, 102566, 102683, 102744, 102839, 103060, 103577, 103740, 103753, 103854, 104255, 104401, 104693, 104869, 105006, 105541, 105626, 105628, 105774, 105870, 106475, 106570, 106598, 106761, 107093, 107330, 107372, 107436, 103376, 103589, 103590, 103591, 104768, 104819, 105093, 105321, 105375, 105742, 106397, 106398, 106399, 106438, 106616, 107041, 107087, 107144, 107579, 108050, 101968, 101974, 101975, 101988, 102063, 102112, 102141, 102142, 102154, 102156, 102171, 102303, 102336, 102367, 102379, 102390, 102392, 102426, 102428, 102454, 102460, 102490, 102529, 102548, 102593, 102707, 102713, 102733, 102737, 102768, 102769, 102948, 103101, 103849, 103866, 103941, 104078, 104110, 104188, 104584, 104672, 104708, 104972, 105070, 105195, 105310, 105376, 105388, 105540, 105553, 105605, 105638, 105646, 105672, 105779, 105849, 105892, 105895, 105925, 106296, 106520, 106608, 106843, 107069, 107134, 107424, 107484, 107576, 107716, 107874, 107992, 201005, 101952, 101953, 101959, 101993, 102114, 102115, 102120, 102159, 102162, 102345, 102351, 102353, 102407, 102415, 102420, 102421, 102480, 102486, 102496, 102497, 102506, 102520, 102534, 102568, 102641, 102642, 102726, 102729, 102799, 103165, 103748, 103760, 103998, 104130, 104194, 104209, 104253, 104266, 104278, 104335, 104363, 104424, 104474, 104481, 104589, 104830, 104956, 105095, 105544, 105545, 105768, 105811, 105894, 106127, 106143, 106422, 106582, 107112, 107195, 107415, 107803, 107924, 108090, 108101, 102675, 102741, 102743, 102745, 102785, 102786, 102787, 102788, 102790, 102793, 102796, 102797, 102798, 102800, 102911, 102913, 102914, 102916, 102917, 102920, 102922, 102923, 102924, 102925, 102926, 102934, 102951, 102952, 102965, 102966, 102969, 102970, 102974, 102975, 102976, 102977, 102978, 102981, 102982, 102997, 103015, 103024, 103026, 103027, 103028, 103036, 103037, 103040, 103041, 103044, 103047, 103050, 103053, 103054, 103055, 103061, 103064, 103067, 103068, 103069, 103070, 103073, 103075, 103076, 103077, 103078, 103079, 103080, 103081, 103082, 103083, 103084, 103092, 103104, 103106, 103131, 103132, 103134, 103135, 103136, 103137, 103138, 103139, 103140, 103177, 103178, 103187, 103188, 103189, 103196, 103203, 103207, 103208, 103209, 103210, 103211, 103238, 103239, 103266, 103267, 103268, 103269, 103271, 103284, 103285, 103286, 103287, 103302, 103313, 103321, 103349, 103353, 103357, 103360, 103362, 103363, 103365, 103367, 103370, 103371, 103372, 103373, 103374, 103375, 103377, 103379, 103380, 103381, 103402, 103451, 103478, 103479, 103504, 103512, 103513, 103514, 103515, 103528, 103541, 103550, 103555, 103556, 103557, 103558, 103559, 103560, 103572, 103578, 103580, 103581, 103585, 103586, 103642, 103656, 103665, 103745, 103758, 103783, 103797, 103805, 103806, 103852, 103954, 103964, 103980, 104018, 104021, 104022, 104062, 104080, 104119, 104134, 104140, 104177, 104202, 104229, 104233, 104234, 104235, 104258, 104264, 104265, 104282, 104323, 104324, 104365, 104366, 104367, 104368, 104393, 104398, 104410, 104411, 104423, 104435, 104449, 104450, 104490, 104640, 104676, 104685, 104700, 104758, 104973, 104985, 105019, 105034, 105049, 105084, 105155, 105192, 105206, 105207, 105224, 105226, 105236, 105257, 105350, 105377, 105448, 105449, 105485, 105548, 105550, 105556, 105557, 105578, 105613, 105617, 105669, 105719, 105785, 105868, 105990, 105991, 106179, 106549, 106682, 106716, 106802, 106992, 107169, 107258, 107295, 107348, 107363, 107385, 107437, 107485, 107503, 107593, 107598, 107718, 107726, 107727, 107790, 107791, 107805, 107831, 107908, 107920, 107923, 107939, 107951, 107987, 108021, 108046, 108082, 108115)
WHERE
	cs.code LIKE @code;
	
--  Consulta os clientes com representantes da distribuidora
 SELECT
	-- 	COUNT (*)
    cev.value AS cod_cliente,
	cev1.value AS entity_id,
	fs.id_erp AS cod_representante
FROM
	customer_entity AS ce
INNER JOIN customer_entity_varchar AS cev ON
	cev.entity_id = ce.entity_id
	AND cev.attribute_id = 183
LEFT JOIN customer_entity_varchar AS cev1 ON
	cev1.entity_id = ce.entity_id
	AND cev1.attribute_id = 148
LEFT JOIN fvets_salesrep AS fs ON
	cev1.value = fs.id
WHERE
	ce.website_id = 12
	AND cev.value IN(101928, 101942, 101943, 101944, 101945, 101946, 102049, 102052, 102064, 102065, 102084, 102109, 102110, 102237, 102245, 102246, 102247, 102248, 102253, 102255, 102256, 102257, 102258, 102261, 102262, 102263, 102264, 102265, 102267, 102268, 102270, 102271, 102273, 102274, 102436, 102511, 102698, 102734, 102754, 102771, 102817, 102818, 102829, 102949, 103062, 103111, 103412, 103448, 103464, 103473, 103511, 103564, 103747, 103938, 104222, 104228, 104562, 104690, 104692, 104778, 104809, 104871, 105134, 105177, 105359, 105417, 105443, 105521, 105559, 105606, 105682, 105686, 105690, 105692, 105775, 105989, 106430, 106505, 106646, 106879, 106969, 107044, 107059, 107375, 107455, 107470, 107570, 107981, 102033, 102048, 102099, 102147, 102305, 102309, 102359, 102375, 102396, 102403, 102418, 102432, 102433, 102445, 102453, 102461, 102463, 102474, 102502, 102546, 102565, 102572, 102601, 102603, 102736, 102775, 102779, 103004, 104010, 104046, 104326, 104384, 104645, 104832, 105043, 105122, 105205, 105629, 105717, 105782, 106181, 106264, 106404, 106536, 106565, 106803, 106877, 106940, 107050, 107060, 107104, 107167, 107182, 107973, 101936, 101965, 101969, 101983, 101994, 102043, 102051, 102055, 102072, 102088, 102100, 102127, 102217, 102219, 102222, 102224, 102225, 102227, 102229, 102233, 102235, 102239, 102242, 102243, 102287, 102288, 102290, 102409, 102435, 102482, 102491, 102507, 102524, 102573, 102592, 102647, 102711, 102712, 102746, 102747, 102750, 102753, 102772, 102826, 102832, 102837, 103206, 104338, 104361, 104380, 104445, 104502, 104599, 104601, 104747, 105161, 105166, 105180, 105185, 105189, 105194, 105196, 105330, 105387, 105413, 105451, 105499, 105577, 105630, 105691, 105776, 105801, 105803, 105804, 105827, 105838, 105871, 105916, 106182, 106208, 106415, 106427, 106473, 106605, 106726, 107127, 107406, 107800, 108128, 102017, 102061, 102081, 102091, 102102, 102106, 102116, 102121, 102131, 102146, 102148, 102181, 102275, 102280, 102281, 102385, 102393, 102397, 102399, 102405, 102429, 102451, 102455, 102458, 102464, 102465, 102501, 102515, 102517, 102526, 102527, 102552, 102555, 102564, 102571, 102630, 102777, 103051, 103107, 103154, 103994, 104053, 104498, 104499, 104513, 104567, 104569, 104572, 104686, 104851, 104879, 105018, 105360, 105810, 106159, 106491, 106581, 106904, 107183, 107297, 107425, 107572, 107873, 108051, 108096, 101322, 101931, 101933, 101937, 101938, 101939, 101941, 101955, 101961, 101962, 101973, 101979, 101990, 102058, 102066, 102069, 102070, 102139, 102140, 102145, 102152, 102174, 102180, 102184, 102185, 102188, 102191, 102193, 102196, 102197, 102199, 102200, 102201, 102202, 102203, 102205, 102206, 102207, 102209, 102210, 102211, 102212, 102213, 102214, 102665, 102845, 103096, 103172, 103540, 103940, 103952, 104322, 104385, 104413, 104823, 104844, 104889, 104918, 105163, 105262, 105404, 105574, 105778, 105843, 105872, 106126, 106484, 106930, 106935, 107156, 107212, 107213, 107441, 107655, 107881, 108097, 101963, 101972, 101986, 101997, 102002, 102003, 102028, 102085, 102104, 102111, 102143, 102295, 102331, 102338, 102341, 102344, 102377, 102381, 102382, 102411, 102430, 102450, 102533, 102547, 102553, 102554, 102558, 102559, 102560, 102567, 102575, 102591, 102594, 102803, 102990, 102999, 103048, 103058, 103175, 103184, 103395, 103419, 103421, 103537, 103956, 104145, 104397, 104408, 104444, 104596, 104598, 104668, 104673, 104710, 104955, 105261, 105480, 105543, 105594, 105658, 105693, 105924, 106154, 106160, 106189, 106211, 106423, 106557, 106567, 106681, 106776, 107026, 107143, 107154, 107168, 107170, 107214, 107241, 107329, 107334, 107479, 107559, 107770, 107928, 108072, 102035, 102057, 102060, 102076, 102122, 102132, 102150, 102151, 102306, 102316, 102321, 102324, 102334, 102361, 102362, 102373, 102376, 102389, 102395, 102476, 102492, 102504, 102545, 102550, 102600, 102742, 102780, 102874, 103006, 103501, 103675, 103718, 103838, 104104, 104109, 104124, 104428, 104458, 104522, 104586, 104629, 104650, 104763, 104818, 105025, 105138, 105171, 105208, 105276, 105311, 105401, 105481, 105644, 105671, 105788, 105850, 105922, 106121, 106247, 106248, 106249, 106250, 106538, 106906, 106977, 107469, 107622, 107623, 107872, 101949, 101991, 101992, 101995, 102005, 102092, 102094, 102113, 102124, 102125, 102144, 102307, 102342, 102354, 102364, 102413, 102414, 102422, 102479, 102481, 102495, 102500, 102509, 102513, 102521, 102531, 102540, 102569, 102570, 102574, 102718, 102761, 102820, 103102, 103174, 103526, 103638, 103662, 103738, 103795, 103889, 103890, 103908, 103909, 103929, 103936, 104108, 104232, 104471, 104507, 104546, 104742, 104752, 104919, 105116, 105121, 105126, 105135, 105275, 105361, 105571, 105805, 105887, 105903, 105980, 105985, 105986, 105987, 106117, 106196, 106436, 106686, 107196, 107221, 107405, 107430, 107432, 107725, 107965, 108008, 102719, 102720, 102721, 102722, 102801, 102802, 102804, 102806, 102807, 102808, 102809, 102810, 102811, 102812, 102813, 102814, 102815, 102828, 102830, 102831, 102834, 102835, 102836, 102840, 102841, 102843, 102844, 102846, 102847, 102848, 102850, 102851, 102852, 102854, 102855, 102856, 102857, 102859, 102860, 102861, 102862, 102864, 102866, 102868, 102869, 102870, 102877, 102878, 102880, 102881, 102891, 102893, 102894, 102895, 102896, 102897, 102898, 102899, 102900, 102901, 102902, 102903, 102904, 102905, 102906, 102907, 102908, 102909, 102912, 102915, 102918, 102919, 102921, 102928, 102929, 102931, 102933, 102938, 102941, 102942, 102943, 102944, 102945, 102953, 102954, 102955, 102956, 102957, 102958, 102961, 102962, 102963, 102967, 102983, 102984, 102985, 102986, 102987, 102988, 102989, 102991, 102993, 102994, 102996, 102998, 103000, 103001, 103002, 103005, 103007, 103009, 103010, 103011, 103045, 103085, 103216, 103217, 103352, 103354, 103378, 103440, 103441, 103542, 103543, 103664, 103757, 103932, 103978, 104061, 104259, 104341, 104459, 104530, 104555, 104590, 104608, 104744, 104753, 104780, 104798, 104800, 104820, 104822, 104961, 104996, 105127, 105136, 105140, 105168, 105169, 105172, 105235, 105256, 105320, 105324, 105386, 105444, 105445, 105450, 105500, 105697, 105713, 105743, 105764, 105815, 105835, 106106, 106133, 106134, 106212, 106299, 106396, 106400, 106437, 106472, 106474, 106545, 106551, 106566, 106586, 106760, 106785, 106799, 106837, 106950, 107012, 107070, 107088, 107133, 107162, 107197, 107207, 107208, 107240, 107325, 107450, 107451, 107573, 107644, 107768, 107914, 107915, 108027, 108138, 108139, 108140, 954, 101998, 102023, 102026, 102030, 102090, 102137, 102155, 102370, 102406, 102412, 102538, 102604, 103059, 103087, 103088, 104054, 104169, 104429, 104556, 104858, 104986, 105198, 105220, 105259, 105315, 105639, 106876, 107555, 3528, 102004, 102062, 102105, 102117, 102119, 102129, 102277, 102278, 102283, 102322, 102384, 102398, 102410, 102424, 102444, 102459, 102478, 102519, 102566, 102683, 102744, 102839, 103060, 103577, 103740, 103753, 103854, 104255, 104401, 104693, 104869, 105006, 105541, 105626, 105628, 105774, 105870, 106475, 106570, 106598, 106761, 107093, 107330, 107372, 107436, 103376, 103589, 103590, 103591, 104768, 104819, 105093, 105321, 105375, 105742, 106397, 106398, 106399, 106438, 106616, 107041, 107087, 107144, 107579, 108050, 101968, 101974, 101975, 101988, 102063, 102112, 102141, 102142, 102154, 102156, 102171, 102303, 102336, 102367, 102379, 102390, 102392, 102426, 102428, 102454, 102460, 102490, 102529, 102548, 102593, 102707, 102713, 102733, 102737, 102768, 102769, 102948, 103101, 103849, 103866, 103941, 104078, 104110, 104188, 104584, 104672, 104708, 104972, 105070, 105195, 105310, 105376, 105388, 105540, 105553, 105605, 105638, 105646, 105672, 105779, 105849, 105892, 105895, 105925, 106296, 106520, 106608, 106843, 107069, 107134, 107424, 107484, 107576, 107716, 107874, 107992, 201005, 101952, 101953, 101959, 101993, 102114, 102115, 102120, 102159, 102162, 102345, 102351, 102353, 102407, 102415, 102420, 102421, 102480, 102486, 102496, 102497, 102506, 102520, 102534, 102568, 102641, 102642, 102726, 102729, 102799, 103165, 103748, 103760, 103998, 104130, 104194, 104209, 104253, 104266, 104278, 104335, 104363, 104424, 104474, 104481, 104589, 104830, 104956, 105095, 105544, 105545, 105768, 105811, 105894, 106127, 106143, 106422, 106582, 107112, 107195, 107415, 107803, 107924, 108090, 108101, 102675, 102741, 102743, 102745, 102785, 102786, 102787, 102788, 102790, 102793, 102796, 102797, 102798, 102800, 102911, 102913, 102914, 102916, 102917, 102920, 102922, 102923, 102924, 102925, 102926, 102934, 102951, 102952, 102965, 102966, 102969, 102970, 102974, 102975, 102976, 102977, 102978, 102981, 102982, 102997, 103015, 103024, 103026, 103027, 103028, 103036, 103037, 103040, 103041, 103044, 103047, 103050, 103053, 103054, 103055, 103061, 103064, 103067, 103068, 103069, 103070, 103073, 103075, 103076, 103077, 103078, 103079, 103080, 103081, 103082, 103083, 103084, 103092, 103104, 103106, 103131, 103132, 103134, 103135, 103136, 103137, 103138, 103139, 103140, 103177, 103178, 103187, 103188, 103189, 103196, 103203, 103207, 103208, 103209, 103210, 103211, 103238, 103239, 103266, 103267, 103268, 103269, 103271, 103284, 103285, 103286, 103287, 103302, 103313, 103321, 103349, 103353, 103357, 103360, 103362, 103363, 103365, 103367, 103370, 103371, 103372, 103373, 103374, 103375, 103377, 103379, 103380, 103381, 103402, 103451, 103478, 103479, 103504, 103512, 103513, 103514, 103515, 103528, 103541, 103550, 103555, 103556, 103557, 103558, 103559, 103560, 103572, 103578, 103580, 103581, 103585, 103586, 103642, 103656, 103665, 103745, 103758, 103783, 103797, 103805, 103806, 103852, 103954, 103964, 103980, 104018, 104021, 104022, 104062, 104080, 104119, 104134, 104140, 104177, 104202, 104229, 104233, 104234, 104235, 104258, 104264, 104265, 104282, 104323, 104324, 104365, 104366, 104367, 104368, 104393, 104398, 104410, 104411, 104423, 104435, 104449, 104450, 104490, 104640, 104676, 104685, 104700, 104758, 104973, 104985, 105019, 105034, 105049, 105084, 105155, 105192, 105206, 105207, 105224, 105226, 105236, 105257, 105350, 105377, 105448, 105449, 105485, 105548, 105550, 105556, 105557, 105578, 105613, 105617, 105669, 105719, 105785, 105868, 105990, 105991, 106179, 106549, 106682, 106716, 106802, 106992, 107169, 107258, 107295, 107348, 107363, 107385, 107437, 107485, 107503, 107593, 107598, 107718, 107726, 107727, 107790, 107791, 107805, 107831, 107908, 107920, 107923, 107939, 107951, 107987, 108021, 108046, 108082, 108115)
	;AND fs.id_erp IS NULL;

	 INSERT INTO customer_entity_varchar (entity_type_id, attribute_id, entity_id, value) VALUES (1, 148, '45855', '1847');
	 SELECT * FROM customer_entity_varchar WHERE attribute_id = 148 AND value = 1847;
	 
	 SELECT * FROM eav_attribute WHERE attribute_id = 148;
	
-- 	Representante da distribuidora
SELECT
	fs.id
FROM
	fvets_salesrep AS fs
INNER JOIN core_store AS cs ON
	cs.store_id = fs.store_id
	AND cs.code LIKE @code
WHERE
	fs.id_erp IN(107180); -- 478

	SELECT id FROM fvets_salesrep WHERE store_id = 22 AND id_erp = 102447;


SELECT
	ce.entity_id, cev.value, cev1.value
FROM
	customer_entity_varchar AS cev
INNER JOIN customer_entity AS ce ON
	cev.entity_id = ce.entity_id AND cev.attribute_id = 183 -- customers
LEFT JOIN customer_entity_varchar AS cev1 ON
	ce.entity_id = cev1.entity_id AND cev1.attribute_id = 148 -- rep
WHERE ce.website_id = 12 AND cev.value = '103395';

SELECT * FROM eav_attribute WHERE attribute_id IN (148, 183);

SELECT * from customer_entity_varchar WHERE value = 107939;

SELECT ce.entity_id, cev.value, cev1.value FROM customer_entity_varchar AS cev INNER JOIN customer_entity AS ce ON cev.entity_id = ce.entity_id AND cev.attribute_id = 183 LEFT JOIN customer_entity_varchar AS cev1 ON ce.entity_id = cev1.entity_id AND cev1.attribute_id = 148 WHERE ce.website_id = 12 AND cev.value = '102698';

UPDATE customer_entity_varchar SET `value` = '484' WHERE attribute_id = 148 AND entity_id = '45928';

SELECT * FROM customer_entity_varchar WHERE entity_id = '45928' AND attribute_id = 148;

INSERT INTO customer_entity_varchar (attribute_id, value) VALUES (148, '484');
--  Actual parameter values may differ, what you see is a default string representation of values
INSERT INTO customer_entity_varchar (entity_type_id,attribute_id,entity_id,value) VALUES (1,148,45928,'484') ;