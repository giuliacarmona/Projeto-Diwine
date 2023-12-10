-- *** CRIANDO E USANDO BANCO DE DADOS ***--
CREATE DATABASE diwineBD;
USE diwineBD;

-- drop database diwineBD;

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
CREATE TABLE usuario (
idUsuario		INT PRIMARY KEY AUTO_INCREMENT,					-- Identificação do funcionário Responsável
nome			VARCHAR(60),									-- Nome Completo
email			VARCHAR(40) NOT NULL UNIQUE,					-- E-mail cadastro e utilizado para realizar o login
senha 			VARCHAR(20),									-- Senha cadastro e utilizado para realizar o login
celular			VARCHAR(14),									-- Telefone para contato
fkEmpresa		INT,											
	FOREIGN KEY (fkEmpresa) REFERENCES empresa(idEmpresa)
) AUTO_INCREMENT = 100; 

-- INSERT INTO usuario VALUES										-- Inserindo um funcionário
	-- (NULL, 'José Silva', 'jose.silva@empresab.com', 'joseEmpresa22@', '11962063620',1);

-- *** CRIANDO TABELA 'AMBIENTE' ***--
create table ambiente (
idAmbiente		INT PRIMARY KEY AUTO_INCREMENT,					-- Identificação do Ambiente
fkEmpresa		INT,
	FOREIGN KEY (fkEmpresa) REFERENCES empresa(idEmpresa)
);

-- *** INSERINDO DUAS COLUNA NA TABELA 'ambiente' ***--
ALTER TABLE ambiente ADD COLUMN apelido VARCHAR(40);			-- Nome que o usuário deseja dar ao ambiente
DESC ambiente;

-- *** INSERINDO DADOS NA TABELA 'AMBIENTE' ***--
INSERT INTO ambiente VALUES
	(NULL, 1, 'Setor China - Tinto'),
    (NULL, 1, 'Setor Coreia - Branco'),
    (NULL, 1, 'Setor Japão - Rosé');

-- *** CRIANDO TABELA 'LOTE' ***--
create table lote (
idLote			INT PRIMARY KEY AUTO_INCREMENT,	 				-- Identificação do Lote
apelido			VARCHAR(100),									-- Apelido do Lote
tipoVinho		VARCHAR(40),							-- Branco, Tinto, Rosé
dataIncio		DATE,											-- EX: 03-05-2018
tempoMes	 	INT,											
tempoAno		INT,
quantidade		INT,											-- Quantidade de Lotes
fkAmbiente		INT,
	FOREIGN KEY (fkAmbiente) REFERENCES ambiente(idAmbiente)
) AUTO_INCREMENT = 1;

DESC lote;

-- *** INSERINDO DADOS NA TABELA 'LOTE' ***--
INSERT INTO lote VALUES
	(NULL, 'Barril Coreia - Tinto', 'Tinto', '2018-03-05', 3, 2020, 20, 1);
    
INSERT INTO lote VALUES
	(NULL, 'Barril Coreia - Branco', 'Rranco', '2019-02-03', 3, 2020, 40, 2);


-- *** CRIANDO TABELA 'SENSOR' E INSERINDO DADOS ***--
CREATE TABLE sensor (
idSensor 			INT PRIMARY KEY AUTO_INCREMENT,					-- Identificação do Ambiente
dht11_umidade 		DECIMAL,										-- Umidade DHT11
dht11_temperatura 	DECIMAL,										-- Temperatura DHT11
momento 			DATETIME,
fkAmbiente			INT,
	FOREIGN KEY (fkAmbiente) REFERENCES ambiente(idAmbiente)
) AUTO_INCREMENT = 1;
  
-- *** SELECT * FROM DAS TABELAS ***--
SELECT * FROM empresa;
SELECT * FROM usuario;
SELECT * FROM ambiente;
SELECT * FROM lote;
SELECT * FROM sensor;

truncate table sensor;

 insert into sensor values 
 (null, 65, 9, now(), 1),
 (null, 65, 9, now(), 1),
 (null, 64, 10, now(), 1),
 (null, 63, 11, now(), 1),
 (null, 62, 14, now(), 1),
 (null, 61, 10, now(), 1),
 (null, 59, 10, now(), 1),
 (null, 57, 9, now(), 1),
 (null, 54, 8, now(), 1);

insert into sensor values 
 	(null, 25, 23, now(), 1);
    
 -- insert into sensor values 
	-- (null, 26, 22, now(), 1);
    
 -- insert into sensor values 
 	-- (null, 20, 45, now(), 1);
    
-- INSERT INTO sensores (dht11_umidade, dht11_temperatura, luminosidade, lm35_temperatura, chave) VALUES (23, 5, 4, 5, 6);


        




