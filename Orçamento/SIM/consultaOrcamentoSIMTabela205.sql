  select '205' tipoDocumento,
        a3.codigo_tce codigoMunicipio, 
        '202600' exercicioOrcamento,
        a4.codigo codigoProgramaGoverno,
        a4.nome nomeProgramaGoverno
  from acoes a1
  join clientes a2 on a2.id = a1.cliente_id
  join cidades a3 on a3.id = a2.cidade_id
  join programas a4 on a4.id = a1.programa_id
  where a1.cliente_id = 12 and a1.exercicio_id = 2
  group by a1.programa_id
  order by a4.codigo