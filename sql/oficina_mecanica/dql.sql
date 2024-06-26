-- Acessando o banco de dados:
use oficina;

-- Verificando tabelas:
show tables;

-- Dados dos clientes:
select nome, cpf, contato, endereco from cliente;

-- Quantidade de clientes:
select count(cpf) as qtd_de_clientes from cliente;

-- Veículos cadastrados:
select placa, modelo, marca, cor, ano from veiculo;

-- Quantidade de veículo cadastrados:
select count(placa) as qtd_de_carros from veiculo;

-- Cliente x Veículo:
select nome, cpf, contato, endereco, placa, modelo, marca, cor, ano from cliente, veiculo where idCliente=idClienteV;

-- Quantidade de veículo por modelo:
select modelo, count(modelo) as qtd from veiculo group by modelo;

-- Quantidade de veículo por marca:
select marca, count(marca) as qtd from veiculo group by marca;

-- Materias no estoque:
select material, unidade, quantidade, valor as vlr_unit, quantidade*valor as vlr_total from estoque;

-- Total em estoque:
select sum(quantidade*valor) as vlr_total_em_estoque from estoque;

-- Quantidade de materiais estocados:
select sum(quantidade) as qtd_de_materiais_estocados from estoque;

-- Dados dos mecânicos da oficina:
select nome, cpf, contato, endereco, especialidade from mecanico;

-- Quantidade de mecânicos:
select count(cpf) as qtd_de_mecanicos from mecanico;

-- Especialidades dos mecânicos:
select distinct especialidade from mecanico;

-- Situação dos serviços:
select modelo, placa, ano, descricao as servico, entrada, saida, status from servico inner join veiculo where idVeiculo=idVeiculoS;

-- Quantidade de serviços por status:
select status, count(status) as qtd from servico group by status;

-- Serviços liberados(concluídos):
select modelo, placa, descricao as servico, entrada, saida from servico 
	inner join veiculo
	where status='Liberado' and idVeiculo=idVeiculoS
    order by idServico;

-- Serviços em andamento:
select modelo, placa, descricao as servico, entrada, saida from servico 
	inner join veiculo
	where status='Em andamento' and idVeiculo=idVeiculoS
    order by idServico;

-- Aguardando início do serviço:
select modelo, placa, descricao as servico, entrada, saida from servico 
	inner join veiculo
	where status='Aguardando' and idVeiculo=idVeiculoS
    order by idServico;

-- Ordens de Serviços:
select modelo, placa, descricao as servico, m.nome mecanico, material, unidade, i.quantidade as qtd_material, e.valor vlr_unit_material, i.quantidade*e.valor as vlr_material, s.valor as vlr_mdo, i.quantidade*e.valor+s.valor as vlr_total 
	from osmdo s 
	inner join mecanico m, servico, veiculo, cliente, osmaterial i, estoque e
	where idMecanico=idMecanicoM and idServico=idServicoM and idVeiculo=idVeiculoS and idCliente=idClienteV and idEstoque=idEstoqueI and idServico=idServicoI
	order by placa;

-- Ordens de Serviço de Zezinho:
select modelo, placa, descricao as servico, status, m.nome as mecanico from servico 
	inner join osmdo, mecanico m, veiculo, cliente 
	where idMecanico=idMecanicoM and idServico=idServicoM and idVeiculo=idVeiculoS and idCliente=idClienteV
	having m.nome='Zezinho'
	order by modelo;

-- Valor a pagar por cada cliente:
select  c.nome, modelo, placa, sum(i.quantidade*e.valor) as vlr_material, sum(s.valor) as vlr_mdo, sum(i.quantidade*e.valor+s.valor) as vlr_total from servico
	inner join osmdo s , mecanico m, veiculo, cliente c, osmaterial i, estoque e
	where idMecanico=idMecanicoM and idServico=idServicoM and idVeiculo=idVeiculoS and idCliente=idClienteV and idEstoque=idEstoqueI and idServico=idServicoI
	group by c.nome, placa;
