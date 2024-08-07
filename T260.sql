/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t260`;
CREATE DATABASE IF NOT EXISTS `t260` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t260`;

DROP TABLE IF EXISTS `bingli`;
CREATE TABLE IF NOT EXISTS `bingli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号  Search111 ',
  `bingli_name` varchar(200) DEFAULT NULL COMMENT '病例名称  Search111 ',
  `bingli_address` varchar(200) DEFAULT NULL COMMENT '现住址',
  `bingli_jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `bingli_hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻状况',
  `zhusu_content` text COMMENT '主诉 ',
  `jiwangshi_content` text COMMENT '既往史',
  `geren_content` text COMMENT '个人史',
  `yichuan_content` text COMMENT '家族遗传史',
  `zhenduan_content` text COMMENT '医生诊断',
  `yaofang_content` text COMMENT '开具药方',
  `kanbing_time` timestamp NULL DEFAULT NULL COMMENT '看病时间',
  `jiaofei_jine` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `jiaofei_types` int DEFAULT NULL COMMENT '是否缴费  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='病例';

DELETE FROM `bingli`;
INSERT INTO `bingli` (`id`, `huanzhe_id`, `yisheng_id`, `bingli_uuid_number`, `bingli_name`, `bingli_address`, `bingli_jiguan`, `bingli_hunyin`, `zhusu_content`, `jiwangshi_content`, `geren_content`, `yichuan_content`, `zhenduan_content`, `yaofang_content`, `kanbing_time`, `jiaofei_jine`, `insert_time`, `jiaofei_types`, `create_time`) VALUES
	(1, 3, 1, '165216613372211', '病例名称1', '现住址1', '籍贯1', '婚姻状况1', '主诉1', '既往史1', '个人史1', '家族遗传史1', '医生诊断1', '开具药方1', '2022-05-10 07:02:13', 374.84, '2022-05-10 07:02:13', 1, '2022-05-10 07:02:13'),
	(2, 2, 3, '165216613372277', '病例名称2', '现住址2', '籍贯2', '婚姻状况2', '主诉2', '既往史2', '个人史2', '家族遗传史2', '医生诊断2', '开具药方2', '2022-05-10 07:02:13', 756.09, '2022-05-10 07:02:13', 1, '2022-05-10 07:02:13'),
	(3, 2, 2, '16521661337224', '病例名称3', '现住址3', '籍贯3', '婚姻状况3', '主诉3', '既往史3', '个人史3', '家族遗传史3', '医生诊断3', '开具药方3', '2022-05-10 07:02:13', 347.17, '2022-05-10 07:02:13', 1, '2022-05-10 07:02:13'),
	(4, 3, 1, '165216613372258', '病例名称4', '现住址4', '籍贯4', '婚姻状况4', '主诉4', '既往史4', '个人史4', '家族遗传史4', '医生诊断4', '开具药方4', '2022-05-10 07:02:13', 400.73, '2022-05-10 07:02:13', 1, '2022-05-10 07:02:13'),
	(5, 1, 3, '165216613372318', '病例名称5', '现住址5', '籍贯5', '婚姻状况5', '主诉5', '既往史5', '个人史5', '家族遗传史5', '医生诊断5', '开具药方5', '2022-05-10 07:02:13', 909.57, '2022-05-10 07:02:13', 2, '2022-05-10 07:02:13'),
	(6, 2, 1, '1652172744443', ' 滨玻璃11', '住宅111', '籍贯1211', '未婚', '<p>第十四的话</p>', '<p>奋斗和代发货</p>', '<p>发的好的话</p>', '<p>发达国家</p>', '<p>对方回复</p>', '<p>奋斗和豆腐干感觉</p>', '2022-05-01 16:00:00', 330.00, '2022-05-10 08:53:02', 1, '2022-05-10 08:53:02'),
	(7, 1, 1, '1652173115182', '病例11', '住宅11', '籍贯11', '已婚', '<p>单身狗的说过话</p>', '<p>的身份和</p>', '<p>森岛帆高是否会</p>', '<p>规划经济</p>', '<p>发的哈哈</p>', '<p>地方哥哥</p>', '2022-05-08 16:00:00', 220.00, '2022-05-10 08:59:19', 2, '2022-05-10 08:59:19');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(33, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-05-10 07:00:04'),
	(34, 'single_seach_types', '单页数据类型', 2, '商业合作', NULL, NULL, '2022-05-10 07:00:04'),
	(35, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-05-10 07:00:04'),
	(36, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-05-10 07:00:04'),
	(37, 'keshi_types', '科室', 1, '外科', NULL, NULL, '2022-05-10 07:00:04'),
	(38, 'keshi_types', '科室', 2, '眼科', NULL, NULL, '2022-05-10 07:00:04'),
	(39, 'zhiwei_types', '职位', 1, '普通医生', NULL, NULL, '2022-05-10 07:00:04'),
	(40, 'zhiwei_types', '职位', 2, '主治医生', NULL, NULL, '2022-05-10 07:00:04'),
	(41, 'yisheng_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-05-10 07:00:04'),
	(42, 'yisheng_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-05-10 07:00:04'),
	(43, 'yisheng_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-05-10 07:00:04'),
	(44, 'yisheng_order_types', '挂号状态', 1, '已预约', NULL, NULL, '2022-05-10 07:00:04'),
	(45, 'yisheng_order_types', '挂号状态', 2, '已取消预约', NULL, NULL, '2022-05-10 07:00:04'),
	(46, 'yisheng_order_types', '挂号状态', 3, '已使用', NULL, NULL, '2022-05-10 07:00:04'),
	(47, 'yisheng_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-05-10 07:00:04'),
	(48, 'shijianduan_types', '时间段', 1, '08:00-09:00', NULL, NULL, '2022-05-10 07:00:04'),
	(49, 'shijianduan_types', '时间段', 2, '09:00-10:00', NULL, NULL, '2022-05-10 07:00:04'),
	(50, 'shijianduan_types', '时间段', 3, '10:00-11:00', NULL, NULL, '2022-05-10 07:00:04'),
	(51, 'shijianduan_types', '时间段', 4, '11:00-12:00', NULL, NULL, '2022-05-10 07:00:04'),
	(52, 'shijianduan_types', '时间段', 5, '14:00-15:00', NULL, NULL, '2022-05-10 07:00:04'),
	(53, 'shijianduan_types', '时间段', 6, '15:00-16:00', NULL, NULL, '2022-05-10 07:00:04'),
	(54, 'shijianduan_types', '时间段', 7, '16:00-17:00', NULL, NULL, '2022-05-10 07:00:04'),
	(55, 'shijianduan_types', '时间段', 8, '17:00-18:00', NULL, NULL, '2022-05-10 07:00:04'),
	(56, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-05-10 07:00:04'),
	(57, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-05-10 07:00:04'),
	(58, 'jiaofei_types', '是否缴费', 1, '未交费', NULL, NULL, '2022-05-10 07:00:04'),
	(59, 'jiaofei_types', '是否缴费', 2, '已缴费', NULL, NULL, '2022-05-10 07:00:04'),
	(60, 'yaopin_types', '药品类型', 1, '药品类型1', NULL, NULL, '2022-05-10 07:00:04'),
	(61, 'yaopin_types', '药品类型', 2, '药品类型2', NULL, NULL, '2022-05-10 07:00:04'),
	(62, 'yaopin_types', '药品类型', 3, '药品类型3', NULL, NULL, '2022-05-10 07:00:04'),
	(63, 'yaopin_types', '药品类型', 4, '药品类型4', NULL, NULL, '2022-05-10 07:00:04'),
	(64, 'zhiwei_types', '职位', 3, '主任', NULL, '', '2022-05-10 08:57:37');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/gonggao1.jpg', 2, '2022-05-10 07:02:13', '公告详情1', '2022-05-10 07:02:13'),
	(2, '公告名称2', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/gonggao2.jpg', 2, '2022-05-10 07:02:13', '公告详情2', '2022-05-10 07:02:13'),
	(3, '公告名称3', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/gonggao3.jpg', 1, '2022-05-10 07:02:13', '公告详情3', '2022-05-10 07:02:13'),
	(4, '公告名称4', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/gonggao4.jpg', 1, '2022-05-10 07:02:13', '公告详情4', '2022-05-10 07:02:13'),
	(5, '公告名称5', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/gonggao5.jpg', 2, '2022-05-10 07:02:13', '公告详情5', '2022-05-10 07:02:13');

DROP TABLE IF EXISTS `huanzhe`;
CREATE TABLE IF NOT EXISTS `huanzhe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huanzhe_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `huanzhe_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号',
  `huanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号',
  `huanzhe_photo` varchar(200) DEFAULT NULL COMMENT '患者头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `huanzhe_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='患者';

