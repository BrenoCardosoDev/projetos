-- Apagando o banco de dados E-Commerce:
drop database ecommerce;

-- Criando o banco de dados do E-Commerce:
create database ecommerce;

-- Acessando o Banco de Dados do E-Commerce:
use ecommerce;

-- Criando tabelas:
create table cliente(
	idCliente int auto_increment primary key,
    nome varchar(45) not null,
    cpf char(11) not null,
    dataNascimento date not null,
    contato char(11) not null,
    endereco varchar(45) not null,
    cep varchar(8) not null,
    email varchar(45) not null,
    constraint unique_cpf_cliente unique(cpf)
);

-- alter table cliente auto_increment=1;

create table produto(
	idProduto int auto_increment primary key,
    categoria enum('Eletrônicos','Roupas','Brinquedos','Alimentos','Móveis') not null,
    nome varchar (45) not null,
    descricao varchar(255),
    valor varchar(45) not null,
    unidade varchar(10) not null,
    avaliacao float,
    dimensao varchar(10)
);

create table pagamento(
	idPagamento int auto_increment primary key,
    formaPagamento enum('Boleto','Cartão') not null,
    numero varchar(45) not null,
    vencimento date not null
);

create table pedido(
	idPedido int auto_increment primary key,
    status enum('Confirmado','Em processamento','Entregue','Cancelado') not null,
    descricao varchar(255),
    frete float default 0,
    idClienteP int,
    idPagamentoP int,
    constraint fk_idCliente_Pedido foreign key (idClienteP) references cliente(idCliente),
    constraint fk_idPagamento_Pedido foreign key (idPagamentoP) references pagamento(idPagamento)
		on update cascade
);

create table estoque(
	idEstoque int auto_increment primary key,
    cidade varchar(45) not null,
    quantidade int default 0
);

create table fornecedor(
	idFornecedor int auto_increment primary key,
    razaoSocial varchar(45) not null,
    nomeFantasia varchar(45) not null,
    cnpj char(15) not null,
    endereco varchar(45) not null,
    contato char(11) not null,
    email varchar(45) not null,
    constraint unique_cnpj_fornecedor unique(cnpj)
);

create table vendedor(
	idVendedor int auto_increment primary key,
    razaoSocial varchar(45) not null,
    nomeFantasia varchar(45) not null,
    cnpj char(15) not null,
    endereco varchar(45) not null,
    contato char(11) not null,
    email varchar(45) not null,
    constraint unique_cnpj_terceiroVendedor unique(cnpj)
);

create table produtoVendedor(
	idVendedorPV int,
    idProdutoPV int,
    quantidade int default 1,
    primary key (idVendedorPV, idProdutoPV),
    constraint fk_idVendedor_produtoVendedor foreign key (idVendedorPV) references vendedor(idVendedor),
    constraint fk_idProduto_produtoVendedor foreign key (idProdutoPV) references produto(idProduto)
);

create table produtoPedido(
	idProdutoPD int,
    idPedidoPD int,
    quantidade int default 1,
    status enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idProdutoPD, idPedidoPD),
    constraint fk_idProduto_produtoPedido foreign key (idProdutoPD) references produto(idProduto),
    constraint fk_idPedido_produtoPedido foreign key (idPedidoPD) references pedido(idPedido)
);

create table produtoEstoque(
	idProdutoPE int,
    idEstoquePE int,
    estado char(2) not null,
    primary key (idProdutoPE, idEstoquePE),
    constraint fk_idProduto_produtoEstoque foreign key (idProdutoPE) references produto(idProduto),
    constraint fk_idEstoque_produtoEstoque foreign key (idEstoquePE) references estoque(idEstoque)
);

create table produtoFornecedor(
	idFornecedorPF int,
    idProdutoPF int,
    quantidade int not null,
    primary key (idFornecedorPF, idProdutoPF),
    constraint fk_idFornecedor_produtoFornecedor foreign key (idFornecedorPF) references fornecedor(idFornecedor),
    constraint fk_idProduto_produtoFornecedor foreign key (idProdutoPF) references produto(idProduto)
);

-- Exibir tabelas criadas:
show tables;
