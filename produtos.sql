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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'geladeira','Geladeira Frost Free Brastemp Side Inverse 540 litros',6389.00,5019.00,'produtos/geladeira_brastemp.jpg'),(2,'geladeira','Geladeira Frost Free Brastemp Branca 375 litros',2068.60,1910.90,'produtos/geladeira-brastemp_branca.jpg'),(3,'geladeira','Geladeira Frost Free Consul Prata 340 litros',2199.99,2069.00,'produtos/geladeira_consul.jpg'),(4,'fogao','Fogão 4 Bocas Consul Inox com Mesa de Vidro',1299.99,1129.00,'produtos/fog%C3%A3o_consul.jpg'),(5,'fogao','Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático',699.99,519.70,'produtos/fog%C3%A3o_monaco.jpg'),(6,'microondas','Micro-ondas Consul 32 Litros Inox 220V',589.99,409.88,'produtos/micro-ondas_consul.jpg'),(7,'microondas','Micro-ondas 25L Espelhado Philco 220V',508.70,464.53,'produtos/micro-ondas_philco.jpg'),(8,'microondas','Micro-ondas Electrolux 20L Branco',459.99,436.05,'produtos/micro-ondas_electrolux.jpg'),(9,'lava_roupas','Lavadora de Roupas Brastemp 11 kg com Turbo Performance Branca',1699.00,1214.10,'produtos/lavadora_brastemp.jpg'),(10,'lava_roupas','Lavadora de Roupas Philco Inverter 12kg',2399.99,2179.90,'produtos/lavadora_philco.jpg'),(11,'lava_loucas','Lava-Louças Electrolux Inox com 10 Seviços, 06 Programas de Lavagem e Painel Blue Touch',3599.99,2799.90,'produtos/lava-lou%C3%A7a_electrolux.jpg'),(12,'lava_loucas','Lava-Louças Compacta 8 Serviços Branca 127V Brastemp',1979.59,1730.61,'produtos/lava-lou%C3%A7a_brastemp.jpg');
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

-- Dump completed on 2020-10-26 22:11:04
