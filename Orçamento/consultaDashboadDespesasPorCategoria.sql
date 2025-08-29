SELECT a1.codigo, a1.nome,
(
  SELECT COALESCE(SUM(b1.valor),0) 
  FROM despesas_fixadas b1 
  JOIN despesas_orcamentarias b2 ON b2.id = b1.despesa_orcamentaria_id
  WHERE b1.cliente_id = 12 AND b1.exercicio_id = 2 AND b2.codigo LIKE CONCAT(SUBSTRING(a1.codigo,1,1),'%')
) valor
FROM despesas_orcamentarias a1
WHERE (SUBSTRING(a1.codigo,1,4) IN ('3000','4000','9000'))