drop database if exists psinu;
create database psinu;
use psinu;

create table user(
cod_user int primary key auto_increment,
nome_user varchar (300) not null,
email_user varchar(300) not null,
pass_user varchar (300) not null
);
insert into user values (null,'admin','admin@localhost','root');

create table bo(
  cod_bo int primary key auto_increment,

  nomeVitima_bo varchar(100) not null,
  sobrenomeVitima_bo varchar(200) not null,
  idadeVitima_bo int,
  enderecoVitima_bo varchar(400) not null,
  telefoneVitima_bo varchar(50) not null,
  profissaoVitima_bo varchar(100),

  nomeSuspeito_bo varchar(100),
  sobrenomeSuspeito_bo varchar(200),
  idadeSuspeito_bo int,
  enderecoSuspeito_bo varchar(400),
  telefoneSuspeito_bo varchar(50),

  dataOcorrido_bo date not null,
  descricaoOcorrido_bo varchar(500000) not null,
<<<<<<< HEAD
  assuntoOcorrido_bo varchar(200) not null
=======
  assuntoOcorrido_bo varchar(200) not null,

<<<<<<< HEAD
<<<<<<< HEAD
  cod_user int not null,
  foreign key (cod_user) references User(cod_user)
=======

>>>>>>> dd3371eb149d3bb5d14b79523895ad3bf25e3f5c
=======
  cod_user int not null,
  foreign key (cod_user) references User(cod_user)
>>>>>>> a0029865a59fd4743e304d708e9fb53cdc6e2dd3
>>>>>>> ca23cd0514762e74d5802c1ae5617f6fbd3b0650
);

create table denuncia(
  cod_den int primary key auto_increment,
  titulo_den varchar(300) not null,
  suspeito_den varchar (1000),
  data_den timestamp not null,
  descricao_den varchar(500000) not null,
  email_den varchar(300),
  assunto_den varchar(200) not null
);
