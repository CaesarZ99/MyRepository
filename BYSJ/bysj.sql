/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.20 : Database - bysj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bysj` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bysj`;

/*Table structure for table `sys_login_log` */

DROP TABLE IF EXISTS `sys_login_log`;

CREATE TABLE `sys_login_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COMMENT='登录记录';

/*Data for the table `sys_login_log` */

insert  into `sys_login_log`(`id`,`logname`,`userid`,`createtime`,`succeed`,`message`,`ip`) values 
(217,'登录日志',1,'2018-12-29 13:26:30','成功',NULL,'0:0:0:0:0:0:0:1'),
(218,'登录日志',1,'2018-12-29 13:41:32','成功',NULL,'0:0:0:0:0:0:0:1'),
(219,'退出日志',1,'2018-12-29 14:05:50','成功',NULL,'0:0:0:0:0:0:0:1'),
(220,'登录日志',1,'2018-12-29 14:05:53','成功',NULL,'0:0:0:0:0:0:0:1'),
(221,'登录日志',1,'2018-12-29 14:12:43','成功',NULL,'0:0:0:0:0:0:0:1'),
(222,'退出日志',1,'2018-12-29 14:16:30','成功',NULL,'0:0:0:0:0:0:0:1'),
(223,'登录日志',1,'2018-12-29 14:16:33','成功',NULL,'0:0:0:0:0:0:0:1'),
(224,'登录日志',1,'2018-12-29 14:17:15','成功',NULL,'0:0:0:0:0:0:0:1'),
(225,'登录日志',1,'2018-12-29 14:20:46','成功',NULL,'0:0:0:0:0:0:0:1'),
(226,'登录日志',1,'2018-12-29 14:35:23','成功',NULL,'0:0:0:0:0:0:0:1'),
(227,'退出日志',1,'2018-12-29 15:01:45','成功',NULL,'0:0:0:0:0:0:0:1'),
(228,'登录日志',1,'2018-12-29 15:01:49','成功',NULL,'0:0:0:0:0:0:0:1'),
(229,'退出日志',1,'2018-12-29 15:03:35','成功',NULL,'0:0:0:0:0:0:0:1'),
(230,'登录日志',1,'2018-12-29 15:06:00','成功',NULL,'0:0:0:0:0:0:0:1'),
(231,'退出日志',1,'2018-12-29 15:06:41','成功',NULL,'0:0:0:0:0:0:0:1'),
(232,'登录日志',1,'2018-12-29 15:07:09','成功',NULL,'0:0:0:0:0:0:0:1'),
(233,'退出日志',1,'2018-12-29 15:08:04','成功',NULL,'0:0:0:0:0:0:0:1'),
(234,'登录日志',1,'2018-12-29 15:09:43','成功',NULL,'0:0:0:0:0:0:0:1'),
(235,'登录日志',1,'2018-12-29 15:17:05','成功',NULL,'0:0:0:0:0:0:0:1'),
(236,'退出日志',1,'2018-12-29 15:18:06','成功',NULL,'0:0:0:0:0:0:0:1'),
(237,'登录日志',47,'2018-12-29 15:18:14','成功',NULL,'0:0:0:0:0:0:0:1'),
(238,'退出日志',47,'2018-12-29 15:19:58','成功',NULL,'0:0:0:0:0:0:0:1'),
(239,'登录日志',1,'2018-12-29 15:20:35','成功',NULL,'0:0:0:0:0:0:0:1'),
(240,'退出日志',1,'2018-12-29 15:25:08','成功',NULL,'0:0:0:0:0:0:0:1'),
(241,'登录失败日志',NULL,'2018-12-29 15:25:13','成功','账号:dj,账号密码错误','0:0:0:0:0:0:0:1'),
(242,'登录失败日志',NULL,'2018-12-29 15:25:19','成功','账号:dj,账号密码错误','0:0:0:0:0:0:0:1'),
(243,'登录日志',1,'2018-12-29 15:25:25','成功',NULL,'0:0:0:0:0:0:0:1'),
(244,'退出日志',1,'2018-12-29 15:26:06','成功',NULL,'0:0:0:0:0:0:0:1'),
(245,'登录失败日志',NULL,'2018-12-29 15:26:11','成功','账号:hy,账号密码错误','0:0:0:0:0:0:0:1'),
(246,'登录日志',49,'2018-12-29 15:26:21','成功',NULL,'0:0:0:0:0:0:0:1'),
(247,'退出日志',49,'2018-12-29 15:50:07','成功',NULL,'0:0:0:0:0:0:0:1'),
(248,'登录日志',1,'2018-12-29 15:50:09','成功',NULL,'0:0:0:0:0:0:0:1'),
(249,'登录日志',1,'2018-12-29 16:03:15','成功',NULL,'0:0:0:0:0:0:0:1'),
(250,'登录日志',1,'2018-12-29 16:10:08','成功',NULL,'0:0:0:0:0:0:0:1'),
(251,'登录日志',1,'2018-12-29 16:19:32','成功',NULL,'0:0:0:0:0:0:0:1'),
(252,'登录日志',1,'2018-12-29 16:25:48','成功',NULL,'0:0:0:0:0:0:0:1'),
(253,'登录日志',1,'2018-12-29 16:28:20','成功',NULL,'0:0:0:0:0:0:0:1'),
(254,'退出日志',1,'2018-12-29 16:29:41','成功',NULL,'0:0:0:0:0:0:0:1'),
(255,'登录失败日志',NULL,'2018-12-29 16:29:45','成功','账号:zxx,账号密码错误','0:0:0:0:0:0:0:1'),
(256,'登录失败日志',NULL,'2018-12-29 16:29:51','成功','账号:zxx,账号密码错误','0:0:0:0:0:0:0:1'),
(257,'登录失败日志',NULL,'2018-12-29 16:29:56','成功','账号:zxx,账号密码错误','0:0:0:0:0:0:0:1'),
(258,'登录日志',1,'2018-12-29 16:29:59','成功',NULL,'0:0:0:0:0:0:0:1'),
(259,'退出日志',1,'2018-12-29 16:30:13','成功',NULL,'0:0:0:0:0:0:0:1'),
(260,'登录失败日志',NULL,'2018-12-29 16:30:20','成功','账号:doctor,账号密码错误','0:0:0:0:0:0:0:1'),
(261,'登录日志',47,'2018-12-29 16:30:27','成功',NULL,'0:0:0:0:0:0:0:1'),
(262,'退出日志',47,'2018-12-29 16:36:12','成功',NULL,'0:0:0:0:0:0:0:1'),
(263,'登录日志',1,'2018-12-29 16:36:14','成功',NULL,'0:0:0:0:0:0:0:1'),
(264,'登录日志',1,'2018-12-29 16:49:57','成功',NULL,'0:0:0:0:0:0:0:1'),
(265,'登录日志',1,'2018-12-29 16:54:42','成功',NULL,'0:0:0:0:0:0:0:1'),
(266,'登录日志',1,'2018-12-29 17:03:06','成功',NULL,'0:0:0:0:0:0:0:1'),
(267,'登录日志',1,'2018-12-29 17:19:19','成功',NULL,'0:0:0:0:0:0:0:1'),
(268,'登录日志',1,'2018-12-29 17:32:51','成功',NULL,'0:0:0:0:0:0:0:1'),
(269,'登录日志',1,'2018-12-29 17:34:57','成功',NULL,'0:0:0:0:0:0:0:1'),
(270,'登录日志',1,'2018-12-29 17:41:52','成功',NULL,'0:0:0:0:0:0:0:1'),
(271,'登录日志',1,'2018-12-29 18:00:27','成功',NULL,'0:0:0:0:0:0:0:1'),
(272,'登录日志',1,'2018-12-29 18:03:19','成功',NULL,'0:0:0:0:0:0:0:1'),
(273,'退出日志',1,'2018-12-29 18:04:16','成功',NULL,'0:0:0:0:0:0:0:1'),
(274,'登录失败日志',NULL,'2018-12-29 18:04:31','成功','账号:doctor,账号密码错误','0:0:0:0:0:0:0:1'),
(275,'登录日志',47,'2018-12-29 18:04:41','成功',NULL,'0:0:0:0:0:0:0:1'),
(276,'退出日志',47,'2018-12-29 18:05:04','成功',NULL,'0:0:0:0:0:0:0:1'),
(277,'登录日志',47,'2018-12-29 18:06:18','成功',NULL,'0:0:0:0:0:0:0:1'),
(278,'退出日志',47,'2018-12-29 22:42:54','成功',NULL,'0:0:0:0:0:0:0:1'),
(279,'登录日志',1,'2018-12-29 22:42:59','成功',NULL,'0:0:0:0:0:0:0:1'),
(280,'退出日志',1,'2018-12-29 22:49:01','成功',NULL,'0:0:0:0:0:0:0:1'),
(281,'登录日志',1,'2018-12-29 22:49:04','成功',NULL,'0:0:0:0:0:0:0:1'),
(282,'退出日志',1,'2018-12-29 22:49:42','成功',NULL,'0:0:0:0:0:0:0:1'),
(283,'登录失败日志',NULL,'2018-12-29 22:49:55','成功','账号:patient,账号密码错误','0:0:0:0:0:0:0:1'),
(284,'登录日志',48,'2018-12-29 22:50:02','成功',NULL,'0:0:0:0:0:0:0:1'),
(285,'登录失败日志',NULL,'2018-12-29 22:58:04','成功','账号:patient,账号密码错误','0:0:0:0:0:0:0:1'),
(286,'登录日志',48,'2018-12-29 22:58:13','成功',NULL,'0:0:0:0:0:0:0:1'),
(287,'退出日志',48,'2018-12-29 22:58:19','成功',NULL,'0:0:0:0:0:0:0:1'),
(288,'登录失败日志',NULL,'2018-12-29 22:58:39','成功','账号:patient,账号密码错误','0:0:0:0:0:0:0:1'),
(289,'登录日志',48,'2018-12-29 22:58:46','成功',NULL,'0:0:0:0:0:0:0:1'),
(290,'登录日志',1,'2020-12-29 19:28:05','成功',NULL,'0:0:0:0:0:0:0:1'),
(291,'登录失败日志',NULL,'2020-12-29 19:38:11','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),
(292,'登录日志',1,'2020-12-29 19:38:21','成功',NULL,'0:0:0:0:0:0:0:1');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int DEFAULT NULL COMMENT '菜单排序号',
  `levels` int DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1078953266368131079 DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`code`,`pcode`,`pcodes`,`name`,`icon`,`url`,`num`,`levels`,`ismenu`,`tips`,`status`,`isopen`) values 
(105,'system','0','[0],','系统管理','fa-user','#',4,1,1,NULL,1,1),
(106,'mgr','system','[0],[system],','用户管理','','/mgr',1,2,1,NULL,1,0),
(107,'mgr_add','mgr','[0],[system],[mgr],','添加用户',NULL,'/mgr/add',1,3,0,NULL,1,0),
(108,'mgr_edit','mgr','[0],[system],[mgr],','修改用户',NULL,'/mgr/edit',2,3,0,NULL,1,0),
(109,'mgr_delete','mgr','[0],[system],[mgr],','删除用户',NULL,'/mgr/delete',3,3,0,NULL,1,0),
(110,'mgr_reset','mgr','[0],[system],[mgr],','重置密码',NULL,'/mgr/reset',4,3,0,NULL,1,0),
(111,'mgr_freeze','mgr','[0],[system],[mgr],','冻结用户',NULL,'/mgr/freeze',5,3,0,NULL,1,0),
(112,'mgr_unfreeze','mgr','[0],[system],[mgr],','解除冻结用户',NULL,'/mgr/unfreeze',6,3,0,NULL,1,0),
(113,'mgr_setRole','mgr','[0],[system],[mgr],','分配角色',NULL,'/mgr/setRole',7,3,0,NULL,1,0),
(114,'role','system','[0],[system],','角色管理',NULL,'/role',2,2,1,NULL,1,0),
(115,'role_add','role','[0],[system],[role],','添加角色',NULL,'/role/add',1,3,0,NULL,1,0),
(116,'role_edit','role','[0],[system],[role],','修改角色',NULL,'/role/edit',2,3,0,NULL,1,0),
(117,'role_remove','role','[0],[system],[role],','删除角色',NULL,'/role/remove',3,3,0,NULL,1,0),
(118,'role_setAuthority','role','[0],[system],[role],','配置权限',NULL,'/role/setAuthority',4,3,0,NULL,1,0),
(119,'menu','system','[0],[system],','菜单管理',NULL,'/menu',4,2,1,NULL,1,0),
(120,'menu_add','menu','[0],[system],[menu],','添加菜单',NULL,'/menu/add',1,3,0,NULL,1,0),
(121,'menu_edit','menu','[0],[system],[menu],','修改菜单',NULL,'/menu/edit',2,3,0,NULL,1,0),
(122,'menu_remove','menu','[0],[system],[menu],','删除菜单',NULL,'/menu/remove',3,3,0,NULL,1,0),
(128,'log','system','[0],[system],','业务日志',NULL,'/log',6,2,1,NULL,1,0),
(130,'druid','system','[0],[system],','监控管理',NULL,'/druid',7,2,1,NULL,1,NULL),
(131,'dept','system','[0],[system],','部门管理',NULL,'/dept',3,2,1,NULL,1,NULL),
(132,'dict','system','[0],[system],','字典管理',NULL,'/dict',4,2,1,NULL,1,NULL),
(133,'loginLog','system','[0],[system],','登录日志',NULL,'/loginLog',6,2,1,NULL,1,NULL),
(134,'log_clean','log','[0],[system],[log],','清空日志',NULL,'/log/delLog',3,3,0,NULL,1,NULL),
(135,'dept_add','dept','[0],[system],[dept],','添加部门',NULL,'/dept/add',1,3,0,NULL,1,NULL),
(136,'dept_update','dept','[0],[system],[dept],','修改部门',NULL,'/dept/update',1,3,0,NULL,1,NULL),
(137,'dept_delete','dept','[0],[system],[dept],','删除部门',NULL,'/dept/delete',1,3,0,NULL,1,NULL),
(138,'dict_add','dict','[0],[system],[dict],','添加字典',NULL,'/dict/add',1,3,0,NULL,1,NULL),
(139,'dict_update','dict','[0],[system],[dict],','修改字典',NULL,'/dict/update',1,3,0,NULL,1,NULL),
(140,'dict_delete','dict','[0],[system],[dict],','删除字典',NULL,'/dict/delete',1,3,0,NULL,1,NULL),
(141,'notice','system','[0],[system],','通知管理',NULL,'/notice',9,2,1,NULL,1,NULL),
(142,'notice_add','notice','[0],[system],[notice],','添加通知',NULL,'/notice/add',1,3,0,NULL,1,NULL),
(143,'notice_update','notice','[0],[system],[notice],','修改通知',NULL,'/notice/update',2,3,0,NULL,1,NULL),
(144,'notice_delete','notice','[0],[system],[notice],','删除通知',NULL,'/notice/delete',3,3,0,NULL,1,NULL),
(145,'hello','0','[0],','通知','fa-rocket','/notice/hello',1,1,1,NULL,1,NULL),
(148,'code','0','[0],','代码生成','fa-code','/code',3,1,1,NULL,1,NULL),
(149,'api_mgr','0','[0],','接口文档','fa-leaf','/swagger-ui.html',2,1,1,NULL,1,NULL),
(150,'to_menu_edit','menu','[0],[system],[menu],','菜单编辑跳转','','/menu/menu_edit',4,3,0,NULL,1,NULL),
(151,'menu_list','menu','[0],[system],[menu],','菜单列表','','/menu/list',5,3,0,NULL,1,NULL),
(152,'to_dept_update','dept','[0],[system],[dept],','修改部门跳转','','/dept/dept_update',4,3,0,NULL,1,NULL),
(153,'dept_list','dept','[0],[system],[dept],','部门列表','','/dept/list',5,3,0,NULL,1,NULL),
(154,'dept_detail','dept','[0],[system],[dept],','部门详情','','/dept/detail',6,3,0,NULL,1,NULL),
(155,'to_dict_edit','dict','[0],[system],[dict],','修改菜单跳转','','/dict/dict_edit',4,3,0,NULL,1,NULL),
(156,'dict_list','dict','[0],[system],[dict],','字典列表','','/dict/list',5,3,0,NULL,1,NULL),
(157,'dict_detail','dict','[0],[system],[dict],','字典详情','','/dict/detail',6,3,0,NULL,1,NULL),
(158,'log_list','log','[0],[system],[log],','日志列表','','/log/list',2,3,0,NULL,1,NULL),
(159,'log_detail','log','[0],[system],[log],','日志详情','','/log/detail',3,3,0,NULL,1,NULL),
(160,'del_login_log','loginLog','[0],[system],[loginLog],','清空登录日志','','/loginLog/delLoginLog',1,3,0,NULL,1,NULL),
(161,'login_log_list','loginLog','[0],[system],[loginLog],','登录日志列表','','/loginLog/list',2,3,0,NULL,1,NULL),
(162,'to_role_edit','role','[0],[system],[role],','修改角色跳转','','/role/role_edit',5,3,0,NULL,1,NULL),
(163,'to_role_assign','role','[0],[system],[role],','角色分配跳转','','/role/role_assign',6,3,0,NULL,1,NULL),
(164,'role_list','role','[0],[system],[role],','角色列表','','/role/list',7,3,0,NULL,1,NULL),
(165,'to_assign_role','mgr','[0],[system],[mgr],','分配角色跳转','','/mgr/role_assign',8,3,0,NULL,1,NULL),
(166,'to_user_edit','mgr','[0],[system],[mgr],','编辑用户跳转','','/mgr/user_edit',9,3,0,NULL,1,NULL),
(167,'mgr_list','mgr','[0],[system],[mgr],','用户列表','','/mgr/list',10,3,0,NULL,1,NULL),
(1078922896050376705,'patientInfo','0','[0],','居民医保信息','','/patientInfo',99,1,1,NULL,1,0),
(1078922896050376706,'patientInfo_list','patientInfo','[0],[system],[patientInfo],','居民管理列表','','/patientInfo/list',99,3,0,NULL,1,0),
(1078922896050376707,'patientInfo_add','patientInfo','[0],[system],[patientInfo],','居民管理添加','','/patientInfo/add',99,3,0,NULL,1,0),
(1078922896050376708,'patientInfo_update','patientInfo','[0],[system],[patientInfo],','居民管理更新','','/patientInfo/update',99,3,0,NULL,1,0),
(1078922896050376709,'patientInfo_delete','patientInfo','[0],[system],[patientInfo],','居民管理删除','','/patientInfo/delete',99,3,0,NULL,1,0),
(1078922896050376710,'patientInfo_detail','patientInfo','[0],[system],[patientInfo],','居民管理详情','','/patientInfo/detail',99,3,0,NULL,1,0),
(1078929243038953474,'medicineInfo','0','[0],','药物信息管理','','/medicineInfo',99,1,1,NULL,1,0),
(1078929243038953475,'medicineInfo_list','medicineInfo','[0],[medicineInfo],','药物管理列表','','/medicineInfo/list',99,2,0,NULL,1,0),
(1078929243038953476,'medicineInfo_add','medicineInfo','[0],[medicineInfo],','药物管理添加','','/medicineInfo/add',99,2,0,NULL,1,0),
(1078929243038953477,'medicineInfo_update','medicineInfo','[0],[medicineInfo],','药物管理更新','','/medicineInfo/update',99,2,0,NULL,1,0),
(1078929243038953478,'medicineInfo_delete','medicineInfo','[0],[medicineInfo],','药物管理删除','','/medicineInfo/delete',99,2,0,NULL,1,0),
(1078929243038953479,'medicineInfo_detail','medicineInfo','[0],[medicineInfo],','药物管理详情','','/medicineInfo/detail',99,2,0,NULL,1,0),
(1078936438652784641,'patientHealth','0','[0],','居民健康信息','','/patientHealth',99,1,1,NULL,1,0),
(1078936438652784642,'patientHealth_list','patientHealth','[0],[patientHealth],','居民健康信息管理列表','','/patientHealth/list',99,2,0,NULL,1,0),
(1078936438652784643,'patientHealth_add','patientHealth','[0],[patientHealth],','居民健康信息管理添加','','/patientHealth/add',99,2,0,NULL,1,0),
(1078936438652784644,'patientHealth_update','patientHealth','[0],[patientHealth],','居民健康信息管理更新','','/patientHealth/update',99,2,0,NULL,1,0),
(1078936438652784645,'patientHealth_delete','patientHealth','[0],[patientHealth],','居民健康信息管理删除','','/patientHealth/delete',99,2,0,NULL,1,0),
(1078936438652784646,'patientHealth_detail','patientHealth','[0],[patientHealth],','居民健康信息管理详情','','/patientHealth/detail',99,2,0,NULL,1,0),
(1078942865115041793,'patientHistory','0','[0],','居民就诊历史','','/patientHistory',99,1,1,NULL,1,0),
(1078942865119236097,'patientHistory_list','patientHistory','[0],[patientHistory],','居民就诊历史管理列表','','/patientHistory/list',99,2,0,NULL,1,0),
(1078942865119236098,'patientHistory_add','patientHistory','[0],[patientHistory],','居民就诊历史管理添加','','/patientHistory/add',99,2,0,NULL,1,0),
(1078942865119236099,'patientHistory_update','patientHistory','[0],[patientHistory],','居民就诊历史管理更新','','/patientHistory/update',99,2,0,NULL,1,0),
(1078942865119236100,'patientHistory_delete','patientHistory','[0],[patientHistory],','居民就诊历史管理删除','','/patientHistory/delete',99,2,0,NULL,1,0),
(1078942865119236101,'patientHistory_detail','patientHistory','[0],[patientHistory],','居民就诊历史管理详情','','/patientHistory/detail',99,2,0,NULL,1,0),
(1078953266368131073,'doctorPoint','0','[0],','我的预约信息','','/doctorPoint',99,1,1,NULL,1,0),
(1078953266368131074,'doctorPoint_list','doctorPoint','[0],[doctorPoint],','医生预约列表','','/doctorPoint/list',99,2,0,NULL,1,0),
(1078953266368131075,'doctorPoint_add','doctorPoint','[0],[doctorPoint],','医生预约添加','','/doctorPoint/add',99,2,0,NULL,1,0),
(1078953266368131076,'doctorPoint_update','doctorPoint','[0],[doctorPoint],','医生预约更新','','/doctorPoint/update',99,2,0,NULL,1,0),
(1078953266368131077,'doctorPoint_delete','doctorPoint','[0],[doctorPoint],','医生预约删除','','/doctorPoint/delete',99,2,0,NULL,1,0),
(1078953266368131078,'doctorPoint_detail','doctorPoint','[0],[doctorPoint],','医生预约详情','','/doctorPoint/detail',99,2,0,NULL,1,0);

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='通知表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`id`,`title`,`type`,`content`,`createtime`,`creater`) values 
(6,'世界',10,'欢迎登录社区养老医疗综合服务平台','2017-01-11 08:53:20',1),
(8,'你好',NULL,'你好','2017-05-10 19:28:57',1);

/*Table structure for table `tb_permission` */

DROP TABLE IF EXISTS `tb_permission`;

CREATE TABLE `tb_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
  `perm_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `tb_permission` */

insert  into `tb_permission`(`id`,`permission_id`,`perm_name`,`description`,`perms`) values 
(1,'1','admin','管理员权限','admin:all'),
(2,'2','注销','用户注销/勾选记住我登录的用户注销','user:quit'),
(3,'3','','医生和普通用户访问个人中心','user:index');

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_role` */

