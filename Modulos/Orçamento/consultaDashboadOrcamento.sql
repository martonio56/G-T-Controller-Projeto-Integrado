select (
(select coalesce(sum(a1.valor_total),0) 
 from receitas_previstas a1
 join receitas_orcamentarias a2 on a2.id = a1.receita_orcamentaria_id
 where a1.cliente_id = 12 and a1.exercicio_id = 2 and a2.codigo like '1%') + 
(select coalesce(sum(a1.valor_total),0) 
 from receitas_previstas a1
 join receitas_orcamentarias a2 on a2.id = a1.receita_orcamentaria_id
 where a1.cliente_id = 12 and a1.exercicio_id = 2 and a2.codigo like '2%') + 
(select coalesce(sum(a1.valor_total),0) 
 from receitas_previstas a1
 join receitas_orcamentarias a2 on a2.id = a1.receita_orcamentaria_id
 where a1.cliente_id = 12 and a1.exercicio_id = 2 and a2.codigo like '7%') + 
(select coalesce(sum(a1.valor_total),0) 
 from receitas_previstas a1
 join receitas_orcamentarias a2 on a2.id = a1.receita_orcamentaria_id
 where a1.cliente_id = 12 and a1.exercicio_id = 2 and a2.codigo like '8%') - 
(select coalesce(sum(a1.valor_total),0) 
 from receitas_previstas a1
 join receitas_orcamentarias a2 on a2.id = a1.receita_orcamentaria_id
 where a1.cliente_id = 12 and a1.exercicio_id = 2 and a2.codigo like '9%')
) totalReceita,
(select coalesce(sum(b1.valor)) from despesas_fixadas b1 
 join acoes b2 on b2.id = b1.acao_id
 join funcoes b3 on b3.id = b2.funcao_id
 where b1.cliente_id = 12 and b1.exercicio_id = 2 and b3.codigo = '12') Educacao,
(select coalesce(sum(b1.valor)) from despesas_fixadas b1 
 join acoes b2 on b2.id = b1.acao_id
 join funcoes b3 on b3.id = b2.funcao_id
 where b1.cliente_id = 12 and b1.exercicio_id = 2 and b3.codigo = '10') Saude,
 (select coalesce(sum(b1.valor)) from despesas_fixadas b1 
 join acoes b2 on b2.id = b1.acao_id
 join funcoes b3 on b3.id = b2.funcao_id
 where b1.cliente_id = 12 and b1.exercicio_id = 2 and b3.codigo = '01') Camara