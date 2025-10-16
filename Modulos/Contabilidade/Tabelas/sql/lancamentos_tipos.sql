CREATE TABLE `lancamentos_tipos` (
	`id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`codigo` CHAR(3) NOT NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci',
	`nome` VARCHAR(60) NOT NULL DEFAULT ' ' COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `lancamentos_tipos_unico` (`codigo`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=15
;

