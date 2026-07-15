SELECT * FROM db_ecommerce_sql.tb_item_pedido;

-- INSERT TB_ITEM_PEDIDO (Casado perfeitamente com os IDs da sua tabela)
INSERT INTO tb_item_pedido (quantidade_item, valor_unitario, id_pedido, id_produto) VALUES
-- =======================================================
-- PEDIDO 1 (Existente no seu banco)
-- =======================================================
(1, 420.00, 1, 7),  -- 1x SSD NVMe 1TB
(2, 45.90,  1, 14), -- 2x Pen Drive 64GB

-- =======================================================
-- PEDIDO 2 (Existente no seu banco)
-- =======================================================
(1, 379.00, 2, 13), -- 1x Roteador Wi-Fi 6
(2, 89.90,  2, 26), -- 2x Repetidor de Sinal Wi-Fi

-- =======================================================
-- PEDIDO 3 (Existente no seu banco)
-- =======================================================
(1, 55.00,  3, 56), -- 1x Ferro de Solda 60W
(3, 15.00,  3, 55), -- 3x Estanho para Solda 1mm

-- =======================================================
-- PEDIDO 39 (Primeiro do novo lote)
-- =======================================================
(1, 349.90, 39, 1),  -- 1x Gabinete Gamer ATX
(1, 189.90, 39, 10), -- 1x Headset Gamer 7.1

-- =======================================================
-- PEDIDO 40 (Segundo do novo lote)
-- =======================================================
(1, 2199.00, 40, 2), -- 1x Placa de Vídeo RTX 4060
(1, 649.00,  40, 5), -- 1x Placa-Mãe B550M

-- =======================================================
-- PEDIDO 41 (Terceiro do novo lote)
-- =======================================================
(1, 899.00, 41, 3),  -- 1x Processador Ryzen 5
(2, 289.90, 41, 4);  -- 2x Memória RAM 16GB DDR4