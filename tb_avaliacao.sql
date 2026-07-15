SELECT * FROM db_ecommerce_sql.tb_avaliacao;

-- INSERT TB_AVALIACAO (Casado dinamicamente pelos e-mails dos usuários cadastrados)

-- Avaliação para o Produto 1 (Gabinete Gamer ATX)
INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 9, 'Gabinete excelente, muito bonito e com ótimo fluxo de ar. Só achei o espaço pros cabos um pouco apertado.', '2026-02-22', 1, id_usuario 
FROM tb_usuario WHERE email_usuario = 'ana.silva@gmail.com';

INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 10, 'Sensacional! O vidro temperado dá um destaque incrível no setup. Recomendo muito.', '2026-02-25', 1, id_usuario 
FROM tb_usuario WHERE email_usuario = 'cadu.edu@hotmail.com';

-- Avaliações para o Produto 2 (Placa de Vídeo RTX 4060)
INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 9, 'Produto bom porem veio com a cor diferente.', '2026-03-08', 2, id_usuario 
FROM tb_usuario WHERE email_usuario = 'mari_costa92@gmail.com';

INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 10, 'Desempenho bruto em Full HD, roda tudo no talo e não esquenta nada.', '2026-03-10', 2, id_usuario 
FROM tb_usuario WHERE email_usuario = 'rodrigo.santos@outlook.com';

-- Avaliação para o Produto 3 (Processador Ryzen 5 5600X)
INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 10, 'Processador monstro, empurra qualquer placa de vídeo atual sem gargalo. Entrega rápida.', '2026-03-15', 3, id_usuario 
FROM tb_usuario WHERE email_usuario = 'ju_lima@yahoo.com.br';

-- Avaliações para o Produto 4 (Memória RAM 16GB DDR4)
INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 8, 'Memórias muito boas e o RGB é lindo. Só deu um pouco de trabalho para ativar o XMP na minha placa.', '2026-03-12', 4, id_usuario 
FROM tb_usuario WHERE email_usuario = 'lucas.oli@gmail.com';

INSERT INTO tb_avaliacao (nota_avaliacao, comentario_avaliacao, data_avaliacao, id_produto, id_usuario)
SELECT 10, 'Comprei dois pentes e o Dual Channel ficou perfeito. Entrega antes do prazo.', '2026-03-14', 4, id_usuario 
FROM tb_usuario WHERE email_usuario = 'bia.rocha@gmail.com';