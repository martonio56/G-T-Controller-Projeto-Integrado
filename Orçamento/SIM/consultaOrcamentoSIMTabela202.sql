select
   '202' tipoDocumento,
   a7.codigo_tce,
   '202600' exercicioOrcamento,
   a4.codigo orgao,
   a3.codigo unidadeOrcamentaria,
   a5.codigo classificacaoDespesa,
   a5.nome descricaoElemento,
   a1.valor 
from despesas_fixadas a1
join acoes a2 on a2.id = a1.acao_id
join unidades_orcamentarias a3 on a3.id = a2.uo_id
join orgaos a4 on a4.id = a3.orgao_id
join despesas_orcamentarias a5 on a5.id = a1.despesa_orcamentaria_id
join clientes a6 on a6.id = a1.cliente_id
join cidades a7 on a7.id = a6.cidade_id
where a1.cliente_id = 12 and a1.exercicio_id = 2