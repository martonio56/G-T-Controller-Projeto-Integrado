SELECT a2.sigla, a2.codigo,
(
  SELECT COALESCE(SUM(b1.valor),0) FROM despesas_fixadas b1
  JOIN acoes b2 ON b2.id = b1.acao_id
  JOIN unidades_orcamentarias b3 ON b3.id = b2.uo_id
  WHERE b3.cliente_id = a1.cliente_id AND b3.exercicio_id = a1.exercicio_id AND b3.unidade_gestora_id = a1.unidade_gestora_id

) valor
FROM unidades_orcamentarias a1
JOIN unidades_gestoras a2 on a2.id = a1.unidade_gestora_id
WHERE a1.cliente_id = 2 AND a1.exercicio_id = 1
GROUP BY a2.id
