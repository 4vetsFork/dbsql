UPDATE core_config_data SET value = CONCAT('http://', SUBSTRING_INDEX(SUBSTRING_INDEX(value, 'http://', -1), '.', 1), '.4vets.dev/')
WHERE path LIKE 'web/unsecure/base_url';

UPDATE core_config_data SET value =
case INSTR(value, 'https')
when true then CONCAT('http://', SUBSTRING_INDEX(SUBSTRING_INDEX(value, 'https://', -1), '.', 1), '.4vets.dev/')
when false then CONCAT('http://', SUBSTRING_INDEX(SUBSTRING_INDEX(value, 'http://', -1), '.', 1), '.4vets.dev/')
end
WHERE path LIKE 'web/secure/base_url';

UPDATE `core_config_data` SET `scope` = 'default', `scope_id` = '0', `path` = 'system/smtp/disable', `value` = '1' WHERE (config_id='523');
UPDATE `core_config_data` SET `value` = '' WHERE `core_config_data`.`config_id` =498;
UPDATE `core_config_data` SET `value` = '' WHERE `core_config_data`.`config_id` =1703;
UPDATE `core_config_data` SET `value` = '' WHERE `core_config_data`.`config_id` =1859;

select * from core_config_data where value like '%.com.br/';

UPDATE `core_cache_option` SET `value` = '0';

UPDATE `core_config_data` SET `value` = '8a829418473f089101473f8bc0d60125' WHERE `core_config_data`.`path` = 'payment/gwap_auth/security_sender';
UPDATE `core_config_data` SET `value` = '8a829418473f089101473f8bc0db0129' WHERE `core_config_data`.`path` = 'payment/gwap_auth/user_login';
UPDATE `core_config_data` SET `value` = 'QK6zSetH' WHERE `core_config_data`.`path` = 'payment/gwap_auth/user_pwd';
UPDATE `core_config_data` SET `value` = 'CONNECTOR_TEST' WHERE `core_config_data`.`path` = 'payment/gwap_auth/ambiente';
UPDATE `core_config_data` SET `value` = '8a829418473f979601473f9d577e000f' WHERE `core_config_data`.`path` = 'payment/gwap_cc/transaction_channel_cielo';
UPDATE `core_config_data` SET `value` = '8a82941848ac86150148b37490870aec' WHERE `core_config_data`.`path` = 'payment/gwap_boleto/transaction_channel_itau';
UPDATE `core_config_data` SET `value` = '8a82941848ac86150148b374db910af0' WHERE `core_config_data`.`path` = 'payment/gwap_boleto/transaction_channel_bradesco';
UPDATE `core_config_data` SET `value` = 'cpf,cnpj' WHERE `core_config_data`.`path` = 'allpago/gwap_boleto/campo_documento';

DELETE FROM `core_config_data` WHERE `core_config_data`.`path` = 'dev/css/merge_css_files';

DELETE FROM `core_config_data` WHERE path = 'system/smtp/disable';

INSERT INTO `core_config_data` (scope, scope_id, path, value) VALUES ('default', '0', 'system/smtp/disable', '1');



DELETE FROM `core_config_data` WHERE path = 'web/cookie/cookie_domain';

INSERT INTO `core_config_data` (scope, scope_id, path, value) VALUES ('default', '0', 'web/cookie/cookie_domain', '.4vets.4vets.dev');



DELETE FROM `core_config_data` WHERE `core_config_data`.`path` = 'mandrill/general/apikey';



UPDATE `core_cache_option` SET `value` = '0';



UPDATE `core_config_data` SET `value` = '8a829418473f089101473f8bc0d60125' WHERE `core_config_data`.`path` = 'payment/gwap_auth/security_sender';

UPDATE `core_config_data` SET `value` = '8a829418473f089101473f8bc0db0129' WHERE `core_config_data`.`path` = 'payment/gwap_auth/user_login';

UPDATE `core_config_data` SET `value` = 'QK6zSetH' WHERE `core_config_data`.`path` = 'payment/gwap_auth/user_pwd';

UPDATE `core_config_data` SET `value` = 'CONNECTOR_TEST' WHERE `core_config_data`.`path` = 'payment/gwap_auth/ambiente';

UPDATE `core_config_data` SET `value` = '8a829418473f979601473f9d577e000f' WHERE `core_config_data`.`path` = 'payment/gwap_cc/transaction_channel_cielo';

UPDATE `core_config_data` SET `value` = '8a82941848ac86150148b37490870aec' WHERE `core_config_data`.`path` = 'payment/gwap_boleto/transaction_channel_itau';

UPDATE `core_config_data` SET `value` = '8a82941848ac86150148b374db910af0' WHERE `core_config_data`.`path` = 'payment/gwap_boleto/transaction_channel_bradesco';

UPDATE `core_config_data` SET `value` = 'cpf,cnpj' WHERE `core_config_data`.`path` = 'allpago/gwap_boleto/campo_documento';



DELETE FROM `core_config_data` WHERE `core_config_data`.`path` = 'dev/css/merge_css_files';



UPDATE `core_config_data` SET `value` = 'julio@4vets.com.br' WHERE `core_config_data`.`config_id` =1857;

UPDATE `core_config_data` SET `value` = 'julio@4vets.com.br' WHERE `core_config_data`.`config_id` =1855;

UPDATE `core_config_data` SET `value` = 'julio@4vets.com.br' WHERE `core_config_data`.`config_id` =1853;

UPDATE `core_config_data` SET `value` = 'julio@4vets.com.br' WHERE `core_config_data`.`config_id` =1851;



DELETE FROM `core_config_data` WHERE `path` = 'dev/restrict/allow_ips';

DELETE FROM `core_config_data` WHERE path = 'web/cookie/cookie_domain';

UPDATE `core_config_data` SET `value`='1' WHERE `path`='design/head/demonotice';

