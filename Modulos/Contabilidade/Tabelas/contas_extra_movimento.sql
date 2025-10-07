CREATE TABLE `contas_extra_movimento` (
	`id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	`conta_extra_orcamentaria_id` BIGINT UNSIGNED NOT NULL,
	`unidade_gestora_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`vinculo` BIGINT UNSIGNED NULL DEFAULT NULL COMMENT '0 = Inscrição\r\n1 = Receita\r\n2 = Despesa',
	`data` DATE NULL DEFAULT NULL,
	`numero_documento` CHAR(30) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`valor` FLOAT UNSIGNED NULL DEFAULT '0',
	`tipo_valor` ENUM('C','D') NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `conta_extra_orcamentaria_fk` (`conta_extra_orcamentaria_id`) USING BTREE,
	INDEX `unidade_gestora_id` (`unidade_gestora_id`) USING BTREE,
	CONSTRAINT `conta_extra_orcamentaria_fk` FOREIGN KEY (`conta_extra_orcamentaria_id`) REFERENCES `contas_extra_orcamentarias` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `unidade_gestora_id` FOREIGN KEY (`unidade_gestora_id`) REFERENCES `unidades_gestoras` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
