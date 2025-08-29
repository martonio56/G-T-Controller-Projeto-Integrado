select a2.codigo+1 exercicio1, a1.indice1,(
	   select coalesce(sum(b1.valor_exercicio1),0) 
       from ppas_financiamentos b1 
       join ppas b2 on b2.id = b1.ppa_id
       where b2.cliente_id = a1.cliente_id and b2.exercicio_id = a1.exercicio_id) valor1,
       a2.codigo+2 exercicio2, a1.indice2,(
	   select coalesce(sum(b1.valor_exercicio2),0) 
       from ppas_financiamentos b1 
       join ppas b2 on b2.id = b1.ppa_id
       where b2.cliente_id = a1.cliente_id and b2.exercicio_id = a1.exercicio_id) valor2, 
       a2.codigo+3 exercicio3, a1.indice3,(
	   select coalesce(sum(b1.valor_exercicio3),0) 
       from ppas_financiamentos b1 
       join ppas b2 on b2.id = b1.ppa_id
       where b2.cliente_id = a1.cliente_id and b2.exercicio_id = a1.exercicio_id) valor3,
       a2.codigo+4 exercicio4,a1.indice4,(
	   select coalesce(sum(b1.valor_exercicio4),0) 
       from ppas_financiamentos b1 
       join ppas b2 on b2.id = b1.ppa_id
       where b2.cliente_id = a1.cliente_id and b2.exercicio_id = a1.exercicio_id) valor4
from ppas a1
join exercicios a2 on a2.id = a1.exercicio_id
where a1.cliente_id = 12 and a1.exercicio_id = 1


