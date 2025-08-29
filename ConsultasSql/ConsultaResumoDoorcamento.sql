select substr(a1.codigo,1,2) codigo, a1.nome,
   case 
		when substr(a1.codigo,1,2) = '10' then  (select coalesce(sum(a2.valor_orcamento_social),0) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '1%')
        when substr(a1.codigo,1,2) = '20' then  (select coalesce(sum(a2.valor_orcamento_social),0) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '2%')
        when substr(a1.codigo,1,2) = '70' then  (select coalesce(sum(a2.valor_orcamento_social),0) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '7%')
        when substr(a1.codigo,1,2) = '80' then  (select coalesce(sum(a2.valor_orcamento_social),0) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '8%')
        when substr(a1.codigo,1,2) = '90' then  (select coalesce(sum(a2.valor_orcamento_social)) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '9%')
        when substr(a1.codigo,1,3) = '910' then  (select coalesce(sum(a2.valor_orcamento_social)) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '91%')
        when substr(a1.codigo,1,3) = '920' then  (select coalesce(sum(a2.valor_total)) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '92%')
        when substr(a1.codigo,1,3) = '950' then  (select coalesce(sum(a2.valor_orcamento_social)) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '95%')
        when substr(a1.codigo,1,3) = '990' then  (select coalesce(sum(a2.valor_orcamento_social)) from receitas_previstas a2
												 join receitas_orcamentarias a3 on a3.id = a2.receita_orcamentaria_id	
                                                 where a2.cliente_id = 2 and a2.exercicio_id = 1 and a3.codigo like '99%')
   end valor

from receitas_orcamentarias a1
where substr(a1.codigo,1,4) in ('1000','2000','7000','8000','9000','9100','9200','9500','9900') ;
