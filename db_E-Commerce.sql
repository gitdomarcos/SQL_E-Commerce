-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ecommerce_sql
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_avaliacao`
--

DROP TABLE IF EXISTS `tb_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_avaliacao` (
  `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `nota_avaliacao` int(11) NOT NULL,
  `comentario_avaliacao` varchar(200) NOT NULL,
  `data_avaliacao` date NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_avaliacao`),
  KEY `fk_tb_avaliacao_tb_produto1_idx` (`id_produto`),
  KEY `fk_tb_avaliacao_tb_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_avaliacao_tb_produto1` FOREIGN KEY (`id_produto`) REFERENCES `tb_produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_avaliacao_tb_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_avaliacao`
--

LOCK TABLES `tb_avaliacao` WRITE;
/*!40000 ALTER TABLE `tb_avaliacao` DISABLE KEYS */;
INSERT INTO `tb_avaliacao` VALUES (1,9,'Produto bom porem veio com a cor diferente.','2026-03-08',2,2),(12,9,'Gabinete excelente, muito bonito e com ótimo fluxo de ar. Só achei o espaço pros cabos um pouco apertado.','2026-02-22',1,6),(13,10,'Sensacional! O vidro temperado dá um destaque incrível no setup. Recomendo muito.','2026-02-25',1,7),(14,9,'Produto bom porem veio com a cor diferente.','2026-03-08',2,8),(15,10,'Desempenho bruto em Full HD, roda tudo no talo e não esquenta nada.','2026-03-10',2,9),(16,10,'Processador monstro, empurra qualquer placa de vídeo atual sem gargalo. Entrega rápida.','2026-03-15',3,10),(17,8,'Memórias muito boas e o RGB é lindo. Só deu um pouco de trabalho para ativar o XMP na minha placa.','2026-03-12',4,11),(18,10,'Comprei dois pentes e o Dual Channel ficou perfeito. Entrega antes do prazo.','2026-03-14',4,12);
/*!40000 ALTER TABLE `tb_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `fk_tb_categoria_tb_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_categoria_tb_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria`
--

