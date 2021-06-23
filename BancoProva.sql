create database webprova;
use webprova;

create table usuario(
id int not null auto_increment,
nome varchar (80) not null,
Sexo char (1) not null,
clt varchar(14) not null,
TelefoneFixo int (11) not null,
Celular int (11) not null,
Email varchar (50) not null,
logradouro varchar(100) not null,
numero varchar(5) not null,
complemento varchar(10),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf varchar(2) not null,
primary key(id)
);

select*from usuario;