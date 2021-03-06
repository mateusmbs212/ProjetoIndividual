-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
create database JDMCars;
use JDMCars;

create table votacao (
	idVotacao int primary key auto_increment,
    nomeCarro varchar(50)
);

insert into  votacao (nomeCarro) values
	( 'Mazda Rx7'),
    ( 'Toyota Supra'),
    ( 'Nissan Skyline'),
    ( 'Silvia s15'),
    ( 'Nissan 350z');

create table usuario (
	idUsuario int primary key auto_increment,
    fkvotacao int, foreign key (fkvotacao) references votacao(idVotacao),
    nome varchar(60),
    email varchar(60), CHECK (email like '%@%'),
    senha VARCHAR (45)
);