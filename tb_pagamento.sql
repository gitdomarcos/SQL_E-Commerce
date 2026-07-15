SELECT * FROM db_ecommerce_sql.tb_pagamento;

-- INSERT TB_PAGAMENTO (Alinhado perfeitamente com os totais e datas do seu print)
INSERT INTO tb_pagamento (tipo_pagamento, status_pagamento, valor_pagamento, data_pagamento, id_pedido) VALUES
-- Pedido 1: Confirmado (Total: 1.00 ou ajustado pelo seu teste anterior, mantive o padrão do print)
(2, 2, 1.00, '2026-03-07', 1), -- PIX, Aprovado

-- Pedido 2: Em Análise
(5, 1, 2.00, '2026-05-22', 2), -- Boleto, Em Análise

-- Pedido 3: Em Análise
(4, 1, 3.00, '2026-05-23', 3), -- Crédito, Em Análise

-- Pedido 39: Confirmado (Total: 350.00)
(2, 2, 350.00, '2026-02-15', 39), -- PIX, Aprovado

-- Pedido 40: Confirmado (Total: 2199.00)
(4, 2, 2199.00, '2026-02-20', 40), -- Crédito, Aprovado

-- Pedido 41: Em Análise (Total: 899.00)
(5, 1, 899.00, '2026-03-01', 41), -- Boleto, Em Análise

-- Pedido 42: Confirmado (Total: 290.00)
(2, 2, 290.00, '2026-03-05', 42), -- PIX, Aprovado

-- Pedido 43: Confirmado (Total: 649.00)
(3, 2, 649.00, '2026-03-10', 43), -- Débito, Aprovado

-- Pedido 44: Em Análise (Total: 390.00)
(4, 1, 390.00, '2026-03-15', 44), -- Crédito, Em Análise

-- Pedido 45: Confirmado (Total: 420.00)
(2, 2, 420.00, '2026-03-20', 45); -- PIX, Aprovado