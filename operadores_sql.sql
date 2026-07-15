-- OPERADORES RELACIONAIS EM SQL



-- OPERADORES RELACIONAIS: (=, >, <, >=, <=,<>)
-- Operador Igual(=)
SELECT * FROM tb_produto WHERE valor_produto = 200;

-- Operador Diferente(<>)
SELECT * FROM tb_pedido WHERE status_pedido <> 2;

-- Operador Maior ou Igual(>=)
SELECT * FROM tb_produto WHERE valor_produto >= 200;

-- Operador Menor ou Igual (<=)
SELECT * FROM tb_produto WHERE estoque_produto <= 70;




-- OPERADORES LOGICOS (AND - E, OR - OU, NOT - NAO, IN - AGRUPAMENTO DE DADOS)
-- Operador AND - E:
SELECT * FROM tb_produto WHERE valor_produto > 200 AND estoque_produto > 10;

-- Operador OR - OU:
SELECT * FROM tb_produto WHERE estoque_produto = 0 OR estoque_produto < 70;

-- Operador NOT - NÃO:
SELECT * FROM tb_pedido WHERE NOT status_pedido = 2;

SELECT * FROM tb_pedido WHERE NOT status_pedido = 1;

-- Operador IN(Agrupamento de Dados)
SELECT * FROM tb_usuario WHERE tipo_usuario = 1 OR tipo_usuario =2;

SELECT * FROM tb_usuario WHERE tipo_usuario IN(1,2);

-- Operador NOT IN(Agrupamento de Dados)
SELECT * FROM tb_pedido WHERE status_pedido NOT IN(2,3);

-- Operador IS NULL(Agrupamento de Dados)
SELECT * FROM tb_entrega WHERE data_entrega IS NULL; 

-- Operador IS NOT NULL(Agrupamento de Dados)
SELECT * FROM tb_entrega WHERE data_entrega IS NOT NULL; 