LOCK TABLES `tb_categoria` WRITE;
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` VALUES (1,'Mouse',1),(2,'Monitor',3),(3,'Teclado',3),(4,'Gabinete',1),(5,'Placa de Vídeo',2),(6,'Processador',3),(7,'Memória RAM',1),(8,'Placa-Mãe',2),(9,'Fonte de Alimentação',3),(10,'SSD',1),(11,'HD Externo',2),(12,'Cooler Processador',3),(13,'Water Cooler',1),(14,'Ventoinha Cooler',2),(15,'Pasta Térmica',3),(16,'Headset',1),(17,'Microfone',2),(18,'Webcam',3),(19,'Caixa de Som',1),(20,'Mousepad',2),(21,'Cadeira Gamer',3),(22,'Mesa Digitalizadora',1),(23,'Impressora',2),(24,'Scanner',3),(25,'Cartucho de Tinta',1),(26,'Toner',2),(27,'Roteador Wi-Fi',3),(28,'Repetidor de Sinal',1),(29,'Switch de Rede',2),(30,'Cabo de Rede RJ45',3),(31,'Adaptador Bluetooth',1),(32,'Placa de Rede Wi-Fi',2),(33,'Hub USB',3),(34,'Pen Drive',1),(35,'Cartão de Memória',2),(36,'Leitor de Cartão',3),(37,'Cabo HDMI',1),(38,'Cabo DisplayPort',2),(39,'Cabo USB-C',3),(40,'Filtro de Linha',1),(41,'Estabilizador',2),(42,'Nobreak',3),(43,'Smartphone',1),(44,'Tablet',2),(45,'Smartwatch',3),(46,'Carregador Portátil',1),(47,'Carregador Sem Fio',2),(48,'Fone de Ouvido Bluetooth',3),(49,'Película de Vidro',1),(50,'Capa de Smartphone',2),(51,'Suporte para Celular',3),(52,'Notebook',1),(53,'Suporte para Notebook',2),(54,'Maleta para Notebook',3),(55,'Base Cooler para Notebook',1),(56,'Console de Videogame',2),(57,'Controle sem Fio',3),(58,'Carregador de Controle',1),(59,'Volante para Jogos',2),(60,'Óculos VR',3),(61,'Jogo PS5',1),(62,'Jogo Xbox',2),(63,'Jogo Nintendo Switch',3),(64,'Gift Card',1),(65,'Câmera Fotográfica',2),(66,'Lente Fotográfica',3),(67,'Tripé para Câmera',1),(68,'Iluminação Ring Light',2),(69,'Softbox',3),(70,'Bateria para Câmera',1),(71,'Microfone de Lapela',2),(72,'Gimbal Estabilizador',3),(73,'Smart TV',1),(74,'Suporte de TV',2),(75,'Soundbar',3),(76,'Controle Remoto Smart',1),(77,'Streaming Box',2),(78,'Projetor',3),(79,'Tela de Projeção',1),(80,'Home Theater',2),(81,'Assistente Virtual Alexa',3),(82,'Lâmpada Inteligente',1),(83,'Tomada Inteligente',2),(84,'Fechadura Eletrônica',3),(85,'Câmera de Segurança Wi-Fi',1),(86,'Sensor de Movimento',2),(87,'Fita LED RGB',3),(88,'Controle Infravermelho Smart',1),(89,'Pilhas Recarregáveis',2),(90,'Carregador de Pilhas',3),(91,'Bateria 9V',1),(92,'Organizador de Cabos',2),(93,'Abraçadeira de Nylon',3),(94,'Limpa Telas',1),(95,'Ar Comprimido Aerosol',2),(96,'Ferro de Solda',3),(97,'Estanho para Solda',1),(98,'Multímetro Digital',2),(99,'Kit Chaves de Fenda',3),(100,'Pulseira Antiestática',1),(101,'Alicate de Crimpagem',2),(102,'Testador de Cabo de Rede',3),(103,'Maleta de Ferramentas',1),(106,'Maleta de Ferramentas',1),(107,'Mouse Pad',6);
/*!40000 ALTER TABLE `tb_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_entrega`
--

DROP TABLE IF EXISTS `tb_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_entrega` (
  `id_entrega` int(11) NOT NULL AUTO_INCREMENT,
  `endereco_entrega` varchar(60) NOT NULL,
  `status_entrega` smallint(1) NOT NULL COMMENT '1 - A Caminho\n2 - Entregue',
  `data_envio` date NOT NULL,
  `data_entrega` date DEFAULT NULL,
  `id_pedido` int(11) NOT NULL,
  PRIMARY KEY (`id_entrega`,`id_pedido`),
  KEY `fk_tb_entrega_tb_pedido1_idx` (`id_pedido`),
  CONSTRAINT `fk_tb_entrega_tb_pedido1` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedido` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_entrega`
--

LOCK TABLES `tb_entrega` WRITE;
/*!40000 ALTER TABLE `tb_entrega` DISABLE KEYS */;
INSERT INTO `tb_entrega` VALUES (1,'Av. Paulista, 1000 - São Paulo/SP',2,'2026-03-08','2026-03-12',1),(2,'Rua das Flores, 45 - Curitiba/PR',1,'2026-05-24',NULL,2),(3,'Rua das Flores, 45 - Curitiba/PR',1,'2026-05-25',NULL,3),(4,'Rua Alagoas, 250 - Belo Horizonte/MG',2,'2026-02-16','2026-02-20',39),(5,'Av. Atlântica, 500 - Rio de Janeiro/RJ',2,'2026-02-21','2026-02-24',40),(6,'Rua Amazonas, 12 - Manaus/AM',1,'2026-03-03',NULL,41),(7,'Av. Central, 88 - Brasília/DF',2,'2026-03-06','2026-03-10',42),(8,'Rua Bahia, 310 - Salvador/BA',2,'2026-03-11','2026-03-17',43);
/*!40000 ALTER TABLE `tb_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_favoritos`
--

DROP TABLE IF EXISTS `tb_favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_favoritos` (
  `id_favoritos` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_favoritos`),
  KEY `fk_tb_favoritos_tb_produto1_idx` (`id_produto`),
  KEY `fk_tb_favoritos_tb_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_favoritos_tb_produto1` FOREIGN KEY (`id_produto`) REFERENCES `tb_produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_favoritos_tb_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_favoritos`
--

