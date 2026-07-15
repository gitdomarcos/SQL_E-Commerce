-- EXEMPLO DE GROUP BY
	 SELECT id_categoria, 
	  COUNT(*) AS quantidade_produtos
       FROM tb_produto
   GROUP BY id_categoria;
   
-- EXEMPLO DE AVG
SELECT AVG(valor_produto) AS media_produtos FROM tb_produto;
SELECT AVG(nota_avaliacao) AS media_avaliacoes FROM tb_avaliacao;

-- EXEMPLO USANDO GROUP BY E AVG
   SELECT 
    id_produto, AVG(nota_avaliacao) AS media_avaliacao
FROM
    tb_avaliacao
GROUP BY id_produto;

-- EXEMPLO DE MIN()
SELECT MIN(valor_produto) AS menor_valor FROM tb_produto;
SELECT MIN(nota_avaliacao) AS menor_nota FROM tb_avaliacao;

-- EXEMPLO DE MAX()
SELECT MAX(valor_produto) AS maior_valor FROM tb_produto;
SELECT MAX(nota_avaliacao) AS maior_nota FROM tb_avaliacao;

-- QUERY COMPLETA
SELECT COUNT(*) AS total_pedidos,
		 AVG(total_pedido) AS media_pedidos,
		 MIN(total_pedido) AS menor_pedido,
		 MAX(total_pedido) AS maior_pedido
FROM tb_pedido;

-- QUANTIDADE DE PRODUTOS POR CATEGORIA
	 SELECT id_categoria,
	  COUNT(*) AS quantidade_produtos
	   FROM tb_produto
   GROUP BY id_categoria;
   
-- QUANTIDADE DE PEDIDOS POR USUÁRIOS
SELECT id_usuario,
COUNT(*) AS quantidade_pedidos
FROM tb_pedido;

SELECT id_usuario,
	COUNT(*) AS quantidade_pedidos
FROM tb_pedido
	GROUP BY id_usuario;

-- MÉDIA DE VALOR DOS PRODUTOS
SELECT 
    AVG(valor_produto) AS media_produtos
FROM
    tb_produto;

-- MÉDIA DAS AVALIAÇÕES DOS PRODUTOS
SELECT 
    AVG(nota_avaliacao) AS media_avaliacoes
FROM
    tb_avaliacao;

-- MÉDIA DE VALOR DOS PEDIDOS POR USUÁRIOS
SELECT 
    id_usuario, AVG(valor_produto) AS media_produtos
FROM
    tb_produto
GROUP BY id_usuario;

-- ENCONTRAR PRODUTO MAIS BARATO
SELECT 
    MIN(valor_produto) AS menor_valor
FROM
    tb_produto;

-- ENCONTRAR O PRODUTO MAIS CARO
SELECT 
    MAX(valor_produto) AS maior_valor
FROM
    tb_produto;

-- MENOR E MAIOR NOTA ATRIBUÍDA PELOS CLIENTES
SELECT 
    MIN(nota_avaliacao) AS menor_nota,
    MAX(nota_avaliacao) AS maior_nota
FROM
    tb_avaliacao;

-- MENOR E MAIOR VALOR DOS PEDIDOS
SELECT 
    COUNT(*) AS total_pedidos,
    MIN(total_pedido) AS menor_pedido,
    MAX(total_pedido) AS maior_pedido
FROM
    tb_pedido;

-- RELATÓRIO GERAL DOS PEDIDOS
SELECT 
    COUNT(*) AS total_pedidos,
    AVG(total_pedido) AS media_pedidos,
    MIN(total_pedido) AS menor_pedido,
    MAX(total_pedido) AS maior_pedido
FROM
    tb_pedido;

-- DESAFIO: ESTATÍSTICAS DAS AVALIAÇÕES POR PRODUTO
SELECT 
    id_produto,
    COUNT(*) AS qntd_avaliacoes,
    AVG(nota_avaliacao) AS media_avaliacao,
    MIN(nota_avaliacao) AS menor_avaliacao,
    MAX(nota_avaliacao) AS maior_avaliacao
FROM
    tb_avaliacao
GROUP BY id_produto;


