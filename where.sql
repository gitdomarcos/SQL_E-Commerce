-- Script SQL de Filtro (Where)
-- Consultar com Where!

	SELECT id_usuario, tipo_usuario, id_produto
	  FROM tb_usuario
INNER JOIN tb_produto
		ON tb_produto.id_usuario = tb_usuario.id_usuario
	 WHERE tb_usuario.id_usuario = 2;
     
	SELECT usu.id_usuario, 
		   usu.tipo_usuario, 
           pdt.id_produto
	  FROM tb_usuario as usu
 LEFT JOIN tb_produto as pdt
		ON pdt.id_usuario = usu.id_usuario;
        
DESC tb_produto;


-- PRÁTICAS DE WHERE E HAVING
-- WHERE: FILTRO GERAL DE INFORMAÇÕES
-- HAVING: AGRUPA PRIMEIROS OS DADOS SOLICITADOS E ENTÃO SOMENTE DEPOIS, APLICA O FILTRO

SELECT nome_produto, valor_produto
FROM tb_produto
WHERE valor_produto > 200;

SELECT id_categoria,
COUNT(*) AS quantidade_produto
FROM tb_produto
GROUP BY id_categoria 
HAVING COUNT(*) > 1;

-- EXEMPLO DE SUBQUERRY
SELECT nome_produto, valor_produto
FROM tb_produto
WHERE valor_produto > (SELECT AVG(valor_produto) FROM tb_produto);

SELECT nome_usuario
FROM tb_usuario
WHERE id_usuario IN (SELECT id_usuario FROM tb_pedido);

SELECT AVG(total_gasto) AS media_geral
FROM
(
	SELECT id_usuario, SUM(total_pedido) AS total_gasto
    FROM tb_pedido
    GROUP BY id_usuario
) AS vendas;


SELECT nome_usuario
FROM tb_usuario
WHERE id_usuario IN 
(
	SELECT id_usuario FROM tb_pedido
);

SELECT nome_usuario
FROM tb_usuario
WHERE EXISTS (SELECT * FROM tb_pedido WHERE tb_pedido.id_usuario = tb_usuario.id_usuario);





