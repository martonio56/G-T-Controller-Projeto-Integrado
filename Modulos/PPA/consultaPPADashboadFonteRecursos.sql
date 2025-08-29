select b1.fonte_recurso_id, concat(b5.codigo,b4.codigo) codigo, b4.nomenclatura_analitica,
(
  select coalesce(sum(a1.valor1+a1.valor2+a1.valor3+a1.valor4),0) from ppas_acoes_metas a1
  join ppas_acoes a2 on a2.id = a1.ppa_acao_id
  join ppas a3 on a3.id = a2.ppa_id
  where a3.cliente_id = b3.cliente_id and a3.exercicio_id = b3.exercicio_id and a1.fonte_recurso_id = b1.fonte_recurso_id
) valor
from ppas_acoes_metas b1
join ppas_acoes b2 on b2.id = b1.ppa_acao_id
join ppas b3 on b3.id = b2.ppa_id
join fontes_recursos b4 on b4.id = b1.fonte_recurso_id
join fontes_grupos b5 on b5.id = b4.fonte_grupo_id
where b3.cliente_id = 12 and b3.exercicio_id = 1
group by b1.fonte_recurso_id