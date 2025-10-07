SELECT '104' tipoDocumento, a7.codigo_tce codigoMunicipio, CONCAT(a5.codigo,'00') exercicioOrcamento, 
a4.codigo codigoOrgao, a1.codigo codigoUnidadeOrcamentaria, a8.codigo tipoUnidadeAdministrativa, 
a1.nome nomeUnidadeOrcamentaria, a9.nome tipoAdministracao
FROM unidades_orcamentarias a1
JOIN unidades_gestoras a2 ON a2.id = a1.unidade_gestora_id
JOIN orgaos a4 ON a4.id = a1.orgao_id
JOIN exercicios a5 ON a5.id = a1.exercicio_id
JOIN clientes a6 ON a6.id = a1.cliente_id
JOIN cidades a7 ON a7.id = a6.cidade_id
JOIN unidades_administrativas a8 ON a8.id = a2.unidade_administrativa_id
JOIN administracao_tipos a9 ON a9.id = a2.administracao_tipo_id
WHERE a1.cliente_id = 12 AND a1.exercicio_id = 1