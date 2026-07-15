-- LISTA EXERCICIO CASE, EXTRACT e WHEN

-- 1º EXTRAIR ANO DO PEDIDO
	SELECT id_pedido, data_pedido,
   EXTRACT(YEAR FROM data_pedido) AS ano
	  FROM tb_pedido;
      
-- 2º EXTRAIR MES DO PEDIDO
	SELECT id_pedido, data_pedido,
   EXTRACT(MONTH FROM data_pedido) AS mes
	  FROM tb_pedido;
      
-- 3º EXTRAIR DIA DO PEDIDO
	SELECT id_pedido, data_pedido,
   EXTRACT(DAY FROM data_pedido) AS dia
	  FROM tb_pedido;

-- EXTRAIR ANO, MES E DIA EM UM COMANDO SÓ
SELECT YEAR(data_pedido) AS ano,
	  MONTH(data_pedido) AS mes,
		DAY(data_pedido) AS dia
	   FROM tb_pedido;

-- 4º CLASSIFICAR PEDIDOS POR VALOR - duvida aqui
 SELECT id_pedido, total_pedido,
   CASE
   WHEN total_pedido < 100 THEN 'BAIXO'
   WHEN total_pedido BETWEEN 100 AND 500 THEN 'MÉDIO'
   ELSE 'ALTO'
 END AS categoria_valor
   FROM tb_pedido;
   
-- 5º STATUS PEDIDO (LEGÍVEL)
SELECT id_pedido, status_pedido,
  CASE
  WHEN status_pedido = 1 THEN 'Aberto'
  WHEN status_pedido = 2 THEN 'Pago'
  WHEN status_pedido = 3 THEN 'Cancelado'
  ELSE 'Desconhecido'
END AS status_descricao
  FROM tb_pedido;

-- 6º CALSSIFICAR ESTOQUE
SELECT nome_produto, estoque_produto,
CASE
WHEN estoque_produto = 0 THEN 'Sem estoque'
WHEN estoque_produto < 10 THEN 'Baixo estoque'
ELSE 'Estoque OK'
END AS situacao_estoque
FROM tb_produto;

-- 7º AVALIAÇÃO POR NOTA
SELECT nota_avaliacao,
CASE
WHEN nota_avaliacao >= 4 THEN 'Boa'
WHEN nota_avaliacao = 3 THEN 'Regular'
ELSE 'Ruim'
END AS classificacao
FROM tb_avaliacao;

-- 8º CLASSIFICAR POR SEMESTRE
SELECT id_pedido, data_pedido,
CASE
WHEN EXTRACT(MONTH FROM data_pedido) <= 6 THEN '1º Semestre'
ELSE '2º Semestre'
END AS semestre
FROM tb_pedido;

-- 9º NOME DO MÊS (PARCIAL)
SELECT data_pedido,
CASE
WHEN EXTRACT(MONTH FROM data_pedido) = 1 THEN 'Janeiro'
WHEN EXTRACT(MONTH FROM data_pedido) = 2 THEN 'Fevereiro'
WHEN EXTRACT(MONTH FROM data_pedido) = 3 THEN 'Março'
ELSE 'Outros'
END AS mes_nome
FROM tb_pedido;


-- 1º Exercício: Verificar o status do pedido(aberto, pago ou cancelado)
SELECT  id_pedido, status_pedido,
CASE
WHEN status_pedido = 1 THEN 'Aberto'
WHEN status_pedido = 2 THEN 'Pago'
WHEN status_pedido = 3 THEN 'Cancelado'
ELSE 'Desconhecido'
END AS categoria_status
FROM tb_pedido;


-- 2º Exercício: Verificar e classificar o estoque(sem item, baixo ou ok)
SELECT nome_produto, estoque_produto,
CASE
WHEN estoque_produto = 0 THEN 'Sem Estoque'
WHEN estoque_produto BETWEEN 10 AND 50 THEN 'Baixo Estoque'
ELSE 'Estoque OK'
END AS categoria_estoque
FROM tb_produto;

-- 3º Exercício: Verificar avaliacao por nota atribuida
SELECT id_avaliacao, nota_avaliacao,
CASE
WHEN nota_avaliacao = 10 THEN 'Ótimo'
WHEN nota_avaliacao BETWEEN 6 AND 9 THEN 'Bom'
WHEN nota_avaliacao BETWEEN 1 AND 5 THEN 'Ruim'
ELSE '--//--'
END AS categoria_avaliacao
FROM tb_avaliacao;



