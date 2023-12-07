-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: medconnect
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (37,'Can add log entry',10,'add_logentry'),(38,'Can change log entry',10,'change_logentry'),(39,'Can delete log entry',10,'delete_logentry'),(40,'Can view log entry',10,'view_logentry'),(41,'Can add permission',11,'add_permission'),(42,'Can change permission',11,'change_permission'),(43,'Can delete permission',11,'delete_permission'),(44,'Can view permission',11,'view_permission'),(45,'Can add group',12,'add_group'),(46,'Can change group',12,'change_group'),(47,'Can delete group',12,'delete_group'),(48,'Can view group',12,'view_group'),(49,'Can add user',13,'add_user'),(50,'Can change user',13,'change_user'),(51,'Can delete user',13,'delete_user'),(52,'Can view user',13,'view_user'),(53,'Can add content type',14,'add_contenttype'),(54,'Can change content type',14,'change_contenttype'),(55,'Can delete content type',14,'delete_contenttype'),(56,'Can view content type',14,'view_contenttype'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session'),(61,'Can add hospital',16,'add_hospital'),(62,'Can change hospital',16,'change_hospital'),(63,'Can delete hospital',16,'delete_hospital'),(64,'Can view hospital',16,'view_hospital'),(65,'Can add avaliação',17,'add_avaliacao'),(66,'Can change avaliação',17,'change_avaliacao'),(67,'Can delete avaliação',17,'delete_avaliacao'),(68,'Can view avaliação',17,'view_avaliacao'),(69,'Can add dados',18,'add_dados'),(70,'Can change dados',18,'change_dados'),(71,'Can delete dados',18,'delete_dados'),(72,'Can view dados',18,'view_dados'),(73,'Can add doença',19,'add_doencas'),(74,'Can change doença',19,'change_doencas'),(75,'Can delete doença',19,'delete_doencas'),(76,'Can view doença',19,'view_doencas'),(77,'Can add sintomas',20,'add_sintomas'),(78,'Can change sintomas',20,'change_sintomas'),(79,'Can delete sintomas',20,'delete_sintomas'),(80,'Can view sintomas',20,'view_sintomas'),(81,'Can add diagnostico',21,'add_diagnostico'),(82,'Can change diagnostico',21,'change_diagnostico'),(83,'Can delete diagnostico',21,'delete_diagnostico'),(84,'Can view diagnostico',21,'view_diagnostico'),(85,'Can add cirurgia',22,'add_cirurgia'),(86,'Can change cirurgia',22,'change_cirurgia'),(87,'Can delete cirurgia',22,'delete_cirurgia'),(88,'Can view cirurgia',22,'view_cirurgia'),(89,'Can add internacao',23,'add_internacao'),(90,'Can change internacao',23,'change_internacao'),(91,'Can delete internacao',23,'delete_internacao'),(92,'Can view internacao',23,'view_internacao'),(93,'Can add condicao_familiar',24,'add_condicao_familiar'),(94,'Can change condicao_familiar',24,'change_condicao_familiar'),(95,'Can delete condicao_familiar',24,'delete_condicao_familiar'),(96,'Can view condicao_familiar',24,'view_condicao_familiar'),(97,'Can add medicamento',25,'add_medicamento'),(98,'Can change medicamento',25,'change_medicamento'),(99,'Can delete medicamento',25,'delete_medicamento'),(100,'Can view medicamento',25,'view_medicamento');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (7,'pbkdf2_sha256$600000$QHNkDi99O525UBEKCDbNLp$6tYJgpjjpbIZNPb5oNwUKJQyRQBTD0jGnulJrFHbFQY=','2023-12-04 17:19:49.000000',1,'Jose','José Augusto','Alves de Moraes','joseaugustomoraes@outlook.com',1,1,'2023-11-26 00:29:26.000000'),(11,'pbkdf2_sha256$600000$UiWcmDfXOxWq7GgIWP2SkW$T6eG3wwc4//pEewerGm0bYwqpa+DXqI69AKMUCbGnJE=','2023-12-04 17:12:03.579367',0,'email@email.com','Teste','Testoso','email@email.com',0,1,'2023-12-04 17:12:02.990990');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (99,'2023-11-26 01:23:05.079630','1','URGENTE',2,'[{\"changed\": {\"fields\": [\"Numero\"]}}]',17,7),(100,'2023-11-27 19:47:49.849766','7','Dados object (7)',1,'[{\"added\": {}}]',18,7),(101,'2023-11-27 23:55:26.330358','8','ludmilaysha',3,'',13,7),(102,'2023-11-28 00:43:43.652360','7','Dados object (7)',2,'[{\"changed\": {\"fields\": [\"Exercicio frequencia\"]}}]',18,7),(103,'2023-11-30 19:23:34.171171','2','Covid',3,'',19,7),(104,'2023-11-30 19:23:34.176171','1','Influenza',3,'',19,7),(105,'2023-12-01 21:58:05.093313','1','Condicao_familiar object (1)',3,'',24,7),(106,'2023-12-01 22:26:40.674541','5','Cavernoma',3,'',24,7),(107,'2023-12-01 22:26:40.682671','4','Cavernoma',3,'',24,7),(108,'2023-12-01 22:26:40.686727','3','Cavernoma',3,'',24,7),(109,'2023-12-01 22:26:40.694751','2','Cavernoma',3,'',24,7),(110,'2023-12-02 12:38:17.984806','7','Cavernoma',3,'',24,7),(111,'2023-12-02 12:38:17.992795','6','Cavernoma',3,'',24,7),(112,'2023-12-02 13:54:24.981272','3','Medicamento object (3)',2,'[{\"changed\": {\"fields\": [\"Frequencia\"]}}]',25,7),(113,'2023-12-02 20:21:43.894031','1','Cirurgia realizada 1',3,'',22,7),(114,'2023-12-02 20:22:09.024887','9','Cavernoma',3,'',24,7),(115,'2023-12-02 20:22:09.028433','8','Cavernoma',3,'',24,7),(116,'2023-12-02 20:22:36.248683','1','Condição diagnosticada',3,'',21,7),(117,'2023-12-02 20:23:01.087029','3','Cavernoma',3,'',19,7),(118,'2023-12-02 20:23:30.322798','2','Internação 1',3,'',23,7),(119,'2023-12-02 20:23:30.326870','1','Internação 2',3,'',23,7),(120,'2023-12-02 20:23:56.795532','4','Medicamento sem prescrição 1',3,'',25,7),(121,'2023-12-02 20:23:56.799159','3','Medicamento sem prescrição 2',3,'',25,7),(122,'2023-12-02 20:23:56.802155','2','Medicamento com prescrição 1',3,'',25,7),(123,'2023-12-02 20:23:56.806158','1','Medicamento com prescrição 2',3,'',25,7),(124,'2023-12-02 20:24:18.500376','1','Dor de cabeça',3,'',20,7),(125,'2023-12-03 11:47:39.093807','12','2',3,'',19,7),(126,'2023-12-03 11:47:39.097699','11',' ',3,'',19,7),(127,'2023-12-03 11:47:39.099699','10','a',3,'',19,7),(128,'2023-12-03 11:47:39.103704','9','ç',3,'',19,7),(129,'2023-12-03 11:47:39.108702','8','n',3,'',19,7),(130,'2023-12-03 11:47:39.111700','7','o',3,'',19,7),(131,'2023-12-03 11:47:39.114918','6','e',3,'',19,7),(132,'2023-12-03 11:47:39.116910','5','D',3,'',19,7),(133,'2023-12-03 11:47:39.121915','4','Doença',3,'',19,7),(134,'2023-12-03 11:49:52.493341','18','a',3,'',19,7),(135,'2023-12-03 11:49:52.497625','17','ç',3,'',19,7),(136,'2023-12-03 11:49:52.500631','16','n',3,'',19,7),(137,'2023-12-03 11:49:52.504624','15','e',3,'',19,7),(138,'2023-12-03 11:49:52.507616','14','o',3,'',19,7),(139,'2023-12-03 11:49:52.511622','13','D',3,'',19,7),(140,'2023-12-03 11:51:59.344680','22','',3,'',19,7),(141,'2023-12-04 17:10:38.216535','9','Teste',3,'',13,7),(142,'2023-12-04 17:10:38.231497','10','Usuario',3,'',13,7),(143,'2023-12-04 17:20:41.530897','7','Jose',2,'[{\"changed\": {\"fields\": [\"Data nascimento\", \"Genero\", \"Altura\", \"Tipo sanguineo\"]}}]',18,7),(144,'2023-12-04 17:22:44.477443','7','Jose',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',13,7);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'admin','logentry'),(12,'auth','group'),(11,'auth','permission'),(13,'auth','user'),(14,'contenttypes','contenttype'),(17,'inicial','avaliacao'),(22,'inicial','cirurgia'),(24,'inicial','condicao_familiar'),(18,'inicial','dados'),(21,'inicial','diagnostico'),(19,'inicial','doencas'),(16,'inicial','hospital'),(23,'inicial','internacao'),(25,'inicial','medicamento'),(20,'inicial','sintomas'),(15,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (31,'contenttypes','0001_initial','2023-11-25 18:34:45.853756'),(32,'auth','0001_initial','2023-11-25 18:34:45.881198'),(33,'inicial','0001_initial','2023-11-25 18:34:45.915557'),(34,'inicial','0002_dados_peso','2023-11-25 23:22:10.307916'),(35,'admin','0001_initial','2023-11-26 00:07:47.921525'),(36,'admin','0002_logentry_remove_auto_add','2023-11-26 00:07:47.940540'),(37,'admin','0003_logentry_add_action_flag_choices','2023-11-26 00:07:47.958070'),(38,'contenttypes','0002_remove_content_type_name','2023-11-26 00:18:07.003632'),(39,'auth','0002_alter_permission_name_max_length','2023-11-26 00:18:07.011633'),(40,'auth','0003_alter_user_email_max_length','2023-11-26 00:18:07.017380'),(41,'auth','0004_alter_user_username_opts','2023-11-26 00:18:07.022378'),(42,'auth','0005_alter_user_last_login_null','2023-11-26 00:18:07.030379'),(43,'auth','0006_require_contenttypes_0002','2023-11-26 00:18:07.037374'),(44,'auth','0007_alter_validators_add_error_messages','2023-11-26 00:18:07.044382'),(45,'auth','0008_alter_user_username_max_length','2023-11-26 00:18:07.051377'),(46,'auth','0009_alter_user_last_name_max_length','2023-11-26 00:18:07.058383'),(47,'auth','0010_alter_group_name_max_length','2023-11-26 00:18:07.063403'),(48,'auth','0011_update_proxy_permissions','2023-11-26 00:18:07.067966'),(49,'auth','0012_alter_user_first_name_max_length','2023-11-26 00:18:07.073964'),(50,'sessions','0001_initial','2023-11-26 00:18:07.080493'),(51,'inicial','0002_dados','2023-11-26 00:18:47.037979'),(52,'inicial','0003_rename_endereco_hospital_endereço','2023-11-26 00:25:01.165595'),(53,'inicial','0004_rename_endereço_hospital_endereco','2023-11-26 00:25:33.817837'),(54,'inicial','0005_remove_avaliacao_atendimento','2023-11-26 01:18:35.535549'),(55,'inicial','0006_avaliacao_horario_atendimento_and_more','2023-11-26 01:20:48.709465'),(56,'inicial','0007_avaliacao_numero','2023-11-26 01:22:18.958964'),(57,'inicial','0008_alter_avaliacao_numero','2023-11-26 01:22:39.424898'),(58,'inicial','0009_dados_altura_dados_tipo_sanguineo_alter_dados_sexo','2023-11-26 18:09:05.352504'),(59,'inicial','0010_dados_exercicio_dados_exercicio_frequencia_and_more','2023-11-27 20:07:38.724574'),(60,'inicial','0011_alter_dados_exercicio','2023-11-27 20:09:22.751809'),(61,'inicial','0012_doencas','2023-11-30 18:58:04.141318'),(62,'inicial','0013_alter_doencas_user','2023-11-30 19:08:17.950918'),(63,'inicial','0014_sintomas','2023-12-01 19:16:24.277139'),(64,'inicial','0015_diagnostico','2023-12-01 19:31:42.979217'),(65,'inicial','0016_cirurgia','2023-12-01 19:40:35.799726'),(66,'inicial','0017_alter_cirurgia_data','2023-12-01 19:47:13.743020'),(67,'inicial','0018_internacao','2023-12-01 21:26:55.005038'),(68,'inicial','0019_condicao_familiar','2023-12-01 21:49:55.077264'),(69,'inicial','0020_medicamento','2023-12-02 12:34:57.790248'),(70,'inicial','0021_remove_sintomas_data','2023-12-02 22:28:33.653740'),(71,'inicial','0022_alter_avaliacao_data_alter_dados_tipo_sanguineo','2023-12-02 22:37:40.867382'),(72,'inicial','0023_hospital_atualizacao','2023-12-02 23:52:15.745729'),(73,'inicial','0024_remove_dados_idade_remove_dados_nome_and_more','2023-12-04 17:07:01.401947');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('j31uzclvziz3038cm7qeqv9kkov39kro','.eJxVjDsOwyAQBe9CHSHzXZMyvc-AFhaCkwgkY1dR7h4huUjaNzPvzTwee_FHT5tfiV0ZsMvvFjA-Ux2AHljvjcdW920NfCj8pJ0vjdLrdrp_BwV7GbXRYYpa4GSDUNIAOQtKoxCE4GRGmFVykKVTjsBGnIXJOUWDOgIIyT5f0GI3gA:1rACbl:TtD-SwTuIlnyFDqrhL1zS3IQwc6C-VR7zvrAAc_R5Js','2023-12-18 17:19:49.411875');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_avaliacao`
--

DROP TABLE IF EXISTS `inicial_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_avaliacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `data` datetime(6) NOT NULL,
  `risco` varchar(100) NOT NULL,
  `duracao` bigint NOT NULL,
  `avaliacao` int NOT NULL,
  `observacao` longtext NOT NULL,
  `hospital_id` varchar(7) NOT NULL,
  `horario_atendimento` datetime(6) NOT NULL,
  `horario_entrada` datetime(6) NOT NULL,
  `horario_saida` datetime(6) NOT NULL,
  `numero` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_avaliacao`
--

LOCK TABLES `inicial_avaliacao` WRITE;
/*!40000 ALTER TABLE `inicial_avaliacao` DISABLE KEYS */;
INSERT INTO `inicial_avaliacao` VALUES (1,'Jose','2023-11-25 00:00:00.000000','URGENTE',900000000,4,'Atendimento bom!','4272374','2023-11-26 01:20:48.000000','2023-11-26 01:20:48.000000','2023-11-26 01:20:48.000000',1),(2,'Jose','2023-11-25 00:00:00.000000','POUCO_URGENTE',1200000000,3,'Bla bla bla','3000974','2023-11-26 01:50:00.000000','2023-11-26 01:30:00.000000','2023-11-26 02:00:00.000000',2),(3,'Jose','2023-11-27 00:00:00.000000','MUITO_URGENTE',7200000000,2,'Hospital ok, poderia ter sido mai rápido','4272374','2023-11-27 21:23:00.000000','2023-11-27 19:23:00.000000','2023-11-27 23:23:00.000000',3),(4,'Jose','2023-11-27 00:00:00.000000','MUITO_URGENTE',7200000000,2,'Hospital ok, poderia ter sido mai rápido','4272374','2023-11-27 21:23:00.000000','2023-11-27 19:23:00.000000','2023-11-27 23:23:00.000000',4),(5,'Jose','2023-11-27 00:00:00.000000','MUITO_URGENTE',7200000000,2,'Hospital ok, poderia ter sido mai rápido','4272374','2023-11-27 21:23:00.000000','2023-11-27 19:23:00.000000','2023-11-27 23:23:00.000000',5),(6,'Jose','2023-11-27 00:00:00.000000','MUITO_URGENTE',7200000000,2,'Hospital ok, poderia ter sido mai rápido','4272374','2023-11-27 21:23:00.000000','2023-11-27 19:23:00.000000','2023-11-27 23:23:00.000000',6),(7,'Jose','2023-11-27 00:00:00.000000','MUITO_URGENTE',7200000000,2,'Hospital ok, poderia ter sido mai rápido','4272374','2023-11-27 21:23:00.000000','2023-11-27 19:23:00.000000','2023-11-27 23:23:00.000000',7),(8,'ludmilaysha','2023-11-27 00:00:00.000000','URGENTE',18000000000,4,'','4272374','2023-11-30 00:32:00.000000','2023-11-29 19:32:00.000000','2023-11-30 01:38:00.000000',1),(9,'ludmilaysha','2023-11-27 00:00:00.000000','POUCO_URGENTE',300000000,4,'','4272374','2023-11-27 19:41:00.000000','2023-11-27 19:36:00.000000','2023-11-27 20:00:00.000000',2),(10,'ludmilaysha','2023-11-27 00:00:00.000000','URGENTE',240000000,2,'','4272374','2023-11-27 19:41:00.000000','2023-11-27 19:37:00.000000','2023-11-27 19:43:00.000000',3),(11,'Jose','2023-12-03 23:29:40.748038','URGENTE',1800000000,5,'','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',8),(12,'Jose','2023-12-03 23:31:01.199403','URGENTE',1800000000,5,'','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',9),(13,'Jose','2023-12-03 23:31:09.410550','URGENTE',1800000000,5,'asd','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',10),(14,'Jose','2023-12-03 23:31:16.727857','URGENTE',1800000000,5,'asd','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',11),(15,'Jose','2023-12-03 23:32:05.182402','URGENTE',1800000000,5,'asd','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',12),(16,'Jose','2023-12-03 23:33:05.368658','URGENTE',1800000000,5,'asd','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',13),(17,'Jose','2023-12-03 23:33:23.558998','POUCO_URGENTE',1800000000,5,'asd','3055450','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',14),(18,'Jose','2023-12-03 23:36:11.218114','URGENTE',900000000,5,'Teste teste','9928553','2023-12-03 23:45:00.000000','2023-12-03 23:30:00.000000','2023-12-04 00:30:00.000000',15),(19,'Jose','2023-12-03 23:40:29.770259','URGENTE',600000000,5,'Teste teste','9928553','2023-12-03 23:50:00.000000','2023-12-03 23:40:00.000000','2023-12-04 00:20:00.000000',16),(20,'Jose','2023-12-03 23:43:49.447299','URGENTE',600000000,5,'Teste teste','9928553','2023-12-03 23:50:00.000000','2023-12-03 23:40:00.000000','2023-12-04 00:20:00.000000',17),(21,'Jose','2023-12-03 23:51:47.239091','URGENTE',1800000000,5,'asas','9928553','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',18),(22,'Jose','2023-12-03 23:54:14.771940','URGENTE',1800000000,5,'asas','9928553','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',19),(23,'Jose','2023-12-03 23:54:41.892343','URGENTE',1800000000,5,'asas','9928553','2023-12-03 23:54:41.892343','2023-12-03 23:54:41.892343','2023-12-03 23:54:41.892343',20),(24,'Jose','2023-12-03 23:54:56.519370','URGENTE',1800000000,5,'asas','9928553','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',21),(25,'Jose','2023-12-03 23:55:12.141824','URGENTE',1800000000,5,'','9928553','2023-12-03 23:30:00.000000','2023-12-03 23:00:00.000000','2023-12-04 00:00:00.000000',22),(26,'Jose','2023-12-04 00:00:19.854711','MUITO_URGENTE',900000000,4,'','9928553','2023-12-04 00:15:00.000000','2023-12-04 00:00:00.000000','2023-12-04 00:30:00.000000',23),(27,'Jose','2023-12-04 00:02:56.155065','MUITO_URGENTE',900000000,4,'aSDasfasf','9928553','2023-12-04 00:15:00.000000','2023-12-04 00:00:00.000000','2023-12-04 00:30:00.000000',24);
/*!40000 ALTER TABLE `inicial_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_cirurgia`
--

DROP TABLE IF EXISTS `inicial_cirurgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_cirurgia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cirurgia` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_cirurgia_user_id_e1411edb_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_cirurgia_user_id_e1411edb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_cirurgia`
--

LOCK TABLES `inicial_cirurgia` WRITE;
/*!40000 ALTER TABLE `inicial_cirurgia` DISABLE KEYS */;
INSERT INTO `inicial_cirurgia` VALUES (2,'Cirurgia 1','2023-12-03',7),(3,'Cirurgia 2','2023-12-03',7);
/*!40000 ALTER TABLE `inicial_cirurgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_condicao_familiar`
--

DROP TABLE IF EXISTS `inicial_condicao_familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_condicao_familiar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `condicao` varchar(200) NOT NULL,
  `grau_parentesco` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_condicao_familiar_user_id_c21c0eff_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_condicao_familiar_user_id_c21c0eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_condicao_familiar`
--

LOCK TABLES `inicial_condicao_familiar` WRITE;
/*!40000 ALTER TABLE `inicial_condicao_familiar` DISABLE KEYS */;
INSERT INTO `inicial_condicao_familiar` VALUES (10,'Doença 2','1',7),(11,'Doença','2',7);
/*!40000 ALTER TABLE `inicial_condicao_familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_dados`
--

DROP TABLE IF EXISTS `inicial_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_dados` (
  `usuario_id` int NOT NULL,
  `profissao` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `altura` decimal(3,2) NOT NULL,
  `tipo_sanguineo` varchar(4) NOT NULL,
  `exercicio` varchar(200) NOT NULL,
  `exercicio_frequencia` varchar(200) NOT NULL,
  `fumo_alcool` varchar(200) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  CONSTRAINT `inicial_dados_usuario_id_cf6153bf_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_dados`
--

LOCK TABLES `inicial_dados` WRITE;
/*!40000 ALTER TABLE `inicial_dados` DISABLE KEYS */;
INSERT INTO `inicial_dados` VALUES (7,'Estudante','Casa 124','123124',90.00,1.69,'O+','Exercicio','s','s','2005-07-19','homem-cis'),(11,'Não informada','Não informado','Não informado',0.00,0.00,'na','Nâo informado','n','n','2005-07-19','homem-cis');
/*!40000 ALTER TABLE `inicial_dados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_diagnostico`
--

DROP TABLE IF EXISTS `inicial_diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_diagnostico` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `diagnostico` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_diagnostico_user_id_d25e619a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_diagnostico_user_id_d25e619a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_diagnostico`
--

LOCK TABLES `inicial_diagnostico` WRITE;
/*!40000 ALTER TABLE `inicial_diagnostico` DISABLE KEYS */;
INSERT INTO `inicial_diagnostico` VALUES (2,'Diagnóstico',7),(3,'Diagnóstico 2',7);
/*!40000 ALTER TABLE `inicial_diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_doencas`
--

DROP TABLE IF EXISTS `inicial_doencas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_doencas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `doenca` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_doencas_user_id_9eb50181_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_doencas_user_id_9eb50181_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_doencas`
--

LOCK TABLES `inicial_doencas` WRITE;
/*!40000 ALTER TABLE `inicial_doencas` DISABLE KEYS */;
INSERT INTO `inicial_doencas` VALUES (19,'Doença',7),(20,'Doença 3',7),(21,'Doença 2',7);
/*!40000 ALTER TABLE `inicial_doencas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_hospital`
--

DROP TABLE IF EXISTS `inicial_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_hospital` (
  `cnes` varchar(7) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `municipio` varchar(150) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tempo_emergente` int NOT NULL,
  `tempo_muito_urgente` int NOT NULL,
  `tempo_nao_urgente` int NOT NULL,
  `tempo_pouco_urgente` int NOT NULL,
  `tempo_urgente` int NOT NULL,
  `nota` decimal(4,3) NOT NULL,
  `leitos` int NOT NULL,
  `uti_adulto` int NOT NULL,
  `uti_neonatal` int NOT NULL,
  `uti_pediatrico` int NOT NULL,
  `uti_queimado` int NOT NULL,
  `atualizacao` datetime(6) NOT NULL,
  PRIMARY KEY (`cnes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_hospital`
--

LOCK TABLES `inicial_hospital` WRITE;
/*!40000 ALTER TABLE `inicial_hospital` DISABLE KEYS */;
INSERT INTO `inicial_hospital` VALUES ('10456','Hospital de Base do Distrito Federal','Smhs Quadra 101 Area Especial 1 - Asa Sul','70335900','HOSPITAL_FILANTROPICO','DF','Brasília','6133151450','ncais.hbdf@gmail.com',0,0,0,0,0,0.000,720,58,3,9,0,'2023-12-02 23:52:15.684124'),('10464','Hran','Smhn Quadra 101 - Plano Piloto','70710100','HOSPITAL_PUBLICO','DF','Brasília','61 3254300','Email não informado',0,0,0,0,0,0.000,353,20,0,0,14,'2023-12-02 23:52:15.684124'),('10472','Hrg','Area Especial Setor Central S/n - Gama','72405901','HOSPITAL_PUBLICO','DF','Brasília','Telefone não informado','Email não informado',0,0,0,0,0,0.000,413,20,0,0,0,'2023-12-02 23:52:15.684124'),('10480','Hospital Regional de Ceilandia','Area Especial Qnm 27 1 - Ceilandia Sul','72215270','HOSPITAL_PUBLICO','DF','Brasília','20172000','das.drsc@gmail.com',0,0,0,0,0,0.000,554,10,10,0,0,'2023-12-02 23:52:15.684124'),('10499','Hrt Hospital Regional de Taguatinga','Setor C Norte Area Especial 24 - Taguatinga','72120970','HOSPITAL_PUBLICO','DF','Brasília','(61)20171700','super.sudoeste.df@gmail.com',0,0,0,0,0,0.000,450,8,8,5,0,'2023-12-02 23:52:15.684124'),('10502','Hrs','Quadra 12 Area Reservada 1 - Sobradinho','73010901','HOSPITAL_PUBLICO','DF','Brasília','(61)34879200','gab.cgss@hotmail.com',0,0,0,0,0,0.000,250,8,10,0,0,'2023-12-02 23:52:15.684124'),('10510','Hospital Universitario de Brasilia','Sgan Quadra 605 Unidade 3 Hub S/n - Asa Norte','70310500','HOSPITAL_PUBLICO','DF','Brasília','Telefone não informado','Email não informado',0,0,0,0,0,0.000,226,19,10,0,0,'2023-12-02 23:52:15.684124'),('10529','Hrpl','Avenida W L 04 Setor Hospitalar Oes S/n - Planaltina','73310000','HOSPITAL_PUBLICO','DF','Brasília','(61) 33899169','da.hrpl@gmail.com',0,0,0,0,0,0.000,142,0,0,0,0,'2023-12-02 23:52:15.684124'),('10537','Hospital Materno Infantil Dr Antonio Lisboa','Av L2 Sul Quadra 608 Modula A 2 - Asa Sul','70203900','HOSPITAL_PUBLICO','DF','Brasília','(61)34457500','diretoria.hmib.centrosul@saude.df.gov.br',0,0,0,0,0,0.000,261,10,30,16,0,'2023-12-02 23:52:15.684124'),('10545','Hrbz','Area Especial 6 - Setor Tradicional','72720660','HOSPITAL_PUBLICO','DF','Brasília','(61)2017-1300 R 3920','gab.cgsbz@gmail.com',0,0,0,0,0,0.000,123,0,0,0,0,'2023-12-02 23:52:15.684124'),('10561','Hfa','Setor Sudoeste Sudoeste Cruzeiro Octogonal Area Militar 0 - Cruzeiro','70675731','HOSPITAL_PUBLICO','DF','Brasília','39662555','cnes.hfa@gmail.com',0,0,0,0,0,0.000,80,10,0,0,0,'2023-12-02 23:52:15.684124'),('10618','Hospital Sao Vicente de Paulo Hsvp','St C Sul Qsc Ae Taguatinga Sul 1 1 - Taguatinga Centro','72016010','HOSPITAL_PUBLICO','DF','Brasília','(61)34519700','DGHSVP@SAUDE.DF.GOV.BR; hsvp.sesdf@gmail.com;',0,0,0,0,0,0.000,83,0,0,0,0,'2023-12-02 23:52:15.684124'),('185256','Hospital Santa Lucia Taguatinga','Q Qs 5 Avenida Areal Lote 22 Aguas Claras 22 - Areal Aguas Claras','71955000','HOSPITAL_PRIVADO','DF','Brasília','613214-0008','marcone.aragao@apross.com.br',0,0,0,0,0,0.000,24,0,0,0,0,'2023-12-02 23:52:15.684124'),('223441','Hospital Santa Lucia Gama','A e N 16 Setor Central Lado Oeste 16 - Gama','72460000','HOSPITAL_PRIVADO','DF','Brasília','61-37054000','diretoria@mariaauxiliadora.com.br',0,0,0,0,0,0.000,172,44,0,0,0,'2023-12-02 23:52:15.684124'),('2645157','Hrl','Qd 02 Conj K Area Especial 1 - Paranoa','71570903','HOSPITAL_PUBLICO','DF','Brasília','(61) 2017-1550','gab.hrpa@saude.df.gov.br',0,0,0,0,0,0.000,246,10,0,0,0,'2023-12-02 23:52:15.684124'),('2649497','Hospital Santa Marta Taguatinga','Qse Area Especial 01 e Setor e Sul 17 - Taguatinga Sul','72025110','HOSPITAL_PRIVADO','DF','Brasília','061) 2104-2670','cedoc@hospitalsantamarta.com.br',0,0,0,0,0,0.000,222,40,14,5,0,'2023-12-02 23:52:15.684124'),('2649527','Hospital de Apoio de Brasilia Hab','Area Especial Noroeste W Area Especial 3 - Noroeste','70684831','HOSPITAL_PUBLICO','DF','Brasília','(61) 33443032','dgdas.hab@gmail.com',0,0,0,0,0,0.000,58,0,0,0,0,'2023-12-02 23:52:15.684124'),('2672197','Hrsam Hospital Regional de Samambaia','Qs 614 Conjunto C 12 - Samambaia','72322583','HOSPITAL_PUBLICO','DF','Brasília','(61)20172200 R 3805','dhrsam.srsso@saude.df.gov.br',0,0,0,0,0,0.000,155,27,0,0,0,'2023-12-02 23:52:15.684124'),('2673916','Sarah Brasilia','Smhs Conjunto A 301 - Asa Sul','70335901','HOSPITAL_FILANTROPICO','DF','Brasília','(61)33191111','cncq@sarah.br',0,0,0,0,0,0.000,210,12,0,0,0,'2023-12-02 23:52:15.684124'),('2779366','Oftalmed','Seps 714 914 Conj D Sala 101 e 109 420 A 423 508 A 511 517 e 518 41 - Asa Sul','70390145','HOSPITAL_PRIVADO','DF','Brasília','61 21919191','CREDENCIAMENTO@OFTALMED.COM.BR',0,0,0,0,0,0.000,28,0,0,0,0,'2023-12-02 23:52:15.684124'),('2814897','Hospital Regional do Guara I','Area Especial Qi Lote C 6 - Guara I','71010006','HOSPITAL_PUBLICO','DF','Brasília','20173777','diretoria.hrgu.centrosul@gmail.com',0,0,0,0,0,0.000,58,0,0,0,0,'2023-12-02 23:52:15.684124'),('2815966','Hospital Santa Lucia','Shls 716 Conjunto C Blocos A B e C 716 - Asa Sul','70390700','HOSPITAL_PRIVADO','DF','Brasília','(61) 3445 0000','servicos.medicos@gruposanta.com.br',0,0,0,0,0,0.000,337,51,21,11,0,'2023-12-02 23:52:15.684124'),('2866161','Hospital Anna Nery','Qd 05 Eptc Lote 01 1 - Aguas Claras','71955100','HOSPITAL_PRIVADO','DF','Brasília','6135749700','ti@annanery.com.br',0,0,0,0,0,0.000,42,10,0,0,0,'2023-12-02 23:52:15.684124'),('3000974','Cau Hospital Urologico de Brasilia','Seps 714 914 Conj C Sls 01a08 10 30 - Asa Sul','70390145','HOSPITAL_PRIVADO','DF','Brasília','61 33459375','Email não informado',0,0,0,20,0,3.000,12,0,0,0,0,'2023-12-02 23:52:15.684124'),('3005402','Hospital Santa Luzia','Shls 716 Conj e Lote 5 - Asa Sul','70390903','HOSPITAL_PRIVADO','DF','Brasília','(61)34456033','licenciamentodf@rededor.com.br',0,0,0,0,0,0.000,157,46,10,6,0,'2023-12-02 23:52:15.684124'),('3013162','Hospital Maria Auxiliadora','A e N 16 Setor Central Lado Oeste 16 - Gama','72460000','HOSPITAL_PRIVADO','DF','Brasília','61-37054000','diretoria@mariaauxiliadora.com.br',0,0,0,0,0,0.000,249,73,0,0,0,'2023-12-02 23:52:15.684124'),('3018520','Hospital Sao Francisco','Qnn 28 Modulo C Area Especial 1 - Ceilandia Sul','72220280','HOSPITAL_PRIVADO','DF','Brasília','(61)33789129','diretoria@saofranciscodf.med.br',0,0,0,0,0,0.000,193,20,10,4,0,'2023-12-02 23:52:15.684124'),('3019608','Hospital Santa Helena','Shln Conjunto D S/n - Asa Norte','70770560','HOSPITAL_PRIVADO','DF','Brasília','34456033','licenciamentodf@rededor.com.br',0,0,0,0,0,0.000,156,25,11,2,0,'2023-12-02 23:52:15.684124'),('3019616','Prontonorte','Shln Conjunto G Lote 07 7 - Asa Norte','70310500','HOSPITAL_PRIVADO','DF','Brasília','61 3448 9153','marcone.aragao@gruposanta.com.br',0,0,0,0,0,0.000,231,63,0,0,0,'2023-12-02 23:52:15.684124'),('3025020','Pronto Socorro de Fraturas','Qnm17 Conj H Lote Ceilandia Sul S/n - Ceilandia Sul','72215178','HOSPITAL_PRIVADO','DF','Brasília','6134718181','hcpsf@outlook.com',0,0,0,0,0,0.000,188,0,0,0,0,'2023-12-02 23:52:15.684124'),('3030121','Hospital Anchieta','Especial 8 9 10 Setor C Norte S/n - Taguatinga','72115700','HOSPITAL_PRIVADO','DF','Brasília','6133539000','juridico@hospitalanchieta.com.br',0,0,0,0,0,0.000,217,71,14,10,0,'2023-12-02 23:52:15.684124'),('3048551','Hospital Brasilia','Shis Qi 15 Conj G 15 - Lago Sul','71635550','HOSPITAL_PRIVADO','DF','Brasília','61-3704-9000','hobra@hobra.com.br',0,0,0,0,0,0.000,369,100,0,80,0,'2023-12-02 23:52:15.684124'),('3055450','Cbv','Sgas Quadra 613 Conjunto A Lote 91 - Asa Sul','70200730','HOSPITAL_PRIVADO','DF','Brasília','61 32145012','contabil@cbv.med.br',0,0,0,0,0,0.000,13,0,0,0,0,'2023-12-02 23:52:15.684124'),('3276678','Instituto de Cardiologia e Transplantes do Distrito Federal','Estrada Parque Contorno do Bosque Parte S/n - Cruzeiro Novo','70673900','HOSPITAL_FILANTROPICO','DF','Brasília','(61)34035400','cardiologia@icdf.org.br',0,0,0,0,0,0.000,126,33,2,14,0,'2023-12-02 23:52:15.684124'),('3281108','Clinica Amma','Avenida das Araucarias Lote Pavimento 1 Clinica 785 - Aguas Claras','71936250','HOSPITAL_PRIVADO','DF','Brasília','61 33549292','scsolucaocontabil@gmail.com',0,0,0,0,0,0.000,8,0,0,0,0,'2023-12-02 23:52:15.684124'),('3839206','Df Care Lago Sul','Shis Eql 6 8 Setor de Habitacoes Individuais Sul S/n - Lago Sul','71620400','HOSPITAL_PRIVADO','DF','Brasília','Telefone não informado','adm@dfcare.com.br',0,0,0,0,0,0.000,26,1,0,0,0,'2023-12-02 23:52:15.684124'),('4272374','C I H','St Mansoes Abraao I Chacara 19 6 - Mansoes Abraao I Sa','72579595','HOSPITAL_PRIVADO','DF','Brasília','(61) 99234-4114','ADMCLINICAINTEGRACAOHUMANA@GMAIL.COM',0,120,0,5,106,2.667,90,0,0,0,0,'2023-12-02 23:52:15.684124'),('49867','Hospital Aguas Claras','R Arariba Lote 03 e 5 - Aguas Claras','71927360','HOSPITAL_PRIVADO','DF','Brasília','30474664','Email não informado',0,0,0,0,0,0.000,270,69,0,17,0,'2023-12-02 23:52:15.684124'),('5027438','Hospital do Coracao do Brasil','Shls Quadra 716 Conjunto G 6 - Asa Sul','70100000','HOSPITAL_PRIVADO','DF','Brasília','32134031','licenciamentodf@rededor.com.br',0,0,0,0,0,0.000,57,20,0,0,0,'2023-12-02 23:52:15.684124'),('5085047','Icl','Shi Sul Hpp Qi 09 Conj e Bloco 01 S/n - Lago Sul','71625175','HOSPITAL_PRIVADO','DF','Brasília','61 33643300','carpaneda@gmail.com',0,0,0,0,0,0.000,7,0,0,0,0,'2023-12-02 23:52:15.684124'),('552216','Total Health Brasil Saude e Participacoes','Shls Conjunto A Edif Pio X S/n - Asa Sul','70390906','HOSPITAL_PRIVADO','DF','Brasília','27 30292022','Email não informado',0,0,0,0,0,0.000,18,0,0,0,0,'2023-12-02 23:52:15.684124'),('5717515','Hrsm','Ac 102 Blocos A B C D S/n - Santa Maria','72502100','HOSPITAL_FILANTROPICO','DF','Brasília','33151265','nuprochrsm@gmail.com',0,0,0,0,0,0.000,377,40,20,0,0,'2023-12-02 23:52:15.684124'),('5796423','Insono','Qnc 11 Lote Andar 1 2 e 3 5 - Taguatinga Norte','72115610','HOSPITAL_PRIVADO','DF','Brasília','61 81292939','Email não informado',0,0,0,0,0,0.000,4,0,0,0,0,'2023-12-02 23:52:15.684124'),('5831628','Clinica Recanto','Nucleo Rural Alexandre Gusmao 9 - Ceilandia','72215150','HOSPITAL_PRIVADO','DF','Brasília','61-35401261','cliniarecanto@bol.com.br',0,0,0,0,0,0.000,100,0,0,0,0,'2023-12-02 23:52:15.684124'),('5927579','Hospital de Forca Aerea de Brasilia Hfab','Area Militar do Aeroporto de Brasilia S/n - Lago Sul','71607900','HOSPITAL_PUBLICO','DF','Brasília','61 33647700','hfab.secretaria@fab.mil.br',0,0,0,0,0,0.000,26,5,0,0,0,'2023-12-02 23:52:15.684124'),('6243495','Home Hospital Ortopedico e Medicina Especializada','Sgas 613 Conjunto C S/n - Asa Sul','70200730','HOSPITAL_PRIVADO','DF','Brasília','38782659','cicerohdantas@homehospital.com.br',0,0,0,0,0,0.000,112,52,0,0,0,'2023-12-02 23:52:15.684124'),('6362729','Hospital Naval de Brasilia','W 5 e Q 711 911 Sep Sul S/n - Asa Sul','70310500','HOSPITAL_PUBLICO','DF','Brasília','Telefone não informado','Email não informado',0,0,0,0,0,0.000,11,0,0,0,0,'2023-12-02 23:52:15.684124'),('6730914','Hospital Sao Mateus','Sres Quadra 02 Area Especial 1 - Cruzeiro Velho','70648010','HOSPITAL_FILANTROPICO','DF','Brasília','33620045','PAULOHENRIQUE@OFFRIRE.ORG.BR',0,0,0,0,0,0.000,32,20,0,0,0,'2023-12-02 23:52:15.684124'),('6876617','Hospital da Crianca de Brasilia Jose Alencar Hcb','Aenw 3 Lote A Area Especial 4 - Asa Norte','70684831','HOSPITAL_PUBLICO','DF','Brasília','Telefone não informado','nec@hcb.org.br',0,0,0,0,0,0.000,198,0,0,38,0,'2023-12-02 23:52:15.684124'),('6921434','Hospital Alvorada de Brasilia','Shcs Eq 710 910 Conj B S/n - Asa Sul','70390108','HOSPITAL_PRIVADO','DF','Brasília','(11) 2389-3101','rafaella.forgiarini@uhgbrasil.com,br',0,0,0,0,0,0.000,106,22,0,0,0,'2023-12-02 23:52:15.684124'),('7161158','Hospital Militar de Area de Brasilia','Quadra Residencial de Oficiais S/n - Setor Militar Urbano','70630000','HOSPITAL_PUBLICO','DF','Brasília','(61)3362-6429','Email não informado',0,0,0,0,0,0.000,20,10,0,0,0,'2023-12-02 23:52:15.684124'),('7242441','Rm Clinica de Reabilitacao','Rodovia Df 440 Km 13 Nucleo Rural 1 - Sobradinho','73005080','HOSPITAL_PRIVADO','DF','Brasília','30343536','contato@rmclinica.net',0,0,0,0,0,0.000,50,0,0,0,0,'2023-12-02 23:52:15.684124'),('7344538','Estancia Resiliencia','Lagoa Bonita Chacara Sol Nascente 3 - Planaltina','73380990','HOSPITAL_PRIVADO','DF','Brasília','61 30396990','financeiro@estanciaresiliencia.com.br',0,0,0,0,0,0.000,100,0,0,0,0,'2023-12-02 23:52:15.684124'),('735078','Verse In Verse Dia','Lago Oeste Df 001 Km 12 Rua 05 Chacara 05 S/n - Nucleo Rural Lago Oe','73100000','HOSPITAL_PRIVADO','DF','Brasília','61 92296471','Email não informado',0,0,0,0,0,0.000,90,0,0,0,0,'2023-12-02 23:52:15.684124'),('7477090','Clinica do Renascer','Desembarg Colombo Cerqu Estr da Cachoeirinha Cha 530 - Paranoa','71507990','HOSPITAL_PRIVADO','DF','Brasília','61 33273533','Email não informado',0,0,0,0,0,0.000,58,0,0,0,0,'2023-12-02 23:52:15.684124'),('7907958','Ser Clinica de Saude Mental','Shin Ca 9 Lote Proximo Ao Iguatemi 19 - Lago Norte','71503509','HOSPITAL_PRIVADO','DF','Brasília','6134685700','RH@SERSAUDEMENTAL.COM.BR',0,0,0,0,0,0.000,51,0,0,0,0,'2023-12-02 23:52:15.684124'),('797146','Hospital Brasiliense','Seps 713 913 Conj G S/n - Asa Sul','70390135','HOSPITAL_PRIVADO','DF','Brasília','61 32554106','BRUNO.EDUARDO@HAPVIDA.COM.BR',0,0,0,0,0,0.000,23,6,3,0,0,'2023-12-02 23:52:15.684124'),('7978243','Pai Pronto Atendimento Infantil','Shls Quadra 716 Conjunto C Bloco 03 Ua 01 e Ua 04 S/n - Asa Sul','70390904','HOSPITAL_PRIVADO','DF','Brasília','32458083','prontoatendimentoinfantil@gmail.com',0,0,0,0,0,0.000,1,0,0,0,0,'2023-12-02 23:52:15.684124'),('7978642','Hospital Daher Lago Sul Sa','Q Shis Qi 7 Area Especial F S/n - Setor de Habitacoes','71615660','HOSPITAL_PRIVADO','DF','Brasília','061 2484848','Email não informado',0,0,0,0,0,0.000,154,50,0,0,0,'2023-12-02 23:52:15.684124'),('7981457','Maternidade Brasilia','Shcs Qmsw Lote 1 - Sudoeste','70680400','HOSPITAL_PRIVADO','DF','Brasília','(61)33151000','diretoria@maternidadebrasilia.com.br',0,0,0,0,0,0.000,155,70,30,35,0,'2023-12-02 23:52:15.684124'),('9040021','Domed','Qnm 17 Conjunto H Lote 16 18 Andar S/n - Ceilandia Sul Ceila','72215178','HOSPITAL_PRIVADO','DF','Brasília','62 39565850','jcacontabilidade@terra.com.br',0,0,0,0,0,0.000,20,19,0,0,0,'2023-12-02 23:52:15.684124'),('9052682','Clinica Khenosis','Mansoes Abraao I Chacara 19 65 - Mansoes Abraao I Sa','72579595','HOSPITAL_PRIVADO','DF','Brasília','61 92935757','supervisaokhenosis@gmail.com',0,0,0,0,0,0.000,110,0,0,0,0,'2023-12-02 23:52:15.684124'),('9307524','Clinica Crescer Humanizada Em Psiquiatria','Chacara 35 35 - Riacho Fundo I','71827810','HOSPITAL_PRIVADO','DF','Brasília','61 37034046','contabilidade@clinicrescer.com.br',0,0,0,0,0,0.000,150,0,0,0,0,'2023-12-02 23:52:15.684124'),('9551948','Hospital Santa Marta Asa Norte','Q Sgan 608 Conjunto F Bloco 1 - Asa Norte','70830356','HOSPITAL_PRIVADO','DF','Brasília','61-3701-4917','CEDOC@REDEVIVAR.COM.BR',0,0,0,0,0,0.000,41,8,0,0,0,'2023-12-02 23:52:15.684124'),('9699848','Hospital Santa Lucia Norte','Shln Conjunto G Lote 07 7 - Asa Norte','70310500','HOSPITAL_PRIVADO','DF','Brasília','61 3448-9100','marcone.aragao@gruposanta.com.br',0,0,0,0,0,0.000,181,47,0,0,0,'2023-12-02 23:52:15.684124'),('9710248','Centro Clinico Jardim Botanico','das Paineiras Eq Bloco A Sala 101 A 1 S/n - Setor Habitacional J','71681120','HOSPITAL_PRIVADO','DF','Brasília','61 99250691','administracao@ccjb.com.br',0,0,0,0,0,0.000,6,0,0,0,0,'2023-12-02 23:52:15.684124'),('9727353','Df Star','Q Sga Sul Quadra 914 Conjunto H Parte S/n - Asa Sul','70390140','HOSPITAL_PRIVADO','DF','Brasília','6134456033','licenciamentodf@rededor.com.br',0,0,0,0,0,0.000,69,20,0,0,0,'2023-12-02 23:52:15.684124'),('9748202','Unidade Brasilia Iv','Sgas 613 Conj D S/n - Asa Sul','70200730','HOSPITAL_FILANTROPICO','DF','Brasília','11 3394-3801','assuntos.regulatorios@hsl.org.br',0,0,0,0,0,0.000,106,30,0,0,0,'2023-12-02 23:52:15.684124'),('9914234','Hospital da Plastica de Brasilia','Sgas 616 Bloco A Conj A Salas 101 A 129 Ed Linea Vitta S/n - Asa Sul','70200760','HOSPITAL_PRIVADO','DF','Brasília','3346-7169','hospitaldaplasticadebrasilia@outlook.com',0,0,0,0,0,0.000,13,0,0,0,0,'2023-12-02 23:52:15.684124'),('9928553','Comunidade Terapeutica Esperanca','Nucleo Rural Alexandre Gusmao Reserva e Gleba 03 Incra 08 10 - Brazlandia','72701997','HOSPITAL_FILANTROPICO','DF','Brasília','Telefone não informado','aconsola@gmail.com',0,15,0,0,0,4.800,30,0,0,0,0,'2023-12-04 00:02:56.227003');
/*!40000 ALTER TABLE `inicial_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_internacao`
--

DROP TABLE IF EXISTS `inicial_internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_internacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `internacao` varchar(200) NOT NULL,
  `tempo` int NOT NULL,
  `data` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_internacao_user_id_4819dd07_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_internacao_user_id_4819dd07_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_internacao`
--

LOCK TABLES `inicial_internacao` WRITE;
/*!40000 ALTER TABLE `inicial_internacao` DISABLE KEYS */;
INSERT INTO `inicial_internacao` VALUES (3,'Internação 1',10,'2023-12-03',7),(4,'Internação 2',10,'2023-12-03',7),(5,'Internação 3',10,'2023-12-03',7);
/*!40000 ALTER TABLE `inicial_internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_medicamento`
--

DROP TABLE IF EXISTS `inicial_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_medicamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(200) NOT NULL,
  `medicamento` varchar(200) NOT NULL,
  `frequencia` varchar(200) NOT NULL,
  `numero_frequencia` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_medicamento_user_id_9b4eb675_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_medicamento_user_id_9b4eb675_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_medicamento`
--

LOCK TABLES `inicial_medicamento` WRITE;
/*!40000 ALTER TABLE `inicial_medicamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicial_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicial_sintomas`
--

DROP TABLE IF EXISTS `inicial_sintomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicial_sintomas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sintoma` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicial_sintomas_user_id_2fa177ac_fk_auth_user_id` (`user_id`),
  CONSTRAINT `inicial_sintomas_user_id_2fa177ac_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicial_sintomas`
--

LOCK TABLES `inicial_sintomas` WRITE;
/*!40000 ALTER TABLE `inicial_sintomas` DISABLE KEYS */;
INSERT INTO `inicial_sintomas` VALUES (4,'Sintoma 1',7),(5,'Sintoma 2',7);
/*!40000 ALTER TABLE `inicial_sintomas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 22:08:11
