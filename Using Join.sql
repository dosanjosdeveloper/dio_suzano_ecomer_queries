/** Usando o FULL JOIN*/


SELECT tabela_de_vendedores.BAIRRO, 
	   tabela_de_vendedores.NOME, DE_FERIAS,
       tabela_de_clientes.BAIRRO,
       tabela_de_clientes.NOME
	 FROM tabela_de_vendedores 
   LEFT JOIN tabela_de_clientes 
    ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;


SELECT tabela_de_vendedores.BAIRRO, 
	   tabela_de_vendedores.NOME, DE_FERIAS,
       tabela_de_clientes.BAIRRO,
       tabela_de_clientes.NOME
	 FROM tabela_de_vendedores 
   RIGHT JOIN tabela_de_clientes 
    ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT COUNT(*) FROM tabela_de_vendedores 
   INNER JOIN tabela_de_clientes 
    ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;


SELECT * FROM tabela_de_clientes;
SELECT * FROM tabela_de_vendedores;

/** Usando o CROSS JOIN*/ -- 
select a.MATRICULA, a.nome, count(*) from
tabela_de_vendedores a, notas_fiscais b
 where a.MATRICULA = b.MATRICULA
 group by a.MATRICULA, a.nome;

/** Usando o LEFT JOIN*/
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A 
 LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
 WHERE B.CPF IS NULL AND YEAR(B.DATA_VENDA) = 2015;

select cpf, COUNT(*) FROM notas_fiscais GROUP BY CPF;
select count(*) from tabela_de_clientes;

/** Usando o RIGHT JOIN*/
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A 
 RIGHT JOIN notas_fiscais B ON A.CPF = B.CPF
 WHERE B.CPF IS NULL AND YEAR(B.DATA_VENDA) = 2015;


/** Usando o INNER JOIN*/
SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF 
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA);

select * from itens_notas_fiscais;

select a.MATRICULA, a.nome, count(*) from
tabela_de_vendedores a, notas_fiscais b
 where a.MATRICULA = b.MATRICULA
 group by a.MATRICULA, a.nome;

select a.MATRICULA, a.nome, count(*) from
tabela_de_vendedores a 
 inner join notas_fiscais b
 on a.MATRICULA = b.MATRICULA
 group by a.MATRICULA, a.nome;


select * from tabela_de_vendedores a 
  inner join notas_fiscais b 
   on a.MATRICULA = b.MATRICULA;

select * from tabela_de_vendedores;
select * from notas_fiscais;


/** Usando o CROSS JOIN*/ -- 
select a.MATRICULA, a.nome, count(*) from
tabela_de_vendedores a, notas_fiscais b
 where a.MATRICULA = b.MATRICULA
 group by a.MATRICULA, a.nome;


