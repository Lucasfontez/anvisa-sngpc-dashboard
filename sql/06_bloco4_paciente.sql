-- Perfil do Paciente

create table agg_paciente_antimicrobiano as
select
	ano_venda,
    uf_venda,
    sexo,
    idade,
    cid10,
    count(*) as total_registros,
    sum(qtd_vendida) as qtd_total_vendida
from vendas_medicamentos
where tipo_receituario = '5.'
group by ano_venda, uf_venda, sexo, idade, cid10
order by ano_venda;

select 
	count(*)
from agg_paciente_antimicrobiano;

select * from agg_paciente_antimicrobiano limit 10;