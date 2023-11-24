-- *** CRIANDO E USANDO BANCO DE DADOS ***--
CREATE DATABASE diwineBD;
USE diwineBD;

-- *** CRIANDO TABELA 'EMPRESA' E INSERINDO DADOS ***--
CREATE TABLE empresa (
idEmpresa		INT PRIMARY KEY AUTO_INCREMENT, 				-- Identificação da Empresa
nomeFantasia	VARCHAR(40),									-- Nome da Empresa
CNPJ			VARCHAR(18) NOT NULL							-- CNPJ da Empresa
);

INSERT INTO empresa VALUES										-- Inserindo algumas empresas (ficticio)
	(NULL, 'Empresa A', '30.395.080/0001-40'),
	(NULL, 'Empresa B', '45.395.000/0001-39'),
	(NULL, 'Empresa C', '26.495.100/0001-39'),
	(NULL, 'Empresa D', '46.375.009/0001-39');

-- *** CRIANDO TABELA 'FUNCIONARIO E INSERINDO DADOS' ***--
CREATE TABLE funcionario (
idFunc			INT PRIMARY KEY AUTO_INCREMENT,					-- Identificação do funcionário Responsável
nomeFunc		VARCHAR(60),									-- Nome Completo
CPF				VARCHAR(14) NOT NULL,							-- CPF
cargo			VARCHAR(40),									-- Cargo que ele ocupa na empresa
email			VARCHAR(40) NOT NULL,							-- E-mail cadastro e utilizado para realizar o login
celular			VARCHAR(14),									-- Telefone para contato
fkEmpresa		INT,											
	CONSTRAINT fkEmpresa FOREIGN KEY (fkEmpresa)
		REFERENCES empresa(idEmpresa)
)AUTO_INCREMENT = 100; 

INSERT INTO funcionario VALUES									-- Inserindo um funcionário
	(NULL, 'José Silva', '555.555.555-55', 'Técnico de Manutenção', 'jose.silva@empresab.com', '(11)94002-8922', 1);

-- *** CRIANDO TABELA 'AMBIENTE' ***--
create table ambiente (
idAmbiente		INT PRIMARY KEY AUTO_INCREMENT,					-- Identificação do Ambiente
fkEmpresa		INT,
	CONSTRAINT fkEmpresaAmbiente FOREIGN KEY (fkEmpresa)
		REFERENCES empresa(idEmpresa)
);

-- *** INSERINDO DUAS COLUNA NA TABELA 'ambiente' ***--
ALTER TABLE ambiente ADD COLUMN nomeAmbiente VARCHAR(40);		-- Nome que o usuário deseja dar ao ambiente
ALTER TABLE ambiente ADD COLUMN alertaMensagem VARCHAR(100);	-- Mensagem de Alerta caso a temperatura ou umidade ultrapsse o limite máximo
DESC ambiente;

-- *** INSERINDO DADOS NA TABELA 'AMBIENTE' ***--
INSERT INTO ambiente VALUES
	(NULL, 1, 'Setor 1 - Tinto', '0'),
    (NULL, 1, 'Setor 2 - Branco', '0'),
    (NULL, 2, 'Setor 3 - Rosé', '0');


-- *** CRIANDO TABELA 'LOTE' ***--
create table lote (
idLote			INT PRIMARY KEY AUTO_INCREMENT,	 				-- Identificação do Lote
tipoVinho		VARCHAR(40) NOT NULL,							-- Branco, Tinto, Rosé
tempoMaturacao 	CHAR(2),										-- 5, 10, 20 anos
dataIncio		DATE,											-- EX: 03-05-2018
fkAmbiente		INT,
	CONSTRAINT fkAmbienteLote FOREIGN KEY (fkAmbiente)
		REFERENCES ambiente(idAmbiente)
);
   
-- *** INSERINDO UMA COLUNA NA TABELA 'LOTE' ***--
ALTER TABLE lote ADD COLUMN tipoBarril VARCHAR(40) NOT NULL; 	-- Barril de Carvalho, Ovo de Concreto ou Tanque de Aço
DESC lote;

-- *** INSERINDO DADOS NA TABELA 'LOTE' ***--
INSERT INTO lote VALUES
	(NULL, 'tinto', '10', '2018-03-05', 3, 'Barril de Carvalho');

-- *** CRIANDO TABELA 'SENSOR' E INSERINDO DADOS ***--
CREATE TABLE sensor (
idSensor 		INT PRIMARY KEY AUTO_INCREMENT,					-- Identificação do Ambiente
tipoSensor	 	VARCHAR(100),									-- Umidade e Temperatura
atualizacao		VARCHAR(40),									-- A cada 10, 15 ou 30 Minutos
dtRegistro		DATE,											-- Data do registro
localizacao		VARCHAR(30),									-- Localização do Sensor
fkAmbiente		INT,
	CONSTRAINT fkAmbienteSensor FOREIGN KEY (fkAmbiente)
		REFERENCES ambiente(idAmbiente)
);

INSERT INTO Sensor VALUES										
	(NULL, 'Temperatura', 15, '2019-12-12', 'Noroeste', 1),				-- Inserindo dados de Temperatura
	(NULL, 'Umidade', 30, '2021-12-12', 'Sul', 1);					-- Inserindo dados de Umidade
  
-- *** SELECT * FROM DAS TABELAS ***--
SELECT * FROM empresa;
SELECT * FROM funcionario;
SELECT * FROM ambiente;
SELECT * FROM lote;
SELECT * FROM sensor;