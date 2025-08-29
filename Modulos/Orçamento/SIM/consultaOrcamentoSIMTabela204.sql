select
       '204' tipoDocumento,
       a9.codigo_tce codigoMunicipio,
       '202600' exercicioOrcamento,
       a5.codigo orgao,
       a4.codigo unidadeOrcamentaria,
       a10.codigo funcao,
       a11.codigo subfuncao,
       a12.codigo programa,
       a2.tipo codigoProjetoAtividade,
       a2.subcodigo numeroProjetoAtividade,
       '0000' numeroSubprojetoSubatividade,
       a3.codigo codigoElementoDespesa,
       a7.codigo codigoGrupoFonte,
       a6.codigo especificacaoFonte,
       (select coalesce(sum(b1.valor)) from despesas_fixadas b1
        where b1.cliente_id = a1.cliente_id 
		  and b1.exercicio_id = a1.exercicio_id
          and b1.acao_id = a1.acao_id
          and b1.despesa_orcamentaria_id = a1.despesa_orcamentaria_id
          and b1.fonte_recurso_id = a1.fonte_recurso_id
       ) valorFixado
from despesas_fixadas a1
join acoes a2 on a2.id = a1.acao_id
join despesas_orcamentarias a3 on a3.id = a1.despesa_orcamentaria_id
join unidades_orcamentarias a4 on a4.id = a2.uo_id
join orgaos a5 on a5.id = a4.orgao_id
join fontes_recursos a6 on a6.id = a1.fonte_recurso_id
join fontes_grupos a7 on a7.id = a6.fonte_grupo_id
join clientes a8 on a8.id = a1.cliente_id
join cidades a9 on a9.id = a8.cidade_id
join funcoes a10 on a10.id = a2.funcao_id
join subfuncoes a11 on a11.id = a2.subfuncao_id
join programas a12 on a12.id = a2.programa_id
where a1.cliente_id = 12 and a1.exercicio_id = 2
group by a5.codigo, a4.codigo, a2.tipo, a2.subcodigo, a3.codigo, a7.codigo, a6.codigo

