/*Utilizando o CASE*/



SELECT NOME, DATA_DE_NASCIMENTO,
	CASE 
      WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN 'SÃO VELHOS'
      WHEN YEAR(DATA_DE_NASCIMENTO) <= 1990 AND 
           YEAR(DATA_DE_NASCIMENTO) <= 1995 THEN 'SÃO JOVENS'
	  ELSE 'SÃO CRIANÇAS'
	END AS 'CLASSIFICACAO POR IDADE'
FROM tabela_de_clientes;



SELECT EMBALAGEM,
CASE WHEN PRECO_DE_LISTA >=12 THEN 'PRODUTO CARO'
     WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
     ELSE 'PRODUTO BARATO DE DEMAIS'
   END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO FROM tabela_de_produtos
   where SABOR = 'MANGA'
   group by EMBALAGEM,
   CASE WHEN PRECO_DE_LISTA >=12 THEN 'PRODUTO CARO'
     WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
     ELSE 'PRODUTO BARATO DE DEMAIS'
   END
   order by EMBALAGEM;
   
   


select * from tabela_de_produtos;

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
CASE WHEN PRECO_DE_LISTA >=12 THEN 'PRODUTO CARO'
     WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
     ELSE 'PRODUTO BARATO DE DEMAIS'
   END AS STATUS_PRECO FROM tabela_de_produtos;
select * from tabela_de_produtos;

/* Usando a condição HAVING */
  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;
select embalagem, max(preco_de_lista) MAIOR_PRECO, min(preco_de_lista) MENOR_PRECO from tabela_de_produtos group by EMBALAGEM having SUM(PRECO_DE_LISTA) <= 80 AND MAX(PRECO_DE_LISTA) >= 5;
select embalagem, max(preco_de_lista) MAIOR_PRECO, min(preco_de_lista) MENOR_PRECO from tabela_de_produtos group by EMBALAGEM having SUM(PRECO_DE_LISTA) <= 80;
select embalagem, max(preco_de_lista) MAIOR_PRECO, min(preco_de_lista) MENOR_PRECO from tabela_de_produtos group by EMBALAGEM;
select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes  group by estado having sum(limite_de_credito) > 900000;
select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes where soma_limite > 900000 group by estado;
select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes group by estado;

/* Agrupando Resultados GROUP BY*/
SELECT MAX(`QUANTIDADE`) as 'MAIOR QUANTIDADE' FROM itens_notas_fiscais WHERE `CODIGO_DO_PRODUTO` = '1101035' ;
SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;

select estado,BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes where CIDADE = 'Rio de Janeiro' group by estado, BAIRRO
order by BAIRRO;
select estado,BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes where CIDADE = 'Rio de Janeiro' group by estado, BAIRRO;
SELECT BAIRRO, sum(LIMITE_DE_CREDITO) AS LIMITE from tabela_de_clientes where cidade = 'Rio de Janeiro' group by bairro;
SELECT EMBALAGEM, COUNT(*) CONTADOR FROM tabela_de_produtos group by EMBALAGEM;
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) MAIOR_PRECO FROM tabela_de_produtos group by EMBALAGEM;
SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;
select estado, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes group by ESTADO;
select estado, LIMITE_DE_CREDITO from tabela_de_clientes;
select * from tabela_de_clientes;

/* Ordenando uma consulta SQL */
select * from tabela_de_produtos where NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';
select * from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' order by QUANTIDADE desc limit 1;
select * from tabela_de_produtos order by EMBALAGEM desc, NOME_DO_PRODUTO asc;
select * from tabela_de_produtos order by EMBALAGEM, NOME_DO_PRODUTO;
select * from tabela_de_produtos order by NOME_DO_PRODUTO desc;
select * from tabela_de_produtos order by NOME_DO_PRODUTO;
select * from tabela_de_produtos order by PRECO_DE_LISTA desc;
select * from tabela_de_produtos order by PRECO_DE_LISTA;

/*Limitando o número de consultas/registros/linha*/
select * from notas_fiscais where DATA_VENDA = '2017-01-01' limit 10;
-- Limitando a partir de posição X
select * from tabela_de_produtos limit 0,2;
select * from tabela_de_produtos limit 2,4;

select * from tabela_de_produtos limit 4;

/*Usando o DISTINCT*/
select distinct BAIRRO from tabela_de_clientes where cidade = 'Rio de Janeiro';
select distinct EMBALAGEM, TAMANHO, SABOR from tabela_de_produtos;
select distinct EMBALAGEM, tamanho from tabela_de_produtos where SABOR = 'Laranja';
select distinct EMBALAGEM, tamanho from tabela_de_produtos;
select embalagem, tamanho from tabela_de_produtos;


select * from tabela_de_clientes where nome like '%Mattos%';

select * from tabela_de_produtos where sabor like '%maça%' and embalagem = 'pet';

select * from tabela_de_produtos where sabor like '%maça%';

select * from tabela_de_clientes where cidade in ('Rio de Janeiro','São paulo') and (idade >=20 and idade <=22);

select * from tabela_de_clientes where cidade in ('Rio de Janeiro','São paulo') and idade >=20;

select * from tabela_de_produtos where sabor in ('Laranja','Manga');

select * from tabela_de_produtos where not (sabor = 'manga'
and TAMANHO = '470 ml');

select * from tabela_de_produtos where not (sabor = 'manga'
or TAMANHO = '470 ml');

select * from tabela_de_produtos where sabor = 'manga'
and TAMANHO = '470 ml';

select * from tabela_de_produtos where sabor = 'manga'
or TAMANHO = '470 ml'


















SELECT * FROM tabela_de_clientes;
select cpf, nome from tabela_de_clientes;
SELECT CPF as IDENTIFICADOR, NOME as CLIENTE FROM tabela_de_clientes;

select * from tabela_de_produtos where sabor = 'UVA';
SELECT * FROM tabela_de_produtos where sabor = 'Laranja';
select * from tabela_de_produtos where embalagem = 'PET';
select * from tabela_de_produtos where embalagem = 'pet';
select * from tabela_de_produtos where PRECO_DE_LISTA > 19.50;
select * from tabela_de_produtos where PRECO_DE_LISTA between 19.50 and 19.52;





/*Quando você define que quer usar deterninada tabela. Ideal em modo console*/
-- use sucos_vendas;