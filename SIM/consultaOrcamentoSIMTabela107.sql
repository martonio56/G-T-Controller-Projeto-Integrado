SELECT '107' tipoDocumento, a3.codigo_tce codigoMunicipio, '??????' exercicioOrcamento, a1.codigo codigoConta,
'??????' dataReferencia, a1.descricao, 
case 
  When a4.natureza_saldo = 'D' then '+'
  When a4.natureza_saldo = 'C' then '-'
 END situacaoPatrimonial,
 (
  SELECT  COALESCE(sum(b1.valor),0.00) FROM contas_extra_movimento b1
  WHERE b1.conta_extra_orcamentaria_id = a1.id AND b1.vinculo = 0
  
 ) valor
 
FROM contas_extra_orcamentarias a1
JOIN clientes a2 ON a2.id = a1.cliente_id
JOIN cidades a3 ON a3.id = a2.cidade_id
JOIN pcasp a4 ON a4.id = a1.pcasp_id
WHERE a1.cliente_id = 1 