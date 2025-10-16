CREATE TABLE `contas_bancarias_movimentos` (
	`id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`unidade_orcamentaria_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	`conta_bancaria_id` BIGINT UNSIGNED NOT NULL,
	`lancamento_tipo_id` BIGINT UNSIGNED NOT NULL,
	`vinculo` BIGINT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Recebe id das tabela abertura de saldo, receita e despesas orçamentarias, receita e despesa extra, transferências financeiras, repasses e RP pagos',
	`data` DATE NOT NULL,
	`tipo_valor` ENUM('C','D') NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`valor` DECIMAL(14,2) NOT NULL,
	`fonte_recurso_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`created_at` TIMESTAMP NULL DEFAULT NULL,
	`updated_at` TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `contas_bancarias_movimentos_lancamento_tipo_id_foreign` (`lancamento_tipo_id`) USING BTREE,
	INDEX `contas_bancarias_movimentos_conta_bancaria_id_foreign` (`conta_bancaria_id`) USING BTREE,
	CONSTRAINT `contas_bancarias_movimentos_conta_bancaria_id_foreign` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `contas_bancarias` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `contas_bancarias_movimentos_lancamento_tipo_id_foreign` FOREIGN KEY (`lancamento_tipo_id`) REFERENCES `lancamentos_tipos` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=15
;
