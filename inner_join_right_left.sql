-- Script SQL de Junção (Inner Join - Right Join - Left Join)
-- Consultar com Inners!

-- 1º Exercicio INNER JOIN
SELECT nome_produto, nome_categoria
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;

-- 2º Exercício: INNER JOIN
SELECT nome_produto, nome_marca
FROM tb_produto
INNER JOIN tb_marca
ON tb_produto.id_marca = tb_marca.id_marca;

-- 3º Exercício: INNER JOIN
SELECT nome_usuario, id_pedido, data_pedido
FROM tb_usuario
INNER JOIN tb_pedido
ON tb_pedido.id_usuario = tb_usuario.id_usuario;

-- 4º Exercício: INNER JOIN
SELECT nome_produto, quantidade_item
FROM tb_produto
INNER JOIN tb_item_pedido
ON tb_item_pedido.id_produto = tb_produto.id_usuario;

-- 5º Exercício: INNER JOIN E WHERE
SELECT id_pedido, data_pedido
FROM tb_pedido
INNER JOIN tb_usuario
ON tb_pedido.id_usuario = tb_usuario.id_usuario
WHERE tb_pedido.id_usuario = 2;

-- 6º Exercício: LEFT JOIN
SELECT nome_produto, quantidade_item
FROM tb_produto
LEFT JOIN tb_item_pedido
ON tb_produto.id_produto = tb_item_pedido.id_produto;

-- 7º Exercício: LEFT JOIN
SELECT nome_usuario, id_pedido
FROM tb_usuario
LEFT JOIN tb_pedido
ON tb_usuario.id_usuario = tb_pedido.id_usuario;

-- 8º Exercício: INNER JOIN com várias Tabelas
SELECT usu.nome_usuario, ped.id_pedido, prd.nome_produto, itped.quantidade_item
FROM tb_usuario AS usu
INNER JOIN tb_pedido AS ped
ON usu.id_usuario = ped.id_usuario
INNER JOIN tb_item_pedido AS itped
ON ped.id_pedido = itped.id_pedido
INNER JOIN tb_produto AS prd
ON itped.id_produto = prd.id_produto;

-- 9º Exercício: RIGHT JOIN.
SELECT ped.id_pedido, pgto.valor_pagamento
FROM tb_pagamento AS pgto
RIGHT JOIN tb_pedido AS ped
ON pgto.id_pedido = ped.id_pedido;

-- 10º Exercício: LEFT JOIN
SELECT nome_produto
FROM tb_produto
LEFT JOIN tb_avaliacao
ON tb_produto.id_produto = tb_avaliacao.id_produto
WHERE tb_avaliacao.id_produto IS NULL;






-- 4º módulo #######################################
-- Exercícios de revisão de INNER JOIN

-- Faça os seguintes relatórios com dados cruzados entre Tabelas
-- 1º Nome do Usuário, Data Pedido, Produto e Avaliação
	SELECT nome_usuario,
		   data_pedido,
		   nome_produto,
           nota_avaliacao
      FROM tb_usuario
INNER JOIN tb_pedido
		ON tb_usuario.id_usuario = tb_pedido.id_usuario
INNER JOIN tb_item_pedido
		ON tb_pedido.id_pedido = tb_item_pedido.id_pedido
INNER JOIN tb_produto
		ON tb_item_pedido.id_produto = tb_produto.id_produto
INNER JOIN tb_avaliacao
		ON tb_produto.id_produto = tb_avaliacao.id_produto;

-- 2º Nome da Categoria e Nome do Produto
     SELECT nome_produto AS 'Nome do Produto',
            nome_categoria AS 'Nome da Categoria'
       FROM tb_produto
 INNER JOIN tb_categoria 
		 ON tb_produto.id_produto = tb_categoria.id_categoria;

-- 3º Nome do Usuário, Data Pedido, Nome do Produto, Quantidade Vendida
SELECT 
    u.nome_usuario AS 'Nome do Usuário',
    p.data_pedido AS 'Data Pedido',
    prod.nome_produto AS 'Nome do Produto',
    ip.quantidade_item AS 'Quantidade Vendida',
    ip.valor_unitario AS 'Valor Unitário',
    (ip.quantidade_item * ip.valor_unitario) AS 'Total do Item'
FROM tb_item_pedido ip
INNER JOIN tb_pedido p ON ip.id_pedido = p.id_pedido
INNER JOIN tb_usuario u ON p.id_usuario = u.id_usuario
INNER JOIN tb_produto prod ON ip.id_produto = prod.id_produto
ORDER BY p.data_pedido DESC;

