select a1.codigo, a1.nome,
(
   select coalesce(sum(c1.valor_total),0) 
   from receitas_previstas c1
   join receitas_orcamentarias c2 on c2.id = c1.receita_orcamentaria_id
   where c1.cliente_id = 12 and c1.exercicio_id = 2 and c2.codigo like concat(substr(a1.codigo,1,1),'%')
) Valor
from receitas_orcamentarias a1
where substr(a1.codigo,1,3) in ('100','200','700','800','900')  