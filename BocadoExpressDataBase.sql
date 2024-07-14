CREATE DATABASE  IF NOT EXISTS "bocado_express" /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bocado_express`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: mysql-bocado-express-bd-bocado-express.d.aivencloud.com    Database: bocado_express
-- ------------------------------------------------------
-- Server version	8.0.30

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '651d7a27-3410-11ef-afb8-5ad09fa7af94:1-335,
765689f6-3002-11ef-8c65-3e2bf34c0c65:1-57';

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Disponible'),(2,'No Disponible');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fechaHora` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `direccionEnvio` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `precioTotal` int NOT NULL,
  `tipoEntrega` varchar(255) NOT NULL,
  `nombreCliente` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2024-07-12 01:25:03.661455','Barrio La Merced','3888675908','Que llegue caliente',18900,'Delivery','Franco Luna'),(2,'2024-07-12 01:32:02.703695','24 de septiembre','3888672020','las hamburguesas sin cheddar, que sean con tibo',36200,'Delivery','Martin Flores'),(3,'2024-07-12 01:39:02.470693','cabildo 234','3888453267','sandwich sin verduras',10600,'Retiro en Local','Alex Vega'),(4,'2024-07-12 01:42:27.400022','cosentini m11 L8','3888125432','hamburguesa sin cebolla',15200,'Delivery','Mauro Gonzalez'),(5,'2024-07-12 01:47:25.160378','libertador 345','3888569832','papas sin cheddar y con aji',14000,'Delivery','Brian Silva'),(6,'2024-07-12 01:50:35.668765','sarmiento 345','3888125489','papas sin bacon',11800,'Retiro en Local','Ezequiel Valdiviezo'),(7,'2024-07-12 01:52:25.795782','superi 231','3888236790','que este caliente',31900,'Retiro en Local','Fabian Fernandez'),(8,'2024-07-12 01:57:30.567758','San Martin 74','3888475254','Pan crocante',15600,'Delivery','Juan Carlos Rodriguez'),(9,'2024-07-12 02:08:55.481268','gorriti 876','3888925376','sin aderezos',15300,'Retiro en Local','Luis Sanchez'),(10,'2024-07-12 17:19:57.924033','facundo quiroga 89','3888675908','sin queso',11700,'Retiro en Local','Franco Luna'),(11,'2024-07-12 21:21:59.041955','la merced','3888675908','sin queso',11400,'Delivery','Franco Luna'),(12,'2024-07-12 22:11:48.919204','Av. Cabildo 250','3886','Vega',8500,'Delivery','Alex');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_producto`
--

DROP TABLE IF EXISTS `pedido_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `pedidoId` int DEFAULT NULL,
  `productoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6085b3aa6d0d1aec5985d3cb2ce` (`pedidoId`),
  KEY `FK_da007c96a1af3dbf6a925bf6581` (`productoId`),
  CONSTRAINT `FK_6085b3aa6d0d1aec5985d3cb2ce` FOREIGN KEY (`pedidoId`) REFERENCES `pedido` (`id`),
  CONSTRAINT `FK_da007c96a1af3dbf6a925bf6581` FOREIGN KEY (`productoId`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_producto`
--

LOCK TABLES `pedido_producto` WRITE;
/*!40000 ALTER TABLE `pedido_producto` DISABLE KEYS */;
INSERT INTO `pedido_producto` VALUES (1,2,1,5),(2,1,1,6),(3,1,1,11),(4,2,2,3),(5,1,2,12),(6,2,2,14),(7,1,3,5),(8,1,3,8),(9,1,4,1),(10,1,4,9),(11,1,5,13),(12,1,5,15),(13,2,6,6),(14,1,6,10),(15,2,7,4),(16,1,7,9),(17,2,7,14),(18,1,8,15),(19,1,8,14),(20,1,9,14),(21,1,9,12),(22,2,10,5),(23,1,10,6),(24,2,11,2),(25,1,12,1);
/*!40000 ALTER TABLE `pedido_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `estadoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d47c7de13b6fce79db3c30506ad` (`estadoId`),
  CONSTRAINT `FK_d47c7de13b6fce79db3c30506ad` FOREIGN KEY (`estadoId`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Baymax Burger','Triple carne, triple cheddar, tocino, huevo, cebolla, tomate, lechuga, mayonesa, ketchup',8500.00,'https://i.ibb.co/hys27F6/baymax-burger.jpg',1),(2,'Increible Burger','Doble carne, doble cheddar, mayonesa, mostaza',5700.00,'https://i.ibb.co/vsLhWq5/increible-burger.jpg',1),(3,'Krusty Burger','Una carne, cheddar, huevo, tomate, lechuga, mayonesa, salsa golf',6200.00,'https://i.ibb.co/1LBKKgZ/krusty-burger.jpg',1),(4,'Kick Burger','Una carne, cheddar, mayonesa, ketchup',4100.00,'https://i.ibb.co/W06bKzr/kick-burger.jpg',1),(5,'Lomito Especial','Lomito con papas,  jamon, queso, lechuga y tomate',4600.00,'https://i.ibb.co/YhvDwNT/lomito-especial.jpg',1),(6,'Papas Americana','Papas con cheddar y bacon',2500.00,'https://i.ibb.co/WGf2JYX/papa-con-cheddar.jpg',1),(7,'Fugazzeta','Pizza con extra cebolla ',5500.00,'https://i.ibb.co/z2dqLLM/pizza-con-cebolla.jpg',1),(8,'Cantinpalo','Pizza con continpalo',6000.00,'https://i.ibb.co/QpJsfgY/pizza-especial-cantinpalo.jpg',1),(9,'Calabresa','Pizza al estilo calabresa',6700.00,'https://i.ibb.co/F56XbcL/pizza-cantinpalo.jpg',1),(10,'Tentacion','Pizza al estilo Aleman',6800.00,'https://i.ibb.co/7205H8Q/pizza-especial.jpg',1),(11,'Especial','Especial  con doble jamon',7200.00,'https://i.ibb.co/QDbVfCv/pizza-especial-con-jamon.jpg',1),(12,'Especial huevo','Pizza  especial con huevo',6800.00,'https://i.ibb.co/k4nWPTZ/pizza-especial-con-huevo.jpg',1),(13,'Muzzarella','Pizza con doble muzzarella',6900.00,'https://i.ibb.co/c1HsLy7/muzzarella.jpg',1),(14,'Burger Triple','Triple carne, triple  huevo',8500.00,'https://i.ibb.co/Bt8wHYw/hamburguesa-tripe.jpg',1),(15,'Burger con  papas','Hamburguesa con papa y cheddar',7100.00,'https://i.ibb.co/8rDmm7X/hamburguesa-con-papas.jpg',1),(17,'Lomito completo','Lomito con   doble huevo',6500.00,'https://i.ibb.co/MPmz9CJ/sandwich-con-doble-huevo.jpg',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-13 23:39:57
