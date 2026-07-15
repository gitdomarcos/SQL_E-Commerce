-- Script SQL CRUD (Create - read - update - delete)
-- Update: Atualizar

UPDATE tb_marca
    SET nome_marca = 'Mancer'
WHERE id_marca = 2;

UPDATE tb_produto
    SET nome_produto = 'Memória RAM',
        valor_produto = 800.00
WHERE id_produto = 3;

UPDATE tb_produto
    SET nome_produto = 'Memória RAM',
        valor_produto = 800.00,
        descricao_produto = 'Placa para performance do computador'
WHERE id_produto = 3;

-- ALTERADO TIPO DO USUARIO DE 1-ADM PARA 2-CLIENTE
UPDATE tb_usuario
SET tipo_usuario = 2
WHERE id_usuario = 1;


