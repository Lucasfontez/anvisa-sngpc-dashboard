-- Insights integrados

create table agg_cruzamento_uf as
select
    ano_venda,
    uf_venda,
    count(*) as total_registros,
    sum(qtd_vendida) as qtd_total_vendida,
    count(distinct principio_ativo) as qtd_principios,
    count(distinct conselho_prescritor) as qtd_conselhos,
    sum(case when tipo_receituario = '5.' then qtd_vendida else 0 end) as qtd_antimicrobianos,
    sum(case when conselho_prescritor != 'CRM' then 1 else 0 end) as registros_nao_medicos
from vendas_medicamentos
group by ano_venda, uf_venda
order by ano_venda, uf_venda;

select 
	count(*)
from agg_cruzamento_uf;

select * from agg_cruzamento_uf limit 10;