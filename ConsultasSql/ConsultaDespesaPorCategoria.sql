select a1.codigo, a1.nome, 
case substr(a1.codigo,1,3)
  when '300' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '3%')
  when '310' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '31%')
  when '320' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '32%')
  when '330' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '33%')
  when '990' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '99%')
  when '400' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '4%')
  when '440' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '44%')
  when '450' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '45%')
  when '460' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '46%')
end valor
from despesas_orcamentarias a1
where substr(a1.codigo,1,3) in ('300','310','320','330','990', '400','440','450','460')