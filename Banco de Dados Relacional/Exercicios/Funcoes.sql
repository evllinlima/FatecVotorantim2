/*Função para retornar data*/
SELECT GETDATE()

/*Para retornar uma parte da data*/
SELECT DATENAME(YY, GETDATE())
SELECT DATENAME(MONTH, GETDATE())

/*Retorna com o mês*/
SELECT DATEPART (MM, GETDATE())
SELECT DATEPART (MONTH, GETDATE())

/*Retorna com o dia, mês e ano*/
SELECT DAY(GETDATE())
SELECT MONTH(GETDATE())
SELECT YEAR(GETDATE())

/*Faz a diferença entre data em anos*/
SELECT DATEDIFF (YYYY, GETDATE(), GETDATE()+366)
SELECT DATEDIFF (YY, GETDATE(), GETDATE()+720)

/*mostra a data daqui um ano*/
SELECT DATEADD(YY, 1, GETDATE())
/*Pega o mesmo atual, adiciona mais 3 e mostra o mês*/
SELECT DATENAME(MONTH,(DATEADD(MONTH,3,GETDATE())))

SELECT ISDATE('27-02-2023')
SELECT ISDATE('30-02-2023')


SELECT CONVERT(CHAR, GETDATE(), 103)
SELECT CONVERT(CHAR, GETDATE(),113)

SELECT ROUND(123.3467,3)
SELECT ROUND(123.3467,2)
SELECT ROUND(123.3467,1)
SELECT ROUND(123.5467,1)
SELECT ROUND(123.3467,-1)
SELECT ROUND(123.3467,-2)

SELECT CONVERT(DECIMAL(10,3),ROUND (123.3467,3))

/*Traz o numero  inteiro do parametro passado*/
SELECT FLOOR(123.45)

/*Para realizar exponenciação, o primeiro é a base, o segundo o expoente*/
SELECT POWER(4,2)
SELECT POWER(2,2)

/*Retorna o código ascii, neste exemplo, traz o código da letra a, sendo o caractere mais a esquerda*/
SELECT ASCII('A'), ASCII('AMANDA')

SELECT CHAR(65), CHAR(66)

SELECT CHARINDEX('MUNDO','OLA MUNDO BONITO')
SELECT CHARINDEX('MUNDO','OLA MUNDO BONITO',3)
SELECT CHARINDEX('MUNDO','OLA MUNDO BONITO',6)

SELECT REPLACE('ABCDEFGHICDE','CDE','XXX')
SELECT REPLACE(NOME, 'A','E') FROM TBL_Funcionarios2

SELECT STUFF ('ABCDEF',3,5,'_IJKLMN_')

SELECT LEFT ('RAIDERS', 5)
SELECT RIGHT ('RAIDERS', 5)

SELECT REPLICATE('AMOR',3)

SELECT SUBSTRING('AMARELO',2,3)


SELECT LEN('VERMELHO')
SELECT LEN('VERMELHO  ')

SELECT REVERSE('AMORA')

SELECT LOWER('ABCDE')
/*Tudo fica em minusculo*/
SELECT LOWER(NOME) FROM TBL_Clientes
/*Tudo fica em maiuscula*/
SELECT UPPER (NOME) FROM TBL_Clientes

/*Remove o espaço em branco da esquerda*/
SELECT '_' + LTRIM (' AMORA ')

/*Remove o espaço em branco da direita*/
SELECT '_' + RTRIM (' AMORA ')

/*Remove os espaço em branco e adicona o _*/

SELECT '_' + LTRIM (' AMORA ')+'_'


