create database diwine;
use diwine;

create table Empresa (
idEmpresa int primary key auto_increment,
nome varchar(60), -- Nome da Empresa
CNPJCPF varchar(30), -- CPF/CNPJ
Ambiente varchar(40), -- Ambiente onde estão armazenados os vinhos e sensores
StatusDePendencia varchar(30)); -- Se a empresa esta Aprovada ou em Análise 

insert into Empresa values

(null,'Empresa A','30.395.080/0001-40', 'Ambiente Y', 'Em Análise'),
(null,'Empresa B','45.395.000/0001-39', 'Ambiente Z', 'Aprovado'),
(null,'Empresa C','26.495.100/0001-39', 'Ambiente W', 'Em Análise'),
(null,'Empresa D','46.375.009/0001-39', 'Ambiente I', 'Em Análise');

select *from empresa;

create table Ambiente (
id int primary key auto_increment,
Nome varchar(40), -- nome do ambiente 
Setor varchar(40), -- setor onde esta localizado certos ambientes
DestinoAlerta varchar(60) -- destino onde chegará a mensagem alerta
);


insert into ambiente values
(null, 'Ambiente X', 'Setor Y', '(11)94561-5205'),
(null, 'Ambiente Z', 'Setor Y', 'empresaB.corp@email.com'),
(null, 'Ambiente K', 'Setor I', '(53)93361-5205');

select *from ambiente;


create table Sensor (
idSensor int primary key auto_increment,
Tipo varchar(40), -- Temperatura, luminosidade, umidade
tempo int, -- Tempo de Funcionamento do sensor para Tabela em minutos
Dados int, -- dados do sensor
Estado varchar(15) -- ligado ou desligado
);



insert into Sensor values
(null, 'Temperatura', 15, 10,'ligado'),
(null, 'Umidade', 80, 10,'ligado'),
(null, 'luminosidade', 0, 0,'desligado');

select *from sensor;


create table Vinho (
idVinho int primary key auto_increment,
Tipo varchar(30), -- Tipos de vinhos 
Recipiente varchar(30), -- Recipientes onde estão armazenados os vinhos
TempoMaturacao varchar(40), -- Tempo que o vinho ficará maturando
DataDeEntrada date, -- data de entrada do vinho
DatadeSaida date); -- data de saída do vinho




insert into Vinho values 
(null, 'branco', 'Barril', '2 anos', '2020/10/12', '2022/10/12'),
(null, 'tinto', 'TanqueDeAço', '2 anos', '2021/10/12', '2023/10/12'),
(null, 'seco', 'Barril', '2 anos', '2022/10/12', '2024/10/12');

select *from vinho;



