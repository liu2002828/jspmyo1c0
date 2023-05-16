-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmyo1c0
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `jspmyo1c0`
--

/*!40000 DROP DATABASE IF EXISTS `jspmyo1c0`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspmyo1c0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspmyo1c0`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-07-21 06:55:31',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-07-21 06:55:31',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-07-21 06:55:31',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-07-21 06:55:31',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-07-21 06:55:31',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-07-21 06:55:31',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianpugonggao`
--

DROP TABLE IF EXISTS `dianpugonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianpugonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='店铺公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianpugonggao`
--

LOCK TABLES `dianpugonggao` WRITE;
/*!40000 ALTER TABLE `dianpugonggao` DISABLE KEYS */;
INSERT INTO `dianpugonggao` VALUES (71,'2022-07-21 06:55:31','标题1','简介1','2022-07-21','upload/dianpugonggao_fengmian1.jpg','内容1','商家账号1','店铺名1','2022-07-21 14:55:31',1),(72,'2022-07-21 06:55:31','标题2','简介2','2022-07-21','upload/dianpugonggao_fengmian2.jpg','内容2','商家账号2','店铺名2','2022-07-21 14:55:31',2),(73,'2022-07-21 06:55:31','标题3','简介3','2022-07-21','upload/dianpugonggao_fengmian3.jpg','内容3','商家账号3','店铺名3','2022-07-21 14:55:31',3),(74,'2022-07-21 06:55:31','标题4','简介4','2022-07-21','upload/dianpugonggao_fengmian4.jpg','内容4','商家账号4','店铺名4','2022-07-21 14:55:31',4),(75,'2022-07-21 06:55:31','标题5','简介5','2022-07-21','upload/dianpugonggao_fengmian5.jpg','内容5','商家账号5','店铺名5','2022-07-21 14:55:31',5),(76,'2022-07-21 06:55:31','标题6','简介6','2022-07-21','upload/dianpugonggao_fengmian6.jpg','内容6','商家账号6','店铺名6','2022-07-21 14:55:31',6);
/*!40000 ALTER TABLE `dianpugonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdianpugonggao`
--

DROP TABLE IF EXISTS `discussdianpugonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdianpugonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='店铺公告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdianpugonggao`
--

LOCK TABLES `discussdianpugonggao` WRITE;
/*!40000 ALTER TABLE `discussdianpugonggao` DISABLE KEYS */;
INSERT INTO `discussdianpugonggao` VALUES (141,'2022-07-21 06:55:31',1,1,'用户名1','评论内容1','回复内容1'),(142,'2022-07-21 06:55:31',2,2,'用户名2','评论内容2','回复内容2'),(143,'2022-07-21 06:55:31',3,3,'用户名3','评论内容3','回复内容3'),(144,'2022-07-21 06:55:31',4,4,'用户名4','评论内容4','回复内容4'),(145,'2022-07-21 06:55:31',5,5,'用户名5','评论内容5','回复内容5'),(146,'2022-07-21 06:55:31',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussdianpugonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (131,'2022-07-21 06:55:31',1,1,'用户名1','评论内容1','回复内容1'),(132,'2022-07-21 06:55:31',2,2,'用户名2','评论内容2','回复内容2'),(133,'2022-07-21 06:55:31',3,3,'用户名3','评论内容3','回复内容3'),(134,'2022-07-21 06:55:31',4,4,'用户名4','评论内容4','回复内容4'),(135,'2022-07-21 06:55:31',5,5,'用户名5','评论内容5','回复内容5'),(136,'2022-07-21 06:55:31',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (121,'2022-07-21 06:55:31',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(122,'2022-07-21 06:55:31',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(123,'2022-07-21 06:55:31',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(124,'2022-07-21 06:55:31',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(125,'2022-07-21 06:55:31',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(126,'2022-07-21 06:55:31',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianpuming` varchar(200) NOT NULL COMMENT '店铺名',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jingyingfanwei` longtext COMMENT '经营范围',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2022-07-21 06:55:31','商家账号1','123456','店铺名1','负责人1','13823888881','店铺地址1','upload/shangjia_fengmian1.jpg','经营范围1',100),(22,'2022-07-21 06:55:31','商家账号2','123456','店铺名2','负责人2','13823888882','店铺地址2','upload/shangjia_fengmian2.jpg','经营范围2',100),(23,'2022-07-21 06:55:31','商家账号3','123456','店铺名3','负责人3','13823888883','店铺地址3','upload/shangjia_fengmian3.jpg','经营范围3',100),(24,'2022-07-21 06:55:31','商家账号4','123456','店铺名4','负责人4','13823888884','店铺地址4','upload/shangjia_fengmian4.jpg','经营范围4',100),(25,'2022-07-21 06:55:31','商家账号5','123456','店铺名5','负责人5','13823888885','店铺地址5','upload/shangjia_fengmian5.jpg','经营范围5',100),(26,'2022-07-21 06:55:31','商家账号6','123456','店铺名6','负责人6','13823888886','店铺地址6','upload/shangjia_fengmian6.jpg','经营范围6',100);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (41,'2022-07-21 06:55:31','商品分类1'),(42,'2022-07-21 06:55:31','商品分类2'),(43,'2022-07-21 06:55:31','商品分类3'),(44,'2022-07-21 06:55:31','商品分类4'),(45,'2022-07-21 06:55:31','商品分类5'),(46,'2022-07-21 06:55:31','商品分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (51,'2022-07-21 06:55:31','商品名称1','商品分类1','品牌1','规格1','upload/shangpinxinxi_tupian1.jpg','2022-07-21','商品介绍1','商家账号1','店铺名1',1,1,'2022-07-21 14:55:31',1,99.9,1,99),(52,'2022-07-21 06:55:31','商品名称2','商品分类2','品牌2','规格2','upload/shangpinxinxi_tupian2.jpg','2022-07-21','商品介绍2','商家账号2','店铺名2',2,2,'2022-07-21 14:55:31',2,99.9,2,99),(53,'2022-07-21 06:55:31','商品名称3','商品分类3','品牌3','规格3','upload/shangpinxinxi_tupian3.jpg','2022-07-21','商品介绍3','商家账号3','店铺名3',3,3,'2022-07-21 14:55:31',3,99.9,3,99),(54,'2022-07-21 06:55:31','商品名称4','商品分类4','品牌4','规格4','upload/shangpinxinxi_tupian4.jpg','2022-07-21','商品介绍4','商家账号4','店铺名4',4,4,'2022-07-21 14:55:31',4,99.9,4,99),(55,'2022-07-21 06:55:31','商品名称5','商品分类5','品牌5','规格5','upload/shangpinxinxi_tupian5.jpg','2022-07-21','商品介绍5','商家账号5','店铺名5',5,5,'2022-07-21 14:55:31',5,99.9,5,99),(56,'2022-07-21 06:55:31','商品名称6','商品分类6','品牌6','规格6','upload/shangpinxinxi_tupian6.jpg','2022-07-21','商品介绍6','商家账号6','店铺名6',6,6,'2022-07-21 14:55:31',6,99.9,6,99);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-07-21 06:55:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-07-21 06:55:31','账号1','123456','姓名1',1,'男','13823888881','upload/yonghu_zhaopian1.jpg',100),(12,'2022-07-21 06:55:31','账号2','123456','姓名2',2,'男','13823888882','upload/yonghu_zhaopian2.jpg',100),(13,'2022-07-21 06:55:31','账号3','123456','姓名3',3,'男','13823888883','upload/yonghu_zhaopian3.jpg',100),(14,'2022-07-21 06:55:31','账号4','123456','姓名4',4,'男','13823888884','upload/yonghu_zhaopian4.jpg',100),(15,'2022-07-21 06:55:31','账号5','123456','姓名5',5,'男','13823888885','upload/yonghu_zhaopian5.jpg',100),(16,'2022-07-21 06:55:31','账号6','123456','姓名6',6,'男','13823888886','upload/yonghu_zhaopian6.jpg',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghushenqing`
--

DROP TABLE IF EXISTS `yonghushenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghushenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yingyezhizhao` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `shenqingwenjian` varchar(200) DEFAULT NULL COMMENT '申请文件',
  `shenqingyuanyin` longtext COMMENT '申请原因',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghushenqing`
--

LOCK TABLES `yonghushenqing` WRITE;
/*!40000 ALTER TABLE `yonghushenqing` DISABLE KEYS */;
INSERT INTO `yonghushenqing` VALUES (31,'2022-07-21 06:55:31','账号1','姓名1','upload/yonghushenqing_yingyezhizhao1.jpg','','申请原因1','2022-07-21 14:55:31','是',''),(32,'2022-07-21 06:55:31','账号2','姓名2','upload/yonghushenqing_yingyezhizhao2.jpg','','申请原因2','2022-07-21 14:55:31','是',''),(33,'2022-07-21 06:55:31','账号3','姓名3','upload/yonghushenqing_yingyezhizhao3.jpg','','申请原因3','2022-07-21 14:55:31','是',''),(34,'2022-07-21 06:55:31','账号4','姓名4','upload/yonghushenqing_yingyezhizhao4.jpg','','申请原因4','2022-07-21 14:55:31','是',''),(35,'2022-07-21 06:55:31','账号5','姓名5','upload/yonghushenqing_yingyezhizhao5.jpg','','申请原因5','2022-07-21 14:55:31','是',''),(36,'2022-07-21 06:55:31','账号6','姓名6','upload/yonghushenqing_yingyezhizhao6.jpg','','申请原因6','2022-07-21 14:55:31','是','');
/*!40000 ALTER TABLE `yonghushenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianzixun`
--

DROP TABLE IF EXISTS `zaixianzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zixunwenti` longtext NOT NULL COMMENT '咨询问题',
  `zixunshijian` datetime DEFAULT NULL COMMENT '咨询时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianzixun`
--

LOCK TABLES `zaixianzixun` WRITE;
/*!40000 ALTER TABLE `zaixianzixun` DISABLE KEYS */;
INSERT INTO `zaixianzixun` VALUES (61,'2022-07-21 06:55:31','标题1','咨询问题1','2022-07-21 14:55:31','商家账号1','店铺名1','账号1','姓名1','是',''),(62,'2022-07-21 06:55:31','标题2','咨询问题2','2022-07-21 14:55:31','商家账号2','店铺名2','账号2','姓名2','是',''),(63,'2022-07-21 06:55:31','标题3','咨询问题3','2022-07-21 14:55:31','商家账号3','店铺名3','账号3','姓名3','是',''),(64,'2022-07-21 06:55:31','标题4','咨询问题4','2022-07-21 14:55:31','商家账号4','店铺名4','账号4','姓名4','是',''),(65,'2022-07-21 06:55:31','标题5','咨询问题5','2022-07-21 14:55:31','商家账号5','店铺名5','账号5','姓名5','是',''),(66,'2022-07-21 06:55:31','标题6','咨询问题6','2022-07-21 14:55:31','商家账号6','店铺名6','账号6','姓名6','是','');
/*!40000 ALTER TABLE `zaixianzixun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 14:55:58
