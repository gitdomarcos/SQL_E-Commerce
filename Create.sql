-- Script SQL CRUD (Create - read - update - delete)
-- Create: Cadastrar

-- INSERT USUARIOS (1 - ADM / 2 - CLIENTE)

INSERT INTO tb_usuario
(nome_usuario, email_usuario, senha_usuario, tipo_usuario, data_cadastro)
VALUES
('João Pedro', 'j_pedro@gmail.com', 'jpr321', 1, '2026-03-07');

INSERT INTO tb_usuario
(nome_usuario, email_usuario, senha_usuario, tipo_usuario, data_cadastro)
VALUES
('Bruno Solza', 'bru_solza@gmail.com', 'brs999', 2, '2026-03-07');

INSERT INTO tb_usuario
(nome_usuario, email_usuario, senha_usuario, tipo_usuario, data_cadastro)
VALUES
('Marcos Vinicius','marcao@gmail.com','12345678', 1,'2026-05-22');

INSERT INTO tb_usuario
(nome_usuario, email_usuario, senha_usuario, tipo_usuario, data_cadastro)
VALUES
('Adalberto Fontes','adalberto@gmail.com','af123', 2,'2026-05-22');


-- INSERT TB_MARCA
INSERT INTO tb_marca
(nome_marca, id_usuario)
VALUES
('Redragon', 1);

INSERT INTO tb_marca
(nome_marca, id_usuario)
VALUES
('Acer', 3);

INSERT INTO tb_marca
(nome_marca, id_usuario)
VALUES
('HP', 3);

INSERT INTO tb_marca
(nome_marca, id_usuario)
VALUES
('PHILIPS', 3);

-- INSERT TB_CATEGORIA
INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Mouse', 1);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Monitor', 3);

INSERT INTO tb_categoria
(nome_categoria, id_usuario)
VALUES
('Teclado', 3);

-- INSERT PRODUTO
INSERT INTO tb_produto
(nome_produto, descricao_produto, valor_produto, estoque_produto, id_categoria, id_marca, id_usuario)
VALUES
('Teclado RGB', 'Teclado Gamer Mecânico', 235.50, 100, 1, 1, 1);

INSERT INTO tb_produto
(nome_produto, descricao_produto, valor_produto, estoque_produto, id_categoria, id_marca, id_usuario)
VALUES
('Monitor IPS', 'Monitor 27" 160Hz', 800.00, 5, 2, 4,3);


-- SE PUDESSE IR NULL ERA SÓ COLOCA NULL ALI NO BANCO
INSERT INTO tb_produto
(nome_produto, descricao_produto, valor_produto, estoque_produto, id_categoria, id_marca, id_usuario)
VALUES
('Memória Ram DDR4', NULL, 800.00, 5, 2, 4,3);

-- INSERT PEDIDO
-- STATUS PEDIDO = 1 - Em Análise / 2 - Confirmado
INSERT INTO tb_pedido
(data_pedido, status_pedido, total_pedido, id_usuario)
VALUES
('2026-03-07', 2, 1, 2);

INSERT INTO tb_pedido
(data_pedido, status_pedido, total_pedido, id_usuario)
VALUES
('2026-05-22', 1, 2, 5);

INSERT INTO tb_pedido
(data_pedido, status_pedido, total_pedido, id_usuario)
VALUES
('2026-05-23', 1, 3, 5);


-- INSERT PRODUTO PEDIDO
INSERT INTO tb_item_pedido
(quantidade_item, valor_unitario, id_pedido, id_produto)
VALUES
(2, 235.50 + 235.50, 1, 1);

INSERT INTO tb_item_pedido
(quantidade_item, valor_unitario, id_pedido, id_produto)
VALUES
(1, 800.00, 2, 2);

INSERT INTO tb_item_pedido
(quantidade_item, valor_unitario, id_pedido, id_produto)
VALUES
(1, 800.00, 2, 2);


-- INSERT TB PAGAMENTO
-- TIPO PAGAMENTO = 1 - Dinheiro / 2 - PIX / 3 - Débito / 4 - Crédito / 5 - Boleto
-- STATUS PAGAMENTO = 1 - Em Análise / 2 - Aprovado
INSERT INTO tb_pagamento
(tipo_pagamento, status_pagamento, valor_pagamento, data_pagamento, id_pedido)
VALUES
(2, 2, 360.00, '2026-05-22', 1);

-- INSERT ENTREGA
INSERT INTO tb_entrega
(endereco_entrega, status_entrega, data_envio, data_entrega, id_pedido)
VALUES
('Rua Teste Nº100', 1, '2026-03-07', null, 1);

-- INSERT AVALIAÇÃO
INSERT INTO tb_avaliacao
(nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
VALUES
(9, 'Produto bom porem veio com a cor diferente.', '2026-03-08', 2, 2);

-- INSERT FAVORITOS
INSERT INTO tb_favoritos
(id_produto, id_usuario)
VALUES
(2, 2);



-- atahalho ctrl + b para formatar e alinhar o código SQL automaticamente