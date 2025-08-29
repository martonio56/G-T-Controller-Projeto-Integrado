select coalesce(sum(b1.valor),0) LOA 
from despesas_fixadas b1
join despesas_orcamentarias b2 on b2.id = b1.despesa_orcamentaria_id
join exercicios b3 on b3.id = b1.exercicio_id
join acoes b4 on b4.id = b1.acao_id
join funcoes b5 on b5.id = b4.funcao_id
where b3.codigo = '2025' and b1.cliente_id = 2 and b2.codigo like '3190%' and not b5.codigo in ('08','09','10');

select coalesce(sum(b1.valor),0) LOA 
from despesas_fixadas b1
join despesas_orcamentarias b2 on b2.id = b1.despesa_orcamentaria_id
join exercicios b3 on b3.id = b1.exercicio_id
join acoes b4 on b4.id = b1.acao_id
join funcoes b5 on b5.id = b4.funcao_id
where b3.codigo = '2025' and b1.cliente_id = 2 and b2.codigo like '3190%' and b5.codigo in ('08','09','10');
