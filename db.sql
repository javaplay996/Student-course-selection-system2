/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengxuanke
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengxuanke` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengxuanke`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程名称',
  `fraction` decimal(10,4) DEFAULT NULL COMMENT '打分  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`jiaoshi_id`,`kecheng_id`,`fraction`,`create_time`) values (2,5,3,3,'10.0000','2021-04-02 14:51:08'),(3,5,2,4,'1.0000','2021-04-02 14:57:46');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-01 21:41:13'),(2,'sex_types','性别',2,'女',NULL,'2021-04-01 21:41:13'),(3,'kemu_types','学科类型名称',1,'数学',NULL,'2021-04-01 21:41:13'),(4,'kemu_types','学科类型名称',2,'语文',NULL,'2021-04-01 21:41:13'),(5,'kemu_types','学科类型名称',3,'英语',NULL,'2021-04-01 21:41:13'),(6,'xingzhi_types','课程性质名称',1,'必修课',NULL,'2021-04-01 21:41:13'),(7,'xingzhi_types','课程性质名称',2,'选修课',NULL,'2021-04-01 21:41:13'),(8,'shifou_types','是否同意',1,'同意',NULL,'2021-04-01 21:41:13'),(9,'shifou_types','是否同意',2,'拒绝',NULL,'2021-04-01 21:41:13'),(10,'jssex_types','性别',1,'男',NULL,'2021-04-02 10:00:44'),(11,'jssex_types','性别',2,'女',NULL,'2021-04-02 10:00:45'),(12,'kemu_types','学科类型名称',4,'物理',NULL,'2021-04-02 14:52:11');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jsname` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `jsusername` varchar(255) DEFAULT NULL COMMENT '账号',
  `jspassword` varchar(255) DEFAULT NULL COMMENT '密码',
  `jsimg_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `jssex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `jsphone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jsid_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `jsrole` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jsname`,`jsusername`,`jspassword`,`jsimg_photo`,`jssex_types`,`jsphone`,`jsid_number`,`jsrole`) values (1,'教师1','333','333','http://localhost:8080/xueshengxuanke/file/download?fileName=1617340421319.jpg',1,'17796312333','410882200011231234','教师'),(2,'教师2','444','444','http://localhost:8080/xueshengxuanke/file/download?fileName=1617340415316.jpg',2,'17754548971','410882200011274855','教师'),(3,'教师3','321','123456','http://localhost:8080/xueshengxuanke/file/download?fileName=1617346241585.jpg',1,'17754543271','410883210011274855','教师');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kcname` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kcname`,`create_time`) values (1,'课程1','2021-04-02 09:52:27'),(2,'课程2','2021-04-02 09:52:32'),(3,'课程3','2021-04-02 09:52:34'),(4,'课程4','2021-04-02 09:52:37'),(6,'课程5','2021-04-02 14:52:25');

/*Table structure for table `shenqing` */

DROP TABLE IF EXISTS `shenqing`;

CREATE TABLE `shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanke_id` int(11) DEFAULT NULL COMMENT '课程名称',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `shifou_types` int(11) DEFAULT '0' COMMENT '是否同意  Search111 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `shenqing` */

insert  into `shenqing`(`id`,`xuanke_id`,`yonghu_id`,`jiaoshi_id`,`shifou_types`) values (11,1,1,2,1),(13,2,5,1,0),(14,1,5,2,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','1gd9vd0qjkv5tlw6xleykgz7uhxd7hk2','2021-04-02 09:20:28','2021-04-02 15:47:50'),(2,1,'333','jiaoshi','教师','8x37ole808qj7zndf4hkh05o493hiki3','2021-04-02 14:45:01','2021-04-02 15:45:01'),(3,1,'111','yonghu','学生','0wyb1djuqfr878webqt5kvp9i8oqn8fx','2021-04-02 14:45:18','2021-04-02 15:54:24'),(4,5,'123','yonghu','学生','78p5wuoed34wi35h46h9rhhg1bsaco44','2021-04-02 14:54:33','2021-04-02 15:58:18'),(5,3,'321','jiaoshi','教师','7aotq8tznlc3dh7zcou7egole7ka8ra5','2021-04-02 14:57:30','2021-04-02 15:57:31');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xuanke` */

DROP TABLE IF EXISTS `xuanke`;

CREATE TABLE `xuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程名称',
  `kemu_types` int(11) DEFAULT NULL COMMENT '学科  Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师名称',
  `xingzhi_types` int(200) DEFAULT NULL COMMENT '课程性质 Search111 ',
  `shijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `xuefen` decimal(10,4) DEFAULT NULL COMMENT '学分',
  `zhouxueshi` varchar(200) DEFAULT NULL COMMENT '周学时',
  `rongliang` int(11) DEFAULT NULL COMMENT '容量',
  `yixuan` int(11) DEFAULT NULL COMMENT '已选',
  `yuliang` int(11) DEFAULT NULL COMMENT '余量',
  `beizhu_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='选课';

/*Data for the table `xuanke` */

insert  into `xuanke`(`id`,`kecheng_id`,`kemu_types`,`jiaoshi_id`,`xingzhi_types`,`shijian`,`didian`,`xuefen`,`zhouxueshi`,`rongliang`,`yixuan`,`yuliang`,`beizhu_content`,`create_time`) values (1,3,2,2,1,'上课时间1','上课地点1','5.0000','周学时1',50,1,49,'','2021-04-02 11:56:08'),(2,1,4,1,2,'上课时间2','上课地点2','3.0000','周学时2',20,0,20,'备注可有可无\r\n','2021-04-02 14:53:10'),(3,4,2,3,1,'上课时间3','上课地点3','6.0000','周学时3',3,0,3,'','2021-04-02 14:54:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`id_number`,`role`) values (1,'小金','111','111','http://localhost:8080/xueshengxuanke/file/download?fileName=1617340408513.jpg',1,'17796312333','410882200011231234','学生'),(2,'小札','222','222','http://localhost:8080/xueshengxuanke/file/download?fileName=1617340400416.jpg',2,'17754548971','410882200011274855','学生'),(5,'小张','123','123','http://localhost:8080/xueshengxuanke/file/download?fileName=1617346140141.jpg',2,'17785566454','410882231011274855','学生');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
