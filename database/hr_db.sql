-- MySQL dump 10.13  Distrib 26.7.0, for macos26.6 (arm64)
--
-- Host: localhost    Database: hr_db
-- ------------------------------------------------------
-- Server version	26.7.0

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
-- Current Database: `hr_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hr_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hr_db`;

--
-- Table structure for table `test_model_results`
--

DROP TABLE IF EXISTS `test_model_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_model_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accuracy_score` float NOT NULL,
  `precision_score` float NOT NULL,
  `recall_score` float NOT NULL,
  `f1_score` float NOT NULL,
  `roc_auc_score` float NOT NULL,
  `average_precision_score` float NOT NULL,
  `tn` int NOT NULL,
  `fp` int NOT NULL,
  `fn` int NOT NULL,
  `tp` int NOT NULL,
  `artifact_path` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_model_results`
--

LOCK TABLES `test_model_results` WRITE;
/*!40000 ALTER TABLE `test_model_results` DISABLE KEYS */;
INSERT INTO `test_model_results` VALUES (1,'catboost',0.75445,0.74141,0.74259,0.742,0.85216,0.84325,4784,1468,1459,4209,'artifacts/ml/catboost_tuned.joblib','2026-09-26 09:18:14'),(2,'xgboost',0.75596,0.74386,0.74241,0.74313,0.85116,0.84189,4803,1449,1460,4208,'artifacts/ml/xgboost_tuned.joblib','2026-09-26 09:18:14'),(3,'lightgbm',0.75755,0.7461,0.74294,0.74452,0.85033,0.84081,4819,1433,1457,4211,'artifacts/ml/lightgbm_tuned.joblib','2026-09-26 09:18:14'),(4,'gradient_boosting',0.75445,0.74495,0.73536,0.74012,0.84929,0.83934,4825,1427,1500,4168,'artifacts/ml/gradient_boosting.joblib','2026-09-26 09:18:14'),(5,'random_forest',0.7495,0.7266,0.75865,0.74228,0.84144,0.82919,4634,1618,1368,4300,'artifacts/ml/random_forest.joblib','2026-09-26 09:18:14'),(6,'logistic_regression',0.73691,0.72559,0.71842,0.72199,0.82792,0.8157,4712,1540,1596,4072,'artifacts/ml/logistic_regression.joblib','2026-09-26 09:18:14'),(7,'mlp',0.75074,0.70436,0.81314,0.75485,0.84718,0.83394,5468,2400,1314,5718,'artifacts/dl/mlp_model.pt','2026-09-26 09:18:14');
/*!40000 ALTER TABLE `test_model_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hr_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-26 18:21:51
