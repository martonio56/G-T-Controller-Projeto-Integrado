SELECT  CONCAT(a4.codigo, ' ', a4.nome) orgao,  
concat(a3.codigo, ' ', a3.nome) unidadeOrcamentaria ,
CONCAT(a5.codigo,'.',a6.codigo,'.',a7.codigo,'.',a2.codigo) funcionalProgramatica, a2.nome nomeAcao,
a1.id ficha, CONCAT(a8.codigo,' ',a8.nome) Elemento, CONCAT(a10.codigo, a9.codigo) fonteRecurso ,a1.valor
FROM despesas_fixadas a1
JOIN acoes a2 ON a2.id = a1.acao_id
JOIN unidades_orcamentarias a3 ON a3.id = a2.uo_id
JOIN orgaos a4 ON a4.id = a3.orgao_id
JOIN funcoes a5 ON a5.id = a2.funcao_id
JOIN subfuncoes a6 ON a6.id = a2.subfuncao_id
JOIN programas a7 ON a7.id = a2.programa_id
JOIN despesas_orcamentarias a8 ON a8.id = a1.despesa_orcamentaria_id
JOIN fontes_recursos a9 ON a9.id = a1.fonte_recurso_id
JOIN fontes_grupos a10 ON a10.id = a9.fonte_grupo_id
WHERE a1.cliente_id = 12 AND a1.exercicio_id = 2
ORDER BY a4.codigo, a3.codigo, a5.codigo, a6.codigo,a7.codigo, a8.codigo, a10.codigo, a9.codigo