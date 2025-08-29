select a2.codigo UOCodigo, a2.nome UONome, a3.codigo ROCodigo, a3.nome RONome ,a1.valor_exercicio1 , a1.valor_exercicio2, a1.valor_exercicio3, a1.valor_exercicio4
from ppas_financiamentos a1
join unidades_orcamentarias a2 on a2.id = a1.unidade_orcamentaria_id
join receitas_orcamentarias a3 on a3.id = a1.receita_orcamentaria_id
join ppas a4 on a4.id = a1.ppa_id
join orgaos a5 on a5.id = a2.orgao_id
where a1.cliente_id = 12 and a4.exercicio_id = 1
order by a5.codigo, a2.codigo, a3.codigo