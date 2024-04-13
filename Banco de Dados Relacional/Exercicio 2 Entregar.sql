/*Exercicio 1*/
CREATE TABLE TBL_Clientes(
Id_Clientes INT IDENTITY,
NOME VARCHAR (50),
EMAIL VARCHAR (100),
TELEFONE VARCHAR (15)
CONSTRAINT PK_TBL_Clientes PRIMARY KEY (Id_Clientes)
)
 
/*Exercicio 2*/
INSERT INTO TBL_Clientes (NOME, EMAIL, TELEFONE)
VALUES ('João Silva', 'joao@email.com','(11) 1234-5678')
 
/*Exercicio 3*/
INSERT INTO TBL_Clientes (NOME, EMAIL, TELEFONE)
VALUES ('Evellin Lima','evellin@email.com','(15) 99135-6425'),('Gustavo Souza','souza@email.com','(11) 98766-1234'),
('Gabriel Paiva','gabrielp@email.com','(15) 99456-8764'),('Mariana Souza','msouza@email.com','(14) 98134-6784'),
('Julia Silverio','julias@email.com','(15) 98123-4509'),('Matheus Paes','mattpaes@email.com','(11) 88126-0299'),
('Tania Ferreira','tania@email.com','(15) 99176-3456'),('Edson Lopes','lopes@email.com','(81) 98836-5432'),
('João Alberto','alberto@email.com','(15) 93239-2084'),('Lucas Souza','souzalucas@email.com','(45) 88735-9807')
 
/*Exercicio 4*/
UPDATE TBL_Clientes
SET TELEFONE='(42) 46321-5647'
WHERE Id_Clientes='1';
 
/*Exercicio 5*/
CREATE TABLE TBL_Produtos(
Id_Produtos INT IDENTITY,
NOME VARCHAR (50),
PRECO DECIMAL (5,2),
ESTOQUE INT,
CONSTRAINT PK_TBL_Produtos PRIMARY KEY (Id_Produtos)
)
 
/*Exercicio 6*/
INSERT INTO TBL_Produtos(NOME, PRECO, ESTOQUE)
VALUES ('Camiseta', '29.99', '100')
 
/*Exercicio 7*/
INSERT INTO TBL_Produtos(NOME, PRECO, ESTOQUE)
VALUES ('Calça', '39.99', '96'),('Blusa de Frio', '99.99', '40'),('Saia', '59.99', '36'),('Short Saia', '39.99', '62'),
('Calça Social', '89.99', '30'),('Blusa Social', '79.99', '48'),('Calça Jeans', '59.99', '52'),('Vestido', '29.99', '49'),
('Touca', '19.99', '5'),('Meias', '9.99', '15')
 
/*Exercicio 8*/
UPDATE TBL_Produtos
SET PRECO='39.99'
WHERE Id_Produtos='1';
 
/*Exercicio 9*/
CREATE TABLE TBL_Pedidos (
Id_Pedidos INT IDENTITY (1,1),
ClienteId INT,
ProdutoId INT,
Quantidade INT,
DataPedido DATE,
CONSTRAINT PK_TBL_Pedidos PRIMARY KEY (Id_Pedidos),
CONSTRAINT FK_TBL_Pedidos1 FOREIGN KEY (ClienteId) REFERENCES TBL_Clientes (Id_Clientes),
CONSTRAINT FK_TBL_Pedidos2 FOREIGN KEY (ProdutoId) REFERENCES TBL_Produtos (Id_Produtos))
 
/*Exercicio 10*/
INSERT INTO TBL_Pedidos(ClienteId, ProdutoId, Quantidade, DataPedido)
VALUES (1,1,2,'03-04-2024')
 
/*Exercicio 11*/
UPDATE TBL_Pedidos
SET Quantidade=3
WHERE Id_Pedidos=1;
 
/*Exercicio 12*/
INSERT INTO TBL_Pedidos(ClienteId, ProdutoId, Quantidade, DataPedido)
VALUES (2,2,3,'03-04-2024'),(3,3,5,'24-04-2024'),(4,4,8,'16-04-2024'),(5,5,7,'05-04-2024'),(6,6,34,'06-04-2024'),
(7,7,14,'10-04-2024'),(8,8,17,'20-04-2024'),(9,9,3,'20-10-2024'),(8,8,9,'31-01-2024')
 
 
/*Exercicio 13*/
CREATE TABLE TBL_Funcionarios2 (
Id_Funcionarios INT IDENTITY,
NOME VARCHAR (50),
CARGO VARCHAR(50),
SALARIO DECIMAL (7,2),
CONSTRAINT PK_TBL_Funcionarios2 PRIMARY KEY (Id_Funcionarios))
 
/*Exercicio 14*/
INSERT INTO TBL_Funcionarios2(NOME, CARGO, SALARIO)
VALUES ('Maria Santos', 'Gerente', '5000')
 
/*Exercicio 15*/
UPDATE TBL_Funcionarios2
SET SALARIO='6000'
WHERE Id_Funcionarios='1';
 
/*Exercicio 16*/
INSERT INTO TBL_Funcionarios2(NOME, CARGO, SALARIO)
VALUES ('Andreza Ferreira', 'Assistente ADM', '2500'),('Melyssa Maia', 'Assistente Financeiro', '2700'),
('Elisangela Sales', 'Analista de Qualidade', '5500'),('Luana Fernandes', 'Engenheiro JR', '4200'),
('Elaine Moura', 'Analista Financeira', '4900'),('Viviane Cantareli', 'Gerente Administrativa', '8000'),
('Evellin Lima', 'Assistente ADM Jr', '6000'),('Vitor Fraveto', 'Advogado SR', '6700'),
('João Pivetta', 'Analista de TI PL', '4500'),('Lucas Gomes', 'Analista de TI JR', '3900'),
('Murilo Santos', 'Coordenador TI', '7700')
 
/*Exercicio 17*/

CREATE TABLE TBL_Vendas(
Id_Vendas INT IDENTITY (1,1),
ProdutoId INT,
Quantidade INT,
ValorTotal DECIMAL (7,2),
DataVenda DATE,
CONSTRAINT PK_TBL_Vendas PRIMARY KEY (Id_Vendas),
CONSTRAINT FK_TBL_Vendas FOREIGN KEY (ProdutoId) REFERENCES TBL_Produtos (Id_Produtos))

/*Exercicio 18*/
INSERT INTO TBL_Vendas(ProdutoId, Quantidade, ValorTotal, DataVenda)
VALUES (1, 20, 100, '03-07-2020')

/*Exercicio 19*/
INSERT INTO TBL_Vendas(ProdutoId, Quantidade, ValorTotal, DataVenda)
VALUES (2, 10, 55.50, '03-07-2021'), (3, 21, 69.90, '03-07-2019'), (4, 18, 55, '03-06-2021'),(5, 05, 60, '17-03-2020'),
(6, 40, 99.99, '03-07-2021'), (7, 21, 69.90, '03-07-2019'), (8, 18, 75.60, '03-06-2021'),(9, 05, 72.50, '17-03-2020'),
(10, 05, 45.99, '17-03-2022');

/*Exercicio 20*/
DELETE FROM TBL_Vendas
WHERE Id_Vendas = 1;
 

SELECT * FROM TBL_Vendas
SELECT * FROM TBL_Pedidos
SELECT * FROM TBL_Funcionarios2
SELECT * FROM TBL_Produtos
SELECT * FROM TBL_Clientes