CREATE DATABASE  IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `news`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'朝鲜特种部队视频公布 展示士兵身体素质与意志？','新闻内容','推荐','../news/01.png','孙克宇',20,'2021-11-07 15:18:55',1),(2,'男子长得像\"祁同伟\"挨打 打人者:为何加害检察官','新闻内容','百家','../news/02.png','孙克宇',20,'2021-11-07 15:18:55',1),(3,'导弹来袭怎么办？日本政府呼吁国民躲入地下通道','新闻内容','本地','../news/03.png','孙克宇',20,'2021-11-07 15:18:55',1),(4,'美媒:朝在建能发射3发以上导弹的3000吨级新潜艇','新闻内容','推荐','../news/04.png','孙克宇',20,'2021-11-07 15:18:55',1),(5,'证监会:前发审委员冯小树违法买卖股票被罚4.99亿','新闻内容','百家','../news/08.png','孙克宇',20,'2021-11-07 15:18:55',1),(6,'外交部回应安倍参拜靖国神社:同军国主义划清界限','新闻内容','推荐','../news/new1.jpg','孙克宇',20,'2021-11-07 15:18:55',1),(8,'\"萨德\"供地违法？韩民众联名起诉要求撤回供地','新闻内容','百家','../news/new1.jpg','孙克宇',20,'2021-11-07 15:18:55',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 12:57:00