LOCK TABLES `tb_favoritos` WRITE;
/*!40000 ALTER TABLE `tb_favoritos` DISABLE KEYS */;
INSERT INTO `tb_favoritos` VALUES (1,1,6),(2,5,6),(3,2,7),(4,3,7),(5,10,8),(6,4,9),(7,7,9),(8,12,10),(9,2,11);
/*!40000 ALTER TABLE `tb_favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_item_pedido`
--

DROP TABLE IF EXISTS `tb_item_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_item_pedido` (
  `id_item_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade_item` int(11) NOT NULL,
  `valor_unitario` decimal(10,2) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id_item_pedido`,`id_pedido`,`id_produto`),
  KEY `fk_tb_item_pedido_tb_pedido1_idx` (`id_pedido`),
  KEY `fk_tb_item_pedido_tb_produto1_idx` (`id_produto`),
  CONSTRAINT `fk_tb_item_pedido_tb_pedido1` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedido` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_item_pedido_tb_produto1` FOREIGN KEY (`id_produto`) REFERENCES `tb_produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_item_pedido`
--

LOCK TABLES `tb_item_pedido` WRITE;
/*!40000 ALTER TABLE `tb_item_pedido` DISABLE KEYS */;
INSERT INTO `tb_item_pedido` VALUES (2,2,471.00,1,1),(3,1,800.00,2,2),(5,1,800.00,2,2),(24,1,420.00,1,7),(25,2,45.90,1,14),(26,1,379.00,2,13),(27,2,89.90,2,26),(28,1,55.00,3,56),(29,3,15.00,3,55),(30,1,349.90,39,1),(31,1,189.90,39,10),(32,1,2199.00,40,2),(33,1,649.00,40,5),(34,1,899.00,41,3),(35,2,289.90,41,4);
/*!40000 ALTER TABLE `tb_item_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_marca`
--

DROP TABLE IF EXISTS `tb_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_marca` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nome_marca` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_marca`),
  KEY `fk_tb_marca_tb_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_marca_tb_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_marca`
--

LOCK TABLES `tb_marca` WRITE;
/*!40000 ALTER TABLE `tb_marca` DISABLE KEYS */;
INSERT INTO `tb_marca` VALUES (1,'Redragon',1),(2,'Acer',3),(3,'HP',3),(4,'PHILIPS',3),(5,'Logitech',1),(6,'Razer',2),(7,'Corsair',3),(8,'HyperX',1),(9,'Asus',2),(10,'Gigabyte',3),(11,'MSI',1),(12,'Samsung',2),(13,'LG',3),(14,'Dell',1),(15,'Lenovo',2),(16,'Apple',3),(17,'Xiaomi',1),(18,'Sony',2),(19,'JBL',3),(20,'Intel',1),(21,'AMD',2),(22,'Nvidia',3),(23,'Kingston',1),(24,'Crucial',2),(25,'Western Digital',3),(26,'Seagate',1),(27,'SanDisk',2),(28,'TP-Link',3),(29,'D-Link',1),(30,'Intelbras',2),(31,'Multilaser',3),(32,'Positivo',1),(33,'Warrior',2),(34,'Fortrek',3),(35,'Cougar',1),(36,'Aerocool',2),(37,'Thermaltake',3),(38,'Cooler Master',1),(39,'EVGA',2),(40,'Galax',3),(41,'Zotac',1),(42,'Aorus',2),(43,'BenQ',3),(44,'AOC',1),(45,'ViewSonic',2),(46,'Huawei',3),(47,'Motorola',1),(48,'Realme',2),(49,'Infinix',3),(50,'TCL',1),(51,'Toshiba',2),(52,'Panasonic',3),(53,'Epson',1),(54,'Canon',2),(55,'Nikon',3),(56,'Brother',1),(57,'Sennheiser',2),(58,'Audio-Technica',3),(59,'Beats',1),(60,'Anker',2),(61,'Baseus',3),(62,'UGreen',1),(63,'Elgato',2),(64,'Shure',3),(65,'Rode',1),(66,'Nintendo',2),(67,'PlayStation',3),(68,'Xbox',1),(69,'SteelSeries',2),(70,'Bloody',3),(71,'Ducky',1),(72,'Keychron',2),(73,'Akko',3),(74,'Mancer',1),(75,'Pichau',2),(76,'Terabyte',3),(77,'Redmi',1),(78,'Poco',2),(79,'OnePlus',3),(80,'Google',1),(81,'Amazon',2),(82,'Microsoft',3),(83,'Linksys',1),(84,'Netgear',2),(85,'Synology',3),(86,'Asustor',1),(87,'Hikvision',2),(88,'Intelbras',3),(89,'Gorenje',1),(90,'Midea',2),(91,'Philco',3),(92,'Mondial',1),(93,'Britânia',2),(94,'Oster',3),(95,'Cadence',1),(96,'Arno',2),(97,'Wap',3),(98,'Karcher',1),(99,'Makita',2),(100,'DeWalt',3),(101,'Bosch',1),(102,'Vonder',2),(103,'Tramontina',3),(104,'Taschibra',1);
/*!40000 ALTER TABLE `tb_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagamento`
--

DROP TABLE IF EXISTS `tb_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pagamento` (
  `id_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_pagamento` smallint(1) NOT NULL COMMENT '1 - Dinheiro\n2 - PIX\n3 - Débito\n4 - Crédito\n5 - Boleto',
  `status_pagamento` smallint(1) NOT NULL COMMENT '1 - Em Análise\n2 - Aprovado',
  `valor_pagamento` decimal(10,2) NOT NULL,
  `data_pagamento` date NOT NULL,
  `obs_desconto` varchar(200) DEFAULT NULL,
  `id_pedido` int(11) NOT NULL,
  PRIMARY KEY (`id_pagamento`,`id_pedido`),
  KEY `fk_tb_pagamento_tb_pedido1_idx` (`id_pedido`),
  CONSTRAINT `fk_tb_pagamento_tb_pedido1` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedido` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagamento`
--

LOCK TABLES `tb_pagamento` WRITE;
/*!40000 ALTER TABLE `tb_pagamento` DISABLE KEYS */;
INSERT INTO `tb_pagamento` VALUES (1,2,2,360.00,'2026-05-22',NULL,1),(2,2,2,1.00,'2026-03-07',NULL,1),(3,5,1,2.00,'2026-05-22',NULL,2),(4,4,1,3.00,'2026-05-23',NULL,3),(5,2,2,350.00,'2026-02-15',NULL,39),(6,4,2,2199.00,'2026-02-20',NULL,40),(7,5,1,899.00,'2026-03-01',NULL,41),(8,2,2,290.00,'2026-03-05',NULL,42),(9,3,2,649.00,'2026-03-10',NULL,43),(10,4,1,390.00,'2026-03-15',NULL,44),(11,2,2,420.00,'2026-03-20',NULL,45);
/*!40000 ALTER TABLE `tb_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedido`
--

DROP TABLE IF EXISTS `tb_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pedido` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `data_pedido` date NOT NULL,
  `status_pedido` smallint(1) NOT NULL COMMENT '1 - Em Análise\n2 - Confirmado',
  `total_pedido` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_tb_pedido_tb_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_pedido_tb_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedido`
--

LOCK TABLES `tb_pedido` WRITE;
/*!40000 ALTER TABLE `tb_pedido` DISABLE KEYS */;
INSERT INTO `tb_pedido` VALUES (1,'2026-03-07',2,1,2),(2,'2026-05-22',1,2,5),(3,'2026-05-23',1,3,5),(39,'2026-02-15',2,350,6),(40,'2026-02-20',2,2199,7),(41,'2026-03-01',1,899,8),(42,'2026-03-05',2,290,9),(43,'2026-03-10',2,649,10),(44,'2026-03-15',1,390,11),(45,'2026-03-20',2,420,12),(46,'2026-03-25',2,499,13),(47,'2026-04-01',1,460,14),(48,'2026-04-05',2,190,15),(49,'2026-04-10',2,215,16),(50,'2026-04-15',1,900,17),(51,'2026-04-20',2,379,18),(52,'2026-04-25',2,46,19),(53,'2026-05-01',1,60,20);
/*!40000 ALTER TABLE `tb_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_produto`
--

DROP TABLE IF EXISTS `tb_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(50) NOT NULL,
  `descricao_produto` varchar(200) NOT NULL,
  `valor_produto` decimal(10,2) NOT NULL,
  `estoque_produto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `fk_tb_produto_tb_categoria1_idx` (`id_categoria`),
  KEY `fk_tb_produto_tb_marca1_idx` (`id_marca`),
  KEY `fk_tb_produto_tb_usuario1_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_produto_tb_categoria1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produto_tb_marca1` FOREIGN KEY (`id_marca`) REFERENCES `tb_marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produto_tb_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (1,'Teclado RGB','Teclado Gamer Mecânico',235.50,100,1,1,1),(2,'Monitor IPS','Monitor 27\" 160Hz',800.00,5,2,4,3),(3,'Gabinete Gamer ATX','Gabinete com lateral em vidro temperado e 3 fans RGB',349.90,25,4,31,3),(4,'Placa de Vídeo RTX 4060','Placa de vídeo 8GB GDDR6 Ray Tracing',2199.00,12,5,6,3),(5,'Processador Ryzen 5 5600X','Processador 6 Cores 12 Threads 3.7GHz',899.00,18,6,17,3),(6,'Memória RAM 16GB DDR4','Módulo de memória 3200MHz com dissipador',289.90,45,7,19,3),(7,'Placa-Mãe B550M','Placa-mãe Socket AM4 para processadores AMD',649.00,15,8,5,3),(8,'Fonte 650W 80 Plus','Fonte de alimentação PFC Ativo Bronze',389.50,30,9,3,3),(9,'SSD NVMe 1TB','SSD M.2 velocidade de leitura até 3500MB/s',420.00,50,10,21,3),(10,'HD Externo 2TB','HD portátil USB 3.0 para backup',499.00,20,11,22,3),(11,'Water Cooler 240mm','Sistema de refrigeração líquida com fans ARGB',459.90,8,13,34,3),(12,'Headset Gamer 7.1','Fone de ouvido com som surround e microfone removível',189.90,60,16,4,3),(13,'Webcam Full HD 1080p','Webcam com foco automático e microfone embutido',215.00,22,18,1,3),(14,'Cadeira Gamer Ergonômica','Cadeira com ajuste de altura e inclinação até 180 graus',899.90,7,21,29,3),(15,'Roteador Wi-Fi 6','Roteador Gigabit Dual Band de alta velocidade',379.00,14,27,24,3),(16,'Pen Drive 64GB','Pen drive USB 3.0 ultra rápido',45.90,120,34,23,3),(17,'Cabo HDMI 2.1 2m','Cabo blindado com suporte a resolução 8K',59.90,200,37,58,3),(18,'Filtro de Linha 5 Tomadas','Filtro com fusível de proteção contra surtos',39.90,85,40,26,3),(19,'Smartphone 128GB','Celular com tela de 6.5 polegadas e câmera tripla',1399.00,10,43,13,3),(20,'Smartwatch Bluetooth','Relógio inteligente com monitor cardíaco e GPS',249.00,33,45,42,3),(21,'Notebook Core i5','Notebook 8GB RAM SSD 256GB Tela 15.6 Full HD',2899.00,5,52,11,3),(22,'Controle sem Fio PS5','Controle com feedback tátil e gatilhos adaptáveis',429.00,16,57,63,3),(23,'Microfone Condensador USB','Microfone profissional para streaming e podcasts',320.00,11,17,60,3),(24,'Caixa de Som PC Bluetooth','Par de caixas acústicas com alimentação USB',99.90,40,19,15,3),(25,'Mousepad Speed XL','Mousepad gigante 900x400mm com bordas costuradas',69.90,90,20,2,3),(26,'Mesa Digitalizadora','Mesa para desenho digital com caneta sensível à pressão',299.00,13,22,1,3),(27,'Impressora Multifuncional','Impressora tanque de tinta colorida com Wi-Fi',949.00,6,23,49,3),(28,'Repetidor de Sinal Wi-Fi','Repetidor de tomada para expandir cobertura da rede',89.90,55,28,24,3),(29,'Hub USB 4 Portas','Hub USB 3.0 com interruptores individuais por porta',54.90,70,33,57,3),(30,'Cartão de Memória 128GB','Cartão MicroSD Classe 10 com adaptador',89.00,110,35,23,3),(31,'Nobreak 1200VA','Nobreak senoidal interativo para computadores',750.00,4,42,26,3),(32,'Carregador Portátil 20000mAh','Power bank com carregamento rápido e duas saídas',169.90,42,46,56,3),(33,'Fone de Ouvido TWS','Fone intra-auricular totalmente sem fio com case',129.90,65,48,13,3),(34,'Suporte Articulado Monitor','Suporte de mesa com pistão a gás para telas até 32',219.00,28,2,53,3),(35,'Pasta Térmica de Prata','Seringa de pasta térmica de alta condutividade',35.00,150,15,34,3),(36,'Cooler Fan 120mm RGB','Ventoinha para gabinete com controle de cores',49.90,95,14,32,3),(37,'Cabo DisplayPort 1.4','Cabo para monitores de alta taxa de atualização',45.00,130,38,58,3),(38,'Suporte para Notebook Ergonômico','Suporte de alumínio com regulagem de inclinação',79.90,48,53,57,3),(39,'Película de Vidro 3D','Película de proteção para tela de smartphone',19.90,300,49,57,3),(40,'Capa Anti-Impacto Celular','Capinha transparente de silicone reforçado',29.90,250,50,57,3),(41,'Volante para Jogos PC/PS4','Volante com pedais e force feedback',1499.00,3,59,1,3),(42,'Óculos de Realidade Virtual','Headset VR autônomo com controles',3199.00,2,60,76,3),(43,'Jogo de Chaves de Fenda','Kit de ferramentas de precisão para eletrônicos',59.90,35,96,95,3),(44,'Pulseira Antiestática','Pulseira de aterramento para manutenção de PCs',25.00,80,97,57,3),(45,'Lâmpada Inteligente Wi-Fi','Lâmpada LED RGB compatível com assistentes de voz',49.00,140,79,77,3),(46,'Tomada Inteligente 16A','Plugue de tomada Wi-Fi com monitoramento de energia',69.90,75,80,77,3),(47,'Assistente Virtual Smart','Caixa de som inteligente com comandos de voz',329.00,20,78,77,3),(48,'Câmera de Segurança Externa','Câmera IP Wi-Fi à prova dágua Full HD',289.00,17,82,26,3),(49,'Fita LED RGB 5 metros','Fita de iluminação decorativa com controle remoto',59.90,60,84,4,3),(50,'Pilhas Recarregáveis AA','Blister com 4 unidades de pilhas de alta duração',79.90,90,86,48,3),(51,'Carregador de Pilhas Rápido','Carregador bivolt para pilhas AA e AAA',65.00,40,87,48,3),(52,'Organizador de Cabos Velcro','Rolo de fita velcro de 3 metros para fios',22.50,110,89,57,3),(53,'Limpa Telas Spray','Kit com líquido limpador e pano de microfibra',18.90,130,91,57,3),(54,'Multímetro Digital Portátil','Multímetro para medição de tensão e corrente',85.00,24,95,97,3),(55,'Alicate de Crimpagem RJ45','Ferramenta para montagem de cabos de rede',49.90,30,98,97,3),(56,'Testador de Cabo de Rede','Testador eletrônico para cabos RJ45 e RJ11',39.90,45,99,26,3),(57,'Estanho para Solda 1mm','Tubo de fio de solda estanho de 25g',15.00,160,94,57,3),(58,'Ferro de Solda 60W','Ferro de soldar profissional com suporte',55.00,27,93,95,3),(59,'Maleta de Ferramentas Vazia','Maleta plástica organizadora com divisórias',79.00,19,100,98,3),(60,'Switch de Rede 8 Portas','Switch Desktop Gigabit não gerenciável',139.90,21,26,24,3),(61,'Cabo de Rede Cat6 10m','Cabo montado azul com conectores blindados',45.00,140,27,26,3),(62,'Adaptador USB Bluetooth 5.0','Mini dongle receptor para PC',39.90,95,29,57,3),(63,'Placa de Rede PCI Express','Placa de rede interna Gigabit Ethernet',69.90,38,30,24,3),(64,'Carregador de Parede 20W','Plugue de tomada com saída USB-C Turbo',89.00,85,47,56,3),(65,'Suporte Veicular Celular','Suporte magnético para grade de ar condicionado',29.90,100,51,57,3),(66,'Base Cooler Notebook','Base com 4 fans iluminados e ajuste de altura',119.90,23,55,33,3),(67,'Maleta para Notebook 15.6','Bolsa executiva acolchoada com alça',139.00,16,54,10,3),(68,'Streaming Box 4K','Dispositivo de streaming com controle remoto por voz',399.00,14,74,76,3),(69,'Soundbar para TV','Barra de som com subwoofer sem fio de 120W',699.00,9,72,9,3),(70,'Projetor Full HD Smart','Projetor de imagem portátil com sistema embutido',1499.00,4,75,49,3),(71,'Fechadura Digital de Embutir','Fechadura eletrônica com abertura por senha e tag',489.00,8,81,26,3),(72,'Cartucho de Tinta Preto','Cartucho de tinta original de alto rendimento',89.90,75,24,3,3),(73,'Toner de Impressora Laser','Cartucho de toner preto compatível',120.00,32,25,51,3),(74,'Scanner de Documentos Mesa','Scanner fotográfico colorido flatbed',549.00,5,25,50,3),(75,'Tripé para Câmera Amador','Tripé de alumínio com altura até 1.50m',115.00,22,64,57,3),(76,'Iluminação Ring Light 10','Iluminador LED com tripé de mesa e suporte celular',59.90,50,65,57,3),(77,'Microfone de Lapela P2','Microfone omnidirecional para gravadores e celulares',45.00,85,68,59,3),(78,'Gimbal para Smartphone','Estabilizador de imagem de 3 eixos para vídeos',599.00,7,69,76,3),(79,'Smart TV 50 Polegadas','Televisor 4K UHD com comando de voz',2199.00,6,70,8,3),(80,'Suporte Fixo de TV','Suporte universal de parede para telas de 32 a 75',49.90,110,71,57,3),(81,'Abraçadeira de Nylon 100un','Pacote com fitas plásticas pretas para fixação',12.90,210,90,99,3),(82,'Ar Comprimido em Lata','Lata de spray removedor de poeira para eletrônicos',34.90,65,92,57,3),(83,'Bateria 9V Alcalina','Bateria de alta potência para equipamentos de áudio',24.90,140,88,57,3),(84,'Sensor de Presença Wi-Fi','Sensor de movimento inteligente para alarmes',79.90,34,83,26,3),(85,'Controle Remoto Universal','Controle inteligente infravermelho via aplicativo',89.00,40,85,77,3),(86,'Home Theater Sound System','Sistema de som surround 5.1 canais',1299.00,3,77,14,3),(87,'Tela de Projeção Retrátil','Tela de projeto 100 polegadas manual',349.00,8,76,57,3),(88,'Bateria para Câmera DSLR','Bateria recarregável de íons de lítio',159.00,15,67,50,3),(89,'Softbox de Iluminação','Kit de iluminação contínua com tripé e lâmpada',269.90,12,66,57,3),(90,'Lente Fotográfica 50mm f/1.8','Lente prime de alta abertura para retratos',799.00,8,63,50,3),(91,'Gift Card Digital R$ 50','Cartão pré-pago para loja de aplicativos/jogos',50.00,999,61,78,3),(92,'Jogo de Nintendo Switch','Mídia física de jogo de aventura exclusivo',329.00,14,60,62,3),(93,'Jogo de Xbox Series X','Mídia física de simulador de corrida da nova geração',249.00,19,59,64,3),(94,'Carregador de Controle Duplo','Base de carregamento rápido para 2 joysticks',89.90,27,58,57,3),(95,'Console de Videogame Portátil','Console de bolso retrô com jogos embutidos',299.00,15,56,13,3),(96,'Filtro de Linha Pro 8 Tomadas','Filtro profissional com tomadas espaçadas e USB',89.90,42,40,26,3),(97,'Cabo USB-C para USB-C 1m','Cabo de dados e carga rápida de 60W nylon',39.90,180,39,58,3),(98,'Leitor de Cartão de Memória','Adaptador USB externo para ler cartões SD e MicroSD',34.90,75,36,58,3),(99,'Placa de Rede Wi-Fi USB','Adaptador de rede wireless com antena externa',59.90,63,31,24,3),(100,'Tablet 10 Polegadas Wi-Fi','Tablet com 64GB de armazenamento interno Android',899.00,11,44,2,3),(101,'Película de Privacidade','Película fosca que esconde a tela lateralmente',29.90,140,49,57,3),(102,'Mondial Air Fryer','Fritadeira sem óleo para cozinha preta',399.00,20,1,88,3);
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(60) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `senha_usuario` varchar(8) NOT NULL,
  `tipo_usuario` smallint(1) NOT NULL COMMENT '1 - ADM\n2 - CLIENTE',
  `data_cadastro` date NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_usuario_UNIQUE` (`email_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'João Pedro','j_pedro@gmail.com','jpr321',2,'2026-03-07'),(2,'Bruno Solza','bru_solza@gmail.com','brs999',2,'2026-03-07'),(3,'Marcos Vinicius','marcao@gmail.com','12345678',1,'2026-05-22'),(5,'Adalberto Fontes','adalberto@gmail.com','af123',2,'2026-05-22'),(6,'Ana Silva','ana.silva@gmail.com','ans452',2,'2026-01-15'),(7,'Carlos Eduardo','cadu.edu@hotmail.com','carl2026',2,'2026-01-20'),(8,'Mariana Costa','mari_costa92@gmail.com','mrcst92',2,'2026-02-02'),(9,'Rodrigo Santos','rodrigo.santos@outlook.com','rdsnt99',2,'2026-02-10'),(10,'Juliana Lima','ju_lima@yahoo.com.br','july778',2,'2026-02-18'),(11,'Lucas Oliveira','lucas.oli@gmail.com','lksolv88',2,'2026-02-25'),(12,'Beatriz Rocha','bia.rocha@gmail.com','biaroch4',2,'2026-03-01'),(13,'Gabriel Almeida','gabriel.almeida@live.com','gbalm96',2,'2026-03-05'),(14,'Amanda Martins','amanda.m@gmail.com','amdmrt22',2,'2026-03-12'),(15,'Rafael Ribeiro','rafa.ribeiro@outlook.com','rfrib85',2,'2026-03-19'),(16,'Larissa Carvalho','lari.carvalho@gmail.com','lrcrv01',2,'2026-03-22'),(17,'Felipe Gomes','felipe.gomes@hotmail.com','fpgms93',2,'2026-03-29'),(18,'Camila Rodrigues','cami.rod@gmail.com','cmrod123',2,'2026-04-03'),(19,'Gustavo Pereira','gustavo.p@yahoo.com','gstvp74',2,'2026-04-07'),(20,'Letícia Alves','leticia.alves@gmail.com','letalv90',2,'2026-04-14'),(21,'Thiago Melo','thiago.melo@outlook.com','thgmlo81',2,'2026-04-20'),(22,'Fernanda Souza','fer.souza@gmail.com','frsz2026',2,'2026-04-25'),(23,'Matheus Cunha','matheus.cunha@gmail.com','mthcnh55',2,'2026-05-02'),(24,'Isabela Mendes','isa.mendes@live.com','isamnd88',2,'2026-05-08'),(25,'Diego Ferreira','diego.ferreira@gmail.com','dgfrr44',2,'2026-05-13'),(26,'Caroline Barbosa','carol.barbosa@hotmail.com','crlbbs10',2,'2026-05-19'),(27,'Leonardo Castro','leo.castro@gmail.com','leocst33',2,'2026-05-24'),(28,'Vanessa Cardoso','vanessa.c@outlook.com','vncrd91',2,'2026-06-01'),(29,'Danilo Ramos','danilo.ramos@gmail.com','dnlrms72',2,'2026-06-05'),(30,'Patricia Teixeira','paty.tex@gmail.com','ptytex00',2,'2026-06-10'),(31,'Renan Fonseca','renan.f@yahoo.com','rnnfnc86',2,'2026-06-14'),(32,'Aline Nogueira','aline.nog@gmail.com','alnog20',2,'2026-06-18'),(33,'Bruno Cesar','bruno.cesar@outlook.com','brcsr97',2,'2026-06-22'),(34,'Priscila Vieira','pri.vieira@gmail.com','privir52',2,'2026-06-25'),(35,'Vitor Machado','vitor.machado@gmail.com','vtmch31',2,'2026-06-26');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_ecommerce_sql'
--

--
-- Dumping routines for database 'db_ecommerce_sql'
--
/*!50003 DROP PROCEDURE IF EXISTS `proc_registrar_acesso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_registrar_acesso`(in id int)
BEGIN
INSERT INTO tb_log (data, usuario_id) VALUES (now(), id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-15 16:46:46
