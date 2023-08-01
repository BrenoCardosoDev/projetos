-- Acessando o banco de dados do E-Commerce:
use ecommerce;

-- Inserindo dados nas tabelas:
insert into cliente (nome, cpf, dataNascimento, contato, endereco, cep, email) 
	values	('Maria dos Santos','00000000001','1970-01-01','11988880000','Rua A','49000000','nome@email.com'),
			('Paulo dos Santos','00000000002','1980-02-01','11988880000','Rua A','49000000','nome@email.com'),
			('José dos Santos','00000000003','1990-03-01','11988880000','Rua A','49000000','nome@email.com'),
			('Pedro dos Santos','00000000004','2000-04-01','11988880000','Rua A','49000000','nome@email.com'),
			('Carlos dos Santos','00000000005','1985-05-01','11988880000','Rua A','49000000','nome@email.com'),
			('João dos Santos','00000000006','1995-06-01','11988880000','Rua A','49000000','nome@email.com'),
            ('Ricardo dos Santos','00000000007','1998-07-01','11988880000','Rua A','49000000','nome@email.com'),
            ('Cíntia dos Santos','00000000008','2001-08-01','11988880000','Rua A','49000000','nome@email.com'),
            ('Joseja dos Santos','00000000009','2003-09-01','11988880000','Rua A','49000000','nome@email.com'),
            ('Clara dos Santos','00000000010','1999-10-01','11988880000','Rua A','49000000','nome@email.com');

insert into produto (categoria, nome, descricao, valor, unidade, avaliacao, dimensao)
	values  ('Eletronicos','Fone de ouvido',null,'30.00','un','10',null),
			('Eletronicos','Capa de celular',null,'35.00','un','9',null),
            ('Roupas','Camisa social masculina',null,'65.00','un','10',null),
            ('Roupas','Vestido feminino',null,'80.00','un','10',null),
            ('Brinquedos','Bola',null,'50.00','un','8',null),
            ('Brinquedos','Boneca Barbie',null,'80.00','un','10',null),
            ('Alimentos','Caixa de chocolate',null,'10.00','cx','10',null),
			('Alimentos','Saco de pirulito',null,'8.00','sc','10',null),
            ('Móveis','Sofá',null,'1500.00','un','8',null),
            ('Móveis','Mesa plástica',null,'150.00','un','10',null);

insert into pagamento (formaPagamento, numero, vencimento)
		values  ('Boleto','123456890','2023-07-02'),
				('Cartão','123456891','2023-07-04'),
                ('Boleto','123456892','2023-07-06'),
                ('Cartão','123456893','2023-07-08'),
                ('Boleto','123456894','2023-07-10'),
                ('Cartão','123456895','2023-07-12'),
                ('Boleto','123456896','2023-07-14'),
                ('Cartão','123456897','2023-07-16'),
                ('Boleto','123456898','2023-07-18'),
                ('Cartão','123456810','2023-07-20'),
                ('Boleto','123456812','2023-07-22');

insert into pedido (status, descricao, frete, idClienteP, idPagamentoP)
	values  ('Confirmado',null,0,1,1),
			('Confirmado',null,10,2,2),
            ('Em processamento',null,0,3,3),
            ('Em processamento',null,10,4,4),
            ('Em processamento',null,20,5,5),
            ('Entregue',null,0,6,6),
            ('Entregue',null,10,7,7),
            ('Entregue',null,20,8,8),
            ('Cancelado',null,10,9,9),
            ('Cancelado',null,20,10,10);

insert into estoque (cidade, quantidade)
	value   ('Maceió',10),
			('Salvador',20),
            ('Fortaleza',30),
			('Belo Horizonte',10),
            ('Belém',20),
            ('João Pessoa',30),
            ('Curitiba',10),
            ('Rio de Janeiro',20),
            ('São Paulo',30),
            ('Aracaju',10);

