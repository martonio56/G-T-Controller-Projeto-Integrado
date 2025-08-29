select a11.codigo Exercicio,
       a7.codigo ProgramaCodigo, a7.nome ProgramaNome,
       concat(a4.tipo, a4.numero) AcaoCodigo, a4.nome AcaoNome, a4.descricao AcaoObjetivo, 
       a4.regiao,
       concat(a3.codigo,a2.codigo) FonteCodigo, a2.nomenclatura_analitica FonteNome ,
	   a1.unidade, a1.qtd1, a1.valor1, a1.qtd2, a1.valor2,a1.qtd3, a1.valor3,a1.qtd4, a1.valor4
from ppas_acoes_metas a1
join fontes_recursos a2 on a2.id = a1.fonte_recurso_id
join fontes_grupos a3 on a3.id = a2.fonte_grupo_id
join ppas_acoes a4 on a4.id = a1.ppa_acao_id
join programas a7 on a7.id = a4.programa_id
join ppas a10 on a10.id = a4.ppa_id
join exercicios a11 on a11.id = a10.exercicio_id
where a10.cliente_id = 12 and a10.exercicio_id = 1
order by a7.codigo, concat(a4.tipo, a4.numero), concat(a3.codigo,a2.codigo) 