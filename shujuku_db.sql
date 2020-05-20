# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: shujuku_db
# ------------------------------------------------------
# Server version 5.0.67-community-nt

#
# Source for table t_banji
#

DROP TABLE IF EXISTS `t_banji`;
CREATE TABLE `t_banji` (
  `id` int(11) NOT NULL auto_increment,
  `banjiname` varchar(255) default NULL,
  `banjinum` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `yuanxi` varchar(255) default NULL,
  `zhuanye` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_banji
#

LOCK TABLES `t_banji` WRITE;
/*!40000 ALTER TABLE `t_banji` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_banji` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_kaoqinlog
#

DROP TABLE IF EXISTS `t_kaoqinlog`;
CREATE TABLE `t_kaoqinlog` (
  `id` int(11) NOT NULL auto_increment,
  `banjinum` varchar(255) default NULL,
  `codenum` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `iskuangke` int(11) NOT NULL,
  `kechengname` varchar(255) default NULL,
  `kuangkenum` int(11) NOT NULL,
  `riqi` varchar(255) default NULL,
  `teacher` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_kaoqinlog
#

LOCK TABLES `t_kaoqinlog` WRITE;
/*!40000 ALTER TABLE `t_kaoqinlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kaoqinlog` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_kecheng
#

DROP TABLE IF EXISTS `t_kecheng`;
CREATE TABLE `t_kecheng` (
  `id` int(11) NOT NULL auto_increment,
  `banji` varchar(255) default NULL,
  `banjinum` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `kechenglock` int(11) NOT NULL,
  `kechengname1` varchar(255) default NULL,
  `kechengname2` varchar(255) default NULL,
  `kechengname3` varchar(255) default NULL,
  `kechengname4` varchar(255) default NULL,
  `kechengname5` varchar(255) default NULL,
  `kechengname6` varchar(255) default NULL,
  `kechengname7` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_kecheng
#

LOCK TABLES `t_kecheng` WRITE;
/*!40000 ALTER TABLE `t_kecheng` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kecheng` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_qingjiadan
#

DROP TABLE IF EXISTS `t_qingjiadan`;
CREATE TABLE `t_qingjiadan` (
  `id` int(11) NOT NULL auto_increment,
  `banjinum` varchar(255) default NULL,
  `codenum` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `qjtime1` varchar(255) default NULL,
  `qjtime2` varchar(255) default NULL,
  `shenhe` varchar(255) default NULL,
  `shenhecontent` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_qingjiadan
#

LOCK TABLES `t_qingjiadan` WRITE;
/*!40000 ALTER TABLE `t_qingjiadan` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_qingjiadan` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_subject
#

DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject` (
  `id` int(11) NOT NULL auto_increment,
  `createtime` datetime default NULL,
  `subjectname` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_subject
#

LOCK TABLES `t_subject` WRITE;
/*!40000 ALTER TABLE `t_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_subject` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table t_user
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `banjinum` varchar(255) default NULL,
  `codenum` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `password` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `role` int(11) NOT NULL,
  `room` varchar(255) default NULL,
  `userlock` int(11) NOT NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_user
#

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,NULL,NULL,'admin',NULL,'111111',NULL,0,NULL,0,'admin');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
