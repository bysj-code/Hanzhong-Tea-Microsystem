/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - mingcha
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mingcha` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mingcha`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(2,2,'收货人2','17703786902','地址2',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(3,3,'收货人3','17703786903','地址3',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(6,1,'收货人6','17703786906','地址6',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(7,2,'收货人7','17703786907','地址7',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(8,3,'收货人8','17703786908','地址8',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(9,1,'收货人9','17703786909','地址9',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(10,2,'收货人10','17703786910','地址10',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(11,2,'收货人11','17703786911','地址11',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(13,1,'收货人13','17703786913','地址13',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(14,3,'收货人14','17703786914','地址14',1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(15,4,'张1','17788889999','地址121',1,'2023-04-11 17:04:13','2023-04-11 17:04:12','2023-04-11 17:04:13'),(16,5,'张三','17788885222','地址1111',1,'2023-04-13 17:13:21','2023-04-13 17:13:20','2023-04-13 17:13:21'),(17,5,'李四','17722223333','地址111',2,'2023-04-13 17:14:54','2023-04-13 17:14:54','2023-04-13 17:14:54');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `chaye_id` int(11) DEFAULT NULL COMMENT '茶叶',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`chaye_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (4,4,2,1,'2023-04-11 17:06:06',NULL,'2023-04-11 17:06:06');

/*Table structure for table `chaye` */

DROP TABLE IF EXISTS `chaye`;

CREATE TABLE `chaye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chaye_name` varchar(200) DEFAULT NULL COMMENT '茶叶名称  Search111 ',
  `chaye_uuid_number` varchar(200) DEFAULT NULL COMMENT '茶叶编号',
  `chaye_photo` varchar(200) DEFAULT NULL COMMENT '茶叶照片',
  `chaye_address` varchar(200) DEFAULT NULL COMMENT '产茶地点',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `chaye_types` int(11) DEFAULT NULL COMMENT '茶叶类型 Search111',
  `chaye_kucun_number` int(11) DEFAULT NULL COMMENT '茶叶库存',
  `chaye_old_money` decimal(10,2) DEFAULT NULL COMMENT '茶叶原价 ',
  `chaye_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/斤',
  `chaye_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `chaye_clicknum` int(11) DEFAULT NULL COMMENT '茶叶热度',
  `chaye_content` longtext COMMENT '茶叶介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `chaye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='茶叶';

/*Data for the table `chaye` */

insert  into `chaye`(`id`,`chaye_name`,`chaye_uuid_number`,`chaye_photo`,`chaye_address`,`zan_number`,`cai_number`,`chaye_types`,`chaye_kucun_number`,`chaye_old_money`,`chaye_new_money`,`chaye_cangku`,`chaye_clicknum`,`chaye_content`,`shangxia_types`,`chaye_delete`,`insert_time`,`create_time`) values (1,'茶叶名称1','1681203566002','upload/chaye1.jpg','产茶地点1',375,246,1,101,'863.16','391.04','所属仓库1',331,'茶叶介绍1',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(2,'茶叶名称2','1681203565952','upload/chaye2.jpg','产茶地点2',42,352,1,101,'716.03','309.77','所属仓库2',359,'茶叶介绍2',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(3,'茶叶名称3','1681203565993','upload/chaye3.jpg','产茶地点3',388,132,3,103,'608.86','189.99','所属仓库3',317,'茶叶介绍3',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(4,'茶叶名称4','1681203565995','upload/chaye4.jpg','产茶地点4',182,276,1,100,'764.28','217.93','所属仓库4',275,'茶叶介绍4',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(5,'茶叶名称5','1681203566029','upload/chaye5.jpg','产茶地点5',260,433,4,105,'671.70','118.10','所属仓库5',68,'茶叶介绍5',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(6,'茶叶名称6','1681203565936','upload/chaye6.jpg','产茶地点6',226,61,2,106,'822.96','59.62','所属仓库6',298,'茶叶介绍6',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(7,'茶叶名称7','1681203566030','upload/chaye7.jpg','产茶地点7',478,103,1,106,'861.45','28.39','所属仓库7',39,'茶叶介绍7',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(8,'茶叶名称8','1681203565984','upload/chaye8.jpg','产茶地点8',222,166,1,106,'649.18','103.74','所属仓库8',220,'茶叶介绍8',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(9,'茶叶名称9','1681203565966','upload/chaye9.jpg','产茶地点9',88,308,4,109,'884.25','167.03','所属仓库9',386,'茶叶介绍9',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(10,'茶叶名称10','1681203565982','upload/chaye10.jpg','产茶地点10',180,344,4,1010,'742.55','378.52','所属仓库10',253,'茶叶介绍10',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(11,'茶叶名称11','1681203565956','upload/chaye11.jpg','产茶地点11',431,413,2,1009,'916.72','261.38','所属仓库11',304,'茶叶介绍11',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(12,'茶叶名称12','1681203566028','upload/chaye12.jpg','产茶地点12',337,363,2,1012,'713.88','464.99','所属仓库12',59,'茶叶介绍12',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(13,'茶叶名称13','1681203566028','upload/chaye13.jpg','产茶地点13',408,144,3,1013,'938.71','233.76','所属仓库13',83,'茶叶介绍13',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(14,'茶叶名称14','1681203565955','upload/chaye14.jpg','产茶地点14',453,464,4,1014,'918.91','220.71','所属仓库14',399,'<p>茶叶介绍14回到三国是打发点水电费第三方</p>',1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25');

/*Table structure for table `chaye_collection` */

DROP TABLE IF EXISTS `chaye_collection`;

CREATE TABLE `chaye_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chaye_id` int(11) DEFAULT NULL COMMENT '茶叶',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chaye_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='茶叶收藏';

/*Data for the table `chaye_collection` */

insert  into `chaye_collection`(`id`,`chaye_id`,`yonghu_id`,`chaye_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(2,2,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(3,3,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(4,4,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(5,5,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(6,6,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(7,7,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(8,8,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(9,9,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(10,10,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(11,11,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(12,12,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(13,13,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(14,14,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25'),(15,2,4,2,'2023-04-11 17:03:52','2023-04-11 17:03:52'),(16,2,4,1,'2023-04-11 17:05:13','2023-04-11 17:05:13'),(17,4,4,1,'2023-04-11 17:05:14','2023-04-11 17:05:14'),(18,2,4,3,'2023-04-11 17:06:09','2023-04-11 17:06:09'),(19,11,5,1,'2023-04-13 17:13:59','2023-04-13 17:13:59');

/*Table structure for table `chaye_commentback` */

DROP TABLE IF EXISTS `chaye_commentback`;

CREATE TABLE `chaye_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chaye_id` int(11) DEFAULT NULL COMMENT '茶叶',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chaye_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='茶叶评价';

/*Data for the table `chaye_commentback` */

insert  into `chaye_commentback`(`id`,`chaye_id`,`yonghu_id`,`chaye_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-11 16:59:25','回复信息1','2023-04-11 16:59:25','2023-04-11 16:59:25'),(2,2,1,'评价内容2','2023-04-11 16:59:25','回复信息2','2023-04-11 16:59:25','2023-04-11 16:59:25'),(3,3,1,'评价内容3','2023-04-11 16:59:25','回复信息3','2023-04-11 16:59:25','2023-04-11 16:59:25'),(4,4,3,'评价内容4','2023-04-11 16:59:25','回复信息4','2023-04-11 16:59:25','2023-04-11 16:59:25'),(5,5,3,'评价内容5','2023-04-11 16:59:25','回复信息5','2023-04-11 16:59:25','2023-04-11 16:59:25'),(6,6,1,'评价内容6','2023-04-11 16:59:25','回复信息6','2023-04-11 16:59:25','2023-04-11 16:59:25'),(7,7,3,'评价内容7','2023-04-11 16:59:25','回复信息7','2023-04-11 16:59:25','2023-04-11 16:59:25'),(8,8,1,'评价内容8','2023-04-11 16:59:25','回复信息8','2023-04-11 16:59:25','2023-04-11 16:59:25'),(9,9,3,'评价内容9','2023-04-11 16:59:25','回复信息9','2023-04-11 16:59:25','2023-04-11 16:59:25'),(10,10,3,'评价内容10','2023-04-11 16:59:25','回复信息10','2023-04-11 16:59:25','2023-04-11 16:59:25'),(11,11,1,'评价内容11','2023-04-11 16:59:25','回复信息11','2023-04-11 16:59:25','2023-04-11 16:59:25'),(12,12,3,'评价内容12','2023-04-11 16:59:25','回复信息12','2023-04-11 16:59:25','2023-04-11 16:59:25'),(13,13,3,'评价内容13','2023-04-11 16:59:25','回复信息13','2023-04-11 16:59:25','2023-04-11 16:59:25'),(14,14,2,'评价内容14','2023-04-11 16:59:25','回复信息14','2023-04-11 16:59:25','2023-04-11 16:59:25'),(15,2,4,'都是高大上分公司','2023-04-11 17:05:58','高规格和','2023-04-11 17:06:46','2023-04-11 17:05:58'),(16,7,5,'呵呵叫姐姐','2023-04-13 17:15:51','个哈哈哈','2023-04-13 17:25:07','2023-04-13 17:15:51');

/*Table structure for table `chaye_order` */

DROP TABLE IF EXISTS `chaye_order`;

CREATE TABLE `chaye_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chaye_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `chaye_id` int(11) DEFAULT NULL COMMENT '茶叶',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `chaye_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chaye_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `chaye_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `chaye_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `chaye_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='茶叶订单';

/*Data for the table `chaye_order` */

insert  into `chaye_order`(`id`,`chaye_order_uuid_number`,`address_id`,`chaye_id`,`yonghu_id`,`buy_number`,`chaye_order_true_price`,`chaye_order_courier_name`,`chaye_order_courier_number`,`chaye_order_types`,`chaye_order_payment_types`,`insert_time`,`create_time`) values (1,'1681203875786',15,4,4,2,'435.86',NULL,NULL,101,1,'2023-04-11 17:04:36','2023-04-11 17:04:36'),(2,'1681203920821',15,4,4,2,'435.86','圆通','543421541',103,1,'2023-04-11 17:05:21','2023-04-11 17:05:21'),(3,'1681203920821',15,2,4,1,'309.77','顺丰','1354156418',105,1,'2023-04-11 17:05:21','2023-04-11 17:05:21'),(4,'1681203920821',15,11,4,2,'522.76',NULL,NULL,102,1,'2023-04-11 17:05:21','2023-04-11 17:05:21'),(5,'1681377242853',16,11,5,1,'261.38',NULL,NULL,101,1,'2023-04-13 17:14:03','2023-04-13 17:14:03'),(6,'1681377255719',16,8,5,1,'103.74',NULL,NULL,101,1,'2023-04-13 17:14:16','2023-04-13 17:14:16'),(7,'1681377262214',16,8,5,1,'103.74',NULL,NULL,101,1,'2023-04-13 17:14:22','2023-04-13 17:14:22'),(8,'1681377262214',16,11,5,1,'261.38','顺丰','454545',103,1,'2023-04-13 17:14:22','2023-04-13 17:14:22'),(9,'1681377262214',16,7,5,1,'28.39','顺丰','54153415315',105,1,'2023-04-13 17:14:22','2023-04-13 17:14:22');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1的公司大概多少个哈哈哈或','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-11 16:58:32'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-11 16:58:32'),(3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-11 16:58:32'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-11 16:58:32'),(5,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-11 16:58:32'),(6,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-11 16:58:32'),(7,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-11 16:58:32'),(8,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-11 16:58:32'),(9,'chaye_types','茶叶类型',1,'茶叶类型1',NULL,NULL,'2023-04-11 16:58:32'),(10,'chaye_types','茶叶类型',2,'茶叶类型2',NULL,NULL,'2023-04-11 16:58:32'),(11,'chaye_types','茶叶类型',3,'茶叶类型3',NULL,NULL,'2023-04-11 16:58:32'),(12,'chaye_types','茶叶类型',4,'茶叶类型4',NULL,NULL,'2023-04-11 16:58:32'),(13,'chaye_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-11 16:58:32'),(14,'chaye_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-11 16:58:33'),(15,'chaye_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-11 16:58:33'),(16,'chaye_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-11 16:58:33'),(17,'chaye_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-11 16:58:33'),(18,'chaye_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-11 16:58:33'),(19,'chaye_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-11 16:58:33'),(20,'chaye_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-11 16:58:33'),(21,'chaye_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-11 16:58:33'),(22,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-11 16:58:33'),(23,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-11 16:58:33'),(24,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-04-11 16:58:33'),(25,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-04-11 16:58:33'),(26,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-04-11 16:58:33'),(27,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-11 16:58:33'),(28,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-11 16:58:33'),(29,'gonggao_types','公告类型',3,'公告类型3',NULL,'','2023-04-11 17:06:22'),(30,'gonggao_types','公告类型',4,'公告类型4',NULL,'','2023-04-13 17:24:56');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',181,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(2,'帖子标题2',2,NULL,'发布内容2',75,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(3,'帖子标题3',3,NULL,'发布内容3',14,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(4,'帖子标题4',2,NULL,'发布内容4',196,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(5,'帖子标题5',1,NULL,'发布内容5',452,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(6,'帖子标题6',1,NULL,'发布内容6',165,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(7,'帖子标题7',2,NULL,'发布内容7',385,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(8,'帖子标题8',3,NULL,'发布内容8',35,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(9,'帖子标题9',2,NULL,'发布内容9',208,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(10,'帖子标题10',3,NULL,'发布内容10',237,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(11,'帖子标题11',1,NULL,'发布内容11',44,1,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(12,'帖子标题12',1,NULL,'发布内容12',473,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(13,'帖子标题13',2,NULL,'发布内容13',32,2,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(14,'帖子标题14',3,NULL,'发布内容14',70,3,1,'2023-04-11 16:59:25','2023-04-11 16:59:25','2023-04-11 16:59:25'),(15,NULL,4,NULL,'个第三个十多个',14,NULL,2,'2023-04-11 17:04:46',NULL,'2023-04-11 17:04:46'),(16,'帖子111',4,NULL,'<p>固定死单双杠事故</p>',NULL,3,1,'2023-04-11 17:04:55',NULL,'2023-04-11 17:04:55'),(17,NULL,NULL,1,'哈哈哈',16,NULL,2,'2023-04-11 17:07:05',NULL,'2023-04-11 17:07:05'),(18,NULL,5,NULL,'hhh发顺丰的',16,NULL,2,'2023-04-13 17:14:35',NULL,'2023-04-13 17:14:35'),(19,'帖子111',5,NULL,'过大第三个十多个',NULL,3,1,'2023-04-13 17:16:15',NULL,'2023-04-13 17:16:15'),(20,NULL,NULL,1,'和黑胡椒和',19,NULL,2,'2023-04-13 17:25:33',NULL,'2023-04-13 17:25:33');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-11 16:59:25','公告详情1','2023-04-11 16:59:25'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-11 16:59:25','公告详情2','2023-04-11 16:59:25'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-11 16:59:25','公告详情3','2023-04-11 16:59:25'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-11 16:59:25','公告详情4','2023-04-11 16:59:25'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-11 16:59:25','公告详情5','2023-04-11 16:59:25'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-11 16:59:25','公告详情6','2023-04-11 16:59:25'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-11 16:59:25','公告详情7','2023-04-11 16:59:25'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-11 16:59:25','公告详情8','2023-04-11 16:59:25'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-11 16:59:25','公告详情9','2023-04-11 16:59:25'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-11 16:59:25','公告详情10','2023-04-11 16:59:25'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-11 16:59:25','公告详情11','2023-04-11 16:59:25'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-11 16:59:25','公告详情12','2023-04-11 16:59:25'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-11 16:59:25','公告详情13','2023-04-11 16:59:25'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-11 16:59:25','<p>公告详情14后悔何及</p>','2023-04-11 16:59:25');

/*Table structure for table `lishijieshao` */

DROP TABLE IF EXISTS `lishijieshao`;

CREATE TABLE `lishijieshao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `lishijieshao_uuid_number` varchar(200) DEFAULT NULL COMMENT '历史编号',
  `lishijieshao_name` varchar(200) DEFAULT NULL COMMENT '茗茶历史名称 Search111  ',
  `lishijieshao_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `lishijieshao_file` varchar(200) DEFAULT NULL COMMENT '资料',
  `chaye_types` int(11) DEFAULT NULL COMMENT '茶叶类型 Search111',
  `lishijieshao_qiyuandi` varchar(200) DEFAULT NULL COMMENT '起源地',
  `qiyuan_time` timestamp NULL DEFAULT NULL COMMENT '起源时间',
  `lishijieshao_content` longtext COMMENT '茗茶历史详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='茗茶历史';

/*Data for the table `lishijieshao` */

insert  into `lishijieshao`(`id`,`lishijieshao_uuid_number`,`lishijieshao_name`,`lishijieshao_photo`,`lishijieshao_file`,`chaye_types`,`lishijieshao_qiyuandi`,`qiyuan_time`,`lishijieshao_content`,`insert_time`,`create_time`) values (1,'1681203566037','茗茶历史名称1','upload/lishijieshao1.jpg','upload/file.rar',3,'起源地1','2023-04-11 16:59:25','茗茶历史详情1','2023-04-11 16:59:25','2023-04-11 16:59:25'),(2,'1681203565957','茗茶历史名称2','upload/lishijieshao2.jpg','upload/file.rar',3,'起源地2','2023-04-11 16:59:25','茗茶历史详情2','2023-04-11 16:59:25','2023-04-11 16:59:25'),(3,'1681203565985','茗茶历史名称3','upload/lishijieshao3.jpg','upload/file.rar',4,'起源地3','2023-04-11 16:59:25','茗茶历史详情3','2023-04-11 16:59:25','2023-04-11 16:59:25'),(4,'1681203566013','茗茶历史名称4','upload/lishijieshao4.jpg','upload/file.rar',1,'起源地4','2023-04-11 16:59:25','茗茶历史详情4','2023-04-11 16:59:25','2023-04-11 16:59:25'),(5,'1681203565986','茗茶历史名称5','upload/lishijieshao5.jpg','upload/file.rar',3,'起源地5','2023-04-11 16:59:25','茗茶历史详情5','2023-04-11 16:59:25','2023-04-11 16:59:25'),(6,'1681203565993','茗茶历史名称6','upload/lishijieshao6.jpg','upload/file.rar',3,'起源地6','2023-04-11 16:59:25','茗茶历史详情6','2023-04-11 16:59:25','2023-04-11 16:59:25'),(7,'1681203566011','茗茶历史名称7','upload/lishijieshao7.jpg','upload/file.rar',4,'起源地7','2023-04-11 16:59:25','茗茶历史详情7','2023-04-11 16:59:25','2023-04-11 16:59:25'),(8,'1681203565991','茗茶历史名称8','upload/lishijieshao8.jpg','upload/file.rar',3,'起源地8','2023-04-11 16:59:25','茗茶历史详情8','2023-04-11 16:59:25','2023-04-11 16:59:25'),(9,'1681203566028','茗茶历史名称9','upload/lishijieshao9.jpg','upload/file.rar',4,'起源地9','2023-04-11 16:59:25','茗茶历史详情9','2023-04-11 16:59:25','2023-04-11 16:59:25'),(10,'1681203566001','茗茶历史名称10','upload/lishijieshao10.jpg','upload/file.rar',3,'起源地10','2023-04-11 16:59:25','茗茶历史详情10','2023-04-11 16:59:25','2023-04-11 16:59:25'),(11,'1681203566021','茗茶历史名称11','upload/lishijieshao11.jpg','upload/file.rar',3,'起源地11','2023-04-11 16:59:25','茗茶历史详情11','2023-04-11 16:59:25','2023-04-11 16:59:25'),(12,'1681203566023','茗茶历史名称12','upload/lishijieshao12.jpg','upload/file.rar',4,'起源地12','2023-04-11 16:59:25','茗茶历史详情12','2023-04-11 16:59:25','2023-04-11 16:59:25'),(13,'1681203565990','茗茶历史名称13','upload/lishijieshao13.jpg','upload/file.rar',2,'起源地13','2023-04-11 16:59:25','茗茶历史详情13','2023-04-11 16:59:25','2023-04-11 16:59:25'),(14,'1681203565966','茗茶历史名称14','upload/lishijieshao14.jpg','upload/file.rar',4,'起源地14','2023-04-11 16:59:25','<p>茗茶历史详情14更汗的是范德萨发生的合肥师范回复收到货</p>','2023-04-11 16:59:25','2023-04-11 16:59:25');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','boysguwnk4fyif1fr6jlsezs2sbjorqp','2023-04-11 17:02:31','2023-04-13 17:57:32'),(2,4,'a5','yonghu','用户','44mjac4mctl9gsmygcbscptqe01orbce','2023-04-11 17:03:20','2023-04-11 18:05:49'),(3,1,'admin','users','管理员','i8mpsxogk6y2ivc4yzezvywzpf9a7qnh','2023-04-11 17:05:29','2023-04-13 18:24:46'),(4,5,'a9','yonghu','用户','8ot7k985ncjfiemh9qw6f7psn1eudcom','2023-04-13 17:12:44','2023-04-13 18:12:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-11 16:58:32');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`jinyong_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','247.86',1,'2023-04-11 16:59:25'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','630.26',1,'2023-04-11 16:59:25'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','469.53',1,'2023-04-11 16:59:25'),(4,'a5','123456','张5','17788889999','444555888899999999','upload/1681203807859.jpg',2,'5@qq.com','98817.51',2,'2023-04-11 17:03:16'),(5,'a9','123456','张9','17788882222','444222111155555555','upload/1681377221646.jpg',1,'9@qq.com','99240.37',2,'2023-04-13 17:12:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
