-- Agregação de vendas por UF, ano e mês

create table agg_vendas_uf as
select 
    ano_venda,
    mes_venda,
    uf_venda,
    count(*) as total_registros,
    sum(qtd_vendida) as qtd_total_vendida,
    count(distinct principio_ativo) as qtd_principios_ativos,
    count(distinct municipio_venda) as qtd_municipios
from vendas_medicamentos
group by ano_venda, mes_venda, uf_venda
order by ano_venda, mes_venda, uf_venda;

select 
	count(*) 
from agg_vendas_uf;

select * from om agg_vendas_uf avu f limit 10;