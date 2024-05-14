/*Exercicio 1*/
SELECT * FROM CLIENTES

/*Exercicio 2*/
SELECT * FROM FILME

/*Exercicio 3*/
SELECT * FROM CATEGORIA

/*Exercicio 4*/
SELECT * FROM Clientes WHERE Sexo = 'M' AND Cidade = 'Sorocaba' 

/*Exercicio 5*/
SELECT Nome, Telefone FROM CLIENTES ORDER BY Nome;

/*Exercicio 6*/
SELECT COUNT (*) FROM Clientes WHERE Sexo = 'F'

/*Exercicio 7*/
SELECT * FROM Categoria ORDER BY Nome_Categoria ASC;

/*Exercicio 8*/
SELECT * FROM Filme WHERE Diretor = 'Shawn Levy' AND Reservada = 'n';

/*Exercicio 9*/
SELECT * FROM Filme WHERE Valor_Locacao > 5 AND Reservada = 'S';

/*Exercicio 10*/
SELECT DISTINCT Diretor FROM Filme;

/*Exercicio 11*/
SELECT COUNT(*) FROM FILME WHERE Reservada = 'S'; 

/*Exercicio 12*/
SELECT MAX(Valor_Locacao) FROM Filme;

/*Exercicio 13*/
SELECT *, CAT.COD_CATEGORIA FROM FILME f LEFT OUTER JOIN CATEGORIA cat ON cat.COD_CATEGORIA = f.COD_CATEGORIA WHERE cat.NOME_CATEGORIA = 'Aç?o';

/*Exercicio 14 */
SELECT *, cat.COD_CATEGORIA FROM FILME f LEFT OUTER JOIN CATEGORIA cat ON cat.COD_CATEGORIA = f.COD_CATEGORIA
WHERE (cat.NOME_CATEGORIA = 'Romance' OR cat.NOME_CATEGORIA = 'Aventura') AND f.RESERVADA = 's' AND VALOR_LOCACAO < 5;

/*Exercicio 15 */
SELECT f.FILME, c.NOME FROM CLIENTES c FULL JOIN LOCACOES l ON l.COD_CLIENTE = c.COD_CLIENTE
FULL JOIN FILME f ON f.COD_FILME = l.COD_FILME WHERE c.NOME = 'Renata Cristina';

/*Exercicio 16 */
SELECT c.COD_CLIENTE, c.NOME, COUNT(l.COD_LOCACAO) AS Total_Locacoes FROM CLIENTES c
FULL JOIN LOCACOES l ON l.COD_CLIENTE = c.COD_CLIENTE GROUP BY c.COD_CLIENTE, c.NOME HAVING COUNT(l.COD_LOCACAO) > 3

/*Exercicio 17 */
Select c.NOME, sum(all f.VALOR_LOCACAO) as Total_Gasto from CLIENTES c
full join LOCACOES l on l.COD_CLIENTE = c.COD_CLIENTE
full join FILME f on f.COD_FILME = l.COD_FILME
where c.NOME = 'Renata Cristina'
group by c.NOME;

/*Exercicio 18 */
SELECT ROUND(avg(VALOR_LOCACAO), 2) as MEDIA_LOCACAO FROM FILME;

/*Exercicio 19 */
SELECT MIN(VALOR_LOCACAO) AS MIN_LOCACAO FROM FILME;

/*Exercicio 20 */
SELECT C.NOME_CATEGORIA, COUNT(f.COD_FILME) as QTD_FILME FROM CATEGORIA C JOIN FILME f ON c.COD_CATEGORIA = f.COD_CATEGORIA


