SELECT * FROM db_ecommerce_sql.tb_entrega;

-- INSERT TB_ENTREGA (Atualizado com os status: 1 - A Caminho / 2 - Entregue)
INSERT INTO tb_entrega (endereco_entrega, status_entrega, data_envio, data_entrega, id_pedido) VALUES
-- Pedido 1 (Entregue)
('Av. Paulista, 1000 - São Paulo/SP', 2, '2026-03-08', '2026-03-12', 1),

-- Pedido 2 (A Caminho)
('Rua das Flores, 45 - Curitiba/PR', 1, '2026-05-24', NULL, 2),

-- Pedido 3 (A Caminho)
('Rua das Flores, 45 - Curitiba/PR', 1, '2026-05-25', NULL, 3),

-- Pedido 39 (Entregue)
('Rua Alagoas, 250 - Belo Horizonte/MG', 2, '2026-02-16', '2026-02-20', 39),

-- Pedido 40 (Entregue)
('Av. Atlântica, 500 - Rio de Janeiro/RJ', 2, '2026-02-21', '2026-02-24', 40),

-- Pedido 41 (A Caminho)
('Rua Amazonas, 12 - Manaus/AM', 1, '2026-03-03', NULL, 41),

-- Pedido 42 (Entregue)
('Av. Central, 88 - Brasília/DF', 2, '2026-03-06', '2026-03-10', 42),

-- Pedido 43 (Entregue)
('Rua Bahia, 310 - Salvador/BA', 2, '2026-03-11', '2026-03-17', 43);