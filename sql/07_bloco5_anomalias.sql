-- Anomalias e Pandemia

create table agg_anomalias_pandemia as
select
	ano_venda,
    mes_venda,
    principio_ativo,
    count(*) as total_registros,
    sum(qtd_vendida) as qtd_total_vendida
from vendas_medicamentos
where principio_ativo like '%CLOROQUINA%'
   	or principio_ativo like '%IVERMECTINA%'
   	or principio_ativo like '%NITAZOXANIDA%'
group by ano_venda, mes_venda, principio_ativo
order by ano_venda, mes_venda;

select 
	count(*)
from agg_anomalias_pandemia;

select * from agg_anomalias_pandemia limit 10;

SELECT * FROM agg_anomalias_pandemia 
WHERE ano_venda = 2020
ORDER BY mes_venda;