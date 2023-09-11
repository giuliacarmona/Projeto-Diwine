create database Winetech;
use Winetech;

create table Sensores (
idSensor int primary key auto_increment,
Tipo varchar(40),
Dados varchar(100),
Tempo varchar(40),
Estado varchar(5));

create table Vinho (
idVinho int primary key auto_increment,
Tipo varchar(30),
Recipiente varchar(30),
TempoMaturacao varchar(40));

create table Ambiente (
id int primary key auto_increment,
Nome varchar(40),
Andar varchar(40),
Setor varchar(40));

create table Empresa (
Qtd int,
Ambiente varchar(40),
Status varchar(30));

alter table Ambiente add column Mensagem varchar(100);
select * from Ambiente;

alter table Sensores rename to Sensor;
alter table Sensor add column Leitura datetime;

select * from Sensor;