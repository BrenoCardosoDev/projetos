-- Apagando o banco de dados:
drop database oficina;

-- Criando o banco de dados:
create database oficina;

-- Acessando o banco de dados:
use oficina;

-- Criando tabelas:
create table cliente (
	idCliente int auto_increment primary key,
    nome varchar(45) not null,
    cpf char(11) not null,
    contato char(12) not null,
    endereco varchar(45) not null,
    constraint un_cpf_cliente unique(cpf)
);

create table veiculo (
	idVeiculo int auto_increment primary key,
    placa char(7) not null,
    modelo varchar(45) not null,
    marca varchar(45) not null,
    cor varchar(45) not null,
    ano varchar(9) not null,
    idClienteV int,
    constraint un_placa_veiculo unique(placa),
    constraint fk_idCliente_veiculo foreign key (idClienteV) references cliente(idCliente)
);

create table servico (
	idServico int auto_increment primary key,
    descricao varchar(45) not null,
    entrada date not null,
    saida date,
    status enum('Aguardando', 'Em andamento', 'Liberado') not null,
    idVeiculoS int,
    constraint fk_idVeiculo_servico foreign key (idVeiculoS) references veiculo(idVeiculo)
);

create table mecanico (
	idMecanico int auto_increment primary key,
    nome varchar(45) not null,
    cpf char(11) not null,
    contato char(12) not null,
    endereco varchar(45) not null,
    especialidade varchar(45) not null,
    constraint un_cpf_mecanico unique(cpf)
);

create table osmdo (
	idOsmdo int auto_increment primary key,
    valor float not null,
    idMecanicoM int,
    idServicoM int,
    constraint fk_idMecanico_osmdo foreign key (idMecanicoM) references mecanico(idMecanico),
    constraint fk_idServico_osmdo foreign key (idServicoM) references servico(idServico)
);

create table estoque (
	idEstoque int auto_increment primary key,
    material varchar(45) not null,
    unidade varchar(10) not null,
    quantidade float not null,
    valor float not null
);

create table osmaterial (
	idOsmaterial int auto_increment primary key,
    quantidade float not null,
    idEstoqueI int,
    idServicoI int,
    constraint fk_idEstoque_osmaterial foreign key (idEstoqueI) references estoque(idEstoque),
    constraint fk_idServico_osmaterial foreign key (idServicoI) references servico(idServico)
);

-- Exibir tabelas criadas:
show tables;
