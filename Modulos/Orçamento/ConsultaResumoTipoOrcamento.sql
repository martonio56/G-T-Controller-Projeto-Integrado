SELECT (
	SELECT COALESCE(SUM(a1.valor),0.00) 
	FROM despesas_fixadas a1
	JOIN acoes a2 ON a2.id = a1.acao_id
	JOIN funcoes a3 ON a3.id = a2.funcao_id 
	WHERE a2.cliente_id = 2 
	AND a2.exercicio_id = 1 
	AND a2.orcamento_tipo_id = 1 
	AND NOT a3.codigo IN ('08','09','10')
) fiscal, 
(
	SELECT COALESCE(SUM(a1.valor),0.00) 
	FROM despesas_fixadas a1
	JOIN acoes a2 ON a2.id = a1.acao_id
	JOIN funcoes a3 ON a3.id = a2.funcao_id 
	WHERE a2.cliente_id = 2 
	AND a2.exercicio_id = 1 
	AND a2.orcamento_tipo_id = 2 
	AND a3.codigo IN ('08','09','10','99')
) seguridade, 
(
	SELECT COALESCE(SUM(a1.valor),0.00) acoes
	FROM despesas_fixadas a1
	JOIN acoes a2 ON a2.id = a1.acao_id
	JOIN funcoes a3 ON a3.id = a2.funcao_id 
	WHERE a2.cliente_id = 2 
	AND a2.exercicio_id = 1 
	AND a2.orcamento_tipo_id = 3
) investimento,
(
	SELECT COALESCE(SUM(a1.valor),0.00) 
	FROM despesas_fixadas a1
	JOIN acoes a2 ON a2.id = a1.acao_id
	JOIN funcoes a3 ON a3.id = a2.funcao_id 
	WHERE a2.cliente_id = 2 
	AND a2.exercicio_id = 1 
) total;