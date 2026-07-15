-- Script SQL de Manipulação (Comandos COUNT e SUM).

-- Comandos em COUNT
-- 1º Exemplo: Contagem dos dados cadastrados
SELECT COUNT(*) AS total_usuarios FROM tb_usuario;

SELECT COUNT(*) AS total_pedidos FROM tb_pedido;

-- 2º Exemplo: Soma dos valores vendidos
SELECT SUM(valor_produto) AS total_vendas FROM tb_produto;

-- 1º Exercicio: Contar quantos usuários existem cadastrados
SELECT COUNT(*) AS total_usuarios FROM tb_usuario;

-- 2º Exercicio: Contar quantos produtos existem por categoria
	SELECT nome_categoria,
	 COUNT(id_produto) AS qnt_prod
	  FROM tb_categoria
INNER JOIN tb_produto
		ON tb_categoria.id_categoria = tb_produto.id_categoria
  GROUP BY nome_categoria;
  
-- 3º Exercício: Contar quantos pedidos cada usuário realizou
	SELECT nome_usuario,
	 COUNT(id_pedido) as qnt_pedidos
	  FROM tb_usuario
INNER JOIN tb_pedido
		ON tb_usuario.id_usuario = tb_pedido.id_usuario
  GROUP BY nome_usuario;

-- 4º Exercício: Contar quantos produtos foram avaliados
SELECT COUNT(*) AS total_avaliacoes FROM tb_avaliacao;
-- trazendo a avaliação junto a pesquisa
SELECT comentario_avaliacao,
 COUNT(id_avaliacao) AS qnt_avaliacao
  FROM tb_avaliacao;


-- Comandos em SUM
-- 1º Exercício: Somar valor total dos pedidos
SELECT COUNT(*) AS total_pedidos FROM tb_pedido;
-- soma total de pedidos
SELECT SUM(total_pedido) AS total_pedidos FROM tb_pedido;

-- 2º Exercício: Somar o valor vendido por usuário
	SELECT nome_usuario,
	   SUM(quantidade_item * valor_unitario) AS total_gasto
	  FROM tb_usuario
INNER JOIN tb_pedido
		ON tb_usuario.id_usuario = tb_pedido.id_usuario
INNER JOIN tb_item_pedido
		ON tb_pedido.id_pedido = tb_item_pedido.id_pedido
  GROUP BY nome_usuario;

-- 3º Exercício: Somar qntd total de itens vendidos por produto
	SELECT nome_produto,
	   SUM(tb_item_pedido.quantidade_item) AS total_vendido
	  FROM tb_produto
INNER JOIN tb_item_pedido
	    ON tb_produto.id_produto = tb_item_pedido.id_produto
  GROUP BY nome_produto;
