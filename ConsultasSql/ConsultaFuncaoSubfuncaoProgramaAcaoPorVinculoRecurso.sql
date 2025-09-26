SELECT a2.codigo funcao_codigo,a2.nome funcao_nome,  
      a3.codigo subfuncao, a3.nome subfuncao_nome, 
		a4.codigo programa_codigo, a4.nome programa__nome,  
		a1.codigo acao_codigo, a1.nome acao_nome, 
(

SELECT  COALESCE(SUM(b1.valor),0) FROM despesas_fixadas b1
JOIN fontes_recursos b2 ON b2.id = b1.fonte_recurso_id
WHERE (b1.cliente_id =a1.cliente_id) AND (b1.exercicio_id =  a1.exercicio_id) AND (b2.codigo like '50000000%' OR a2.codigo LIKE '749000%')
AND b1.acao_id = a1.id

) orinario, (

SELECT  COALESCE(SUM(c1.valor),0) FROM despesas_fixadas c1
JOIN fontes_recursos c2 ON c2.id = c1.fonte_recurso_id
WHERE (c1.cliente_id =a1.cliente_id) AND (c1.exercicio_id =  a1.exercicio_id) AND ( NOT (c2.codigo like '50000000%' OR a2.codigo LIKE '749000%'))
AND c1.acao_id = a1.id


) vinculado
FROM acoes a1
JOIN funcoes a2 ON a2.id = a1.funcao_id
JOIN subfuncoes a3 ON a3.id = a1.subfuncao_id
JOIN programas a4 ON a4.id = a1.programa_id
WHERE a1.cliente_id = 12 AND a1.exercicio_id = 2
ORDER BY a2.codigo, a3.codigo, a4.codigo, a1.codigo


