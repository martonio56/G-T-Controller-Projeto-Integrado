select a1.codigo, a1.nome, 
case substr(a1.codigo,1,3)
  when '300' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '3%' and a6.codigo not in ('08','09','10'))
  when '310' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
				   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '31%'  and a6.codigo not in ('08','09','10')) 
  when '320' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '32%' and a6.codigo not in ('08','09','10')) 
  when '330' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id                   
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '33%' and a6.codigo not in ('08','09','10')) 
  when '990' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id                   
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '99%' and a6.codigo not in ('08','09','10')) 
 when '400' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id                   
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '4%' and a6.codigo not in ('08','09','10')) 
  when '440' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id                   
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '44%'  and a6.codigo not in ('08','09','10')) 
  when '450' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id                   
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '45%'  and a6.codigo not in ('08','09','10')) 
  when '460' then (select coalesce(sum(a2.valor)) from despesas_fixadas a2 
                   join despesas_orcamentarias a3 on a3.id = a2.despesa_orcamentaria_id
                   join acoes a5 on a5.id = a2.acao_id
                   join funcoes a6 on a6.id = a5.funcao_id                   
                   where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '46%'  and a6.codigo not in ('08','09','10')) 
end valor
from despesas_orcamentarias a1
where substr(a1.codigo,1,3) in ('300','310','320','330','990', '400','440','450','460')