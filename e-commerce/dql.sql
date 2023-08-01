use ecommerce;
show tables;

-- Dados dos clientes:
select * from cliente;
-- Quantidade de clientes:
select count(idCliente) as Qtd_de_clientes from cliente;
-- Idade dos clientes:
select nome as cliente,timestampdiff(year,dataNascimento, now()) as idade from cliente;
-- Média da idade dos clientes:
select floor(avg(timestampdiff(year,dataNascimento, now()))) as idade_media_dos_clientes from cliente;


-- Dados do estoque:
select categoria, nome, descricao, avaliacao, unidade, valor as vlr_unit, quantidade, quantidade*valor as vlr_total, cidade, estado from (produtoestoque
	inner join produto
    inner join estoque)
    order by categoria,nome;
-- Total de itens no estoque
select sum(quantidade) as Total_de_itens_estocados from estoque;
-- Produtos estocados por estado
select estado, cidade, nome as produto, unidade, quantidade, valor as vlr_unit, quantidade*valor as vlr_total from (produtoestoque
	inner join estoque on idEstoque=idEstoquePE
    inner join produto on idProduto=idProdutoPE)
    order by estado,cidade,produto;
    

-- Tabela de fornecedores:
select * from fornecedor;
-- Quantidade de fornecedores:
select count(idFornecedor) as qtd_de_fornecedores from fornecedor; 
-- Produtos por fornecedor:
select nomeFantasia as fornecedor, nome as produto, unidade, quantidade, valor as vlr_unit, quantidade*valor as vlr_total from (produtofornecedor 
	inner join fornecedor on idFornecedor=idFornecedorPF
    inner join produto on idProduto=idProdutoPF);


-- Tabela de pagamentos:
select * from pagamento;
-- Formas de pagamento:
select distinct(formaPagamento) as formas_de_pagamento from pagamento;

-- Tabela de pedidos:
select * from pedido;
-- Status de pedidos:
select distinct status from pedido;
-- Pedidos sem custo de frete:
select * from pedido where frete=0;
-- Quantidade pedidos por status:
select status, count(status) from pedido group by status;
-- Quantidade de pedidos não cancelados:
select status, count(status) from pedido group by status having status<>"Cancelado";

-- Tabela dos produtos:
select * from produto;
-- Categorias dos produtos:
select distinct categoria from produto;
-- Quantidade de produtos por categoria:
select distinct categoria, count(nome) as qtd_de_produtos from produto group by categoria;

-- Dados dos vendedores:
select * from vendedor;
-- Quantidade de vendedores:
select distinct count(idVendedor) as qtd_de_vendedores from vendedor;
-- Produtos por vendedor:
select nomeFantasia as vendedor, nome as produto, unidade, quantidade, valor as vlr_unit, quantidade*valor as vlr_total from (produtovendedor 
	inner join vendedor on idVendedor=idVendedorPV
    inner join produto on idProduto=idProdutoPV);


-- Pedidos sem estoque:
select * from produtopedido,pedido,produto;
select nome as produto, unidade, quantidade, valor as vlr_unit, quantidade*valor as vlr_total from produtopedido pp
	inner join pedido on idPedido=idPedidoPD
    inner join produto on idProduto=idProdutoPD
    where pp.status="Sem estoque";
