SELECT F.PRIMEIRO_NOME, F.SALARIO, S.NOME_SETOR FROM Funcionario F
INNER JOIN Setor S ON F.Cod_setor = S.Cod_setor

SELECT C.Nome_cliente, P.NUM_PEDIDO FROM cliente C
INNER JOIN pedido P ON C.Cod_cliente = P.cod_cliente

/*Quando a tabela A não tem correspondente na tabela B, traz o nulo = null */
SELECT C.Nome_cliente, P.NUM_PEDIDO FROM cliente C
LEFT OUTER JOIN pedido P ON C.Cod_cliente = P.cod_cliente

/*quando tem em ambas, traz somente */
select c.Nome_cliente, p.num_pedido from cliente c
Left outer join pedido p on c.Cod_cliente = p.cod_cliente
where p.cod_cliente is null

select f.primeiro_nome, f.salario, s.nome_setor from Funcionario F
right outer join Setor s on f.Cod_setor = s.Cod_setor

insert into Setor (Nome_setor) values ('Marketing')

select f.primeiro_nome, f.salario, s.nome_setor from Funcionario f 
right outer join Setor s on f.Cod_setor = s.Cod_setor

select f.Primeiro_nome, f.Salario, s.nome_setor from Funcionario f
right outer join Setor s on f.Cod_setor = s.Cod_setor
where f.Cod_setor is null


select c.nome_cliente, p.num_pedido from cliente c
full outer join pedido p on c.Cod_cliente = p.cod_cliente

select f.primeiro_nome, f.salario, s.nome_setor from Funcionario f
full outer join Setor s on f.Cod_setor = s.Cod_setor

/*menos o que repete*/
select f.primeiro_nome, f.salario, s.nome_setor from Funcionario f
full outer join Setor s on f.Cod_setor = s.Cod_setor
where f.Cod_setor is null or s.Cod_setor is null

select f.Primeiro_nome, f.Salario, s.nome_setor from Funcionario f
cross join Setor s
order by f.Primeiro_nome


select c.Nome_cliente, p.Num_pedido from cliente c
cross join pedido p
order by c.Nome_cliente

select min(salario_fixo) as 'menor salario', max(salario_fixo) as 'maior salario' from vendedor

select sum(quantidade) from item_pedido where cod_produto = 3

select avg(salario_fixo) as MEDIA_SALARIO from vendedor

/*o count contabiliza a quantidade de vezes que aquela condição aparece, neste caso abaixo
o count mostra a quantidade de vendedores que ganham mais de 2500*/
select count (*) from vendedor where salario_fixo > 2500.00

/*quanto pedidos tem cada item*/
select num_pedido, total_produtos = count (*) from item_pedido group by num_pedido


select num_pedido, total_produtos = count (*) from item_pedido
where quantidade > 5
group by num_pedido
having COUNT(*) > 1

update produto set Valor_unitario = 4.00 where descricao = 'alface'

update produto set Valor_unitario = Valor_unitario * 1.025 
where Valor_unitario < (select AVG(valor_unitario) from produto where Unidade = 'KG')