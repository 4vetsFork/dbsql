-- Consultar o value
SELECT * FROM core_config_data where path like '%design/header/logo_src%' and value like '%websites/%';
 
-- Atualizar o caminho de acordo com scope_id
UPDATE
    core_config_data AS ccd
INNER JOIN core_config_data AS ccd1 ON
    ccd1.`path` = ccd.`path`
AND ccd1.scope_id = ccd.scope_id
SET ccd.value = CONCAT('websites/', ccd1.scope_id, '/logo.png')
WHERE ccd1.`scope` = 'websites' AND ccd1.`path` LIKE 'design/header/logo_src' AND ccd1.value LIKE '%websites/%';



