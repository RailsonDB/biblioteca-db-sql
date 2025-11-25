CREATE DATABASE  IF NOT EXISTS `biblioteca_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca_db`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `emprestimos`
--

DROP TABLE IF EXISTS `emprestimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimos` (
  `id_emprestimo` int NOT NULL AUTO_INCREMENT,
  `id_livro` int NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date DEFAULT NULL,
  PRIMARY KEY (`id_emprestimo`),
  KEY `id_livro` (`id_livro`),
  CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (1,3,'Ana Souza','2025-01-10','2025-01-22'),(2,1,'Beatriz Lima','2025-01-15','2025-01-26'),(3,14,'Laura Mendes','2025-02-15',NULL),(4,5,'Carlos Mendes','2025-01-12','2025-01-23'),(5,6,'Fernanda Costa','2025-01-25','2025-02-07'),(6,19,'Eduardo Pacheco','2025-02-22',NULL),(7,2,'Mariana Silva','2025-01-20','2025-01-30'),(8,7,'João Pereira','2025-01-18','2025-01-28'),(9,11,'Daniela Martins','2025-02-05',NULL),(10,13,'Felipe Araujo','2025-02-08',NULL),(11,4,'Lucas Santos','2025-01-25','2025-02-06'),(12,15,'Camila Ribeiro','2025-02-10',NULL),(13,8,'Rafael Oliveira','2025-01-28','2025-02-07'),(14,10,'Patrícia Silveira','2025-02-01','2025-02-13'),(15,9,'Guilherme Alves','2025-02-03','2025-02-13'),(16,12,'Bruno Ferreira','2025-02-12',NULL),(17,17,'Juliana Ferreira','2025-02-25',NULL),(18,21,'Vanessa Lopes','2025-03-01',NULL),(19,16,'Thiago Nunes','2025-02-18',NULL),(20,4,'João Pedro','2025-02-07',NULL),(21,2,'Gisele Santos','2025-01-30','2025-01-12');
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `ano_publicacao` year NOT NULL,
  PRIMARY KEY (`id_livro`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Luzes da Cidade','Mariana Castro','Romance',2015),(2,'O Poder do Hábito','Daniel Martins','AutoAjuda',2019),(3,'O Herdeiro do Reino','Lucas Farias','Fantasia',2012),(4,'Crônicas do Futuro','Pedro Azevedo','Ficção Científica',2021),(5,'Inteligência Artificial Hoje','Diego Santos','Tecnologia',2023),(6,'Segredos de Família','Tatiane Rocha','Drama',2014),(7,'Manual da Vida Simples','Carla Mendes','AutoAjuda',2019),(8,'Caminho das Montanhas','Fernanda Lopes','Aventura',2012),(9,'O Mistério do Farol','Roberto Tavares','Suspense',2017),(10,'História da Chuva','Ana Paula','Poesia',2010),(11,'A Fórmula do Sucesso','Gustavo Henrique','Negócios',2016),(12,'Programação para Iniciantes','Marcos Vinícius','Tecnologia',2021),(13,'O Diário Perdido','Daniel Costa','Romance',2019),(14,'Ecos do Passado','Larissa Freitas','Drama',2015),(15,'A Lenda do Dragão Azul','Thiago Ribeiro','Fantasia',2013),(16,'Viagem ao Centro Digital','Bruno Martins','Tecnologia',2020),(17,'O Jogo da Mente','Patrícia Souza','Psicologia',2022),(18,'Mistérios da Cidade Velha','Renato Alves','Suspense',2018),(19,'Além do Horizonte','Camila Torres','Aventura',2014),(20,'O Guardião do Tempo','André Batista','Fantasia',2011),(21,'Histórias de um Café','Beatriz Costa','Drama',2013),(22,'Noite de Estrelas','Felipe Rocha','Romance',2016),(23,'A Arte da Paciência','Juliana Lima','AutoAjuda',2017),(24,'Aprendendo SQL','João Pacheco','Tecnologia',2021),(25,'Segredos do Oceano','Paula Reis','Ficção Científica',2019),(26,'Caminho das Florestas','Mariana silva','AVentura',2010),(27,'O Último Império','Lucas Andrade','Fantasia',2015),(28,'O Despertar da Mente','Thiago Fernandes','AutoAjuda',2020),(29,'Sombras da Memória','Clara Nogueira','Romance',2012),(30,'O codigo da manha','Rafaela Mende','Tecnologia',2018);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25 10:06:07
