-- Acessando o banco de dados:
use oficina;

-- Inserindo dados nas tabelas:
insert into cliente (nome, cpf, contato, endereco) values 
	('Paulo','00000000001','999999999999','Rua A'),
    ('José','00000000002','999999999999','Rua B'),
    ('Maria','00000000003','999999999999','Rua C'),
    ('Carlos','00000000004','999999999999','Rua D'),
    ('Ricardo','00000000005','999999999999','Rua E'),
    ('João','00000000006','999999999999','Rua F'),
    ('Pedro','00000000007','999999999999','Rua G'),
    ('Joana','00000000008','999999999999','Rua H'),
    ('Josefa','00000000009','999999999999','Rua I'),
    ('Patrícia','00000000010','999999999999','Rua J');
    
insert into veiculo (placa, modelo, marca, cor, ano, idClienteV) values
	('ABC0001','Golf','Volkswagen','Branco','2018/2018',1),
    ('ABC0002','Fox','Volkswagen','Branco','2021/2022',2),
    ('ABC0003','Voyage','Volkswagen','Preto','2019/2020',3),
    ('ABC0004','Gol','Volkswagen','Bege','2019/2019',4),
    ('ABC0005','Argo','Fiat','Branco','2021/2022',5),
    ('ABC0006','Uno','Fiat','Bege','2018/2018',6),
    ('ABC0007','Mobi','Fiat','Preto','2019/2019',7),
    ('ABC0008','Uno','Fiat','Branco','2017/2017',8),
    ('ABC0009','Prisma','Chevrolet','Preto','2019/2019',9),
    ('ABC0010','Onix','Chevrolet','Branco','2021/2022',10);
	
insert into servico (descricao, entrada, saida, status, idVeiculoS) values
	('Problema 1','2023-07-15','2023-07-19','Liberado',1),
    ('Problema 2','2023-07-20','2023-07-25','Liberado',2),
    ('Problema 3','2023-07-25','2023-07-28','Liberado',3),
    ('Problema 4','2023-07-28','2023-07-30','Liberado',4),
    ('Problema 5','2023-07-30','2023-07-31','Liberado',5),
    ('Problema 6','2023-08-01','2023-08-02','Liberado',6),
    ('Problema 7','2023-08-01',null,'Em andamento',7),
    ('Problema 8','2023-08-01',null,'Em andamento',8),
    ('Problema 9','2023-08-01',null,'Aguardando',9),
    ('Problema 10','2023-08-01',null,'Aguardando',10);
    
insert into mecanico (nome, cpf, contato, endereco, especialidade) values
	('Popó','11111111111','999999999999','Rua 1','Motor'),
    ('Zezinho','22222222222','999999999999','Rua 2','Pintura'),
    ('Joaozinho','33333333333','999999999999','Rua 2','Geral'),
    ('Tião','44444444444','999999999999','Rua 3','Geral');

insert into osmdo (valor, idMecanicoM, idServicoM) values
	(100.00,1,1), (100.00,1,7),
    (100.00,1,2), (100.00,1,8),
    (200.00,2,3), (200.00,2,9),
    (200.00,2,4), (200.00,2,10),
    (300.00,3,5), (300.00,3,1),
    (300.00,3,6), (300.00,3,2);

insert into estoque (material, unidade, quantidade, valor) values
	('Material 1','un',10,100.00),
    ('Material 2','un',20,200.00),
    ('Material 3','un',30,300.00),
    ('Material 4','un',40,400.00),
    ('Material 5','un',50,500.00);

insert into osmaterial (quantidade, idEstoqueI, idServicoI) values
	(1,1,1),(2,2,1),(3,3,1),
    (1,1,2),(2,2,2),(3,3,2),
    (1,2,3),(2,3,3),(3,4,3),
    (1,2,4),(1,3,4),(1,4,4),
    (2,3,5),(2,4,5),(2,5,5),
    (3,3,6),(3,4,6),(3,5,6);