insert into fornecedor (razaoSocial, nomeFantasia, cnpj, endereco, contato, email)
	values  ('EmpresaA','Empresa1','123456789012341','Rua A','55988881111','empresa1@email.com'),
			('EmpresaB','Empresa2','123456789012342','Rua B','55988881112','empresa2@email.com'),
            ('EmpresaC','Empresa3','123456789012343','Rua C','55988881113','empresa3@email.com'),
            ('EmpresaD','Empresa4','123456789012344','Rua D','55988881114','empresa4@email.com'),
            ('EmpresaE','Empresa5','123456789012345','Rua E','55988881115','empresa5@email.com'),
            ('EmpresaF','Empresa6','123456789012346','Rua F','55988881116','empresa6@email.com'),
            ('EmpresaG','Empresa7','123456789012347','Rua G','55988881117','empresa7@email.com'),
            ('EmpresaH','Empresa8','123456789012348','Rua H','55988881118','empresa8@email.com'),
            ('EmpresaI','Empresa9','123456789012349','Rua I','55988881119','empresa9@email.com'),
            ('EmpresaJ','Empresa0','123456789012340','Rua J','55988881110','empresa0@email.com');

insert into vendedor (razaoSocial, nomeFantasia, cnpj, endereco, contato, email)
	values  ('VendedorA','Vendedor1','123456789012341','Av A','55899991111','vendedor1@email.com'),
			('VendedorB','Vendedor2','123456789012342','Av B','55899991112','vendedor2@email.com'),
            ('VendedorC','Vendedor3','123456789012343','Av C','55899991113','vendedor3@email.com'),
            ('VendedorD','Vendedor4','123456789012344','Av D','55899991114','vendedor4@email.com'),
            ('VendedorE','Vendedor5','123456789012345','Av E','55899991115','vendedor5@email.com'),
            ('VendedorF','Vendedor6','123456789012346','Av F','55899991116','vendedor6@email.com'),
            ('VendedorG','Vendedor7','123456789012347','Av G','55899991117','vendedor7@email.com'),
            ('VendedorH','Vendedor8','123456789012348','Av H','55899991118','vendedor8@email.com'),
            ('VendedorI','Vendedor9','123456789012349','Av I','55899991119','vendedor9@email.com'),
            ('VendedorJ','Vendedor10','123456789012340','Av J','55899991110','vendedor0@email.com');

insert into produtoVendedor (idVendedorPV, idProdutoPV, quantidade)
	values  (1,1,5),
			(2,2,10),
            (3,3,15),
            (4,4,5),
            (5,5,10),
            (6,6,15),
            (7,7,5),
            (8,8,10),
            (9,9,15),
            (10,10,5);
    
insert into produtoPedido (idProdutoPD, idPedidoPD, quantidade, status)
	values  (1,1,2,'Disponível'),(2,1,1,'Disponível'),
			(1,2,4,'Disponível'),(2,2,3,'Disponível'),
            (3,3,6,'Disponível'),(4,3,5,'Disponível'),
            (3,4,8,'Disponível'),(4,4,7,'Disponível'),
            (5,5,10,'Disponível'),(6,5,2,'Disponível'),
            (5,6,1,'Disponível'),(6,6,4,'Disponível'),
            (7,7,3,'Disponível'),(8,7,2,'Disponível'),
            (7,8,7,'Disponível'),(8,8,2,'Disponível'),
            (9,9,9,'Disponível'),(10,9,2,'Disponível'),
            (9,10,100,'Sem estoque'),(10,10,2,'Disponível');

insert into produtoEstoque (idProdutoPE, idEstoquePE, estado)
	values  (1,1,'AL'),(2,1,'AL'),
			(2,2,'BA'),(3,2,'BA'),
            (3,3,'CE'),(4,3,'CE'),
            (4,4,'MG'),(5,4,'MG'),
            (5,5,'PA'),(6,5,'PA'),
            (6,6,'PB'),(7,6,'PB'),
            (7,7,'PR'),(8,7,'PR'),
            (8,8,'RJ'),(9,8,'RJ'),
            (9,9,'SP'),(10,9,'SP'),
            (10,10,'SE'),(1,10,'SE');

insert into produtoFornecedor (idFornecedorPF, idProdutoPF, quantidade)
	values  (1,1,5),
			(2,2,10),
            (3,3,15),
            (4,4,5),
            (5,5,10),
            (6,6,15),
            (7,7,5),
            (8,8,10),
            (9,9,15),
            (10,10,5);
