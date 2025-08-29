select a1.codigo, a1.nome, 
case substr(a1.codigo,1,4) 
  when '1000' then '1%'
  when '1100' then '11%'
  when '1110' then '111%'
  when '1120' then '112%'
  when '1130' then '113%'
  when '1200' then '12%'
  when '1300' then '13%'
  when '1400' then '14%'
  when '1500' then '15%'
  when '1600' then '16%'
  when '1700' then '17%'
  when '1800' then '18%'
  when '1900' then '19%'
  when '2000' then '2%'
  when '2100' then '21%'
  when '2200' then '22%'
  when '2300' then '23%'
  when '2400' then '24%'
  when '2900' then '29%'
  when '7000' then '7%'
  when '8000' then '8%'
  when '9000' then '9%'
  when '9110' then '911%'
  when '9120' then '912%'
  when '9130' then '913%'
  when '9500' then '95%'
  when '9900' then '99%'
end contalike,
(
   select coalesce(sum(b1.valor_total),0)
   from receitas_previstas b1 
   join receitas_orcamentarias b2 on b2.id = b1.receita_orcamentaria_id
   where b1.cliente_id = 2 and b1.exercicio_id = 1 and b2.codigo like a1.contalike

) valor
from receitas_orcamentarias a1
where substr(a1.codigo, 1, 4) in ('1000','1100', '1110','1120', 
                                  '1130','1200','1300','1400',
                                  '1500','1600', '1700','1800', 
                                  '1900','2000', '2100', '2200',
                                  '2300', '2400', '2900', '7000', 
                                  '8000', '9000', '9110', '9120', 
                                  '9500', '9900')
order by a1.codigo