select (
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) 
and (a1.exercicio_id = 1) 
and (a2.codigo like '31%' and substr(a2.codigo,5,2) in ('04','11','16','41','67','96','99'))
or 
(a2.codigo in ('31200000','31220000','31310000','31320000','31350000','31360000','31400000','31410000','31420000',
'31450000','31460000','31500000','31600000','31670000','31710000','31720000','31730000','31740000','31750000','31760000',
'31930000','31940000','31901200','31901700','31909101','31909102','31909108','31909111','31909114','31909117','31909120', 
'31909125','31909126','31909127','31909197','31909199','31909204','31909211','31909212','31909216','31909217','31909291',
'31909294','31909296','31909299','31909401','31909402','31909414','31909415','31909499','31919199',
'31919291','31919296','31919299','31919499','31959100','31959200','31959400','31969100','31969200','31969400'))
) 'Vencimentos, Vantagens e Outras Despesas Variáveis ',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo like '31%' and substr(a2.codigo,5,2) in ('07','13'))
or (a2.codigo in ('31909207','31909213','31919151','31919152','31919153','31919154','31919213','31919451'))
) 'Obrigações Patronais',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in ('31900501','31900503','31900504','31900509','31900599','31909205'))
) 'Beneficios_Beneficiarios',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in ('31900100','31909109','31909112','31909115','31909118','31909123',
                   '31909124','31909128','31909129','31909201','31909203','31909403','31909404'))
) 'Aposentadoria, Reserva e Reformas',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in ('31900300','31909110','31909113','31909116','31909119','31909130', '31909131',
                   '31909136','31909137','31909259','31909406','31909413'))
) 'Pensões',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in ('31900505','31900506','31900507','31900508'))
) 'Outros Benefícios Previdenciários',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in ('33903400'))
) 'Outras Despesas de Pessoal Decorrentes de Contratos de Terceirização ',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in (a2.codigo like '31%' and substr(a2.codigo,5,2) in ('34')))
) 'Indenizações por Demissões e Incentivos à Demissões Voluntárias',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in (a2.codigo like '31%' and substr(a2.codigo,5,2) in ('91')))
) 'Decorrentes de Decisão Judicial de período anterior ao da apuração',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in (a2.codigo like '31%' and substr(a2.codigo,5,2) in ('91')))
) 'Despesas de Exercícios Anteriores de Período anterior ao da apuração ',
(
select coalesce(sum(a1.valor),0) valor from despesas_fixadas a1
join despesas_orcamentarias a2 on a2.id = a1.despesa_orcamentaria_id
where (a1.cliente_id = 2) and (a1.exercicio_id = 1) 
and (a2.codigo in ('31900100','31900300','31900500'))
) 'Inativos e Pensionistas com Recursos Vinculados',
(
 select coalesce(sum(b1.valor_total),0) from receitas_previstas b1
 join receitas_orcamentarias b2 on b2.id = b1.receita_orcamentaria_id
 where (b1.cliente_id = 2) and (b1.exercicio_id = 1) and (b2.codigo like '171808%') 
) '( - ) Transf. Obrigatórias da União Relativas às Emendas Individuais ( V ) ( § 13, art.166 da CF)'