DELETE FROM `huanzhe`;
INSERT INTO `huanzhe` (`id`, `username`, `password`, `huanzhe_name`, `huanzhe_phone`, `huanzhe_id_number`, `huanzhe_photo`, `sex_types`, `huanzhe_email`, `new_money`, `create_time`) VALUES
	(1, '患者1', '123456', '患者姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/huanzhe1.jpg', 2, '1@qq.com', 7849.72, '2022-05-10 07:02:13'),
	(2, '患者2', '123456', '患者姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/huanzhe2.jpg', 2, '2@qq.com', 252.70, '2022-05-10 07:02:13'),
	(3, '患者3', '123456', '患者姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/huanzhe3.jpg', 1, '3@qq.com', 662.49, '2022-05-10 07:02:13');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '网站介绍', 1, '<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍</p>', '2022-05-10 08:38:39'),
	(2, '商业合作', 2, '<p>商业合作商业合作商业合作商业合作商业合作商业合作商业合作商业合作</p>', '2022-05-10 08:38:52');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '患者id',
  `username` varchar(100) NOT NULL COMMENT '患者名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(4, 6, 'admin', 'users', '管理员', 'a8zp01y6uvkoz2wm4y46qzfqk7psv39n', '2022-05-10 08:38:13', '2024-07-10 03:24:09'),
	(5, 1, 'a1', 'huanzhe', '患者', '7ni14ocg2nc9r80pbxdfwezeh8s53ve4', '2022-05-10 08:41:45', '2024-07-10 03:25:37'),
	(6, 1, 'a1', 'yisheng', '医生', 'dt4b3dn7qky7k7v5g5yokd79i24ogqrg', '2022-05-10 08:50:27', '2024-07-10 03:23:52');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '患者名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE IF NOT EXISTS `yaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号  Search111 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int DEFAULT NULL COMMENT '药品库存',
  `yaopin_content` text COMMENT '药品详细介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药品';

