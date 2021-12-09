/*
Navicat MySQL Data Transfer

Source Server         : wwww
Source Server Version : 50736
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50736
File Encoding         : 65001

Date: 2021-12-09 21:38:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guonei
-- ----------------------------
DROP TABLE IF EXISTS `guonei`;
CREATE TABLE `guonei` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `types` varchar(10) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_valid` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of guonei
-- ----------------------------
INSERT INTO `guonei` VALUES ('1', '探访江苏静通市容公司：办公区存放多种收缴物品，设局长室、调查问询室', '新闻内容', '国内', null, null, null, null, null);
INSERT INTO `guonei` VALUES ('2', '以前啃老如今啃小：萌娃网红沦为父母赚钱机器', '新闻内容', '国内', null, null, null, '2021-12-09 21:31:17', null);
INSERT INTO `guonei` VALUES ('3', '香港团体斥乱港分子出席美“民主峰会”：严惩卖国贼', '新闻内容', '国内', null, null, null, null, null);
INSERT INTO `guonei` VALUES ('4', '内蒙古满洲里新增确诊病例15例', '新闻内容', '国内', null, null, null, null, null);
