-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `basket_idx` int NOT NULL AUTO_INCREMENT COMMENT '장바구니 인덱스',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '회원 인덱스',
  `product_idx` int NOT NULL COMMENT '상품 인덱스',
  `product_quantity` int NOT NULL COMMENT '상품 수량',
  `product_price` varchar(100) NOT NULL COMMENT '상품 가격',
  `b_rgstdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  PRIMARY KEY (`basket_idx`),
  KEY `basket_FK` (`product_idx`),
  KEY `basket_FK_1` (`user_id`),
  CONSTRAINT `basket_FK` FOREIGN KEY (`product_idx`) REFERENCES `product` (`product_idx`) ON UPDATE CASCADE,
  CONSTRAINT `basket_FK_1` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='장바구니';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `user_id` varchar(100) NOT NULL COMMENT '유저 아이디',
  `user_pw` varchar(100) NOT NULL COMMENT '유저 비밀번호',
  `user_name` varchar(100) NOT NULL COMMENT '유저 이름',
  `user_age` int DEFAULT NULL,
  `user_tel` varchar(100) NOT NULL COMMENT '유저 전화번호',
  `user_tag` varchar(100) DEFAULT NULL COMMENT '유저 태그',
  `user_addr` varchar(100) NOT NULL COMMENT '유저 주소',
  `level` int DEFAULT NULL COMMENT '관리자,유저구분',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_idx` int NOT NULL AUTO_INCREMENT COMMENT '구매인덱스',
  `payment_method` varchar(100) NOT NULL COMMENT '구매 방법',
  PRIMARY KEY (`payment_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_idx` int NOT NULL AUTO_INCREMENT COMMENT '상품인덱스',
  `product_title` varchar(100) NOT NULL COMMENT '상품명',
  `product_img` varchar(100) DEFAULT NULL COMMENT '상품 이미지',
  `product_price` int NOT NULL COMMENT '상품가격',
  `product_category` varchar(100) NOT NULL COMMENT '상품카테고리',
  `product_tag` varchar(100) DEFAULT NULL COMMENT '상품 태그',
  `product_like` int NOT NULL COMMENT '좋아요 수',
  `product_description` varchar(100) DEFAULT NULL COMMENT '상품 설명',
  `product_rgstdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '상품 등록일',
  `product_mdfydate` timestamp NULL DEFAULT NULL COMMENT '상품 수정일',
  PRIMARY KEY (`product_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'크롭트 가디건','2022-04-05 02:20:12',NULL),(2,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:23:00',NULL),(3,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(4,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(5,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(6,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(7,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(8,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(9,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(10,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(11,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,0,'가디건&풀오버','2022-04-05 02:24:29',NULL),(12,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:26',NULL),(13,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(14,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(15,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(16,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(17,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(18,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(19,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(20,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(21,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,0,'데님/진','2022-04-05 02:26:52',NULL),(22,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:27:57',NULL),(23,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(24,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(25,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(26,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(27,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(28,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(29,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(30,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(31,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-05 02:28:20',NULL),(32,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:30:35',NULL),(33,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(34,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(35,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(36,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(37,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(38,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(39,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(40,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(41,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,0,'맨투맨&후디','2022-04-05 02:31:00',NULL),(42,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:16',NULL),(43,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(44,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(45,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(46,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(47,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(48,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(49,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(50,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(51,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,0,'블레이저','2022-04-05 02:33:39',NULL),(52,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:34:37',NULL),(54,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(55,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(56,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(57,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(58,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(59,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(60,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(61,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(62,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,0,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(63,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:41:47',NULL),(75,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(76,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(77,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(78,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(79,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(80,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(81,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(82,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(83,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,0,'쇼츠','2022-04-05 03:42:12',NULL),(84,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:03',NULL),(85,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(86,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(87,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(88,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(89,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(90,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(91,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(92,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(93,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,0,'스커트','2022-04-05 03:43:22',NULL),(94,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:02',NULL),(95,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(96,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(97,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(98,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(99,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(100,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(101,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(102,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(103,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-05 03:44:25',NULL),(104,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:20',NULL),(105,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(106,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(107,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(108,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(109,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(110,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(111,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(112,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(113,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-05 03:45:47',NULL),(114,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(115,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(116,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(117,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(118,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(119,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(120,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(121,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(122,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(123,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-05 03:46:33',NULL),(124,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(125,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(126,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(127,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(128,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(129,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(130,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(131,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(132,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(133,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(134,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(135,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(136,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(137,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(138,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(139,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(140,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(141,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(142,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(143,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(144,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(145,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(146,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(147,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(148,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(149,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(150,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(151,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(152,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(153,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(154,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(155,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(156,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(157,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(158,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(159,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(160,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(161,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(162,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(163,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(164,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(165,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(166,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(167,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(168,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(169,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(170,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(171,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(172,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(173,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(174,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(175,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(176,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(177,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(178,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(179,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(180,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(181,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(182,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(183,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(184,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(185,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(186,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(187,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(188,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(189,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(190,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(191,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(192,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(193,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(194,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(195,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(196,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(197,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(198,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(199,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(200,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(201,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(202,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(203,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(204,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(205,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(206,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(207,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(208,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(209,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(210,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(211,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(212,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(213,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(214,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(215,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(216,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(217,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(218,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(219,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(220,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(221,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(222,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(223,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(224,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(225,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(226,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(227,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(228,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(229,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(230,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(231,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(232,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(233,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(234,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(235,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(236,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(237,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(238,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(239,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(240,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(241,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(242,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(243,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(244,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(245,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(246,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(247,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(248,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(249,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(250,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(251,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(252,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(253,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(254,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(255,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(256,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(257,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(258,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(259,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(260,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(261,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(262,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(263,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,0,'팬츠','2022-04-11 15:35:03',NULL),(264,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(265,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(266,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(267,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(268,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(269,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(270,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(271,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(272,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(273,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(274,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(275,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(276,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(277,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(278,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(279,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(280,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(281,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(282,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(283,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(284,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(285,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,0,'재킷&코트','2022-04-11 17:30:05',NULL),(286,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(287,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(288,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(289,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(290,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(291,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(292,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(293,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(294,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(295,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(296,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(297,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(298,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(299,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(300,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(301,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(302,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(303,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(304,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(305,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(306,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(307,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(308,'리브드 탑','tshirts.jpg',14900,'탑',NULL,0,'탑&티셔츠','2022-04-12 12:22:20',NULL),(309,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(310,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(311,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(312,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(313,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(314,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(315,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(316,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(317,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(318,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(319,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(320,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(321,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(322,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(323,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(324,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(325,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(326,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(327,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(328,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(329,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(330,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(331,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(332,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(333,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL),(334,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,0,'드레스','2022-04-12 12:24:11',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseinfo`
--

DROP TABLE IF EXISTS `purchaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseinfo` (
  `info_idx` int NOT NULL AUTO_INCREMENT COMMENT 'index',
  `product_idx` int NOT NULL COMMENT '상품정보',
  `payment_idx` int NOT NULL COMMENT '구매번호',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '회원아이디',
  `payment_total` varchar(100) NOT NULL COMMENT '총 구매 가격',
  `recipient_info` varchar(100) NOT NULL COMMENT '받는사람',
  `recipient_addr` varchar(100) NOT NULL COMMENT '받는사람주소',
  `purchase_product` varchar(100) NOT NULL COMMENT '구매상품정보(이름)',
  `purchase_quantity` int NOT NULL COMMENT '구매수량',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '구매한 일자',
  PRIMARY KEY (`info_idx`),
  KEY `purchaseinfo_FK_1` (`payment_idx`),
  KEY `purchaseinfo_FK` (`product_idx`),
  KEY `purchaseinfo_FK_2` (`user_id`),
  CONSTRAINT `purchaseinfo_FK` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`),
  CONSTRAINT `purchaseinfo_FK_1` FOREIGN KEY (`payment_idx`) REFERENCES `payment` (`payment_idx`),
  CONSTRAINT `purchaseinfo_FK_2` FOREIGN KEY (`product_idx`) REFERENCES `product` (`product_idx`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseinfo`
--

LOCK TABLES `purchaseinfo` WRITE;
/*!40000 ALTER TABLE `purchaseinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_idx` int NOT NULL AUTO_INCREMENT COMMENT '리뷰 인덱스',
  `product_idx` int NOT NULL COMMENT '상품 번호',
  `user_id` varchar(45) NOT NULL COMMENT '고객 아이디',
  `review_content` varchar(5000) NOT NULL COMMENT '후기 내용',
  `review_img` varchar(45) DEFAULT NULL COMMENT '후기 이미지',
  `review_score` float NOT NULL COMMENT '후기 평점',
  `review_rgstdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '후기 등록 시간',
  PRIMARY KEY (`review_idx`),
  KEY `review_FK` (`user_id`),
  KEY `review_FK_1` (`product_idx`),
  CONSTRAINT `review_FK` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`),
  CONSTRAINT `review_FK_1` FOREIGN KEY (`product_idx`) REFERENCES `product` (`product_idx`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecenter`
--

DROP TABLE IF EXISTS `servicecenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecenter` (
  `service_idx` int NOT NULL AUTO_INCREMENT COMMENT '시퀀스',
  `user_id` varchar(100) NOT NULL COMMENT '작성자',
  `service_title` varchar(100) NOT NULL COMMENT '제목',
  `service_question` varchar(300) NOT NULL COMMENT 'QnA내용',
  `service_rgstday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '등록일',
  `service_idx_re` int DEFAULT NULL COMMENT '답글인지의 여부',
  `service_id_origin` int DEFAULT NULL,
  `service_reply_group` int DEFAULT NULL,
  PRIMARY KEY (`service_idx`),
  KEY `servicecenter_FK` (`user_id`),
  CONSTRAINT `servicecenter_FK` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecenter`
--

LOCK TABLES `servicecenter` WRITE;
/*!40000 ALTER TABLE `servicecenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicecenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecenterfaq`
--

DROP TABLE IF EXISTS `servicecenterfaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecenterfaq` (
  `service_faq_idx` int NOT NULL AUTO_INCREMENT COMMENT '시퀀스',
  `service_faq_category` varchar(100) DEFAULT NULL COMMENT '질문의 카데고리',
  `service_faq_question` varchar(100) NOT NULL COMMENT '제목',
  `service_faq_answer` varchar(400) NOT NULL COMMENT 'FaQ내용',
  `service_notice` int DEFAULT NULL,
  PRIMARY KEY (`service_faq_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecenterfaq`
--

LOCK TABLES `servicecenterfaq` WRITE;
/*!40000 ALTER TABLE `servicecenterfaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicecenterfaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 21:43:56
