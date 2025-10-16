CREATE TABLE `receitas_previstas_movimento` (
	`id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	`cliente_id` BIGINT UNSIGNED NOT NULL,
	`receita_prevista_id` BIGINT UNSIGNED NOT NULL,
	`unidade_orcamentaria_id` BIGINT UNSIGNED NOT NULL,
	`lancamento_tipo_id` BIGINT UNSIGNED NOT NULL,
	`vinculo` BIGINT UNSIGNED NULL DEFAULT '0' COMMENT 'Recebe id das tabelas receita prevista, execucao receita orcamentaria',
	`data` DATE NULL DEFAULT NULL,
	`valor` FLOAT UNSIGNED NULL DEFAULT '0',
	`tipo_valor` ENUM('C','D') NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
