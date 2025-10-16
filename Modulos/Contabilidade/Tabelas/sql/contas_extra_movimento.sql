CREATE TABLE `contas_extra_movimento` (
	`id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	`cliente_id` BIGINT UNSIGNED NOT NULL,
	`conta_extra_orcamentaria_id` BIGINT UNSIGNED NOT NULL,
	`unidade_gestora_id` BIGINT UNSIGNED NOT NULL,
	`lancamento_tipo_id` BIGINT UNSIGNED NOT NULL,
	`vinculo` BIGINT UNSIGNED NULL DEFAULT '0' COMMENT 'Recebe id das tabelas abertura de saldos, receita extra e despesa extra',
	`data` DATE NULL DEFAULT NULL,
	`valor` FLOAT UNSIGNED NULL DEFAULT '0',
	`tipo_valor` ENUM('C','D') NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `contas_extra_movimento_cliente_id_foreign` (`cliente_id`) USING BTREE,
	INDEX `contas_extra_movimento_unidade_gestora_id_foreign` (`unidade_gestora_id`) USING BTREE,
	INDEX `contas_extra_movimento_conta_extra_orcamentaria_id_foreign` (`conta_extra_orcamentaria_id`) USING BTREE,
	INDEX `contas_extra_movimento_lancaemnto_tipo_id` (`lancamento_tipo_id`) USING BTREE,
	CONSTRAINT `contas_extra_movimento_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `contas_extra_movimento_conta_extra_orcamentaria_id_foreign` FOREIGN KEY (`conta_extra_orcamentaria_id`) REFERENCES `contas_extra_orcamentarias` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `contas_extra_movimento_lancaemnto_tipo_id` FOREIGN KEY (`lancamento_tipo_id`) REFERENCES `lancamentos_tipos` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `contas_extra_movimento_unidade_gestora_id_foreign` FOREIGN KEY (`unidade_gestora_id`) REFERENCES `unidades_gestoras` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
