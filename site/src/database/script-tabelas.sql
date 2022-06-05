-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
create database JDMCars;
use JDMCars;

create table usuario (
	idUsuario int primary key auto_increment,
    nome varchar(60),
    email varchar(60), CHECK (email like '%@%'),
    senha VARCHAR (45)
);

create table votação (
	idVotação int,
    fkusuario int,
    foreign key (fkusuario) references usuario(idUsuario),
    primary key(idVotação, fkUsuario),
    voto int
);
