SELECT a3.codigo orgao, a2.codigo uo, a4.codigo funcao, a5.codigo subfuncao, a6.codigo programa, concat(substr(a1.codigo,1,1),'.',substr(a1.codigo,2,3)) projeto_atividade, a1.nome especificacao,
(
  select coalesce(sum(a7.valor),0)
  from despesas_fixadas a7
  where a7.acao_id = a1.id
) valor
FROM integrado_test.acoes a1
join unidades_orcamentarias a2 on a2.id = a1.uo_id
join orgaos a3 on a3.id = a2.orgao_id
join funcoes a4 on a4.id = a1.funcao_id
join subfuncoes a5 on a5.id = a1.subfuncao_id
join programas a6 on a6.id = a1.programa_id
where a1.tipo in (1,3,5,7,9)
order by a1.tipo, a1.subcodigo;

SELECT a3.codigo orgao, a2.codigo uo, a4.codigo funcao, a5.codigo subfuncao, a6.codigo programa, concat(substr(a1.codigo,1,1),'.',substr(a1.codigo,2,3)) projeto_atividade, a1.nome especificacao,
(
  select coalesce(sum(a7.valor),0)
  from despesas_fixadas a7
  where a7.acao_id = a1.id
) valor
FROM integrado_test.acoes a1
join unidades_orcamentarias a2 on a2.id = a1.uo_id
join orgaos a3 on a3.id = a2.orgao_id
join funcoes a4 on a4.id = a1.funcao_id
join subfuncoes a5 on a5.id = a1.subfuncao_id
join programas a6 on a6.id = a1.programa_id
where a1.tipo not in (1,3,5,7,9)
order by a1.tipo, a1.subcodigo;




