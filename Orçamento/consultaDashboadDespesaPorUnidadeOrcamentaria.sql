select concat(a2.codigo, a1.codigo) codigo, a1.nome,
(
  select coalesce(sum(b1.valor)) from despesas_fixadas b1
  join acoes b2 on b2.id = b1.acao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and b2.uo_id = a1.id
) valor 
from unidades_orcamentarias a1
join orgaos a2 on a2.id = a1.orgao_id
where a1.cliente_id = 12 and a1.exercicio_id = 2
order by a2.codigo, a1.codigo 
