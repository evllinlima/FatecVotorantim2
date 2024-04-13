CREATE DATABASE FBD;
go
use FBD;

create table cliente (
Cod_cliente int Primary Key,
Nome_cliente varchar(50) not null,
Endereco varchar (50),
Cidade varchar(20),
Cep char(8),
UF char(2),
CPF char(14),
IE char(12));

create table vendedor (
cod_vendedor int,
nome_vendedor varchar (50) not null,
faixa_comissao char(1),
salario_fixo decimal(10,2),
CONSTRAINT PK_VENDEDOR PRIMARY KEY (COD_VENDEDOR));


create table produto (
cod_produto int Primary Key,
descricao varchar(20),
Unidade char(2),
Valor_unitario decimal(10,2));

/*Para selecionar e visualizar algo especifico*/
SELECT DISTINCT Unidade FROM produto

create table pedido (
Num_pedido int,
data_compra datetime,
data_entrega datetime,
cod_cliente int not null,
cod_vendedor int not null ,
FOREIGN KEY(cod_cliente) REFERENCES CLIENTE(Cod_cliente),
FOREIGN KEY(cod_vendedor) REFERENCES VENDEDOR(Cod_vendedor),
PRIMARY KEY(Num_pedido)
);


create table item_pedido (
num_pedido int references pedido,
cod_produto int references produto,
quantidade int,
primary key(num_pedido, cod_produto))

create table Cidade
(Codcidade int identity (1,1) not null primary key,
Nomecidade varchar(40),
cdestado varchar(2));

insert into Cidade values
('Sorocaba','SP'),('Votorantim','SP'),('Niteroi','RJ'),('Cascavel','PR'),('Itu','SP')

/*Para selecionar apenas algo especifico*/
SELECT DISTINCT cdestado from Cidade
SELECT cdestado, Nomecidade from Cidade

create table Empregado
(Nrmatricula int identity(1,1) primary key,
Nome varchar(50),
Data_admissao datetime,
Salario float);

insert into Empregado values
('Evellin Lima','07-03-2022',3000),('Joao Alberto','17-06-2015',5500),('Murilo Silva','10-10-2023',3500),
('Ana Souza','05-03-2010',4500),('Gabriel Joia','18-11-2015',6000)

/*Para colocar nome na frente/linha*/
SELECT 'Código do Cliente', Cod_cliente, 'Nome do Cliente', Nome_cliente from cliente

/*Para colocar nome na coluna*/
SELECT Cod_cliente as 'Código do Cliente', Nome_cliente as 'Nome do Cliente' from cliente

/*Forma de como realizar uma conta com dados da propria tabela*/
SELECT Nome, Salario, Salario+300 aumento_salario from Empregado

/*Forma de concatenar dados da tabela em uma unica coluna. O AS determina o nome da coluna Fusao */
SELECT 'Funcionario: '+nome+' Salario: '+CONVERT(varchar, salario) as 'Fusão', salario, nome from Empregado

/*Para visualizar um determinado dado em especifico, neste caso, o que tem a quantidade 45*/
SELECT num_pedido, cod_produto, quantidade 
FROM item_pedido WHERE quantidade = 45


/*Exercicio 01*/
create table Setor
(Cod_setor int identity(1,1),
Nome_setor varchar(30)
constraint PK_Setor primary key (Cod_setor))

insert into Setor values ('Manutencao'), ('Administrativo'),('Engenharia'),('Qualidade'),('Producao')

select * from Setor

create table Funcionario
(Nrmatricula int identity (1,1),
Primeiro_nome varchar (20),
Ultimo_nome varchar (50),
Email varchar (200),
Telefone varchar (20),
Data_admissao datetime,
Salario float,
Cod_setor int,
Constraint PK_Nrmatricula primary key (Nrmatricula),
Constraint FK_FuncCod_Setor foreign key (Cod_setor) references Setor (Cod_setor))

insert into Funcionario values ('Evellin','Lima','evellinlima@gmail.com', '15 99135-6425','07-03-2021', 3500, '1')
insert into Funcionario values ('Edmilson','Ribeiro','edmilsonr@gmail.com', '15 99455-7895','28-01-2004', 15400, '2')
insert into Funcionario values ('Gabriel','Joia','joiagabriel@gmail.com', '15 98165-1295','05-07-2018', 5000, '3')
insert into Funcionario values ('Lucas','Gomes','lucasgomes@gmail.com', '15 98849-1567','17-02-2024', 2700, '4')
insert into Funcionario values ('Joao','Piveta','pivetta@gmail.com', '15 99633-9081','05-08-2022', 5000, '5')
insert into Funcionario values ('Felipe','Rodrigues','felps@gmail.com', '15 98123-5509','01-11-2023', 3000, '2')
insert into Funcionario values ('Murilo','Rodrigues','murilorodrigues@gmail.com', '15 99687-4321','01-11-2023', 3000, '1')
insert into Funcionario values ('Julia','Silva','juliasilva@gmail.com', '15 99134-4567','18-03-2016', 6000, '3')
insert into Funcionario values ('Ellen','Maximo','maximoellen@gmail.com', '15 99174-6298','20-01-2022', 4000, '4')
insert into Funcionario values ('Juliana','Martins','martinsju@gmail.com', '15 99197-6398','18-05-2019', 8000, '5')

select * from Funcionario

SELECT DISTINCT Cod_setor from Funcionario

SELECT 'Empregado: '+Ultimo_nome+' Setor: '+CONVERT(varchar, cod_setor) as 'Junção Empregado e Setor' from Funcionario

 

/*SELECT Nrmatricula, primeiro_nome, ultimo_nome, cod_setor FROM Empregado WHERE cod_setor = 2*/