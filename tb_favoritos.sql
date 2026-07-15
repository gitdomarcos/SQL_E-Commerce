SELECT * FROM db_ecommerce_sql.tb_favoritos;

-- INSERT TB_FAVORITOS (Corrigido para tb_favoritos)

-- Favoritos da Ana Silva
INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 1, id_usuario FROM tb_usuario WHERE email_usuario = 'ana.silva@gmail.com';

INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 5, id_usuario FROM tb_usuario WHERE email_usuario = 'ana.silva@gmail.com';

-- Favoritos do Carlos Eduardo
INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 2, id_usuario FROM tb_usuario WHERE email_usuario = 'cadu.edu@hotmail.com';

INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 3, id_usuario FROM tb_usuario WHERE email_usuario = 'cadu.edu@hotmail.com';

-- Favoritos da Mariana Costa
INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 10, id_usuario FROM tb_usuario WHERE email_usuario = 'mari_costa92@gmail.com';

-- Favoritos do Rodrigo Santos
INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 4, id_usuario FROM tb_usuario WHERE email_usuario = 'rodrigo.santos@outlook.com';

INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 7, id_usuario FROM tb_usuario WHERE email_usuario = 'rodrigo.santos@outlook.com';

-- Favoritos da Juliana Lima
INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 12, id_usuario FROM tb_usuario WHERE email_usuario = 'ju_lima@yahoo.com.br';

-- Favoritos do Lucas Oliveira
INSERT INTO tb_favoritos (id_produto, id_usuario)
SELECT 2, id_usuario FROM tb_usuario WHERE email_usuario = 'lucas.oli@gmail.com';