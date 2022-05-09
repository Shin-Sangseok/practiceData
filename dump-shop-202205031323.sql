-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.29

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
INSERT INTO `member` VALUES ('aaaaaa1234','aaaaaa1234!','김둘리',20,'01011112222',NULL,'경기도 오산시 120-2',1),('admin','qwer','admin',50,'2112320','asdf','adsfsad',2),('jack','1234','jack',35,'010-1111-2222',NULL,'서울시 용산구',2),('qwer','werwer','홍길동',20,'0105265566','adf','asdbfjh@naver.com',1),('sdf','werwer','콩순이',3,'666636663','asdf','n9@naver.com',1),('son','1234','me',24,'010-1234-1234',NULL,'서울시 중구',2),('use06048','222','Nate',34,'115151555','adsf','asdfjhlasl@mgmg',1),('yusub1','werwer','유수빈',50,'01065458745',NULL,'경기도',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
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
  `product_description` varchar(100) DEFAULT NULL COMMENT '상품 설명',
  `product_rgstdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '상품 등록일',
  `product_mdfydate` timestamp NULL DEFAULT NULL COMMENT '상품 수정일',
  PRIMARY KEY (`product_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'크롭트 가디건','2022-04-05 02:20:12','2022-04-17 12:55:30'),(3,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(4,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(5,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(6,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(7,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(8,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(9,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(10,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(11,'크롭트 가디건','cardigan.jpg',49900,'가디건',NULL,'가디건&풀오버','2022-04-05 02:24:29',NULL),(12,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:26',NULL),(13,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(14,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(15,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(16,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(17,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(18,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(19,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(20,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(21,'와이드 하이웨이스트 진','jean.jpg',39900,'진',NULL,'데님/진','2022-04-05 02:26:52',NULL),(22,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:27:57',NULL),(23,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(24,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(25,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(26,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(27,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(28,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(29,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(30,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(31,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-05 02:28:20',NULL),(32,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:30:35',NULL),(33,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(34,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(35,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(36,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(37,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(38,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(39,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(40,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(41,'집업 스웨트셔츠','mantoman.jpg',29900,'맨투맨',NULL,'맨투맨&후디','2022-04-05 02:31:00',NULL),(42,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:16',NULL),(43,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(44,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(45,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(46,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(47,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(48,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(49,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(50,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(51,'오버사이즈 리넨 블렌드 재킷','handm.jpg',59900,'블레이저',NULL,'블레이저','2022-04-05 02:33:39',NULL),(52,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:34:37',NULL),(54,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(55,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(56,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(57,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(58,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(59,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(60,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(61,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(62,'코튼 크롭트 셔츠','blouse.jpg',14900,'셔츠',NULL,'셔츠&블라우스','2022-04-05 02:35:36',NULL),(63,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:41:47',NULL),(75,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(76,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(77,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(78,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(79,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(80,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(81,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(82,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(83,'리브드 사이클링 쇼츠','shorts.jpg',14900,'쇼츠',NULL,'쇼츠','2022-04-05 03:42:12',NULL),(84,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:03',NULL),(85,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(86,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(87,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(88,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(89,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(90,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(91,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(92,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(93,'쇼트 트윌 스커트','skirts.jpg',29900,'스커트',NULL,'스커트','2022-04-05 03:43:22',NULL),(94,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:02',NULL),(95,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(96,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(97,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(98,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(99,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(100,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(101,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(102,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(103,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-05 03:44:25',NULL),(104,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:20',NULL),(105,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(106,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(107,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(108,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(109,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(110,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(111,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(112,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(113,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-05 03:45:47',NULL),(114,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(115,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(116,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(117,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(118,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(119,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(120,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(121,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(122,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(123,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-05 03:46:33',NULL),(124,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(125,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(126,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(127,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(128,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(129,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(130,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(131,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(132,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(133,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(134,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(135,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(136,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(137,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(138,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(139,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(140,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(141,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(142,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(143,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(144,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(145,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(146,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(147,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(148,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(149,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(150,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(151,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(152,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(153,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(154,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(155,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(156,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(157,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(158,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(159,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(160,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(161,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(162,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(163,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(164,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(165,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(166,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(167,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(168,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(169,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(170,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(171,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(172,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(173,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(174,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(175,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(176,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(177,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(178,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(179,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(180,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(181,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(182,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(183,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(184,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(185,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(186,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(187,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(188,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(189,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(190,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(191,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(192,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(193,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(194,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(195,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(196,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(197,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(198,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(199,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(200,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(201,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(202,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(203,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(204,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(205,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(206,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(207,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(208,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(209,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(210,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(211,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(212,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(213,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(214,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(215,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(216,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(217,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(218,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(219,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(220,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(221,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(222,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(223,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(224,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(225,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(226,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(227,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(228,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(229,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(230,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(231,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(232,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(233,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(234,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(235,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(236,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(237,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(238,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(239,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(240,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(241,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(242,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(243,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(244,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(245,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(246,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(247,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(248,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(249,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(250,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(251,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(252,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(253,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(254,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(255,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(256,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(257,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(258,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(259,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(260,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(261,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(262,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(263,'카고 팬츠','pants.jpg',39900,'팬츠',NULL,'팬츠','2022-04-11 15:35:03',NULL),(264,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(265,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(266,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(267,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(268,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(269,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(270,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(271,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(272,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(273,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(274,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(275,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(276,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(277,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(278,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(279,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(280,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(281,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(282,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(283,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(284,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(285,'오버사이즈 데님 재킷','jackets.jpg',59900,'재킷',NULL,'재킷&코트','2022-04-11 17:30:05',NULL),(286,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(287,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(288,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(289,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(290,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(291,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(292,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(293,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(294,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(295,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(296,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(297,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(298,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(299,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(300,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(301,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(302,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(303,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(304,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(305,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(306,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(307,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(308,'리브드 탑','tshirts.jpg',14900,'탑',NULL,'탑&티셔츠','2022-04-12 12:22:20',NULL),(309,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(310,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(311,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(312,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(313,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(314,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(315,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(316,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(317,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(318,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(319,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(320,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(321,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(322,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(323,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(324,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(325,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(326,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(327,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(328,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(329,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(330,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(331,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(332,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(333,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(334,'컷아웃 재킷 드레스','dress.jpg',49900,'드레스',NULL,'드레스','2022-04-12 12:24:11',NULL),(351,'1','1',1,'진',NULL,'2','2022-04-21 07:41:48',NULL),(352,'test','test',1,'진',NULL,'1','2022-04-21 08:49:17',NULL),(353,'test','test',1,'드레스',NULL,'test','2022-04-21 09:38:52',NULL),(354,'test','test',1,'가디건',NULL,'test','2022-04-22 10:17:16',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlike`
--

DROP TABLE IF EXISTS `productlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productlike` (
  `like_idx` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `product_idx` int NOT NULL,
  `likecheck` int NOT NULL,
  PRIMARY KEY (`like_idx`),
  UNIQUE KEY `productlike_un` (`user_id`,`product_idx`),
  KEY `like_FK` (`user_id`),
  KEY `like_FK_1` (`product_idx`),
  CONSTRAINT `like_FK` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `like_FK_1` FOREIGN KEY (`product_idx`) REFERENCES `product` (`product_idx`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlike`
--

LOCK TABLES `productlike` WRITE;
/*!40000 ALTER TABLE `productlike` DISABLE KEYS */;
INSERT INTO `productlike` VALUES (430,'jack',1,1),(449,'jack',3,1),(451,'jack',8,1),(454,'jack',14,1),(456,'jack',15,1),(459,'jack',20,1),(462,'jack',146,1),(464,'jack',9,1),(467,'jack',4,1),(472,'jack',21,1),(476,'jack',13,1),(477,'jack',18,1),(479,'jack',12,1),(483,'son',3,1),(486,'use06048',8,1),(488,'use06048',1,1),(490,'use06048',4,1),(491,'qwer',1,1),(493,'qwer',14,1),(495,'qwer',15,1),(497,'sdf',1,1),(501,'sdf',22,1),(504,'sdf',3,1);
/*!40000 ALTER TABLE `productlike` ENABLE KEYS */;
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
  `payment_method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '구매번호',
  `user_id` varchar(100) NOT NULL COMMENT '회원아이디',
  `payment_total` varchar(100) NOT NULL COMMENT '총 구매 가격',
  `recipient_info` varchar(100) NOT NULL COMMENT '받는사람',
  `recipient_addr` varchar(100) NOT NULL COMMENT '받는사람주소',
  `purchase_product` varchar(100) NOT NULL COMMENT '구매상품정보(이름)',
  `purchase_quantity` int NOT NULL COMMENT '구매수량',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '구매한 일자',
  PRIMARY KEY (`info_idx`),
  KEY `purchaseinfo_FK_1` (`payment_method`),
  KEY `purchaseinfo_FK` (`product_idx`),
  KEY `purchaseinfo_FK_2` (`user_id`),
  CONSTRAINT `purchaseinfo_FK` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`),
  CONSTRAINT `purchaseinfo_FK_2` FOREIGN KEY (`product_idx`) REFERENCES `product` (`product_idx`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseinfo`
--

LOCK TABLES `purchaseinfo` WRITE;
/*!40000 ALTER TABLE `purchaseinfo` DISABLE KEYS */;
INSERT INTO `purchaseinfo` VALUES (3,1,'1','jack','49900','홍길동','서울시 용산구','가디건',1,'2022-04-19 14:16:51'),(4,1,'2','jack','49900','홍길동','서울시 용산구','가디건',1,'2022-04-19 14:29:35'),(5,1,'2','jack','49900','홍길동','서울시 용산구','가디건',1,'2022-04-19 14:29:37'),(6,1,'신용카드','jack','49900','수신인','주소','크롭트 가디건',1,'2022-04-19 14:44:11'),(7,1,'신용카드','jack','49900','수신인','주소','크롭트 가디건',1,'2022-04-19 14:48:22'),(16,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-20 14:32:38'),(17,12,'무통장입금','jack','39900','받는 사람 입력','주소 입력','와이드 하이웨이스트 진',1,'2022-04-20 14:33:57'),(18,1,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-20 14:44:56'),(19,1,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:36:01'),(20,1,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:43:08'),(21,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:44:21'),(22,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:45:38'),(23,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:59:56'),(24,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:59:58'),(25,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:59:58'),(26,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 01:59:58'),(27,1,'무통장입금','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 02:00:03'),(28,1,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 02:49:00'),(29,1,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 06:07:09'),(31,1,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-21 07:06:14'),(32,1,'신용카드','son','49900','이순신','경기도 하남','크롭트 가디건',1,'2022-04-22 10:16:25'),(33,3,'신용카드','jack','49900','받는 사람 입력','주소 입력','크롭트 가디건',1,'2022-04-23 16:23:19'),(34,1,'신용카드','jack','499000','받는 사람 입력','주소 입력','크롭트 가디건',10,'2022-04-24 05:10:05'),(35,3,'신용카드','son','149700','홍길동','서울시 용산구','크롭트 가디건',3,'2022-04-24 05:17:15'),(36,19,'무통장입금','son','199500','또치','경기도 군포','와이드 하이웨이스트 진',5,'2022-04-24 05:17:31'),(37,33,'신용카드','son','418600','미미','경기도 부천','집업 스웨트셔츠',14,'2022-04-24 05:18:18'),(38,171,'신용카드','son','319200','호랑이','서울시 왕십리 ','카고 팬츠',8,'2022-04-24 05:21:42'),(39,3,'신용카드','son','249500','김또치','서울시 동작구 12-2','크롭트 가디건',5,'2022-04-27 12:39:48');
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
  `review_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '후기 이미지',
  `review_score` decimal(2,1) NOT NULL COMMENT '후기 평점',
  `review_rgstdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '후기 등록 시간',
  PRIMARY KEY (`review_idx`),
  KEY `review_FK` (`user_id`),
  KEY `review_FK_1` (`product_idx`),
  CONSTRAINT `review_FK` FOREIGN KEY (`user_id`) REFERENCES `member` (`user_id`),
  CONSTRAINT `review_FK_1` FOREIGN KEY (`product_idx`) REFERENCES `product` (`product_idx`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (41,3,'son','aaa','robot.PNG',3.5,'2022-04-27 12:24:50'),(42,3,'son','aaa','robot.PNG',3.5,'2022-04-27 12:24:50'),(43,3,'son','aaa','robot.PNG',3.5,'2022-04-27 12:25:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecenter`
--

LOCK TABLES `servicecenter` WRITE;
/*!40000 ALTER TABLE `servicecenter` DISABLE KEYS */;
INSERT INTO `servicecenter` VALUES (21,'qwer','첫번째 문의 입니다.','첫번째 문의 입니다.','2022-04-26 14:16:18',0,21,0),(22,'qwer','두번째 문의 입니다.','두번째 문의입니다.','2022-04-26 14:16:18',0,22,0),(24,'use06048','네번째 문의 입니다.','네번째 문의 입니다.네번째 문의 입니다.네번째 문의 입니다.','2022-04-12 12:56:00',0,24,0),(28,'yusub1','안녕하세요','감사합니다','2022-04-21 04:53:28',0,28,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecenterfaq`
--

LOCK TABLES `servicecenterfaq` WRITE;
/*!40000 ALTER TABLE `servicecenterfaq` DISABLE KEYS */;
INSERT INTO `servicecenterfaq` VALUES (1,'주문결제','가상계좌주문이 제한되었어요.','가상계좌 주문 후 반복적인 주문취소 시, 가상계좌 주문이 제한됩니다. 다른 결제수단을 이용하시거나 익일 제한이 해제되었을 경우 주문 가능 합니다.',NULL),(2,'주문결제','휴대폰 소액결제에 대하여 알려주세요','휴대폰 소액결제는 결제 대금을 휴대폰으로 결제하는 방법으로 결제 시 구매금액의 5%의 수수료가 발생합니다. 결제 대금은 다음 달 휴대폰 요금에 부과되어 청구됩니다. 환불 시 결제 수수료를 포함하여 환불됩니다.',NULL),(3,'주문결제','주문 결제 시 현금영수증 요청을 하지 않았습니다. 따로 신청 가능한가요?','주문 결제 후 현금영수증 요청은 고객센터로 문의 부탁드립니다. 발행이 가능한 기간은 결제월 기준 익월 15일 이내입니다.',NULL),(4,'주문결제','주소 검색이 안돼요.','주소지는 행정안전부의 [도로명 조회 사이트]에서 검색되는 주소를 기반으로 합니다.',NULL),(5,'주문결제','주소지 건물명이 변경되었어요.','주소지는 행정안전부의 [도로명 조회 사이트]에서 검색되는 주소를 기반으로 합니다. ',NULL),(6,'배송안내','배송관련 기본사항입니다.','[판매 업체들의 일반적인 출고 일정입니다.]\r\n\r\n\r\n\r\n평일 (월~금)\r\n\r\n- 오전에 결제 완료 시 : 대부분 당일 오후 중 출고 진행\r\n\r\n- 오후~저녁에 결제 완료 시 : 다음날 출고 진행\r\n\r\n\r\n\r\n주말 및 공휴일 (토~일, 빨간 날)\r\n\r\n- 택배 업체 중단으로 돌아오는 평일부터 출고를 시작합니다.\r\n\r\n- 주문량이 많을 경우 1~2일 정도 출고 일정이 미뤄질 수 있습니다.\r\n\r\n- 설날, 추석 등 명절 직후에는 택배 업체 물량 과다로 출고 및 배송 지연이 지속적으로 발생할 수 있습니다.',NULL),(7,'배송안내','해외배송가능한가요?','죄송합니다. 현재 해외 배송은 불가능합니다. 빠른 시일 안에 도입하도록 하겠습니다. ',NULL),(8,'배송안내','주문한 상품이 일부만 도착했어요.','브랜드(업체)에 따라 출고지가 다르므로 다수의 브랜드를 주문하신 경우에는 각각 수령하게 됩니다.',NULL),(9,'배송안내','운송장 조회 시 다른 사람의 정보가 나오고 있어요.','운송장 조회 시 다른 사람의 정보가 나올 경우 판매처의 송장번호가 잘못 입력된 경우입니다. 1:1 문의글을 통해 접수해주시면 확인 후 올바른 배송정보로 변경 도와드리겠습니다.',NULL),(10,'배송안내','평균 출고일은 무엇인가요?','상품 상세 페이지의 평균 출고일은 상품 결제 후 택배사에 상품이 전달되기까지 소요되는 기간입니다.',NULL),(11,'교환/환불','교환/환불은 언제까지 가능한가요?','제품 수령 후 7일 이내 교환 요청을 해주셔야 합니다.',NULL),(12,'교환/환불','배송된 상품이 불량, 오배송시 ','1. 불량 또는 오배송인 경우 무신사스토어에서 전액 배송비를 부담하여 교환처리 해드립니다.',NULL),(13,'교환/환불','교환은 동일한 상품명의 옵션으로만 가능합니다.','	\r\n교환 요청은 동일한 상품명의 옵션으로만 가능합니다. 상품명이 색상으로 나뉘어 있는 경우, 상품명이 다르므로 환불 요청 후 재주문 부탁드립니다.',NULL),(14,'교환/환불','상품 수령전에 환불할수 있나요?','주문상태가 입금 확인일때 [주문내역]에서 직접 취소가 가능합니다. 묶음 주문은 부분취소로 환불이 가능합니다.',NULL),(15,'교환/환불','카드로 결제했는데 계좌로 환불받을 수 있을까요?','환불은 결제하신 수단으로만 가능합니다. 카드 결제 시 카드 취소로 진행됩니다.',NULL),(16,'상품/회원관련','가격이 떨어져 예전에 구매했을때보다 싸게 팔고있는경우 차액환불이 되나요?','판매 가격의 변동에 따른 차액을 보상해드리지 않습니다.',NULL),(17,'상품/회원관련','사진과 제품의 실제색상이다른것같아요','온라인의 특성상 상품 이미지는 출력되는 모니터 환경에 따라 조금씩 차이가 있을 수 있으며 이는 판매자 사유에 의한 교환 및 환불 대상이 아닙니다.',NULL),(18,'상품/회원관련','회원정보 수정은 어디서하나요? ','\'마이페이지 > 회원정보변경\'에서 수정할 수 있습니다.',NULL);
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

-- Dump completed on 2022-05-03 13:23:54
