/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.4.28-MariaDB : Database - blindassistanceapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blindassistanceapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `blindassistanceapp`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add blind',7,'add_blind'),
(26,'Can change blind',7,'change_blind'),
(27,'Can delete blind',7,'delete_blind'),
(28,'Can view blind',7,'view_blind'),
(29,'Can add caretaker',8,'add_caretaker'),
(30,'Can change caretaker',8,'change_caretaker'),
(31,'Can delete caretaker',8,'delete_caretaker'),
(32,'Can view caretaker',8,'view_caretaker'),
(33,'Can add familymembers',9,'add_familymembers'),
(34,'Can change familymembers',9,'change_familymembers'),
(35,'Can delete familymembers',9,'delete_familymembers'),
(36,'Can view familymembers',9,'view_familymembers'),
(37,'Can add login',10,'add_login'),
(38,'Can change login',10,'change_login'),
(39,'Can delete login',10,'delete_login'),
(40,'Can view login',10,'view_login'),
(41,'Can add review',11,'add_review'),
(42,'Can change review',11,'change_review'),
(43,'Can delete review',11,'delete_review'),
(44,'Can view review',11,'view_review'),
(45,'Can add messages',12,'add_messages'),
(46,'Can change messages',12,'change_messages'),
(47,'Can delete messages',12,'delete_messages'),
(48,'Can view messages',12,'view_messages'),
(49,'Can add location',13,'add_location'),
(50,'Can change location',13,'change_location'),
(51,'Can delete location',13,'delete_location'),
(52,'Can view location',13,'view_location'),
(53,'Can add emergency',14,'add_emergency'),
(54,'Can change emergency',14,'change_emergency'),
(55,'Can delete emergency',14,'delete_emergency'),
(56,'Can view emergency',14,'view_emergency'),
(57,'Can add complaint',15,'add_complaint'),
(58,'Can change complaint',15,'change_complaint'),
(59,'Can delete complaint',15,'delete_complaint'),
(60,'Can view complaint',15,'view_complaint'),
(61,'Can add sendmessage',16,'add_sendmessage'),
(62,'Can change sendmessage',16,'change_sendmessage'),
(63,'Can delete sendmessage',16,'delete_sendmessage'),
(64,'Can view sendmessage',16,'view_sendmessage');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `blindassistanceapp_blind` */

DROP TABLE IF EXISTS `blindassistanceapp_blind`;

CREATE TABLE `blindassistanceapp_blind` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `housename` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_b_LOGIN_id_0eff6d93_fk_BlindAssi` (`LOGIN_id`),
  CONSTRAINT `BlindAssistanceApp_b_LOGIN_id_0eff6d93_fk_BlindAssi` FOREIGN KEY (`LOGIN_id`) REFERENCES `blindassistanceapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_blind` */

insert  into `blindassistanceapp_blind`(`id`,`name`,`place`,`housename`,`post`,`pin`,`phone`,`email`,`photo`,`LOGIN_id`) values 
(3,'misra','wert','wert','pulikkal','12345','123456789','shana@gmail.com','/media/20231022-121314.jpg',6),
(4,'shahama','manzil','manzil','chirayil','673638','9234567833','shahama@gmail.com','/media/20231025-150322.jpg',13),
(6,'nasiha','kjjo9','kjjo9','cdka','234686','7000000000','kxhlk','/media/20231125-100530.jpg',15);

/*Table structure for table `blindassistanceapp_caretaker` */

DROP TABLE IF EXISTS `blindassistanceapp_caretaker`;

CREATE TABLE `blindassistanceapp_caretaker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `housename` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_c_LOGIN_id_1ed10b5d_fk_BlindAssi` (`LOGIN_id`),
  CONSTRAINT `BlindAssistanceApp_c_LOGIN_id_1ed10b5d_fk_BlindAssi` FOREIGN KEY (`LOGIN_id`) REFERENCES `blindassistanceapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_caretaker` */

insert  into `blindassistanceapp_caretaker`(`id`,`name`,`place`,`housename`,`post`,`pin`,`phone`,`email`,`photo`,`LOGIN_id`) values 
(1,'nazli','tirur','abc','def','123','123456789','qwerty','',2),
(2,'basila','neeradd','aleeri','pulikkal','12345','123456789','basila@gmail.com','/media/20231009-104132.jpg',3),
(3,'bob','manjeri','bob house','bob post','123456','987654321','bob@gmail.com','/media/20231125-121604.jpg',16);

/*Table structure for table `blindassistanceapp_complaint` */

DROP TABLE IF EXISTS `blindassistanceapp_complaint`;

CREATE TABLE `blindassistanceapp_complaint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `reply` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `CARETAKER_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_c_CARETAKER_id_35b8b8ee_fk_BlindAssi` (`CARETAKER_id`),
  CONSTRAINT `BlindAssistanceApp_c_CARETAKER_id_35b8b8ee_fk_BlindAssi` FOREIGN KEY (`CARETAKER_id`) REFERENCES `blindassistanceapp_caretaker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_complaint` */

