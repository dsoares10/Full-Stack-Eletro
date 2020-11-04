-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `produto` varchar(150) NOT NULL,
  `valor_unitario` decimal(8,2) DEFAULT NULL,
  `quantidade` decimal(8,2) DEFAULT NULL,
  `valor total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idpedidos`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Danilo Maturana','Rua Santiago errer','(11) 91111-1111','Lava-Louças Electrolux Inox com 10 Seviços, 06 Programas de Lavagem e Painel Blue Touch',2799.90,1.00,2799.90),(2,'Marcos Besi','Av. Vaticano','(11) 92222-2222','Geladeira Frost Free Brastemp Branca 375 litros',1910.90,1.00,1910.90),(3,'Karolina Ribeiro','Rua Padre Antônio Bellavia','(11) 93333-3333','Micro-ondas 25L Espelhado Philco 220V',464.53,1.00,464.53),(4,'Victor cruz','Rua Afonso Cunha','(11) 94444-4444','Lavadora de Roupas Philco Inverter 12kg',2179.90,1.00,2179.90),(5,'Analina Morgana','Rua Padre Marçal Rodrigues','(11) 95555-5555','Micro-ondas Electrolux 20L Branco',436.05,1.00,436.05),(6,'Caroline Soares','Rua Tancredi Mantovani','(11) 96666-6666','Lavadora de Roupas Brastemp 11 kg com Turbo Performance Branca',1214.10,1.00,1214.10),(7,'','',NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 23:24:27
