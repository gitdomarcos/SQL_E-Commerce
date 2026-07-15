SELECT * FROM db_ecommerce_sql.tb_pedido;

-- INSERT TB_PEDIDO (35 Novos Pedidos)
INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario) VALUES
('2026-02-15', 2, 349.90, 4),
('2026-02-20', 2, 2199.00, 5),
('2026-03-01', 1, 899.00, 6),
('2026-03-05', 2, 289.90, 7),
('2026-03-10', 2, 649.00, 8),
('2026-03-15', 1, 389.50, 9),
('2026-03-20', 2, 420.00, 10),
('2026-03-25', 2, 499.00, 11),
('2026-04-01', 1, 459.90, 12),
('2026-04-05', 2, 189.90, 13),
('2026-04-10', 2, 215.00, 14),
('2026-04-15', 1, 899.90, 15),
('2026-04-20', 2, 379.00, 16),
('2026-04-25', 2, 45.90, 17),
('2026-05-01', 1, 59.90, 18),
('2026-05-05', 2, 39.90, 19),
('2026-05-10', 2, 1399.00, 20),
('2026-05-12', 1, 249.00, 21),
('2026-05-15', 2, 2899.00, 22),
('2026-05-18', 2, 429.00, 23),
('2026-05-20', 1, 320.00, 24),
('2026-05-22', 2, 99.90, 25),
('2026-05-25', 2, 69.90, 26),
('2026-06-01', 1, 299.00, 27),
('2026-06-03', 2, 949.00, 28),
('2026-06-05', 2, 89.90, 29),
('2026-06-10', 1, 54.90, 30),
('2026-06-12', 2, 89.00, 31),
('2026-06-15', 2, 750.00, 32),
('2026-06-18', 1, 169.90, 33),
('2026-06-20', 2, 129.90, 4),
('2026-06-22', 2, 219.00, 5),
('2026-06-24', 1, 35.00, 6),
('2026-06-25', 2, 49.90, 12),
('2026-06-26', 1, 45.00, 18);

-- INSERT TB_PEDIDO (Filtrando apenas usuários do Tipo 2 através do e-mail)

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-02-15', 2, 349.90, id_usuario FROM tb_usuario WHERE email_usuario = 'ana.silva@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-02-20', 2, 2199.00, id_usuario FROM tb_usuario WHERE email_usuario = 'cadu.edu@hotmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-03-01', 1, 899.00, id_usuario FROM tb_usuario WHERE email_usuario = 'mari_costa92@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-03-05', 2, 289.90, id_usuario FROM tb_usuario WHERE email_usuario = 'rodrigo.santos@outlook.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-03-10', 2, 649.00, id_usuario FROM tb_usuario WHERE email_usuario = 'ju_lima@yahoo.com.br' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-03-15', 1, 389.50, id_usuario FROM tb_usuario WHERE email_usuario = 'lucas.oli@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-03-20', 2, 420.00, id_usuario FROM tb_usuario WHERE email_usuario = 'bia.rocha@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-03-25', 2, 499.00, id_usuario FROM tb_usuario WHERE email_usuario = 'gabriel.almeida@live.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-04-01', 1, 459.90, id_usuario FROM tb_usuario WHERE email_usuario = 'amanda.m@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-04-05', 2, 189.90, id_usuario FROM tb_usuario WHERE email_usuario = 'rafa.ribeiro@outlook.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-04-10', 2, 215.00, id_usuario FROM tb_usuario WHERE email_usuario = 'lari.carvalho@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-04-15', 1, 899.90, id_usuario FROM tb_usuario WHERE email_usuario = 'felipe.gomes@hotmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-04-20', 2, 379.00, id_usuario FROM tb_usuario WHERE email_usuario = 'cami.rod@gmail.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-04-25', 2, 45.90, id_usuario FROM tb_usuario WHERE email_usuario = 'gustavo.p@yahoo.com' AND tipo_usuario = 2;

INSERT INTO tb_pedido (data_pedido, status_pedido, total_pedido, id_usuario)
SELECT '2026-05-01', 1, 59.90, id_usuario FROM tb_usuario WHERE email_usuario = 'leticia.alves@gmail.com' AND tipo_usuario = 2;