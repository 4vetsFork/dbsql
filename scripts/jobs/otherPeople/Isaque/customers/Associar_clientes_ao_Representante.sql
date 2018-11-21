SET @store = 69;

-- Verificar Clientes e seus reps    
SELECT ce.entity_id,cev1.value AS 'Iderp Cliente',fs.id_erp AS 'Rep' FROM customer_entity AS ce 
LEFT JOIN customer_entity_varchar AS cev ON ce.entity_id = cev.entity_id AND cev.attribute_id = 148
LEFT JOIN customer_entity_varchar AS cev1 ON ce.entity_id = cev1.entity_id AND cev1.attribute_id = 183
LEFT JOIN fvets_salesrep AS fs ON fs.id = cev.value AND fs.store_id = ce.store_id
WHERE ce.store_id = @store AND cev1.value IN ('3872','2447','261','3773','3939','3115','3929','2315','3271','2850','2080','1344','2961','1629','1520','3940','3642','3927','3574','2730','3664','3665','2532','1768','3777','3822','394','3873','3663','1481','1553','2580','526','19','3805','229','3895','153','2615','590','3612','666','1576','3958','1238','3643','3992','3076','105','1042','3342','3786','3369','3158','3874','3536','1970','3292','2783','3845','3976','3390','2355','609','3331','3240','3010','643','2617','3639','118','2623','1397','219','3003','2866','858','1876','2777','436','3824','285','3767','2736','954','3393','2144','2467','3784','3667','103','1146','3024','2278','2032','3487','1503','3798','1911','3813','2636','3718','3647','3855','3527','3540','164','3945','3746','3949','3711','3826','3366','313','3501','1417','3173','3376','1947','3752','2944','2864','3502','3395','3281','2348','3829','1465','3206','3765','3966','2651','3103','1872','1324','2342','3666','3231','3237','3063','2634','3825','2876','3849','2272','3860','3625','3569','3864','3935','3769','2548','2825','3831','857','3689','3164','3971','3488','3797','222','3776','1365','3655','3840','1593','2425','3177','800','1189','2506','3886','55','3072','971','162','1701','3097','2508','3871','2618','3649','3377','3507','3372','1542','1584','3273','3903','3565','3244','63','3596','57','3090','2587','3607','3681','3731','1174','2865','3787','3579','3172','269','3768','2699','3804','3857','3780','1280','1388','2799','3828','3801','3371','3040','2333','2559','3943','1762','1372','1603','183','2714','597','3757','2210','389','2344','3775','3878','3582','2848','421','1866','3766','3349','2469','3807','3885','3928','3367','2969','3091');

-- Associar Representante 141
UPDATE customer_entity_varchar AS cev
INNER JOIN customer_entity_varchar AS cev1 ON cev.entity_id = cev1.entity_id 
SET cev.value = 2195 WHERE cev.attribute_id = 148 AND cev.entity_id 
IN (SELECT entity_id FROM customer_entity WHERE store_id = @store) AND cev1.attribute_id = 183 AND cev1.value IN ('3872','2447','261','3773','3939','3115','3929','2315','3271','2850','2080','1344','2961','1629','1520','3940','3642','3927','3574','2730','3664','3665','2532','1768','3777','3822','394','3873','3663','1481','1553','2580','526','19','3805','229','3895','153','2615','590','3612','666','1576','3958','1238','3643','3992','3076','105','1042','3342','3786','3369','3158','3874','3536','1970','3292','2783','3845','3976','3390','2355','609','3331','3240','3010','643','2617','3639','118','2623','1397','219','3003','2866','858','1876','2777','436','3824','285','3767','2736','954','3393','2144','2467','3784','3667','103','1146','3024','2278','2032','3487','1503','3798','1911','3813','2636','3718','3647','3855','3527','3540','164','3945','3746','3949','3711','3826','3366','313','3501','1417','3173','3376','1947','3752','2944','2864','3502','3395','3281','2348','3829','1465','3206','3765','3966','2651','3103','1872','1324','2342','3666','3231','3237','3063','2634','3825','2876','3849','2272','3860','3625','3569','3864','3935','3769','2548','2825','3831','857','3689','3164','3971','3488','3797','222','3776','1365','3655','3840','1593','2425','3177','800','1189','2506','3886','55','3072','971','162','1701','3097','2508','3871','2618','3649','3377','3507','3372','1542','1584','3273','3903','3565','3244','63','3596','57','3090','2587','3607','3681','3731','1174','2865','3787','3579','3172','269','3768','2699','3804','3857','3780','1280','1388','2799','3828','3801','3371','3040','2333','2559','3943','1762','1372','1603','183','2714','597','3757','2210','389','2344','3775','3878','3582','2848','421','1866','3766','3349','2469','3807','3885','3928','3367','2969','3091');