DELETE FROM `yaopin`;
INSERT INTO `yaopin` (`id`, `yaopin_uuid_number`, `yaopin_name`, `yaopin_photo`, `yaopin_types`, `yaopin_kucun_number`, `yaopin_content`, `create_time`) VALUES
	(1, '165216613376984', '药品名称1', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yaopin1.jpg', 3, 101, '药品详细介绍1', '2022-05-10 07:02:13'),
	(2, '165216613376930', '药品名称2', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yaopin2.jpg', 4, 102, '药品详细介绍2', '2022-05-10 07:02:13'),
	(3, '165216613376987', '药品名称3', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yaopin3.jpg', 4, 103, '药品详细介绍3', '2022-05-10 07:02:13'),
	(4, '165216613376983', '药品名称4', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yaopin4.jpg', 1, 104, '药品详细介绍4', '2022-05-10 07:02:13'),
	(5, '165216613377039', '药品名称5', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yaopin5.jpg', 3, 105, '药品详细介绍5', '2022-05-10 07:02:13');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号 Search111 ',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `yisheng_shanchang` varchar(200) DEFAULT NULL COMMENT '医生擅长',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `keshi_types` int DEFAULT NULL COMMENT '科室 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `guahaofei` decimal(10,2) DEFAULT NULL COMMENT '挂号费 ',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `yisheng_content` text COMMENT '医生详细介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `username`, `password`, `yisheng_uuid_number`, `yisheng_name`, `yisheng_phone`, `yisheng_id_number`, `yisheng_photo`, `yisheng_shanchang`, `sex_types`, `keshi_types`, `zhiwei_types`, `guahaofei`, `zan_number`, `cai_number`, `yisheng_content`, `create_time`) VALUES
	(1, '医生1', '123456', '165216613377229', '医生姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yisheng1.jpg', '医生擅长1', 1, 1, 1, 593.24, 265, 376, '<p>医生详细介绍1dfshdfh</p>', '2022-05-10 07:02:13'),
	(2, '医生2', '123456', '165216613377279', '医生姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yisheng2.jpg', '医生擅长2', 2, 2, 1, 730.08, 141, 263, '医生详细介绍2', '2022-05-10 07:02:13'),
	(3, '医生3', '123456', '165216613377243', '医生姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/xiaoxingzhenliaoyuyuepingtai/upload/yisheng3.jpg', '医生擅长3', 2, 1, 1, 223.97, 394, 233, '医生详细介绍3', '2022-05-10 07:02:13');

DROP TABLE IF EXISTS `yisheng_collection`;
CREATE TABLE IF NOT EXISTS `yisheng_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='医生收藏';

DELETE FROM `yisheng_collection`;
INSERT INTO `yisheng_collection` (`id`, `yisheng_id`, `huanzhe_id`, `yisheng_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 2, 3, 1, '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(3, 2, 3, 1, '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(4, 2, 1, 1, '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(5, 2, 3, 1, '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(6, 1, 1, 2, '2022-05-10 08:41:49', '2022-05-10 08:41:49'),
	(7, 3, 1, 1, '2024-07-10 02:25:57', '2024-07-10 02:25:57');

DROP TABLE IF EXISTS `yisheng_liuyan`;
CREATE TABLE IF NOT EXISTS `yisheng_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='医生留言';

DELETE FROM `yisheng_liuyan`;
INSERT INTO `yisheng_liuyan` (`id`, `yisheng_id`, `huanzhe_id`, `yisheng_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, 2, '留言内容1', '2022-05-10 07:02:13', '回复信息1', '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(2, 1, 1, '留言内容2', '2022-05-10 07:02:13', '回复信息2', '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(3, 2, 2, '留言内容3', '2022-05-10 07:02:13', '回复信息3', '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(4, 1, 2, '留言内容4', '2022-05-10 07:02:13', '回复信息4订个蛋糕', '2022-05-10 08:59:33', '2022-05-10 07:02:13'),
	(5, 2, 2, '留言内容5', '2022-05-10 07:02:13', '回复信息5', '2022-05-10 07:02:13', '2022-05-10 07:02:13'),
	(6, 3, 1, '第三个第三个', '2022-05-10 08:56:22', NULL, NULL, '2022-05-10 08:56:22');

DROP TABLE IF EXISTS `yisheng_order`;
CREATE TABLE IF NOT EXISTS `yisheng_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yisheng_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约挂号编号 Search111 ',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `yisheng_order_types` int DEFAULT NULL COMMENT '挂号状态 Search111 ',
  `kanbing_time` date DEFAULT NULL COMMENT '预约看病日期',
  `shijianduan_types` int DEFAULT NULL COMMENT '看病时间段 Search111 ',
  `yisheng_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '挂号时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='医生预约挂号订单';

DELETE FROM `yisheng_order`;
INSERT INTO `yisheng_order` (`id`, `yisheng_order_uuid_number`, `yisheng_id`, `huanzhe_id`, `yisheng_order_true_price`, `yisheng_order_types`, `kanbing_time`, `shijianduan_types`, `yisheng_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1652172211888', 1, 1, 593.24, 3, '2022-05-27', 5, 1, '2022-05-10 08:43:32', '2022-05-10 08:43:32'),
	(2, '1652172606277', 2, 1, 730.08, 2, '2022-05-26', 2, 1, '2022-05-10 08:50:06', '2022-05-10 08:50:06'),
	(3, '1652172931407', 2, 1, 730.08, 2, '2022-05-20', 4, 1, '2022-05-10 08:55:31', '2022-05-10 08:55:31'),
	(4, '1652172946731', 1, 1, 593.24, 3, '2022-06-04', 6, 1, '2022-05-10 08:55:47', '2022-05-10 08:55:47');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
