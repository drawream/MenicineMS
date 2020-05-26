/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.27-community-nt : Database - db_studentinfo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_studentinfo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_studentinfo`;

/*Table structure for table `t_grade` */

DROP TABLE IF EXISTS `t_grade`;

CREATE TABLE `t_grade` (
  `id` int(11) NOT NULL auto_increment,
  `gradeName` varchar(20) default NULL,
  `gradeDesc` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_grade` */

insert  into `t_grade`(`id`,`gradeName`,`gradeDesc`) values (33,'德仁堂大药房','主要服务范围是中西药制剂、中药饮片零售。'),(34,'京北大药房','京北大药房于2014年10月13日登记注册，有最好的产品和专业的销售和技术团队，为客户提供最好的产品、良好的技术支持、健全的售后服务。'),(35,'宝芝林大药房','宝芝林大药房汇聚了国内外各种抗肿瘤药物1000多个品种，肝病用药、心血管药、糖尿病药及其它各类专科用药5000多种。公司旗下拥有七家门店：肿瘤专科店、东川店、龟岗店、大德店、中山医药店、恒信店、南医等。');

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `stuId` int(11) NOT NULL auto_increment,
  `stuNo` varchar(20) default NULL,
  `stuName` varchar(10) default NULL,
  `sex` varchar(5) default NULL,
  `birthday` date default NULL,
  `gradeId` int(11) default NULL,
  `email` varchar(20) default NULL,
  `stuDesc` varchar(1000) default NULL,
  PRIMARY KEY  (`stuId`),
  KEY `FK_t_student` (`gradeId`),
  CONSTRAINT `FK_t_student` FOREIGN KEY (`gradeId`) REFERENCES `t_grade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`stuId`,`stuNo`,`stuName`,`sex`,`birthday`,`gradeId`,`email`,`stuDesc`) values (36,'123123','陈金平','中药','2019-11-27',33,'2019-12-18','dfasd'),(37,'123','感冒灵','中药','2019-11-27',33,'2019-12-18','fsdaf'),(38,'123','感冒灵','中药','2019-11-27',33,'2019-12-18','fsdaf'),(39,'124','蒲公英颗粒','中药','2019-10-27',35,'2020-12-18','清热消炎，用于上呼吸道感染'),(40,'125','三七粉','中药','2018-11-27',33,'2021-02-08','养生药品'),(41,'126','西洋参','中药','2017-06-27',33,'2019-01-15','西洋参片，参香四溢，补气养血'),(42,'127','清肺化痰丸','中药','2019-11-27',34,'2011-04-18','降气化痰'),(43,'128','通窍鼻炎颗粒','西药','2019-11-27',35,'2019-12-18','用于鼻塞，鼻炎'),(44,'3862','Harry','中药','2019-11-27',34,'2019-12-18','Male'),(45,'3201','Manuel','中药','2019-11-27',34,'2019-12-18','Male'),(46,'2482','Javier','中药','2019-11-27',33,'2019-12-18','Male'),(47,'3773','Aiden','中药','2019-11-27',33,'2019-12-18','Male'),(48,'5277','Rylee','中药','2019-11-27',33,'2019-12-18','Female'),(49,'1458','Wade','中药','2019-11-27',34,'2019-12-18','Male'),(50,'2476','Tara','中药','2019-11-27',34,'2019-12-18','Female'),(51,'2218','Doris','中药','2019-11-27',33,'2019-12-18','Female'),(52,'1480','Tania','中药','2019-11-27',33,'2019-12-18','Female'),(53,'4150','Owen','中药','2019-11-27',34,'2019-12-18','Male'),(54,'3263','Jacob','中药','2019-11-27',34,'2019-12-18','Male'),(55,'1890','Kurt','西药','2019-11-27',34,'2019-12-18','Male'),(56,'1856','Samantha','西药','2019-11-27',33,'2019-12-18','Female'),(57,'1636','Henry','西药','2019-11-27',34,'2019-12-18','Male'),(58,'3416','Isla','西药','2019-11-27',33,'2019-12-18','Female'),(59,'1834','Liam','西药','2019-11-27',33,'2019-12-18','Male'),(60,'2571','Phoebe','西药','2019-11-27',33,'2019-12-18','Female'),(61,'4310','Henry','西药','2019-11-27',33,'2019-12-18','Male'),(62,'4473','Anthony','西药','2019-11-27',34,'2019-12-18','Male'),(63,'1321','Peter','西药','2019-11-27',33,'2019-12-18','Male'),(64,'4211','Tiffany','西药','2019-11-27',34,'2019-12-18','Female'),(65,'3798','Sylvia','西药','2019-11-27',33,'2019-12-18','Female'),(66,'2290','Liam','西药','2019-11-27',33,'2019-12-18','Male'),(67,'4530','Kurt','西药','2019-11-27',33,'2019-12-18','Male'),(68,'4778','Erick','西药','2019-11-27',34,'2019-12-18','Male'),(69,'2631','Matthew','西药','2019-11-27',33,'2019-12-18','Male'),(70,'3790','Oliver','西药','2019-11-27',33,'2019-12-18','Male'),(71,'1283','Thea','西药','2019-11-27',34,'2019-12-18','Female'),(72,'4549','Johnathan','西药','2019-11-27',33,'2019-12-18','Male'),(73,'4514','Denis','西药','2019-11-27',34,'2019-12-18','Male');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`userName`,`password`) values (1,'java1234','123456'),(2,'admin','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
