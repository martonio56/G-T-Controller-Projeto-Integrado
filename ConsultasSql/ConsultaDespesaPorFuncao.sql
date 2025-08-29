select a1.nome,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  where a2.cliente_id = 2 and a2.exercicio_id = 1 and  a3.funcao_id = a1.id
) valor
from funcoes a1
order by a1.codigo;

select a1.nome,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  where a2.cliente_id = 2 and a2.exercicio_id = 1 and  a3.funcao_id = a1.id
) valor
from funcoes a1
where not a1.codigo in ('08','09','10')
order by a1.codigo;


select a1.nome,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  where a2.cliente_id = 2 and a2.exercicio_id = 1 and  a3.funcao_id = a1.id
) valor
from funcoes a1
where a1.codigo in ('08','09','10')
order by a1.codigo