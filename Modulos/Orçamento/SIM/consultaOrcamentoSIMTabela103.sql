SELECT '103' tipoDocumento, a3.codigo_tce codigoMunicipio, CONCAT(a4.codigo,'00') exercicioOrcamento, a1.codigo codigoOrgao, 
a7.codigo tipoUnidadeAdministrativa, a1.nome nomeOrgao, a6.cnpj cnpjOrgao, a8.endereco enderecoOrgao, a8.cep cepOrgao, 
a8.telefone telefoneOrgao, a8.telefone faxOrgao, a8.email emailOrgao, a1.id)
FROM orgaos a1
JOIN clientes a2 ON a2.id = a1.cliente_id
JOIN cidades a3 ON a3.id = a2.cidade_id
JOIN exercicios a4 ON a4.id = a1.exercicio_id
JOIN unidades_orcamentarias a5 ON a5.orgao_id = a1.id
JOIN unidades_gestoras a6 ON a6.id = a5.unidade_gestora_id
JOIN unidades_administrativas a7 ON a7.id = a6.unidade_administrativa_id
JOIN pessoas a8 ON a8.id = a6.pessoa_id
WHERE a1.cliente_id = 12 AND a1.exercicio_id = 1
GROUP BY a1.codigo
