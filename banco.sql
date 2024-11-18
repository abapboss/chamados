drop database chamados;
create database chamados;
use chamados;

create table cliente(
	pk_cliente int primary key NOT NULL AUTO_INCREMENT,
    nome_cliente varchar(60) not null,
    email_cliente varchar(45) not null,
    telefone_cliente varchar(15)
);

create table chamados(
	pk_chamado int primary key NOT NULL AUTO_INCREMENT,
    fk_cliente int not null,
    descricao_chamado varchar(250),
    criticidade_chamado enum('baixo', 'medio', 'importante', 'urgente'),
    status_chamado enum('aberto', 'andamento', 'resolvido') default 'aberto',
    inicio_chamado date,
    fk_colaborador int not null,
    foreign key (fk_cliente) references cliente(pk_cliente),
    foreign key (fk_colaborador) references cliente(pk_cliente)
);