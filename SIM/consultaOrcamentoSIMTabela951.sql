SELECT '951' tipoDocumento, a6.codigo_tce codigoMunicipio, '??????' exercicioOrcamento, 
a2.codigo codigoOrgao, a1.codigo codigoUnidadeOrcamentaria, a7.inscricao numeroCpf, 
a8.codigo formaIngresso, a9.codigo
FROM unidades_orcamentarias a1
JOIN orgaos a2 ON a2.id = a1.orgao_id
JOIN portarias_orgaos a3 ON a3.orgao_id = a2.id
JOIN portarias a4 ON a4.id = a3.portaria_id
JOIN clientes a5 ON a5.id = a1.cliente_id
JOIN cidades a6 ON a6.id = a5.cidade_id
JOIN pessoas a7 ON a7.id = a4.pessoa_id
JOIN portarias_ingressos a8 ON a8.id = a4.portaria_ingresso_id
JOIN portarias_relacoes a9 ON a9.id = a4.portaria_relacao_id
WHERE a1.cliente_id = 12 AND a1.exercicio_id = 1