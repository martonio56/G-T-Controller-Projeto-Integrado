select a2.codigo, a2.nome Orgao,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '01' and c1.uo_id = a1.id
) f01,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '02' and c1.uo_id = a1.id
) f02,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '03' and c1.uo_id = a1.id
) f03,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '04' and c1.uo_id = a1.id
) f04,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '05' and c1.uo_id = a1.id
) f05,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '06' and c1.uo_id = a1.id
) f06,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '07' and c1.uo_id = a1.id
) f07,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '08' and c1.uo_id = a1.id
) f08,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '09' and c1.uo_id = a1.id
) f09,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '10' and c1.uo_id = a1.id
) f10,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '11' and c1.uo_id = a1.id
) f11,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '12' and c1.uo_id = a1.id
) f12,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '13' and c1.uo_id = a1.id
) f13,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '14' and c1.uo_id = a1.id
) f14,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '15' and c1.uo_id = a1.id
) f15,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '16' and c1.uo_id = a1.id
) f16,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '17' and c1.uo_id = a1.id
) f17,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '18' and c1.uo_id = a1.id
) f18,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '19' and c1.uo_id = a1.id
) f19,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '20' and c1.uo_id = a1.id
) f20,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '21' and c1.uo_id = a1.id
) f21,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '22' and c1.uo_id = a1.id
) f22,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '23' and c1.uo_id = a1.id
) f23,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '24' and c1.uo_id = a1.id
) f24,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '25' and c1.uo_id = a1.id
) f25,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '26' and c1.uo_id = a1.id
) f26,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '27' and c1.uo_id = a1.id
) f27,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '28' and c1.uo_id = a1.id
) f28,
(
  select coalesce(sum(b1.valor),0) from despesas_fixadas b1
  join acoes c1 on c1.id = b1.acao_id
  join funcoes d2 on d2.id = c1.funcao_id
  where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and d2.codigo = '99' and c1.uo_id = a1.id
) f99
from unidades_orcamentarias a1
join orgaos a2 on a2.id = a1.orgao_id
where a1.cliente_id = 2 and a1.exercicio_id = 1
order by a1.codigo