insert  into `blindassistanceapp_complaint`(`id`,`complaint`,`date`,`reply`,`status`,`CARETAKER_id`) values 
(2,'asdfghjkl','2023-10-08','qwerty','Replied',1),
(3,'asdfghjkl','2023-10-08','thank you','Replied',1),
(4,'djkka','2023-10-22','','Replied',1),
(5,'fgh','2023-10-22','','Replied',2),
(6,'dgsf','2023-11-02','pending','pending',2),
(7,'','2023-11-25','pending','pending',2);

/*Table structure for table `blindassistanceapp_emergency` */

DROP TABLE IF EXISTS `blindassistanceapp_emergency`;

CREATE TABLE `blindassistanceapp_emergency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emergency` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `BLIND_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_e_BLIND_id_4263fa9d_fk_BlindAssi` (`BLIND_id`),
  CONSTRAINT `BlindAssistanceApp_e_BLIND_id_4263fa9d_fk_BlindAssi` FOREIGN KEY (`BLIND_id`) REFERENCES `blindassistanceapp_blind` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_emergency` */

insert  into `blindassistanceapp_emergency`(`id`,`emergency`,`latitude`,`longitude`,`BLIND_id`) values 
(2,'save me','1234','6789',3);

/*Table structure for table `blindassistanceapp_familymembers` */

DROP TABLE IF EXISTS `blindassistanceapp_familymembers`;

CREATE TABLE `blindassistanceapp_familymembers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `housename` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `mobileno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `BLIND_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_f_BLIND_id_d7faccfb_fk_BlindAssi` (`BLIND_id`),
  CONSTRAINT `BlindAssistanceApp_f_BLIND_id_d7faccfb_fk_BlindAssi` FOREIGN KEY (`BLIND_id`) REFERENCES `blindassistanceapp_blind` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_familymembers` */

/*Table structure for table `blindassistanceapp_location` */

DROP TABLE IF EXISTS `blindassistanceapp_location`;

CREATE TABLE `blindassistanceapp_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `BLIND_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_l_BLIND_id_c8f35d7b_fk_BlindAssi` (`BLIND_id`),
  CONSTRAINT `BlindAssistanceApp_l_BLIND_id_c8f35d7b_fk_BlindAssi` FOREIGN KEY (`BLIND_id`) REFERENCES `blindassistanceapp_blind` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_location` */

/*Table structure for table `blindassistanceapp_login` */

DROP TABLE IF EXISTS `blindassistanceapp_login`;

CREATE TABLE `blindassistanceapp_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_login` */

