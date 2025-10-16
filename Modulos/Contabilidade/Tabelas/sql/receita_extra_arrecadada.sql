SET @cliente_id = 2;
SET @inicio = '2025-10-01';
SET @fim = '2025-10-31';

SELECT a1.id, CONCAT(a5.codigo, '  ',a6.nome) unidadeGestora, CONCAT(a4.codigo, '  ',a4.nome) unidadeOrcamentaria, 
a1.numero_receita, a1.data_receita, a3.codigo contaExtra, a7.nome historico, a1.historico_receita complementoHistorico, a2.valor
FROM receitas_extra_execucao a1
JOIN contas_extra_movimento a2 ON a2.id = a1.contas_extra_movimento_id
JOIN contas_extra_orcamentarias a3 ON a3.id = a2.conta_extra_orcamentaria_id
JOIN unidades_orcamentarias a4 ON a4.id = a2.unidade_orcamentaria_id
JOIN unidades_gestoras a5 ON a5.id = a4.id
JOIN pessoas a6 ON a6.id = a5.pessoa_id
JOIN pessoas a7 ON a7.id = a1.contribuinte_id
WHERE (a1.cliente_id = @cliente_id) AND (a1.data_receita BETWEEN @inicio AND @fim );
