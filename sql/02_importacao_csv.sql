-- Importação dos arquivos CSV --
-- CSV 2019
copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_201901.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_201904.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_201907.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_201910.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

-- CSV 2020
copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202001.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202004.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202007.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202010.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

-- CSV 2021
copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202101.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202104.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202107.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

copy vendas_medicamentos
from 'C:\temp\EDA_Industrializados_202110.csv'
with (
	format csv,
	delimiter ';',
	header true,
	encoding 'win1252' 
);

/*
criamos índices nos campos que mais vamos filtrar 
e agrupar: ano, mês, UF, princípio ativo e tipo de receituário.
 São exatamente os campos que aparecem nos nossos 6 blocos de análise.
*/

create index idx_ano_mes on vendas_medicamentos (ano_venda, mes_venda);
create index idx_uf on vendas_medicamentos (uf_venda);
create index idx_principio on vendas_medicamentos (principio_ativo);
create index idx_receituario on vendas_medicamentos (tipo_receituario);