insert  into `blindassistanceapp_login`(`id`,`username`,`password`,`type`) values 
(1,'misra@gmail.com','12345','admin'),
(2,'nazli@gmail.com','nazli','caretaker'),
(3,'basila@gmail.com','basilaa','caretaker'),
(4,'shana@gmail.com','1','caretaker'),
(5,'shana@gmail.com','2','caretaker'),
(6,'shana@gmail.com','3','blind'),
(7,'shana@gmail.com','4','family member'),
(8,'shana@gmail.com','5','family member'),
(9,'shana@gmail.com','6','family member'),
(10,'shana@gmail.com','7','family member'),
(11,'shana@gmail.com','8','family member'),
(12,'reesha@gmail.com','098765432','family member'),
(13,'shahama@gmail.com','9234567833','blind'),
(14,'shamna@gmail.com','123456789987','blind'),
(15,'kxhlk','7000000000','blind'),
(16,'bob@gmail.com','bob','caretaker');

/*Table structure for table `blindassistanceapp_messages` */

DROP TABLE IF EXISTS `blindassistanceapp_messages`;

CREATE TABLE `blindassistanceapp_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mesaaage` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `BLIND_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_m_BLIND_id_9b6441dc_fk_BlindAssi` (`BLIND_id`),
  CONSTRAINT `BlindAssistanceApp_m_BLIND_id_9b6441dc_fk_BlindAssi` FOREIGN KEY (`BLIND_id`) REFERENCES `blindassistanceapp_blind` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_messages` */

insert  into `blindassistanceapp_messages`(`id`,`mesaaage`,`date`,`BLIND_id`) values 
(4,'sdfghj','2023-10-22',3),
(8,'how are you?','2023-10-25',4);

/*Table structure for table `blindassistanceapp_review` */

DROP TABLE IF EXISTS `blindassistanceapp_review`;

CREATE TABLE `blindassistanceapp_review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `review` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `CARETAKER_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_r_CARETAKER_id_66d643c6_fk_BlindAssi` (`CARETAKER_id`),
  CONSTRAINT `BlindAssistanceApp_r_CARETAKER_id_66d643c6_fk_BlindAssi` FOREIGN KEY (`CARETAKER_id`) REFERENCES `blindassistanceapp_caretaker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_review` */

insert  into `blindassistanceapp_review`(`id`,`review`,`date`,`CARETAKER_id`) values 
(1,'welcome','2023-10-09',1);

/*Table structure for table `blindassistanceapp_sendmessage` */

DROP TABLE IF EXISTS `blindassistanceapp_sendmessage`;

CREATE TABLE `blindassistanceapp_sendmessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mesaaage` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `BLIND_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BlindAssistanceApp_s_BLIND_id_40d3ab88_fk_BlindAssi` (`BLIND_id`),
  CONSTRAINT `BlindAssistanceApp_s_BLIND_id_40d3ab88_fk_BlindAssi` FOREIGN KEY (`BLIND_id`) REFERENCES `blindassistanceapp_blind` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `blindassistanceapp_sendmessage` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(7,'BlindAssistanceApp','blind'),
