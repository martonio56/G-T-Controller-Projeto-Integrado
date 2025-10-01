select
   '203' tipoDocumento,
   a3.codigo_tce codigoMunicipio,
   '202600' exercicioOrcamento,
   a5.codigo orgao,
   a4.codigo unidadeOrcamentaria,
   a6.codigo funcao,
   a7.codigo subfuncao,
   a8.codigo programa,
   a1.tipo codigoProjetoAtividade,
   a1.subcodigo numeroProjetoAtividade,
   '0000' numeroSubprojetoSubatividade,
   case
     when a1.orcamento_tipo_id = 1 then 'F'
     when a1.orcamento_tipo_id = 2 then 'S'
   end codigoTipoOrcamento,
   a1.nome nomeProjetoAtividade,
   a1.descricao descricaoProjetoAtividade,
   (select coalesce(sum(b1.valor)) from despesas_fixadas b1 
    where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id and b1.acao_id = a1.id
   ) valorTotalProjetoAtividade, '00' obejtoPublicoAlvo, '00' extensaoBeneficiosOuRecursos
from acoes a1
join clientes a2 on a2.id = a1.cliente_id
join cidades a3 on a3.id = a2.cidade_id
join unidades_orcamentarias a4 on a4.id = a1.uo_id
join orgaos a5 on a5.id = a4.orgao_id
join funcoes a6 on a6.id = a1.funcao_id
join subfuncoes a7 on a7.id = a1.subfuncao_id
join programas a8 on a8.id = a1.programa_id
where a1.cliente_id = 12 and a1.exercicio_id = 2