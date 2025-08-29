select a1.codigo, a1.nome,
(
   select coalesce(sum(c1.valor_exercicio1+c1.valor_exercicio2+c1.valor_exercicio3+c1.valor_exercicio4),0) 
   from ppas_financiamentos c1
   join receitas_orcamentarias c2 on c2.id = c1.receita_orcamentaria_id
   join ppas c3 on c3.id = c1.ppa_id
   where c3.cliente_id = 12 and c3.exercicio_id = 1 and c2.codigo like concat(substr(a1.codigo, 1,1),'%')
) vrReceitaQuadrienio
from receitas_orcamentarias a1
where substr(a1.codigo,1,3) in ('100','200','700','800','900')  