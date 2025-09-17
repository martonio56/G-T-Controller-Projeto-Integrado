SELECT 
(
  SELECT COALESCE(SUM(a1.valor),0) FROM despesas_fixadas a1
  JOIN acoes a2 ON a2.id = a1.acao_id
  WHERE a1.cliente_id = 12 AND a1.exercicio_id = 2 AND SUBSTR(a2.codigo,1,1) = '1'

) projetos,
(
  SELECT COALESCE(SUM(a1.valor),0) FROM despesas_fixadas a1
  JOIN acoes a2 ON a2.id = a1.acao_id
  WHERE a1.cliente_id = 12 AND a1.exercicio_id = 2 AND SUBSTR(a2.codigo,1,1) = '2'

) atividades,
(
  SELECT COALESCE(SUM(a1.valor),0) FROM despesas_fixadas a1
  JOIN acoes a2 ON a2.id = a1.acao_id
  WHERE a1.cliente_id = 12 AND a1.exercicio_id = 2

) total