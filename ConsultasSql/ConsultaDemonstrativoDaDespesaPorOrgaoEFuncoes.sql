select a1.codigo, a1.nome Orgao,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '01' and a6.id = a1.id
) f01,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '02' and a6.id = a1.id
) f02,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '03' and a6.id = a1.id
) f03,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '04' and a6.id = a1.id
) f04,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '05' and a6.id = a1.id
) f05,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '06' and a6.id = a1.id
) f06,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '07' and a6.id = a1.id
) f07,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '08' and a6.id = a1.id
) f08,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '09' and a6.id = a1.id
) f09,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '10' and a6.id = a1.id
) f10,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '11' and a6.id = a1.id
) f11,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '12' and a6.id = a1.id
) f12,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '13' and a6.id = a1.id
) f13,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '14' and a6.id = a1.id
) f14,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '15' and a6.id = a1.id
) f15,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '16' and a6.id = a1.id
) f16,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '17' and a6.id = a1.id
) f17,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '18' and a6.id = a1.id
) f18,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '19' and a6.id = a1.id
) f19,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '20' and a6.id = a1.id
) f20,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '21' and a6.id = a1.id
) f22,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '22' and a6.id = a1.id
) f22,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '23' and a6.id = a1.id
) f23,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '24' and a6.id = a1.id
) f24,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '25' and a6.id = a1.id
) f25,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '26' and a6.id = a1.id
) f26,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '27' and a6.id = a1.id
) f27,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '28' and a6.id = a1.id
) f28,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id and a4.codigo = '99' and a6.id = a1.id
) f99,
(
  select coalesce(sum(a2.valor),0) from despesas_fixadas a2
  join acoes a3 on a3.id = a2.acao_id
  join funcoes a4 on a4.id = a3.funcao_id
  join unidades_orcamentarias a5 on a5.id = a3.uo_id
  join orgaos a6 on a6.id = a5.orgao_id 
  where a6.cliente_id = a1.cliente_id and a6.exercicio_id = a1.exercicio_id  and a6.id = a1.id
) total_Orgao
from orgaos a1
where a1.cliente_id = 2 and a1.exercicio_id = 1
order by a1.codigo