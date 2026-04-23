-- Comportamento Temporal e Sazonalidade

create table agg_vendas_temporal as
select
	ano_venda,
	mes_venda,
	tipo_receituario,
	count(*) as total_registros,
	sum(qtd_vendida) as qtd_total_vendida
from vendas_medicamentos
group by ano_venda, mes_venda, tipo_receituario
order by ano_venda, mes_venda, tipo_receituario;

select 
	count(*)
from agg_vendas_temporal;

select * from agg_vendas_temporal limit 10;