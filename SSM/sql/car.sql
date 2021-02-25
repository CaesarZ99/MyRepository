/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.20 : Database - car
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `car`;

/*Table structure for table `tb_company` */

DROP TABLE IF EXISTS `tb_company`;

CREATE TABLE `tb_company` (
  `comid` mediumint NOT NULL AUTO_INCREMENT,
  `comName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comLia` varchar(10) NOT NULL,
  `comPhone` varchar(20) NOT NULL,
  `comZip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comLoc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_company` */

insert  into `tb_company`(`comid`,`comName`,`comLia`,`comPhone`,`comZip`,`comLoc`) values 
(1,'阿斯顿撒','2222','18571127397','432100','湖北省'),
(3,'阿斯顿撒','1111','18571127397','432100','湖北省'),
(6,'111','sad','18571127397','432100','湖北省');

/*Table structure for table `tb_customer` */

DROP TABLE IF EXISTS `tb_customer`;

CREATE TABLE `tb_customer` (
  `cusId` int NOT NULL AUTO_INCREMENT,
  `cusName` varchar(20) NOT NULL,
  `cusGender` varchar(3) NOT NULL,
  `cusPhone` varchar(13) NOT NULL,
  `cusCid` varchar(20) NOT NULL,
  `cusLoc` varchar(20) NOT NULL,
  PRIMARY KEY (`cusId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tb_customer` */

insert  into `tb_customer`(`cusId`,`cusName`,`cusGender`,`cusPhone`,`cusCid`,`cusLoc`) values 
(1,'刘文康','男','1857****397','4209211111111','武汉'),
(2,'马云','男','****','***','杭州');

/*Table structure for table `tb_power` */

DROP TABLE IF EXISTS `tb_power`;

CREATE TABLE `tb_power` (
  `powerId` int NOT NULL AUTO_INCREMENT,
  `powerName` varchar(30) NOT NULL,
  PRIMARY KEY (`powerId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tb_power` */

insert  into `tb_power`(`powerId`,`powerName`) values 
(1,'系统管理,仓库管理,统计管理,销售管理,客户管理'),
(2,'仓库管理'),
(3,'销售管理'),
(4,'客户管理'),
(5,'统计管理');

/*Table structure for table `tb_revisit` */

DROP TABLE IF EXISTS `tb_revisit`;

CREATE TABLE `tb_revisit` (
  `vId` int NOT NULL AUTO_INCREMENT,
  `vDate` date NOT NULL,
  `vEvent` varchar(20) NOT NULL,
  `vNote` varchar(20) NOT NULL,
  `cusId` int NOT NULL,
  PRIMARY KEY (`vId`),
  KEY `cusId` (`cusId`),
  CONSTRAINT `tb_revisit_ibfk_1` FOREIGN KEY (`cusId`) REFERENCES `tb_customer` (`cusId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_revisit` */

insert  into `tb_revisit`(`vId`,`vDate`,`vEvent`,`vNote`,`cusId`) values 
(1,'2020-09-02','汽车磨损','汽车',1),
(3,'2020-09-04','12','12313',1);

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) NOT NULL,
  `roleDiscription` varchar(20) NOT NULL,
  `powerId` int NOT NULL,
  PRIMARY KEY (`roleId`),
  KEY `powerId` (`powerId`),
  CONSTRAINT `tb_role_ibfk_1` FOREIGN KEY (`powerId`) REFERENCES `tb_power` (`powerId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tb_role` */

insert  into `tb_role`(`roleId`,`roleName`,`roleDiscription`,`powerId`) values 
(1,'系统管理员','管理整个系统',1),
(2,'仓库管理员','管理仓库的1',1),
(3,'销售管理员','管理车辆销售',3),
(4,'客户管理员','管理客户',4),
(5,'统计管理员','统计数据',5);

/*Table structure for table `tb_ware` */

DROP TABLE IF EXISTS `tb_ware`;

CREATE TABLE `tb_ware` (
  `wareId` int NOT NULL AUTO_INCREMENT,
  `wareName` varchar(20) NOT NULL,
  `warePosition` varchar(20) NOT NULL,
  `wareMax` int NOT NULL,
  `wareNow` int NOT NULL,
  PRIMARY KEY (`wareId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_ware` */

insert  into `tb_ware`(`wareId`,`wareName`,`warePosition`,`wareMax`,`wareNow`) values 
(1,'武汉仓库','武昌区',1111111,20),
(2,'上海仓库','上海浦东开发区',800000,400),
(3,'长沙仓库','不知道位置',4000,200);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `tb_role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_account`,`user_password`,`user_name`,`roleId`) values 
(1,'abc','123','黄章鑫11',1),
(7,'aaa','zzz','我靠、',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
