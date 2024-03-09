/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - bianjiefandiandiacan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bianjiefandiandiacan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bianjiefandiandiacan`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='送餐地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(2,3,'收货人2','17703786902','地址2',1,'2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(3,3,'收货人3','17703786903','地址3',1,'2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(4,1,'收货人4','17703786904','地址4',1,'2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(5,2,'收货人5','17703786905','地址5',1,'2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53');

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '餐品名称  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '餐品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '餐品类型 Search111',
  `caipin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '餐品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '餐品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `caipin_content` text COMMENT '餐品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='餐品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_name`,`caipin_photo`,`caipin_types`,`caipin_price`,`caipin_kucun_number`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`shangxia_types`,`caipin_delete`,`caipin_content`,`create_time`) values (1,'餐品名称1','http://localhost:8080/bianjiefandiandiacan/upload/caipin1.jpg',1,427,101,'609.67','36.23',50,1,1,'餐品简介1','2022-03-09 21:56:53'),(2,'餐品名称2','http://localhost:8080/bianjiefandiandiacan/upload/caipin2.jpg',1,86,102,'989.26','400.84',118,1,1,'餐品简介2','2022-03-09 21:56:53'),(3,'餐品名称3','http://localhost:8080/bianjiefandiandiacan/upload/caipin3.jpg',2,432,102,'564.76','308.48',300,1,1,'餐品简介3','2022-03-09 21:56:53'),(4,'餐品名称4','http://localhost:8080/bianjiefandiandiacan/upload/caipin4.jpg',2,452,103,'805.34','473.95',428,1,1,'餐品简介4','2022-03-09 21:56:53'),(5,'餐品名称5','http://localhost:8080/bianjiefandiandiacan/upload/caipin5.jpg',3,230,104,'959.77','223.25',69,1,1,'餐品简介5','2022-03-09 21:56:53');

/*Table structure for table `caipin_commentback` */

DROP TABLE IF EXISTS `caipin_commentback`;

CREATE TABLE `caipin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '餐品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caipin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='餐品评价';

/*Data for the table `caipin_commentback` */

insert  into `caipin_commentback`(`id`,`caipin_id`,`yonghu_id`,`caipin_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评价内容1','回复信息1','2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(2,2,1,'评价内容2','回复信息2','2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(3,3,3,'评价内容3','回复信息3','2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(4,4,1,'评价内容4','回复信息4','2022-03-09 21:56:53','2022-03-09 21:56:53','2022-03-09 21:56:53'),(5,5,2,'评价内容5','管理可以回复用户的评价 用户购买完成后可以评论','2022-03-09 21:56:53','2022-03-10 09:23:53','2022-03-09 21:56:53');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '送餐地址 ',
  `caipin_id` int(11) DEFAULT NULL COMMENT '餐品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='餐品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`address_id`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_true_price`,`caipin_order_types`,`caipin_order_payment_types`,`insert_time`,`create_time`) values (1,'1646874930995',4,4,1,1,'473.95',1,1,'2022-03-10 09:15:31','2022-03-10 09:15:31'),(2,'1646875185419',NULL,3,2,1,'308.48',4,1,'2022-03-10 09:19:45','2022-03-10 09:19:45'),(3,'1646876076241',NULL,5,1,1,'223.25',3,1,'2022-03-10 09:34:36','2022-03-10 09:34:36');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `caipin_id` int(11) DEFAULT NULL COMMENT '餐品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/bianjiefandiandiacan/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/bianjiefandiandiacan/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/bianjiefandiandiacan/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-09 21:56:31'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-09 21:56:31'),(3,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-09 21:56:31'),(4,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-09 21:56:31'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-09 21:56:31'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-09 21:56:31'),(7,'caipin_types','餐品类型',1,'餐品类型1',NULL,NULL,'2022-03-09 21:56:31'),(8,'caipin_types','餐品类型',2,'餐品类型2',NULL,NULL,'2022-03-09 21:56:31'),(9,'caipin_types','餐品类型',3,'餐品类型3',NULL,NULL,'2022-03-09 21:56:31'),(10,'caipin_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-09 21:56:31'),(11,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-09 21:56:31'),(12,'caipin_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-09 21:56:31'),(13,'caipin_order_types','订单类型',4,'已出餐',NULL,NULL,'2022-03-09 21:56:31'),(14,'caipin_order_types','订单类型',5,'已取餐',NULL,NULL,'2022-03-09 21:56:31'),(15,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-09 21:56:31'),(16,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2022-03-09 21:56:31'),(17,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2022-03-09 21:56:31');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 Search111',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`news_content`,`create_time`) values (1,'新闻标题1','http://localhost:8080/bianjiefandiandiacan/upload/news1.jpg',2,'新闻详情1','2022-03-09 21:56:53'),(2,'新闻标题2','http://localhost:8080/bianjiefandiandiacan/upload/news2.jpg',2,'新闻详情2','2022-03-09 21:56:53'),(3,'新闻标题3','http://localhost:8080/bianjiefandiandiacan/upload/news3.jpg',2,'新闻详情3','2022-03-09 21:56:53'),(4,'新闻标题4','http://localhost:8080/bianjiefandiandiacan/upload/news4.jpg',1,'新闻详情4','2022-03-09 21:56:53'),(5,'新闻标题5','http://localhost:8080/bianjiefandiandiacan/upload/news5.jpg',2,'新闻详情5','2022-03-09 21:56:53');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','yap913ncct07i6ecnfhsgm25g4w6qnr6','2022-03-10 09:11:48','2022-03-10 10:34:28'),(2,1,'admin','users','管理员','kncr8d2moeity9x8n3nil95re9kkiyot','2022-03-10 09:13:50','2022-03-10 10:23:04'),(3,2,'a2','yonghu','用户','x1slhs25ignw5y71igwdyvdqullbtygo','2022-03-10 09:18:46','2022-03-10 10:18:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

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
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/bianjiefandiandiacan/upload/yonghu1.jpg',2,'1@qq.com','99500.95','2022-03-09 21:56:53'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/bianjiefandiandiacan/upload/yonghu2.jpg',2,'2@qq.com','940.04','2022-03-09 21:56:53'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/bianjiefandiandiacan/upload/yonghu3.jpg',1,'3@qq.com','395.27','2022-03-09 21:56:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
