create table vendas_medicamentos(
	ano_venda integer, 
	mes_venda varchar(2),
	uf_venda varchar(2),
	municipio_venda varchar(230),
	principio_ativo varchar(500),
	descricao_apresentacao varchar(500),
    qtd_vendida INTEGER,
    unidade_medida varchar(50),
    conselho_prescritor varchar(50),
    uf_conselho_prescritor varchar(2),
    tipo_receituario varchar(5),
    cid10 varchar(10),
    sexo varchar(5),
    idade varchar(10),
    unidade_idade varchar(5)
);

select * from vendas_medicamentos;