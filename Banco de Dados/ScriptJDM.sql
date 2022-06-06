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

select * from usuario;
select * from votacao;

select * from votacao join usuario
	on idVotacao = fkVotacao;



drop table usuario;
drop table votacao;

