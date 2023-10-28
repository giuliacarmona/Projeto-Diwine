-- *** CRIANDO E USANDO BANCO DE DADOS ***--
create database diwineBD;
use diwineBD;

-- *** CRIANDO TABELA 'LOTE' ***--
create table lote (
idLote			int primary key auto_increment, 				-- Identificação do Lote
tipoVinho		varchar(40) not null,							-- Branco, Tinto, Rosé
tempoMaturacao 	char(2),										-- 5, 10, 20 anos
dataIncio		DATE											-- EX: 03-05-2018
);

-- *** CRIANDO TABELA 'AMBIENTE' ***--
create table ambiente (
idAmbiente		int primary key auto_increment					-- Identificação do Ambiente
);

-- *** CRIANDO TABELA 'SENSOR' E INSERINDO DADOS ***--
create table sensor (
idSensor 		int primary key auto_increment,					-- Identificação do Ambiente
tipoSensor	 	varchar(100),									-- Umidade e Temperatura
atualizacao		varchar(40),									-- A cada 10, 15 ou 30 Minutos
min				char(2),										-- Temp. ou Umid. Minima
max				char(3),										-- Temp. ou Umid. Máxima
media			varchar(5)										-- Armazena a média de Temp. e Umid.
);

insert into Sensor values
	(null, 'Temperatura', 15, 12, 18, '0'),
	(null, 'Umidade', 30, 65, 75, '0');


-- *** CRIANDO TABELA 'EMPRESA' E INSERINDO DADOS ***--
create table empresa (
idEmpresa		int primary key	auto_increment,					-- Identificação da Empresa
nomeFantasia	varchar(40),									-- Nome da Empresa
CNPJ			varchar(18) not null							-- CNPJ da Empresa
);
insert into empresa values
	(null, 'Empresa A', '30.395.080/0001-40'),
	(null, 'Empresa B', '45.395.000/0001-39'),
	(null, 'Empresa C', '26.495.100/0001-39'),
	(null, 'Empresa D', '46.375.009/0001-39');


-- *** CRIANDO TABELA 'FUNCIONARIO E INSERINDO DADOS' ***--
create table funcionario (
idFunc			int primary key auto_increment,					-- Identificação do funcionário Responsável
nomeFunc		varchar(60),									-- Nome Completo
CPF				varchar(14) not null,							-- CPF
cargo			varchar(40),									-- Cargo que ele ocupa na empresa
email			varchar(40) not null,							-- E-mail cadastro e utilizado para realizar o login
celular			varchar(14)										-- Telefone para contato
);
insert into funcionario values
	(null, 'José Silva', '555.555.555-55', 'Técnico de Manutenção', 'jose.silva@empresab.com', '(11)94002-8922');
    
    
-- *** INSERINDO UMA COLUNA NA TABELA 'LOTE' ***--
alter table lote add column tipoBarril varchar(40) not null; 	-- Barril de Carvalho, Ovo de Concreto ou Tanque de Aço
desc lote;


-- *** INSERINDO DADOS NA TABELA 'LOTE' ***--
insert into lote values
	(null, 'tinto', '10', '2018-03-05', 'Barril de Carvalho');


-- *** INSERINDO DUAS COLUNA NA TABELA 'ambiente' ***--
alter table ambiente add column nomeAmbiente varchar(40);		-- Nome que o usuário deseja dar ao ambiente
alter table ambiente add column alertaMensagem varchar(100);	-- Mensagem de Alerta caso a temperatura ou umidade ultrapsse o limite máximo
desc ambiente;

-- *** INSERINDO DADOS NA TABELA 'AMBIENTE' ***--
insert into ambiente values
	(null, 'Setor 1 - Tinto', '0'),
    (null, 'Setor 2 - Branco', '0'),
    (null, 'Setor 3 - Rosé', '0');

-- *** SELECT * FROM DAS TABELAS ***--
select * from ambiente;
select * from lote;
select * from empresa;
select * from funcionario;
select * from sensor;