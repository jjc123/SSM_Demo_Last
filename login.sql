/*
 Navicat Premium Data Transfer

 Source Server         : jjc
 Source Server Type    : MySQL
 Source Server Version : 50647
 Source Host           : localhost:3306
 Source Schema         : login

 Target Server Type    : MySQL
 Target Server Version : 50647
 File Encoding         : 65001

 Date: 19/06/2020 15:18:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user`;
CREATE TABLE `tb_admin_user` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_name` varchar(20) NOT NULL DEFAULT '''''' COMMENT '用户名',
  `password_md5` varchar(50) NOT NULL DEFAULT '''''' COMMENT '密码',
  `user_token` varchar(50) NOT NULL DEFAULT '''''' COMMENT 'token值',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除 0未删除 1已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2fe65eeafaa67f4b03e0997d90086298', 0, '2018-07-04 11:21:14');
INSERT INTO `tb_admin_user` VALUES (2, 'jjc123', 'c33367701511b4f6020ec61ded352059', '', 1, '2020-05-16 06:53:33');
INSERT INTO `tb_admin_user` VALUES (3, 'jjc', 'e10adc3949ba59abbe56e057f20f883e', '\'\'', 0, '2020-05-16 06:54:17');
INSERT INTO `tb_admin_user` VALUES (4, 'huangqq', 'c33367701511b4f6020ec61ded352059', '\'\'', 0, '2020-05-16 06:54:17');
COMMIT;

-- ----------------------------
-- Table structure for tb_admin_user_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user_copy1`;
CREATE TABLE `tb_admin_user_copy1` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_name` varchar(20) NOT NULL DEFAULT '''''' COMMENT '用户名',
  `password_md5` varchar(50) NOT NULL DEFAULT '''''' COMMENT '密码',
  `user_token` varchar(50) NOT NULL DEFAULT '''''' COMMENT 'token值',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除 0未删除 1已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_user_copy1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tb_ssm_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_ssm_article`;
CREATE TABLE `tb_ssm_article` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_title` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '标题',
  `article_content` text COLLATE utf8_bin NOT NULL COMMENT '内容',
  `add_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '添加人',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除 0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_ssm_article
-- ----------------------------
BEGIN;
INSERT INTO `tb_ssm_article` VALUES (11, '牛头', '<h1>\n	<strong>我是牛头</strong>\n</h1>', '天蚕土豆', '2020-05-16 02:43:33', '2020-05-16 02:43:33', 0);
INSERT INTO `tb_ssm_article` VALUES (12, '透明人', '<h1>\n	<span style=\"color:#E53333;\">我是透明人</span>\n</h1>', '蒋家聪', '2020-05-16 02:44:04', '2020-05-16 02:44:04', 0);
INSERT INTO `tb_ssm_article` VALUES (13, '斗破苍穹', '<h1>\n	<em><u>我是斗破苍穹</u></em>\n</h1>', '王八', '2020-05-16 02:44:34', '2020-05-16 02:44:34', 0);
INSERT INTO `tb_ssm_article` VALUES (14, '复仇者联盟', '<h1>\n	<u><s>我是钢铁侠</s></u>\n</h1>', '小儿', '2020-05-16 03:48:32', '2020-05-16 03:48:32', 0);
INSERT INTO `tb_ssm_article` VALUES (15, '牛魔王', '<h1>\n	我是牛魔王\n</h1>', '大胜', '2020-05-16 05:48:11', '2020-05-16 05:48:11', 0);
INSERT INTO `tb_ssm_article` VALUES (16, '大王', '<h1>\n	隋东风\n</h1>', 'jj1111', '2020-05-16 06:51:01', '2020-05-16 14:51:14', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_ssm_picture
-- ----------------------------
DROP TABLE IF EXISTS `tb_ssm_picture`;
CREATE TABLE `tb_ssm_picture` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `path` varchar(50) NOT NULL DEFAULT '' COMMENT '图片路径',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除 0未删除 1已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ssm_picture
-- ----------------------------
BEGIN;
INSERT INTO `tb_ssm_picture` VALUES (33, '20200516_13514189.png', '我是大叔', 0, '2020-05-16 05:51:47');
INSERT INTO `tb_ssm_picture` VALUES (34, '20200516_13515636.png', '我是白领', 0, '2020-05-16 05:52:07');
INSERT INTO `tb_ssm_picture` VALUES (35, '20200516_14520791.png', '我是外国人', 1, '2020-05-16 06:52:18');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
