select a3.codigo, a3.nome,
(
	select coalesce(sum(valor1+valor2+valor3+valor4),0) 
    from ppas_acoes_metas b1 
    join ppas_acoes b2 on b2.id = b1.ppa_acao_id
    join unidades_orcamentarias b3 on b3.id = b2.unidade_orcamentaria_id
    join ppas b5 on b5.id = b2.ppa_id
    where b5.cliente_id = 12 and b5.exercicio_id = 1 and b3.codigo = a3.codigo
) valor
from ppas_acoes a1
join ppas a2 on a2.id = a1.ppa_id
join unidades_orcamentarias a3 on a3.id = a1.unidade_orcamentaria_id
where a2.cliente_id = 12 and a2.exercicio_id = 1
group by a3.codigo
order by a3.codigo