SELECT a1.id, a1.numero_receita numeroTalao, a1.data_receita dataReceita, a1.data_credito dataCredito,
CONCAT(a2.inscricao, '   ', a2.nome) dadosContribuinte,
CONCAT(a4.codigo, '  ', a4.descricao) contaExtraorcamentaria,
a1.historico_receita historico, a3.valor, 
CONCAT(a6.numero_conta,'  ', a6.descricao_conta) contaBancaria
FROM receitas_extra_execucao a1
JOIN pessoas a2 ON a2.id = a1.contribuinte_id
JOIN contas_extra_movimento a3 ON a3.id = a1.contas_extra_movimento_id
JOIN contas_extra_orcamentarias a4 ON a4.id = a3.conta_extra_orcamentaria_id
JOIN contas_bancarias_movimentos a5 ON a5.id = a1.contas_bancarias_movimento_id
JOIN contas_bancarias a6 ON a6.id = a5.conta_bancaria_id
WHERE a1.id = 11;
