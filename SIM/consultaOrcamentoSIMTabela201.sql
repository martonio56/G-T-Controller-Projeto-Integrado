select 
     '201' tipoDocumento, 
     a5.codigo_tce codigoMunicipio,
     '202600' exercicioOrcamento,
     a7.codigo orgao,
     a6.codigo unidadeOrcamentaria,
     a8.codigo receitaOrcamentaria,
     a9.codigo grupoFonte,
     a3.codigo especializacaoFonte,
     a8.nome,
     a1.valor_total
from receitas_previstas a1
join receitas_previstas_fontes a2 on a2.receita_prevista_id = a1.id
join fontes_recursos a3 on a3.id = a2.fonte_recurso_id
join clientes a4 on a4.id = a1.cliente_id
join cidades a5 on a5.id = a4.cidade_id
join unidades_orcamentarias a6 on a6.id = a1.unidade_orcamentaria_id
join orgaos a7 on a7.id = a6.orgao_id
join receitas_orcamentarias a8 on a8.id = a1.receita_orcamentaria_id
join fontes_grupos a9 on a9.id = a3.fonte_grupo_id
where a1.cliente_id = 12 and a1.exercicio_id = 2
