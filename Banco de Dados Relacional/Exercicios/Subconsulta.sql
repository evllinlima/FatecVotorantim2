SELECT NomeProduto FROM Produto
WHERE Preco > ALL (SELECT Preco FROM Produto Where NomeProduto = 'Chapéu')

/*é a resolução de tras para frente*/
SELECT NomeProduto FROM Produto WHERE Preco > ALL (SELECT Preco FROM Produto
WHERE CategoriaID = (SELECT CategoriaID FROM Categoria WHERE NomeCategoria = 'Eletrônicos'));

SELECT NomeProduto FROM Produto WHERE Preco < ANY (SELECT Preco FROM Produto WHERE CategoriaID = 1)

SELECT NomeProduto FROM Produto WHERE EXISTS (SELECT * FROM Pedido WHERE Pedido.ProdutoID = Produto.ProdutoID);

SELECT NomeProduto FROM Produto WHERE ProdutoID IN (SELECT ProdutoID FROM Pedido WHERE PedidoID IN (1, 3));
SELECT NomeProduto FROM Produto WHERE CategoriaID = (SELECT CategoriaID FROM Categoria WHERE NomeCategoria = 'Eletrônicos');

SELECT NomeProduto FROM Produto WHERE ProdutoID IN (SELECT ProdutoID FROM Pedido WHERE YEAR(DataPedido) = 2023 AND MONTH(DataPedido) = 1);

SELECT NomeCategoria FROM Categoria WHERE CategoriaID IN (SELECT CategoriaID FROM Produto WHERE Preco > 100);

SELECT NomeProduto FROM Produto WHERE ProdutoID NOT IN (SELECT ProdutoID FROM Pedido);


SELECT * FROM PRODUTO