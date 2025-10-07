select 
   '200' tipoDocumento, 
   a3.codigo_tce codigoMunicipio, 
   '202600' execercicioOrcamento, 
   a1.numero_lei,
(select coalesce(sum(b1.valor),0) from despesas_fixadas b1
 where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id

) vrTotalFixado, 
a1.porcentagem_suplementacao,
round(((select coalesce(sum(b1.valor),0) from despesas_fixadas b1
 where b1.cliente_id = a1.cliente_id and b1.exercicio_id = a1.exercicio_id) * a1.porcentagem_suplementacao / 100),2) vrSuplementacao,
 '00/00/0000' dataEnvio, 
 '00/00/0000' dataAprovacao, 
 '00/00/0000' dataPublicacao  
from loa a1
join clientes a2 on a2.id = a1.cliente_id 
join cidades a3 on a3.id = a2.cidade_id
where a1.cliente_id = 12 and a1.exercicio_id = 2


