select a11.codigo Exercicio,
       a9.codigo OrgaoCodigo, a9.nome OrgaoNome,
       a8.codigo UOCodigo, a8.nome UONome,
       a5.codigo FuncaoCodigo, a5.nome FuncaoNome, 
       a6.codigo SubfuncaoCodigo, a6.nome SubfuncaoNome,
       a7.codigo ProgramaCodigo, a7.nome ProgramaNome,
       concat(a4.tipo, a4.numero) AcaoCodigo, a4.nome AcaoNome, a4.descricao AcaoObjetivo, 
       case 
         when a4.tipo in (1, 3, 5, 7) then 'Projeto'
         when a4.tipo in (2, 4, 6, 8) then 'Atividade'
         when a4.tipo in (0) then 'Operações Especiais'
         when a4.tipo in (9) then 'Reserva de Contingência'
       end TipoAcao, 
       case  
          when a4.natureza = 1 then 'Continuada'
          when a4.natureza = 2 then 'Temporária'
          when a4.natureza = 3 then 'Emergencial'
       end Natureza, a4.regiao,
       concat(a3.codigo,a2.codigo) FonteCodigo, a2.nomenclatura_analitica FonteNome ,
	   a1.unidade, a1.qtd1, a1.valor1, a1.qtd2, a1.valor2,a1.qtd3, a1.valor3,a1.qtd4, a1.valor4
from ppas_acoes_metas a1
join fontes_recursos a2 on a2.id = a1.fonte_recurso_id
join fontes_grupos a3 on a3.id = a2.fonte_grupo_id
join ppas_acoes a4 on a4.id = a1.ppa_acao_id
join funcoes a5 on a5.id = a4.funcao_id
join subfuncoes a6 on a6.id = a4.sub_funcao_id
join programas a7 on a7.id = a4.programa_id
join unidades_orcamentarias a8 on a8.id = a4.unidade_orcamentaria_id
join orgaos a9 on a9.id = a8.orgao_id
join ppas a10 on a10.id = a4.ppa_id
join exercicios a11 on a11.id = a10.exercicio_id
where a10.cliente_id = 12 and a10.exercicio_id = 1
order by a9.codigo, a8.codigo, a4.tipo, a4.numero, a3.codigo, a2.codigo