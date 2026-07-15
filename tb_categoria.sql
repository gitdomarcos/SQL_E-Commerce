SELECT * FROM db_ecommerce_sql.tb_categoria;

-- INSERT TB_CATEGORIA (100 Novas Categorias)
INSERT INTO tb_categoria (nome_categoria, id_usuario) VALUES
('Gabinete', 1),
('Placa de Vídeo', 2),
('Processador', 3),
('Memória RAM', 1),
('Placa-Mãe', 2),
('Fonte de Alimentação', 3),
('SSD', 1),
('HD Externo', 2),
('Cooler Processador', 3),
('Water Cooler', 1),
('Ventoinha Cooler', 2),
('Pasta Térmica', 3),
('Headset', 1),
('Microfone', 2),
('Webcam', 3),
('Caixa de Som', 1),
('Mousepad', 2),
('Cadeira Gamer', 3),
('Mesa Digitalizadora', 1),
('Impressora', 2),
('Scanner', 3),
('Cartucho de Tinta', 1),
('Toner', 2),
('Roteador Wi-Fi', 3),
('Repetidor de Sinal', 1),
('Switch de Rede', 2),
('Cabo de Rede RJ45', 3),
('Adaptador Bluetooth', 1),
('Placa de Rede Wi-Fi', 2),
('Hub USB', 3),
('Pen Drive', 1),
('Cartão de Memória', 2),
('Leitor de Cartão', 3),
('Cabo HDMI', 1),
('Cabo DisplayPort', 2),
('Cabo USB-C', 3),
('Filtro de Linha', 1),
('Estabilizador', 2),
('Nobreak', 3),
('Smartphone', 1),
('Tablet', 2),
('Smartwatch', 3),
('Carregador Portátil', 1),
('Carregador Sem Fio', 2),
('Fone de Ouvido Bluetooth', 3),
('Película de Vidro', 1),
('Capa de Smartphone', 2),
('Suporte para Celular', 3),
('Notebook', 1),
('Suporte para Notebook', 2),
('Maleta para Notebook', 3),
('Base Cooler para Notebook', 1),
('Console de Videogame', 2),
('Controle sem Fio', 3),
('Carregador de Controle', 1),
('Volante para Jogos', 2),
('Óculos VR', 3),
('Jogo PS5', 1),
('Jogo Xbox', 2),
('Jogo Nintendo Switch', 3),
('Gift Card', 1),
('Câmera Fotográfica', 2),
('Lente Fotográfica', 3),
('Tripé para Câmera', 1),
('Iluminação Ring Light', 2),
('Softbox', 3),
('Bateria para Câmera', 1),
('Microfone de Lapela', 2),
('Gimbal Estabilizador', 3),
('Smart TV', 1),
('Suporte de TV', 2),
('Soundbar', 3),
('Controle Remoto Smart', 1),
('Streaming Box', 2),
('Projetor', 3),
('Tela de Projeção', 1),
('Home Theater', 2),
('Assistente Virtual Alexa', 3),
('Lâmpada Inteligente', 1),
('Tomada Inteligente', 2),
('Fechadura Eletrônica', 3),
('Câmera de Segurança Wi-Fi', 1),
('Sensor de Movimento', 2),
('Fita LED RGB', 3),
('Controle Infravermelho Smart', 1),
('Pilhas Recarregáveis', 2),
('Carregador de Pilhas', 3),
('Bateria 9V', 1),
('Organizador de Cabos', 2),
('Abraçadeira de Nylon', 3),
('Limpa Telas', 1),
('Ar Comprimido Aerosol', 2),
('Ferro de Solda', 3),
('Estanho para Solda', 1),
('Multímetro Digital', 2),
('Kit Chaves de Fenda', 3),
('Pulseira Antiestática', 1),
('Alicate de Crimpagem', 2),
('Testador de Cabo de Rede', 3),
('Maleta de Ferramentas', 1);

-- Crie uma Query de cadastro com INSERT, SELECT e Subquery.
-- ESSE REPETE O ULTIMO CADASTRO
INSERT INTO tb_categoria(nome_categoria, id_usuario)
	 SELECT nome_categoria, id_usuario FROM tb_categoria
	  WHERE
				id_categoria =
				(
					SELECT
					   MAX(id_categoria)
					  FROM
					      tb_categoria
				);
                
		
-- ESSE CRIA UM NOVO PRODUTO USANDO O USUARIO SLECIONADO DA tb_usuario
INSERT INTO tb_categoria(nome_categoria, id_usuario)
VALUES
(
 'Mouse Pad', (
				SELECT id_usuario
                  FROM tb_usuario
                 WHERE nome_usuario = 'Ana Silva'
              )
);

-- Verificação de Existência: O operador EXISTS vs IN.
	SELECT p.nome_produto, c.nome_categoria, m.nome_marca
	  FROM tb_produto AS p
INNER JOIN tb_categoria AS c
	    ON p.id_categoria = c.id_categoria
INNER JOIN tb_marca AS m
		ON p.id_marca = m.id_marca
	 WHERE p.valor_produto > (
								SELECT AVG(valor_produto) FROM tb_produto
							 );
                             
                             
                             
