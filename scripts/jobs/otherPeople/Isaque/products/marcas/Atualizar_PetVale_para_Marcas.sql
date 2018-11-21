-- Atualizar Pedidos
-- Verificar Pedidos das stores que seram apagadas
SELECT COUNT(*) FROM sales_flat_order WHERE store_id IN (12,13,14,21);

-- Atualizar o campo Store para manter registro
UPDATE sales_flat_order SET store_id = 58 WHERE store_id IN (12,13,14,21);
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

-- Puxar Categorias de Marcas
-- Verificar Categoria principal da PetVale
SELECT * FROM core_config_data WHERE `path` = 'general/categories/menu_root_category' AND scope_id = 11;

-- Alterar Categoria principal para Marcas
UPDATE core_config_data SET value = 915 WHERE `path` = 'general/categories/menu_root_category' AND scope_id = 11;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

-- VERIFICAR REPRESENTANTES 
SELECT * FROM fvets_salesrep WHERE store_id = 11;

-- Atualiar Stores do Representante 
UPDATE fvets_salesrep SET store_id = '11' WHERE id IN ('10','173','175','176','177','178','179','180','182','183','184','188','189','191','192','193','195','939','940','941','942','943','1493','1494','1495','2063');
  
-- Deletar Categorias ANTIGAS (Fora de MARCAS)
DELETE FROM fvets_salesrep_category WHERE salesrep_id IN ('10','173','175','176','177','178','179','180','182','183','184','188','189','191','192','193','195','939','940','941','942','943','1493','1494','1495','2063');

-- Inserir Categorias Novas (Dentro de MARCAS)
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (10,1581,1),(10,720,1),(10,597,1),(10,979,1),(10,1550,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (173,1581,1),(173,720,1),(173,597,1),(173,979,1),(173,1550,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (175,1581,1),(175,720,1),(175,597,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (176,1581,1),(176,597,1),(176,979,1),(176,2219,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (177,1581,1),(177,720,1),(177,597,1),(177,979,1),(177,2219,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (178,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (179,1581,1),(179,597,1),(179,979,1),(179,2219,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (180,1581,1),(180,597,1),(180,979,1),(180,2219,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (182,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (183,1581,1),(183,720,1),(183,597,1),(183,979,1),(183,1550,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (184,1581,1),(184,720,1),(184,597,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (188,1581,1),(188,597,1),(188,979,1),(188,1550,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (189,1581,1),(189,597,1),(189,979,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (191,1581,1),(191,720,1),(191,597,1),(191,979,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (192,1581,1),(192,720,1),(192,597,1),(192,979,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (193,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (195,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (939,1581,1),(939,597,1),(939,979,1),(939,2219,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (940,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (941,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (942,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (943,720,1);
INSERT INTO fvets_salesrep_category (salesrep_id,category_id,`position`) VALUES (2063,1581,1),(2063,597,1),(2063,2219,1);
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

-- Verificar Clientes com outras visoes de loja
SELECT * FROM customer_entity_text WHERE attribute_id = 191 AND value LIKE '%11,%';

-- Atualizar Visao da loja dos Clientes
UPDATE customer_entity_text SET value = 11 WHERE attribute_id = 191 AND entity_id IN ('7068','5805','5848','6039','861597','5760','6710');






