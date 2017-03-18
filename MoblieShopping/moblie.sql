/*
Navicat MySQL Data Transfer

Source Server         : location
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : moblie

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-03-17 23:15:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_pwd` varchar(255) DEFAULT NULL,
  `admin_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'wuji', '123456', 'a.png');

-- ----------------------------
-- Table structure for advert
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert` (
  `advert_id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_name` varchar(255) DEFAULT NULL,
  `advert_img` varchar(255) DEFAULT NULL,
  `advert_url` varchar(255) DEFAULT NULL,
  `advert_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`advert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advert
-- ----------------------------
INSERT INTO `advert` VALUES ('1', '小米', 'shouhuan.jpg', '', '2016-12-27 12:39:10');
INSERT INTO `advert` VALUES ('2', '飞啊飞', 'shouhuan2.jpg', null, '2016-12-27 12:41:40');
INSERT INTO `advert` VALUES ('3', 'dwad', 'shouhuan3.jpg', null, '2016-12-27 12:42:10');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(255) DEFAULT NULL,
  `banner_img` varchar(255) DEFAULT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `banner_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '哈哈', 'banner01.jpg', '', '2016-12-24 00:26:41');
INSERT INTO `banner` VALUES ('2', 'hha', 'banner02.jpg', null, '2016-12-22 22:10:58');
INSERT INTO `banner` VALUES ('3', 'fefueah', 'banner03.jpg', null, '2016-12-22 22:11:09');
INSERT INTO `banner` VALUES ('4', 'ffeaf', 'banner04.jpg', null, '2016-12-22 22:11:36');
INSERT INTO `banner` VALUES ('5', 'rfejafioho', 'banner05.jpg', null, '2016-12-23 23:14:33');

-- ----------------------------
-- Table structure for moblie
-- ----------------------------
DROP TABLE IF EXISTS `moblie`;
CREATE TABLE `moblie` (
  `moblie_id` int(11) NOT NULL,
  `moblie_name` varchar(255) DEFAULT NULL,
  `moblie_price` double DEFAULT NULL,
  `moblie_img` varchar(255) DEFAULT NULL,
  `moblie_jieshao` varchar(255) DEFAULT NULL,
  `moblie_news` int(11) DEFAULT '0',
  `moblie_type_id` int(11) DEFAULT NULL,
  `moblie_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`moblie_id`),
  KEY `fk_moblie_type_id` (`moblie_type_id`),
  CONSTRAINT `fk_moblie_type_id` FOREIGN KEY (`moblie_type_id`) REFERENCES `moblietype` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moblie
-- ----------------------------
INSERT INTO `moblie` VALUES ('1', '小米5s', '1545', 'moblie01.jpg', 'feawffeawfeaw', '1', '3', '2016-12-27 14:41:22');
INSERT INTO `moblie` VALUES ('2', '小米6s', '154', 'moblie02.jpg', 'graggr', '0', '5', '2016-12-27 14:41:28');
INSERT INTO `moblie` VALUES ('3', '小米7s', '41545', 'moblie03.jpg', 'fefagera', '0', '6', '2016-12-27 14:41:32');
INSERT INTO `moblie` VALUES ('4', '小米s', '45', 'moblie04.jpg', 'feagga', '0', '7', '2016-12-27 14:41:35');
INSERT INTO `moblie` VALUES ('5', '小米ps', '54', 'moblie05.jpg', 'geggeawg', '1', '3', '2016-12-27 14:41:38');
INSERT INTO `moblie` VALUES ('6', '红米s', '541654', 'moblie07.jpg', '5465feaw', '1', '6', '2016-12-27 14:43:58');
INSERT INTO `moblie` VALUES ('7', '小米3s', '1546', 'moblie06.jpg', '天下无敌', '0', '3', '2016-12-27 14:41:48');
INSERT INTO `moblie` VALUES ('8', '红米2s', '15464', 'moblie11.jpg', 'feaffea', '1', '6', '2016-12-27 14:41:53');
INSERT INTO `moblie` VALUES ('9', '小米笔记本s', '241541', 'moblie15.jpg', 'feaffae', '0', '6', '2016-12-27 14:41:57');
INSERT INTO `moblie` VALUES ('10', '小米平板Plus', '14551', 'moblie14.jpg', 'feafeafea', '0', '3', '2016-12-27 14:42:01');
INSERT INTO `moblie` VALUES ('11', 'fefef', '6326', 'moblie16.jpg', 'feff', '0', '8', '2016-12-28 22:12:17');
INSERT INTO `moblie` VALUES ('12', 'dfewffewf', '151', 'moblie17.jpg', 'feaffewaefa', '1', '8', '2016-12-28 22:13:07');
INSERT INTO `moblie` VALUES ('13', 'few5f4156', '15456', 'moblie18.jpg', '155154', '0', '8', '2016-12-28 22:13:46');
INSERT INTO `moblie` VALUES ('14', '1f5e4f13', '1551', 'moblie01.jpg', '26541', '1', '8', '2016-12-28 22:14:31');
INSERT INTO `moblie` VALUES ('15', 'df5waef513', '1513', 'moblie02.jpg', '1654', '1', '8', '2016-12-28 22:14:55');
INSERT INTO `moblie` VALUES ('16', 'fe2wf42', '15416', 'moblie03.jpg', '146', '1', '8', '2016-12-28 22:15:24');
INSERT INTO `moblie` VALUES ('17', '21d5wef', '1633', 'moblie05.jpg', '125146', '1', '8', '2016-12-28 22:15:54');
INSERT INTO `moblie` VALUES ('18', 'feawf32654', '164648', 'moblie08.jpg', '14351', '0', '8', '2016-12-28 22:16:45');
INSERT INTO `moblie` VALUES ('19', '小米耳机', '1576', 'moblie01.jpg', 'f1ewa5f41aw3f', '0', '9', '2016-12-29 18:45:36');
INSERT INTO `moblie` VALUES ('20', '小米耳机青春版', '545', 'moblie02.jpg', '5f8e746w4', '0', '9', '2016-12-29 18:50:43');
INSERT INTO `moblie` VALUES ('21', '小米耳机Pro', '1435465', 'moblie03.jpg', '4f64er3af', '1', '9', '2016-12-29 18:51:47');
INSERT INTO `moblie` VALUES ('22', '小米随身音箱', '162165', 'moblie04.jpg', '153f4e', '1', '9', '2016-12-29 18:52:44');
INSERT INTO `moblie` VALUES ('23', '方盒子音箱', '26543', 'moblie19.jpg', '1541ef3', '1', '9', '2016-12-29 18:53:33');
INSERT INTO `moblie` VALUES ('24', '小米移动电源', '15413', 'moblie15.jpg', 'f54ea4e5w6', '1', '9', '2016-12-29 18:54:53');
INSERT INTO `moblie` VALUES ('25', '2000h移动电源', '1153431', 'moblie16.jpg', '15f4316', '0', '9', '2016-12-29 18:55:48');
INSERT INTO `moblie` VALUES ('26', '小米插线板', '1541', 'moblie17.jpg', '21fe54wf3', '0', '9', '2016-12-29 18:57:15');
INSERT INTO `moblie` VALUES ('27', '彩虹7号电池', '134651', 'moblie14.jpg', '51e5f4wf13s', '0', '9', '2016-12-29 19:01:19');
INSERT INTO `moblie` VALUES ('28', '高速储存卡', '415484', 'moblie10.jpg', '154f3e461s3s', '1', '9', '2016-12-29 22:54:46');
INSERT INTO `moblie` VALUES ('29', 'SanDisk SD储存卡', '4154345', 'moblie11.jpg', '4fe5wa3a1f', '0', '9', '2016-12-29 22:54:34');
INSERT INTO `moblie` VALUES ('30', '彩虹5号电池', '416854651', 'moblie02.jpg', '445416', '0', '9', '2016-12-29 19:10:24');
INSERT INTO `moblie` VALUES ('31', '小米音箱Ps', '65462', 'moblie03.jpg', '5513', '1', '9', '2016-12-29 19:11:34');

-- ----------------------------
-- Table structure for mobliebrand
-- ----------------------------
DROP TABLE IF EXISTS `mobliebrand`;
CREATE TABLE `mobliebrand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobliebrand
-- ----------------------------
INSERT INTO `mobliebrand` VALUES ('1', 'å¡å¡');
INSERT INTO `mobliebrand` VALUES ('2', '魅族');
INSERT INTO `mobliebrand` VALUES ('3', '华为');
INSERT INTO `mobliebrand` VALUES ('4', 'opp');
INSERT INTO `mobliebrand` VALUES ('5', '诺基亚');
INSERT INTO `mobliebrand` VALUES ('6', '苹果');
INSERT INTO `mobliebrand` VALUES ('7', 'fd');
INSERT INTO `mobliebrand` VALUES ('8', '12');
INSERT INTO `mobliebrand` VALUES ('9', 'fesf');
INSERT INTO `mobliebrand` VALUES ('10', 'fe');
INSERT INTO `mobliebrand` VALUES ('11', 'hha');
INSERT INTO `mobliebrand` VALUES ('12', 'f');
INSERT INTO `mobliebrand` VALUES ('16', 'ssh');
INSERT INTO `mobliebrand` VALUES ('17', 'aa');

-- ----------------------------
-- Table structure for moblietype
-- ----------------------------
DROP TABLE IF EXISTS `moblietype`;
CREATE TABLE `moblietype` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `type_brand_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`type_id`),
  KEY `FK1B3826C2BF804097` (`type_brand_id`),
  CONSTRAINT `FK1B3826C2BF804097` FOREIGN KEY (`type_brand_id`) REFERENCES `mobliebrand` (`brand_id`),
  CONSTRAINT `fk_type_brand_id` FOREIGN KEY (`type_brand_id`) REFERENCES `mobliebrand` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moblietype
-- ----------------------------
INSERT INTO `moblietype` VALUES ('3', '苹果5S', '6');
INSERT INTO `moblietype` VALUES ('5', '华为荣耀', '3');
INSERT INTO `moblietype` VALUES ('6', 'oppoR7', '4');
INSERT INTO `moblietype` VALUES ('7', 'fefefe', '2');
INSERT INTO `moblietype` VALUES ('8', '智能硬件', '1');
INSERT INTO `moblietype` VALUES ('9', '搭配', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mobliephone` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('8', 'user', '15451', '2154564', '1481207282470.png', null);
INSERT INTO `user` VALUES ('13', 'shi', '15451', '2154564', '1481216250482.png', null);
INSERT INTO `user` VALUES ('14', 'gygu', '15451', '2154564', '1481262411498.png', null);
INSERT INTO `user` VALUES ('15', 'gygu123', '15451', '2154564', '1481262424445.png', null);
INSERT INTO `user` VALUES ('16', 'fdefedf', '15451', '2154564', '1481262967953.png', null);
INSERT INTO `user` VALUES ('21', 'wuji', '123', 'wwecf855131263.0', null, '1511800860@qq.com');
