-- Informar o código da distribuidora
SET
@code = 'codigo';

-- Informar os ID's Erp dos produtos
CREATE TEMPORARY TABLE ENTITY
SELECT
	cpev.entity_id AS entity_id
FROM
	catalog_product_entity_varchar AS cpev
INNER JOIN core_store AS cs ON
	cs.code LIKE @code
AND cpev.store_id = cs.store_id
AND cpev.entity_type_id = 4
AND cpev.attribute_id = 185
WHERE cpev.value IN (
	'iderp'
);

-- Select dos dados a serem utilizados nos scripts abaixo
SELECT entity_id FROM ENTITY;

-- Desabilitar os produtos com registro de vendas
-- Definir Status CPEI1
-- Value = 1: Habilitado
-- Value = 2: Desabilitado

-- Definir Visibilidade CPEI
-- Value = 1: Não visível individualmente
-- Value = 2: Catálogo
-- Value = 3: Buscar
-- Value = 4: Catálogo, busca

UPDATE 
	catalog_product_entity_int AS cpei
INNER JOIN core_store AS cs 
	ON cs.code LIKE @code
INNER JOIN catalog_product_entity_varchar AS cpev ON 
	cpev.entity_id = cpei.entity_id
AND cpei.attribute_id = 102
INNER JOIN catalog_product_entity_int AS cpei1 ON
	cpev.entity_id = cpei1.entity_id
AND cpei1.attribute_id = 96
AND cpei1.entity_type_id = cpei.entity_type_id
AND cpei1.store_id = cpei.store_id
SET cpei.value = 1, cpei1.value = 2
WHERE cpei1.entity_type_id = 4 AND cpei.store_id = cs.store_id AND cpev.entity_id IN (SELECT entity_id FROM ENTITY);

-- Verificar Status e Visibilidade dos produtos
SELECT
	cpei1.entity_id AS Produto,
	cpei1.value AS Status,
	cpei.value AS Visibilidade
FROM
	catalog_product_entity_int AS cpei
INNER JOIN core_store AS cs ON
	cs.code LIKE @code
INNER JOIN catalog_product_entity_int AS cpei1 ON
	cpei1.entity_id = cpei.entity_id
	AND cpei1.store_id = cpei.store_id
	AND cpei1.store_id = cs.store_id
	AND cpei1.entity_type_id = 4
WHERE
	cpei1.attribute_id = 96
	AND cpei.attribute_id = 102
	AND cpei1.entity_id IN (SELECT entity_id FROM ENTITY);


-- Remover tabela temporária 
DROP TABLE ENTITY;