-- ###################################################################################################################################################
-- Orders in WINTHOR
------------------------------------------------------------------------
-- Campos Descrição quanto o pedido não é exportado
	-- CODRETORNO
	-- OBSERVACAO_PC
-- NUMPEDCLI, NUMPEDRCA e NUMPEDWEB é o entity_id do pedido no Magento
-- NUMPED é o número do pedido na WINTHOR 	
------------------------------------------------------------------------
-- Tabela temporaria. PCPEDITEMP e PCPEDCTEMP 
SELECT * FROM PCPEDCTEMP WHERE NUMPEDWEB = 17205;
SELECT * FROM PCPEDITEMP WHERE NUMPEDCLI = 17205;

UPDATE PCPEDCTEMP SET POSICAO = 'B', CODUSUR = 89 WHERE NUMPEDCLI = 16985;

DELETE FROM PCPEDCTEMP WHERE NUMPEDWEB = 17066;
DELETE FROM PCPEDITEMP WHERE NUMPEDCLI = 16985;

-- Tabela do pedido exportado com sucesso. PCPEDC
SELECT * FROM PCPEDC WHERE NUMPED IN (SELECT NUMPED FROM PCPEDCTEMP WHERE NUMPEDCLI IN (17205));




-- Pedido offLine
SELECT * FROM PCPEDC WHERE NUMPED = 132203745;
SELECT CODPROD, DATAALTER, PVENDAANT, PVENDA FROM PCPRECO WHERE CODPROD IN (9339);
SELECT NUMPED FROM PCPEDCTEMP WHERE NUMPED = 132203745;
SELECT * FROM PCPEDITEMP; WHERE n = 132203745;


-- Condição de pagamento

SELECT * FROM PCPLPAG;



-- Informações de todos pedidos, exportados ou não da tabela temporaria para tabela definitiva
SELECT
	TD."DATA",
	TD.NUMPED PEDIDO_WINTHOR,
	TT.NUMPEDCLI PEDIDO_MAGENTO,
	TT.IMPORTADO,
	TT.OBSERVACAO_PC OBSERVACAO_WINTHOR	
FROM
	PCPEDC TD
RIGHT JOIN PCPEDCTEMP TT ON
	TD.NUMPED = TT.NUMPED
WHERE
	TT.NUMPEDCLI IN(16633);

-- ###################################################################################################################################################
-- Exportar o pedido no MAGENTO
SELECT * FROM whitelabel.sales_flat_order WHERE entity_id = 17205;
-- Para reexportar o pedido pelo athena
UPDATE whitelabel.sales_flat_order SET status = 'pending', state = 'new', exported = 1 WHERE entity_id IN (17205);
-- Exportar manualmente
UPDATE whitelabel.sales_flat_order SET status = 'distribuidora', state = 'processing', exported = 1 WHERE entity_id IN (17081);
-- ###################################################################################################################################################

SELECT * FROM dbo.Ivpedidocab WHERE Numero IN (17002, 16999, 16997, 16989);
--SELECT * FROM salesOrders WHERE store_id = 28 AND order_id = 16724;

SELECT * FROM dbo.Clientes WHERE Clicod = 17056;

SELECT * FROM dbo.Clientes WHERE Cliema = 'camilamzvet@hotmail.com';

SELECT * FROM dbo.Clientes WHERE Cliema = 'camilamzvet@hotmail.com';

SELECT * FROM dbo.[Mail x clientes]

SELECT Procod, Prodes, Propal  FROM dbo.Produtos WHERE Procod IN(126504, 124052);

SELECT * FROM dbo.Produtos WHERE Prodes = 'GATO AD.LIGHT SALMAO  500 GR';

SELECT Procod, Prodes, Propal FROM dbo.Produtos; WHERE Procod = 1948;

-- Supermix

-- Minas pet
SELECT * FROM sankhya.V_REPRESENTANTES;
SELECT TIPO_DE_NEGOCIO, ID_REMOTO_CLIENTE, ID_REMOTO_TABELA, ID_REMOTO_REPRESENTANTE, LTRIM(RTRIM(ID_REMOTO_RAMO_ATIV)) as activity_type, LTRIM(RTRIM(NOME)) AS NAME, LTRIM(RTRIM(RAZAOSOCIAL)) as social_reason, NOMEFANTASIA, DOC, TP_DOC, INSC_EST, LTRIM(RTRIM(LOGR)) as street, LTRIM(RTRIM(NUMERO)) as numero, LTRIM(RTRIM(COMPLEMENTO)) as complemento, LTRIM(RTRIM(DESC_BAI)) as bairro, CEP_CLI, LTRIM(RTRIM(DESC_CID)) as city, COD_UF, TELEFONE, LTRIM(RTRIM(EMAIL)) as email, ATIVO, DT_ULT_COMPRA, VLR_ULT_COMPRA, INADIMPLENTE, COND_PAG, FORMA_PAG FROM sankhya.V_CLIENTES