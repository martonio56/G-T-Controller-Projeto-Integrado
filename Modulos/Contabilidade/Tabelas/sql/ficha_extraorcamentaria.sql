SELECT a1.conta_extra_orcamentaria_id, a7.codigo UnidadeGestora ,a6.codigo unidadeOrcamentaria ,CONCAT(a2.codigo, ' - ', a2.descricao) contaExtra, a3.nome lancamentoTipo, 
a4.data_receita DATA, a4.numero_receita,a5.nome historico,a4.historico_receita historicoComplemento  ,a1.valor, a1.tipo_valor  
FROM contas_extra_movimento a1
JOIN contas_extra_orcamentarias a2 ON a2.id = a1.conta_extra_orcamentaria_id
JOIN lancamentos_tipos a3 ON a3.id = a1.lancamento_tipo_id
JOIN receitas_extra_execucao a4 ON a4.contas_extra_movimento_id = a1.id
JOIN pessoas a5 ON a5.id = a4.contribuinte_id
JOIN unidades_orcamentarias a6 ON a6.id = a1.unidade_orcamentaria_id
JOIN unidades_gestoras a7 ON a7.id = a6.unidade_gestora_id
WHERE a1.cliente_id = 2 AND a1.conta_extra_orcamentaria_id = 5 