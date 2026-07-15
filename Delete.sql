-- Script SQL CRUD (Create - read - update - delete)
-- Delete: Excluir

-- Exclui toda a Tabela do Banco de Dados.
DROP TABLE tb_exemplo;

-- Exclui todo o Banco de Dados.
DROP DATABASE db_exemplo;

delete from tb_usuario where id_usuario = 1;

delete from tb_categoria where id_categoria = 1;

delete from tb_produtoo where id_produto in (1, 2, 3, 4);