insert  into `tb_role`(`id`,`role_name`,`description`,`create_time`,`update_time`) values 
(1,'管理员','管理后台系统所有数据',NULL,NULL),
(2,'普通用户','登录注册、预约医生，管理自己的个人信息等等',NULL,NULL),
(3,'医生','登录、查看预约订单、管理个人信息等等',NULL,NULL);

/*Table structure for table `tb_role_permission` */

DROP TABLE IF EXISTS `tb_role_permission`;

CREATE TABLE `tb_role_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL COMMENT '角色id',
  `permission_id` int NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `tb_role_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `tb_role_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `tb_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=874 DEFAULT CHARSET=utf8;

/*Data for the table `tb_role_permission` */

insert  into `tb_role_permission`(`id`,`role_id`,`permission_id`) values 
(1,1,1),
(2,1,2),
(3,2,2),
(873,2,3);

/*Table structure for table `tb_syslog` */

DROP TABLE IF EXISTS `tb_syslog`;

CREATE TABLE `tb_syslog` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL COMMENT '进行操作的用户的id',
  `user_name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '进行操作的用户的name',
  `operation` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '方法名',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '方法参数',
  `url` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '请求地址',
  `create_date` varchar(25) COLLATE utf8_bin NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_syslog` */

insert  into `tb_syslog`(`log_id`,`uid`,`user_name`,`operation`,`method`,`params`,`url`,`create_date`) values 
(1,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:6\"]','/unBanUser','2021-21-01 08:20:23'),
(2,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:3\"]','/unBanUser','2021-21-01 08:21:03'),
(3,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:18\"]','/unBanUser','2021-21-01 08:39:22'),
(4,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:19\"]','/unBanUser','2021-21-01 08:42:20'),
(5,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:7\"]','/unBanUser','2021-21-01 08:49:27'),
(6,1,'刘文康','管理员冻结违规用户','com.lwk.bysj.controller.AdminrController.banUser','[\"uid:7\"]','/banUser','2021-21-01 08:51:33'),
(7,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:true\",\"account:admin\",\"password:123456\"]','/adminCtrl/adminLogin','2021-22-01 12:07:10'),
(8,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:true\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-22-01 12:31:25'),
(9,1,'刘文康','管理员重置用户密码','com.lwk.bysj.controller.AdminrController.adminChangeUserPwd','[\"uid:5\",\"pwd:666666\"]','/adminCtrl/acup','2021-22-01 12:32:28'),
(10,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:true\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-22-01 12:35:44'),
(11,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:true\",\"account:admin\",\"password:123456\"]','/adminCtrl/adminLogin','2021-22-01 12:39:47'),
(12,21,'周鹏硕','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:zpx\",\"password:123456\"]','/adminCtrl/adminLogin','2021-07-02 05:08:58'),
(13,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-07-02 05:15:48'),
(14,21,'周鹏硕','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:zpx\",\"password:123456\"]','/adminCtrl/adminLogin','2021-07-02 05:17:52'),
(15,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-07-02 05:41:04'),
(16,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-07-02 06:09:12'),
(17,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-07-02 06:11:12'),
(18,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-07-02 09:24:46'),
(19,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:false\",\"account:admin\",\"password:123\"]','/adminCtrl/adminLogin','2021-02-07 09:27:48'),
(20,1,'刘文康','管理员冻结违规用户','com.lwk.bysj.controller.AdminrController.banUser','[\"uid:3\"]','/adminCtrl/banUser','2021-02-07 09:27:58'),
(21,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:32:44'),
(22,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:35:52'),
(23,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:37:41'),
(24,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:37:56'),
(25,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:39:54'),
(26,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:40:08'),
(27,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:46:19'),
(28,1,'刘文康','修改密码','com.lwk.bysj.controller.LoginController.updatePwd','[\"oldPwd:123456\",\"newPwd:123456\",\"subPwd:123456\"]','/loginCtrl/updatePwd','2021-02-07 09:46:29'),
(29,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:48:43'),
(30,1,'刘文康','修改密码','com.lwk.bysj.controller.LoginController.updatePwd','[\"oldPwd:***\",\"newPwd:***\",\"subPwd:***\"]','/loginCtrl/updatePwd','2021-02-07 09:48:52'),
(31,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:51:48'),
(32,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-07 09:54:55'),
(33,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 02:39:23'),
(34,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 14:41:13'),
(35,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:3\"]','/adminCtrl/unBanUser','2021-02-08 14:42:16'),
(36,1,'刘文康','管理员解除冻结违规用户','com.lwk.bysj.controller.AdminrController.unBanUser','[\"uid:4\"]','/adminCtrl/unBanUser','2021-02-08 14:42:18'),
(37,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:03:55'),
(38,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:09:39'),
(39,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:11:26'),
(40,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:15:19'),
(41,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:26:39'),
(42,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:29:59'),
(43,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 15:41:08'),
(68,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[-1, 67, 66, 53, 52, 51]\"]','/adminCtrl/deleteLogs','2021-02-08 17:24:10'),
(70,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[69]\"]','/adminCtrl/deleteLogs','2021-02-08 17:27:29'),
(71,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-08 17:28:16'),
(72,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-09 18:54:50'),
(73,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[-1]\"]','/adminCtrl/deleteLogs','2021-02-09 18:58:10'),
(74,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[-1]\"]','/adminCtrl/deleteLogs','2021-02-09 18:58:14'),
(75,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[-1]\"]','/adminCtrl/deleteLogs','2021-02-09 18:58:39'),
(76,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[-1]\"]','/adminCtrl/deleteLogs','2021-02-09 18:59:56'),
(77,1,'刘文康','删除日志','com.lwk.bysj.controller.AdminrController.deleteLogs','[\"delids:[-1]\"]','/adminCtrl/deleteLogs','2021-02-09 19:00:44'),
(78,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-17 11:45:18'),
(79,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[15, 16]\"]','/adminCtrl/deleteUsers','2021-02-17 12:02:06'),
(80,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-17 12:13:01'),
(81,1,'刘文康','管理员登陆','com.lwk.bysj.controller.AdminrController.adminLogin','[\"rememberMe:***\",\"account:***\",\"password:***\"]','/adminCtrl/adminLogin','2021-02-17 12:21:52'),
(82,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[8]\"]','/adminCtrl/deleteUsers','2021-02-17 12:23:03'),
(83,1,'刘文康','管理员冻结违规用户','com.lwk.bysj.controller.AdminrController.banUser','[\"uid:47\"]','/adminCtrl/banUser','2021-02-17 12:23:25'),
(84,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:18:09'),
(85,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:18:08'),
(86,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:18:20'),
(87,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:21:43'),
(88,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:21:51'),
(89,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:23:09'),
(90,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:23:30'),
(91,1,'刘文康','删除用户','com.lwk.bysj.controller.AdminrController.delete','[\"delids:[-1]\"]','/adminCtrl/deleteUsers','2021-02-22 20:25:24');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `account` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `gender` int NOT NULL COMMENT '1男2女',
  `id_num` varchar(20) COLLATE utf8_bin NOT NULL,
  `age` int NOT NULL,
  `tel_num` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `state` int DEFAULT '1' COMMENT '1未冻结 2已冻结',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `UNIQUE` (`account`),
  KEY `rid` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_user` */

insert  into `tb_user`(`uid`,`account`,`password`,`user_name`,`gender`,`id_num`,`age`,`tel_num`,`email`,`state`) values 
(1,'admin','e10adc3949ba59abbe56e057f20f883e','刘文康',1,'420921199909155515',20,'18571127397','2900128182@qq.com',1),
(2,'caesar','202cb962ac59075b964b07152d234b70','凯撒',1,'420921199909115514',21,'19107130685','1164483690@qq.com',2),
(5,'abc','f379eaf3c831b04de153469d1bec345e','关晓彤',1,'420921199909155515',21,'18571127397','17542236548@qq.com',1),
(22,'a','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(23,'b','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(24,'c','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(25,'d','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(26,'e','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(27,'f','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(28,'g','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(29,'h','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(30,'i','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(31,'j','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(32,'k','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(33,'l','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(34,'m','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(35,'n','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(36,'o','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(37,'p','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(38,'q','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(39,'r','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(40,'s','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(41,'t','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(42,'u','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(43,'v','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(44,'w','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(45,'x','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(46,'y','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',1),
(47,'z','e10adc3949ba59abbe56e057f20f883e','b',2,'420921199909155515',20,'123','330025810@qq.com',2);

/*Table structure for table `tb_user_role` */

DROP TABLE IF EXISTS `tb_user_role`;

CREATE TABLE `tb_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` int NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `role_user` (`user_id`),
  KEY `role_role` (`role_id`),
  CONSTRAINT `role_role` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `role_user` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_user_role` */

insert  into `tb_user_role`(`id`,`user_id`,`role_id`) values 
(1,1,1),
(2,2,1),
(5,5,2),
(20,41,3),
(21,40,3),
(22,39,3),
(23,38,3),
(24,37,3),
(25,36,3),
(26,35,3),
(27,34,3),
(28,33,3),
(29,32,3),
(30,31,3),
(31,30,3),
(32,29,3),
(33,28,3),
(34,27,3),
(35,26,3),
(36,25,3),
(37,24,3),
(38,23,3),
(39,22,3),
(40,47,3),
(41,46,3),
(42,45,3),
(43,44,3),
(44,43,3),
(45,42,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
