-- Script SQL de Extração de Dados(Comando EXTRACT)

-- Extrair o ANO de um dado!
SELECT id_pedido, data_pedido,
	EXTRACT(YEAR FROM data_pedido) FROM tb_pedido;
    
-- Extrair o MES de um dado!
SELECT id_pedido, data_pedido,
	EXTRACT(MONTH FROM data_pedido) FROM tb_pedido;
    
-- Extrair o DIA de um dado!
SELECT id_pedido, data_pedido,
	EXTRACT(DAY FROM data_pedido) FROM tb_pedido;
    
-- Extrair DATA de forma separada da tb_usuario
SELECT 
    YEAR(data_cadastro),
    MONTH(data_cadastro),
    DAY(data_cadastro)
FROM
    tb_usuario;



