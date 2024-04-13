SELECT * FROM Funcionario
SELECT * FROM Setor

SELECT Nrmatricula, Primeiro_nome, Ultimo_nome, Cod_setor from Funcionario 
WHERE Cod_setor=2;

SELECT Primeiro_nome, Salario FROM Funcionario WHERE Salario < 3000

SELECT Primeiro_nome, Salario FROM Funcionario WHERE Salario BETWEEN 2000 AND 3500

SELECT cod_produto,descricao FROM produto WHERE Valor_unitario BETWEEN 0.32 AND 2.00

/*Utilizar a aspas para buscar utilizando o like*/
SELECT Primeiro_nome, Salario, Cod_setor FROM Funcionario WHERE Primeiro_nome LIKE '%M%'

SELECT Primeiro_nome, Salario, Cod_setor FROM Funcionario WHERE Primeiro_nome LIKE 'M%'

SELECT cod_produto, descricao, Unidade FROM produto WHERE Unidade LIKE 'K%'

/*Para listas. Aqueles valores que pertencerem aquele conjunto*/
SELECT nome_vendedor FROM vendedor WHERE faixa_comissao IN ('A','B')

SELECT Primeiro_nome,Salario,Cod_setor FROM Funcionario WHERE Cod_setor IN (1,3)

/*Usando o operador NOT IN é para trazer o que não esta dentro daquele conjunto*/
SELECT * FROM Funcionario WHERE Cod_setor NOT IN (1,3)

/*Null para verificar os campos vazios, aqueles que não são obrigatorio o preenchimento*/
SELECT * FROM cliente WHERE IE IS NULL
/*Null para verificar os campos NÃO vazios, aqueles que são obrigatorio o preenchimento*/
SELECT * FROM cliente WHERE IE IS NOT NULL

SELECT Primeiro_nome,Salario,Cod_setor FROM Funcionario WHERE Email IS NULL
SELECT Primeiro_nome,Salario,Cod_setor FROM Funcionario WHERE Email IS NOT NULL

/*O AND exige que ambas as condições sejam executadas/buscadas*/
SELECT Nrmatricula, Ultimo_nome,Salario FROM Funcionario WHERE Salario > 1000 AND Nrmatricula >=3

/*OR Exige que UMA as condições sejam verdadeiras*/
SELECT * FROM Funcionario WHERE Salario> 2500 OR Cod_setor = 4

SELECT descricao FROM produto WHERE Unidade = 'M' AND Valor_unitario = 1.05

SELECT descricao FROM produto WHERE Unidade = 'UN' AND Valor_unitario = 4

/*ASC é usado para dar um retorno em ordem crescente, neste caso, pela letra inicial do alfabeto*/
SELECT nome_vendedor, salario_fixo FROM vendedor ORDER BY nome_vendedor

SELECT * FROM Funcionario WHERE Cod_setor NOT IN (2,4) ORDER BY Cod_setor

/*DESC usado para ordem decrescente*/
SELECT * FROM Funcionario WHERE Cod_setor NOT IN (2,4) ORDER BY Cod_setor DESC

/*Classificando por várias colunas*/
SELECT * FROM Funcionario WHERE Cod_setor NOT IN (2,4) ORDER BY Cod_setor, Primeiro_nome

CREATE TABLE PESSOA(
id_pessoa integer primary key,
nome varchar(20),
cpf varchar(14)
);

INSERT INTO PESSOA VALUES (1,'PEDRO CABRAL', '12345678991'),(2,'EVELLIN LIMA', '12345678988'), (3,'JOAO GOMES', '12345678321');

CREATE TABLE PESSOA_FISICA (
id_pessoa integer primary key,
nome varchar(20),
cpf varchar (14)
);
/*Para linkar uma tabela na outra. Porém, os campos da nova tabela deve ser maior ou iguais a tabela que pegará os dados.
E os campos devem esta na mesma sequência*/
INSERT INTO PESSOA_FISICA SELECT id_pessoa, nome, cpf FROM PESSOA

SELECT * FROM PESSOA
SELECT * FROM PESSOA_FISICA

SELECT Funcionario.Primeiro_nome, Funcionario.Salario, Setor.Nome_setor FROM Funcionario, Setor WHERE Funcionario.Cod_setor = Setor.Cod_setor

/*Foi determinado um alias simples para diminuir a consulta, ou seja, o funcionario passou a ser identificado como f*/
SELECT F.Primeiro_nome, F.Salario, S.Cod_setor FROM Funcionario F, Setor S WHERE F.Cod_setor = S.Cod_setor

