CREATE TABLE `despesas_fixadas_movimento` (
	`id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`cliente_id` BIGINT UNSIGNED NOT NULL,
	`despesa_fixada_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	`lancamento_tipo_id` BIGINT UNSIGNED NOT NULL DEFAULT '0',
	`vinculo` BIGINT UNSIGNED NOT NULL COMMENT 'Recebe os ids das tabelas Despesa Fixada, Créditos Adionais, Empenhos e Anulação de empenhos.',
	`data` DATE NOT NULL,
	`numero_documento` CHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`descricao` VARCHAR(200) NOT NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci',
	`valor` DECIMAL(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
	`tipo_valor` ENUM('C','D') NOT NULL DEFAULT 'C' COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `despesas_fixadas_movimento_unico` (`despesa_fixada_id`, `vinculo`, `lancamento_tipo_id`) USING BTREE,
	INDEX `despesas_ficadas_movemento_lancamento_tipo_id` (`lancamento_tipo_id`) USING BTREE,
	INDEX `despesas_fixadas_movimento_cliente_id` (`cliente_id`) USING BTREE,
	CONSTRAINT `despesas_ficadas_movemento_lancamento_tipo_id` FOREIGN KEY (`lancamento_tipo_id`) REFERENCES `lancamentos_tipos` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `despesas_fixadas_movimento_despesa_fixada_id_foreign` FOREIGN KEY (`despesa_fixada_id`) REFERENCES `despesas_fixadas` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `despesas_fixadas_movimento_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=185855
;