(8,'BlindAssistanceApp','caretaker'),
(15,'BlindAssistanceApp','complaint'),
(14,'BlindAssistanceApp','emergency'),
(9,'BlindAssistanceApp','familymembers'),
(13,'BlindAssistanceApp','location'),
(10,'BlindAssistanceApp','login'),
(12,'BlindAssistanceApp','messages'),
(11,'BlindAssistanceApp','review'),
(16,'BlindAssistanceApp','sendmessage'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'BlindAssistanceApp','0001_initial','2023-10-01 10:50:37.005210'),
(2,'contenttypes','0001_initial','2023-10-01 10:50:37.133107'),
(3,'auth','0001_initial','2023-10-01 10:50:38.041255'),
(4,'admin','0001_initial','2023-10-01 10:50:38.247139'),
(5,'admin','0002_logentry_remove_auto_add','2023-10-01 10:50:38.279824'),
(6,'admin','0003_logentry_add_action_flag_choices','2023-10-01 10:50:38.284797'),
(7,'contenttypes','0002_remove_content_type_name','2023-10-01 10:50:38.407956'),
(8,'auth','0002_alter_permission_name_max_length','2023-10-01 10:50:38.499265'),
(9,'auth','0003_alter_user_email_max_length','2023-10-01 10:50:38.529418'),
(10,'auth','0004_alter_user_username_opts','2023-10-01 10:50:38.544231'),
(11,'auth','0005_alter_user_last_login_null','2023-10-01 10:50:38.633381'),
(12,'auth','0006_require_contenttypes_0002','2023-10-01 10:50:38.638022'),
(13,'auth','0007_alter_validators_add_error_messages','2023-10-01 10:50:38.644565'),
(14,'auth','0008_alter_user_username_max_length','2023-10-01 10:50:38.693619'),
(15,'auth','0009_alter_user_last_name_max_length','2023-10-01 10:50:38.713356'),
(16,'auth','0010_alter_group_name_max_length','2023-10-01 10:50:38.742670'),
(17,'auth','0011_update_proxy_permissions','2023-10-01 10:50:38.778928'),
(18,'auth','0012_alter_user_first_name_max_length','2023-10-01 10:50:38.824823'),
(19,'sessions','0001_initial','2023-10-01 10:50:38.886491'),
(20,'BlindAssistanceApp','0002_alter_complaint_date','2023-10-08 11:14:17.956864'),
(21,'BlindAssistanceApp','0003_remove_messages_familymembers_messages_blind_and_more','2023-10-22 08:45:43.972444');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('97wpkk75qnazarlkri74zjivjbw3yv8w','eyJsaWQiOjF9:1qwmL9:ogYAQz6Zy159BeE4Df5U65__rjoBzUJ3_08Q0eE5fb0','2023-11-11 16:39:11.082351'),
('9fg7amxfcszrguaey4fu9nnwb82kk2c1','eyJsaWQiOjN9:1r6o2t:oR2U0mTH9EHPniZpUwzrbZZyuhy8iYvqmAK11mHycdQ','2023-12-09 08:29:47.203406'),
('g9s327184kjszwf0veikddf3qzvn3nqh','eyJsaWQiOjF9:1r6jSp:7R6kFZl0_HtVRblbcRdcaXQgWfdQDsajWyTZFULWBbk','2023-12-09 03:36:15.125706'),
('i02lsceaq93200q2u8pjsdnkxnkbatl2','eyJsaWQiOjF9:1qwb2S:4rkVrHsVADbnSsmiJZJrbXg-IBocNB1BYTF9EOfnE6E','2023-11-11 04:35:08.076095'),
('j6spwe42z0k5hswvps3aexh0cdp2bxs8','eyJsaWQiOjF9:1r6jKQ:s3SpbuuXpR4Bpx3xLE_zbVQiJd2pQEr-9y9BWwXZ8GI','2023-12-09 03:27:34.141790'),
('mzg8ffi1hjf0haky02gvhl2d8yykm1th','eyJsaWQiOjF9:1r6jHl:tOfHhG1tDYJunRVukA4Zb7Lfw1__PeyG1XieE3Rk05g','2023-12-09 03:24:49.813503'),
('uyot4nok5khoyak84s02wbcti0j235ed','eyJsaWQiOjN9:1r6nCi:Y-NpWeGb2oR0ut9iul2WP8HVTL-v7cRoI4PhWRYcamo','2023-12-09 07:35:52.684733'),
('v3aul65blfz9ht71lurttj0g4rzeczjc','eyJsaWQiOjF9:1qzeBa:LkEWyHkwyjScpsU-rVsJhgPGWdUTghKD6QBCiSWBYbw','2023-11-19 14:33:10.361721'),
('ymhbq0lo544q42djzrhiwkdt53ncnrmb','eyJsaWQiOjF9:1qqUUv:tiYoc5mLG6DKNr_07FRqRS9QZkB5-CQb1_ZZkFOkoaE','2023-10-25 08:23:17.950947');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
