SELECT a1.numero_receita, a1.data_receita, a1.data_credito,
CONCAT(a4.inscricao, '  ' , a4.nome) contribuinte,
CONCAT(a5.codigo, '  ', a5.descricao) contaExtra,
a1.historico_receita, a1.valor_receita,
CONCAT(a3.numero_conta, ' ', a3.descricao_conta) contaBancaria, a1.numero_documento_credito
FROM receitas_extra_execucao a1
JOIN contas_bancarias_movimentos a2 ON a2.origem_id = 4 AND a2.vinculo = a1.id
JOIN contas_bancarias a3 ON a3.id = a2.conta_bancaria_id
JOIN pessoas a4 ON a4.id = a1.contribuinte_id
JOIN contas_extra_orcamentarias a5 ON a5.id = a1.conta_extra_orcamentaria_id
WHERE a1.cliente_id = 2 AND a1.data_receita BETWEEN '2025-08-01' AND '2025-08-31' AND a1.id = 52