-- 4º Mostrar apenas os pedidos de um Usuário específico
SELECT 
    u.nome_usuario AS 'Nome do Usuário',
    p.data_pedido AS 'Data Pedido',
    prod.nome_produto AS 'Nome do Produto',
    ip.quantidade_item AS 'Quantidade Vendida',
    ip.valor_unitario AS 'Valor Unitário'
FROM tb_item_pedido ip
INNER JOIN tb_pedido p ON ip.id_pedido = p.id_pedido
INNER JOIN tb_usuario u ON p.id_usuario = u.id_usuario
INNER JOIN tb_produto prod ON ip.id_produto = prod.id_produto
WHERE u.id_usuario = 6 -- Substitua pelo ID do usuário desejado
ORDER BY p.data_pedido DESC;

-- Se você não souber o ID e quiser buscar pelo nome (ou parte dele), utilize o operador LIKE:
SELECT 
    u.nome_usuario AS 'Nome do Usuário',
    p.data_pedido AS 'Data Pedido',
    prod.nome_produto AS 'Nome do Produto',
    ip.quantidade_item AS 'Quantidade Vendida',
    ip.valor_unitario AS 'Valor Unitário'
FROM tb_item_pedido ip
INNER JOIN tb_pedido p ON ip.id_pedido = p.id_pedido
INNER JOIN tb_usuario u ON p.id_usuario = u.id_usuario
INNER JOIN tb_produto prod ON ip.id_produto = prod.id_produto
WHERE u.nome_usuario LIKE '%Ana%' -- Substitua pelo nome desejado
ORDER BY p.data_pedido DESC;
-- O uso dos símbolos % antes e depois do nome garante que o banco encontre o usuário mesmo se você digitar apenas o primeiro nome ou se houver espaços extras.

-- 5º Nome de Usuário e ID do pedido com Filtro ON
SELECT 
    u.nome_usuario AS 'Nome do Usuário',
    p.id_pedido AS 'ID do Pedido',
    p.data_pedido AS 'Data do Pedido',
    CASE p.status_pedido
        WHEN 1 THEN 'Em Análise'
        WHEN 2 THEN 'Confirmado'
    END AS 'Status do Pedido'
FROM tb_pedido p
INNER JOIN tb_usuario u ON p.id_usuario = u.id_usuario
WHERE p.status_pedido = 2 -- Filtro ON (Apenas pedidos Confirmados/Ativos)
ORDER BY p.id_pedido DESC;

-- 6º Nome do Usuário e ID do Pedido com Filtro no WHERE
SELECT 
    u.nome_usuario AS 'Nome do Usuário',
    p.id_pedido AS 'ID do Pedido',
    p.data_pedido AS 'Data do Pedido',
    p.total_pedido AS 'Total do Pedido'
FROM tb_pedido p
INNER JOIN tb_usuario u ON p.id_usuario = u.id_usuario
WHERE p.id_pedido = 39;
-- WHERE u.nome_usuario LIKE '%Ana Silva%'; 
-- Se quiser filtrar pelo ID do pedido, use a linha abaixo:
-- WHERE p.id_pedido = 39;

-- 7º Nome do Usuário, Data Pedido, Produto, Quantidade e Valor Unitário
SELECT 
    u.nome_usuario AS 'Nome do Usuário',
    p.data_pedido AS 'Data Pedido',
    prod.nome_produto AS 'Produto',
    ip.quantidade_item AS 'Quantidade',
    ip.valor_unitario AS 'Valor Unitário',
    (ip.quantidade_item * ip.valor_unitario) AS 'Valor Total do Item'
FROM tb_item_pedido ip
INNER JOIN tb_pedido p ON ip.id_pedido = p.id_pedido
INNER JOIN tb_usuario u ON p.id_usuario = u.id_usuario
INNER JOIN tb_produto prod ON ip.id_produto = prod.id_produto
ORDER BY p.data_pedido DESC;


-- Relatórios de produtos mais Vendido
SELECT 
    prod.nome_produto AS 'Nome do Produto',
    SUM(ip.quantidade_item) AS 'Total de Unidades Vendidas',
    SUM(ip.quantidade_item * ip.valor_unitario) AS 'Faturamento Total'
FROM tb_item_pedido ip
INNER JOIN tb_produto prod ON ip.id_produto = prod.id_produto
GROUP BY prod.id_produto, prod.nome_produto
ORDER BY 'Total de Unidades Vendidas' DESC;
