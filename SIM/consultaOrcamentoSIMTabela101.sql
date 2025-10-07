SELECT '101' tipoDocumento, a3.codigo_tce codigoMunicipio, CONCAT(a7.codigo,'00') exercicioOrcamento, 
 a8.codigo unidadeGestora, a5.codigo codigoOrgao, a6.codigo codigoUO, a2.inscricao cpfGestor,
 a9.codigo, a10.codigo, a1.numero, a1.dt_inicio, '??????' dataReferencia, a2.nome nomeGestor, a1.dt_termino,
 '??' codigoTipoCargo, 
 case
    when a1.id = 1 then '1'
    when a1.id > 1 then '0'
 END ordernadorDespesa
FROM portarias a1 
JOIN pessoas a2 ON a2.id = a1.pessoa_id
JOIN cidades a3 ON a3.id = a2.cidade_id
JOIN portarias_orgaos a4 ON a4.portaria_id = a1.id
JOIN orgaos a5 ON a5.id = a4.orgao_id
JOIN unidades_orcamentarias a6 ON a6.orgao_id = a5.id
JOIN exercicios a7 ON a7.id = a5.exercicio_id
JOIN unidades_gestoras a8 ON a8.id = a6.unidade_gestora_id
JOIN portarias_ingressos a9 ON a9.id = a1.portaria_ingresso_id
JOIN portarias_relacoes a10 ON a10.id = a1.portaria_relacao_id
JOIN portarias_tipos a11 ON a11.id = a1.portaria_tipo_id
WHERE a1.cliente_id =  a1.dt_termino IS NULL 
AND a1.cliente_id = 12 AND a5.exercicio_id = 1