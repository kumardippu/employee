/*
SQLyog Community v12.09 (32 bit)
MySQL - 5.6.35-log : Database - pf_team
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pf_team` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pf_team`;

/*Table structure for table `tbl_employee` */

DROP TABLE IF EXISTS `tbl_employee`;

CREATE TABLE `tbl_employee` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `managerId` int(11) DEFAULT NULL,
  `managerName` varchar(200) DEFAULT NULL,
  `reports` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `cellPhone` varchar(15) DEFAULT NULL,
  `officePhone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `twitterId` varchar(100) DEFAULT NULL,
  `skypeid` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_employee` */

insert  into `tbl_employee`(`id`,`firstName`,`lastName`,`managerId`,`managerName`,`reports`,`title`,`department`,`cellPhone`,`officePhone`,`email`,`city`,`pic`,`twitterId`,`skypeid`,`dob`,`doj`,`created_on`,`updated_on`,`status`) values (1,'Shah Suriye','Rubhen',0,NULL,1,'VP','Seller Performance','+60124541611','+60124541611','shah.suriye@lazada.com.my','KL','1.jpg',NULL,'shah.suriye.rubhen',NULL,NULL,'2017-08-29 08:08:50','0000-00-00 00:00:00',1),(2,'Saravanan','Karapiah',1,'Shah Suriye Rubhen',2,'Sr Manager','Seller Performance','+60129050690','+60129050690','saravanan.karapiah@lazada.com.my','KL','2.jpg',NULL,'vanan1980',NULL,NULL,'2017-08-29 07:18:00','0000-00-00 00:00:00',1),(3,'Dippu','Kumar',2,'Saravanan Karapiah',NULL,'Sr. Team Lead','Seller Performance','+60143378950','+60143378950','dippu.kumar@lazada.com.my','KL','3.jpg',NULL,'kumardippu',NULL,NULL,'2017-08-29 06:43:31','0000-00-00 00:00:00',1),(4,'Prashan Selva','Rajah',2,'Saravanan Karapiah',NULL,'Analyst','Seller Performance','+60122700323','+60122700323','prashan.selva@lazada.com.my','KL','4.jpg',NULL,'prashan162',NULL,NULL,'2017-08-29 08:10:12','0000-00-00 00:00:00',1),(5,'Roysten','Raj',2,'Saravanan Karapiah',NULL,'Associate','Seller Performance',NULL,NULL,'roysten.raj@lazada.com.my','KL','5.jpg',NULL,'roysten.vai',NULL,NULL,'2017-08-29 08:11:17','0000-00-00 00:00:00',1),(6,'Roy Ng Chun','Sean',2,'Saravanan Karapiah',NULL,'Senior Operations Associate','Seller Performance','','',NULL,NULL,'6.jpg',NULL,'roy.ng91',NULL,NULL,'2017-08-29 08:14:57','0000-00-00 00:00:00',1),(7,'Mohanadass','Monogaran',2,'Saravanan Karapiah',NULL,'Senior Operations Associate','Seller Performance','+60125123595','+60125123595',NULL,NULL,'7.jpg',NULL,'mohanadass1234',NULL,NULL,'2017-08-29 08:15:07','0000-00-00 00:00:00',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
