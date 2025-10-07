SELECT '106' tipoDocumento, a8.codigo_tce codigoMunicipio, a6.codigo codigoOrgao, a5.codigo codigoUnidadeOrcamentaria,
 a3.codigo numeroBanco, a2.agencia_banco numeroAgencia, a2.numero_conta numeroContaCorrente, 
'??????' dataReferenciaDocumentacao, a1.valor saldocontas_bancarias_movimentos, a2.tipo_conta tipoConta,
a9.codigo funcao, a2.descricao_objeto_vinculo descricaoObjetoVinculo
FROM contas_bancarias_movimentos a1
JOIN contas_bancarias a2 ON a2.id = a1.conta_bancaria_id
JOIN bancos a3 ON a3.id = a2.banco_id
JOIN contas_bancarias_movimentos_origens a4 ON a4.id = a1.origem_id
JOIN unidades_orcamentarias a5 ON a5.id = a1.unidade_orcamentaria_id
JOIN orgaos a6 ON a6.id = a5.orgao_id
JOIN clientes a7 ON a7.id = a2.cliente_id
JOIN cidades a8 ON a8.id = a7.cidade_id
JOIN funcoes a9 ON a9.id = a2.funcao_id 
WHERE a2.cliente_id = 2 AND a1.origem_id = 1 AND a1.vinculo = 0