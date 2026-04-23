-- Perfil de Prescrição

create table agg_prescricao as
select
    ano_venda,
    uf_venda,
    conselho_prescritor,
    tipo_receituario,
	count(*) as total_registros,
	sum(qtd_vendida) as qtd_total_vendida
from vendas_medicamentos
group by ano_venda, uf_venda, conselho_prescritor, tipo_receituario
order by ano_venda;

select 
	count(*)
from agg_prescricao;

select * from agg_prescricao limit 10;