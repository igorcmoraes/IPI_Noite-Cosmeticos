CREATE DATABASE  IF NOT EXISTS `cosmeticos` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cosmeticos`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cosmeticos
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `nome` varchar(50) NOT NULL,
  `cpf` char(14) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `Endereco` varchar(60) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Simone Brito','012.345.678-09','s1234senha','simone.brito@example.com','Avenida J, 468 - Cidade J'),('Maria Silva','123.456.789-00','senha123','maria.silva@example.com','Rua A, 123 - Cidade A'),('Thiago Oliveira','123.456.789-10','senhaTh!ago','thiago.oliveira@example.com','Rua K, 579 - Cidade K'),('João Pereira','234.567.890-01','minhaSenha!','joao.pereira@example.com','Avenida B, 456 - Cidade B'),('Renata Costa','234.567.890-11','renata@senha2023','renata.costa@example.com','Avenida L, 680 - Cidade L'),('Ana Santos','345.678.901-02','abc1234','ana.santos@example.com','Rua C, 789 - Cidade C'),('Roberto Pinto','345.678.901-12','roberto123','roberto.pinto@example.com','Rua M, 791 - Cidade M'),('Carlos Morais','456.789.012-03','carlos@2023','carlos.morais@example.com','Rua D, 321 - Cidade D'),('Débora Tavares','456.789.012-13','debora@senha','debora.tavares@example.com','Avenida N, 802 - Cidade N'),('Lucas Ferreira','567.890.123-04','minhaSenha2023','lucas.ferreira@example.com','Avenida E, 654 - Cidade E'),('Vitor Nascimento','567.890.123-14','vitor2023','vitor.nascimento@example.com','Rua O, 913 - Cidade O'),('Julia Martins','678.901.234-05','senhaSegura','julia.martins@example.com','Rua F, 987 - Cidade F'),('Fernando Almeida','789.012.345-06','f.almeida123','fernando.almeida@example.com','Rua G, 135 - Cidade G'),('Patricia Rodrigues','890.123.456-07','senhaPatricia','patricia.rodrigues@example.com','Avenida H, 246 - Cidade H'),('Gabriel Souza','901.234.567-08','g@briel2023','gabriel.souza@example.com','Rua I, 357 - Cidade I');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `data_venda` date DEFAULT NULL,
  `preco` int NOT NULL,
  `quantidade_produto` varchar(100) DEFAULT NULL,
  `forma_pagamento` enum('pix','dinheiro','cartao') DEFAULT NULL,
  `stat` enum('enviado','chegando','entregue') DEFAULT NULL,
  `cpf_cliente` char(14) NOT NULL,
  `ID_produtos` int NOT NULL AUTO_INCREMENT,
  KEY `cpf_cliente` (`cpf_cliente`),
  KEY `ID_produtos` (`ID_produtos`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`cpf`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`ID_produtos`) REFERENCES `produto` (`ID_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES ('2024-03-15',100,'5','pix','enviado','234.567.890-01',1),('2024-04-10',46,'3','dinheiro','chegando','345.678.901-02',2),('2024-05-22',120,'2','cartao','entregue','567.890.123-04',3),('2024-01-09',75,'4','pix','enviado','678.901.234-05',4),('2024-02-18',55,'6','dinheiro','chegando','789.012.345-06',5),('2024-06-25',31,'1','cartao','entregue','890.123.456-07',6),('2024-07-30',89,'7','pix','enviado','901.234.567-08',7),('2024-08-12',111,'3','dinheiro','chegando','012.345.678-09',8),('2024-09-05',65,'4','cartao','entregue','123.456.789-10',9),('2024-10-20',150,'2','pix','enviado','234.567.890-11',10),('2024-11-14',80,'5','dinheiro','chegando','345.678.901-12',11),('2024-12-03',36,'8','cartao','entregue','456.789.012-13',12),('2024-01-25',141,'1','pix','enviado','456.789.012-03',13),('2024-02-09',95,'6','dinheiro','chegando','567.890.123-14',14),('2024-03-28',50,'3','cartao','entregue','123.456.789-00',15);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procura`
--

DROP TABLE IF EXISTS `procura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procura` (
  `descricao` text,
  `data_procura` date DEFAULT NULL,
  `cpf_cliente` char(14) NOT NULL,
  `ID_produtos` int NOT NULL AUTO_INCREMENT,
  KEY `cpf_cliente` (`cpf_cliente`),
  KEY `ID_produtos` (`ID_produtos`),
  CONSTRAINT `procura_ibfk_1` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`cpf`),
  CONSTRAINT `procura_ibfk_2` FOREIGN KEY (`ID_produtos`) REFERENCES `produto` (`ID_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procura`
--

LOCK TABLES `procura` WRITE;
/*!40000 ALTER TABLE `procura` DISABLE KEYS */;
INSERT INTO `procura` VALUES ('Uma base líquida leve que proporciona cobertura média a alta. Ideal para uniformizar o tom da pele, ela deixa um acabamento natural e é adequada para todos os tipos de pele. Disponível em várias tonalidades.','2009-12-10','234.567.890-01',1),('O corretivo é um produto essencial para esconder imperfeições, olheiras e manchas. Sua fórmula cremosa e pigmentada permite uma cobertura precisa, garantindo um olhar radiante e uma pele impecável.','2008-09-01','345.678.901-02',2),('Um pó compacto que fixa a maquiagem e controla o brilho, proporcionando um acabamento suave e matte. Perfeito para retoques ao longo do dia, ele ajuda a prolongar a durabilidade da maquiagem.','2015-07-21','567.890.123-04',3),('Sombra em diferentes acabamentos, desde matte até brilhante. Com cores vibrantes e fáceis de esfumar, este produto permite criar looks variados, do dia a dia ao mais ousado.','2024-09-17','678.901.234-05',4),('Um delineador com ponta fina que facilita a aplicação, permitindo traços precisos. Sua fórmula à prova d\'água garante longa duração, ideal para criar olhares marcantes e definidos.','2018-09-19','789.012.345-06',5),('O rímel é essencial para destacar os cílios, proporcionando volume e alongamento. Com uma fórmula que não empelota, ele realça o olhar e pode ser facilmente removido no final do dia.','2022-12-12','890.123.456-07',6),('Um batom matte de alta pigmentação que proporciona uma cor intensa e duradoura. Com uma fórmula cremosa, ele desliza suavemente nos lábios, garantindo conforto e um acabamento impecável.','2012-12-12','901.234.567-08',7),('O iluminador adiciona um brilho sutil às áreas do rosto que você deseja destacar. Disponível em várias tonalidades, ele é perfeito para realçar as maçãs do rosto, arco do cupido e o nariz.','2013-12-13','012.345.678-09',8),('O blush oferece um toque de cor às bochechas, proporcionando um aspecto saudável e radiante. Com fórmulas em pó ou creme, ele é fácil de aplicar e difundir para um acabamento natural.','2023-08-09','123.456.789-10',9),('Um lápis de olho que desliza facilmente, permitindo uma aplicação rápida e precisa. Ideal para criar linhas definidas ou esfumar para um look mais suave, disponível em várias cores.','2021-09-02','234.567.890-11',10),('A esponja de maquiagem é ideal para aplicar base, corretivo e outros produtos líquidos. Seu formato versátil permite um acabamento uniforme e natural, absorvendo a quantidade certa de produto.','2023-08-06','345.678.901-12',11),('Um kit de pincéis de maquiagem essencial para qualquer amante de maquiagem. Inclui pincéis para olhos, rosto e lábios, feitos com fibras macias e duráveis para uma aplicação perfeita.','2023-09-17','456.789.012-13',12),('Um removedor de maquiagem suave e eficaz que remove até a maquiagem mais resistente. Formulado para limpar a pele sem irritá-la, deixando-a fresca e hidratada.','2012-09-11','567.890.123-14',14),('Um esmalte de unhas com alta cobertura e brilho duradouro. Disponível em uma ampla gama de cores, ele proporciona uma aplicação suave e seca rapidamente, ideal para unhas impecáveis.','2019-02-09','123.456.789-00',15),('Uma lixa de unha de alta qualidade que ajuda a modelar e suavizar as unhas. Com diferentes grãos, é perfeita para um acabamento profissional em casa.','2023-08-12','456.789.012-03',13);
/*!40000 ALTER TABLE `procura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `nome_produto` varchar(30) NOT NULL,
  `ID_produto` int NOT NULL AUTO_INCREMENT,
  `estoque` int NOT NULL,
  PRIMARY KEY (`ID_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES ('Base Líquida',1,50),('Corretivo',2,30),('Pó Compacto',3,20),('Sombra',4,40),('Delineador',5,25),('Rímel',6,35),('Batom Matte',7,60),('Iluminador',8,15),('Blush',9,45),('Lápis de Olho',10,30),('Esponja de Maquiagem',11,70),('Kit de Pincéis',12,10),('Lixa de Unha',13,80),('Removedor de Maquiagem',14,55),('Esmalte',15,65);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 20:58:00
