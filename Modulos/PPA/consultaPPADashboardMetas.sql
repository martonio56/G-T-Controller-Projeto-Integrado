select 'Projetos' Projetos, (
   select coalesce(sum(a1.valor1+a1.valor2+a1.valor3+a1.valor4),0) 
   from ppas_acoes_metas a1
   join ppas_acoes a2 on a2.id = a1.ppa_acao_id
   join ppas a3 on a3.id = a2.ppa_id
   where a3.cliente_id = 12 and a3.exercicio_id = 1 and a2.tipo in (1,3,5,7)
) vrProjeto,
'Atividades' Atividades,
(
   select coalesce(sum(a1.valor1+a1.valor2+a1.valor3+a1.valor4),0)
   from ppas_acoes_metas a1
   join ppas_acoes a2 on a2.id = a1.ppa_acao_id
   join ppas a3 on a3.id = a2.ppa_id
   where a3.cliente_id = 12 and a3.exercicio_id = 1 and a2.tipo in (2,4,6,8)
) vrAtividade,
'Operações Especiais' OperacaoEspeciais,
(
   select coalesce(sum(a1.valor1+a1.valor2+a1.valor3+a1.valor4),0)
   from ppas_acoes_metas a1
   join ppas_acoes a2 on a2.id = a1.ppa_acao_id
   join ppas a3 on a3.id = a2.ppa_id
   where a3.cliente_id = 12 and a3.exercicio_id = 1 and a2.tipo = 0
) vrOperacaoEspecial,
'Reserva de Contigencia' ReservaContigencia,
(
   select coalesce(sum(a1.valor1+a1.valor2+a1.valor3+a1.valor4),0)
   from ppas_acoes_metas a1
   join ppas_acoes a2 on a2.id = a1.ppa_acao_id
   join ppas a3 on a3.id = a2.ppa_id
   where a3.cliente_id = 12 and a3.exercicio_id = 1 and a2.tipo = 9
) vrReserva