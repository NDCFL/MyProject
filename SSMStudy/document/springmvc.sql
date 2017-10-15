use springmvc;
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal` (
  `deal_id` varchar(36) NOT NULL,
  `deal_bill` varchar(36) DEFAULT NULL,
  `play_id` varchar(36) DEFAULT NULL,
  `deal_price` decimal(10,0) DEFAULT NULL,
  `prop_id` varchar(36) DEFAULT NULL,
  `deal_createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES ('114235fc9b4711e787be2c56dc7feae4', '1505611519356', 'f21dd76a9aaf11e7a0912c56dc7feae4', '688', '1', '2017-09-17 09:25:19');
INSERT INTO `deal` VALUES ('5024e7659b5211e787be2c56dc7feae4', '1505616349451', 'ba3d15ba9b4811e787be2c56dc7feae4', '650', '631ee1c399d111e782252c56dc7feae4', '2017-09-17 10:45:49');
INSERT INTO `deal` VALUES ('67d210fe9b4311e787be2c56dc7feae4', '1505609946546', 'f21dd76a9aaf11e7a0912c56dc7feae4', '688', '1', '2017-09-17 08:59:07');
INSERT INTO `deal` VALUES ('7d430d0b9b4711e787be2c56dc7feae4', '1505611700558', 'f21dd76a9aaf11e7a0912c56dc7feae4', '650', '631ee1c399d111e782252c56dc7feae4', '2017-09-17 09:28:21');
INSERT INTO `deal` VALUES ('dd2bb7a49b5211e787be2c56dc7feae4', '1505616586065', 'ba3d15ba9b4811e787be2c56dc7feae4', '650', '631ee1c399d111e782252c56dc7feae4', '2017-09-17 10:49:46');

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `money_id` varchar(36) NOT NULL,
  `money` double DEFAULT NULL,
  `play_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`money_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of money
-- ----------------------------
INSERT INTO `money` VALUES ('1', '1000', 'f21dd76a9aaf11e7a0912c56dc7feae4');
INSERT INTO `money` VALUES ('51a672429b5111e787be2c56dc7feae4', '-350', 'ba3d15ba9b4811e787be2c56dc7feae4');
INSERT INTO `money` VALUES ('c8b3292b9e0011e7af552c56dc7feae4', '600', 'c8b32b519e0011e7af552c56dc7feae4');
INSERT INTO `money` VALUES ('c8d085da9e0011e7af552c56dc7feae4', '600', 'c8d086899e0011e7af552c56dc7feae4');
INSERT INTO `money` VALUES ('c8d37b859e0011e7af552c56dc7feae4', '600', 'c8d37c289e0011e7af552c56dc7feae4');
INSERT INTO `money` VALUES ('c8d380249e0011e7af552c56dc7feae4', '600', 'c8d380549e0011e7af552c56dc7feae4');
INSERT INTO `money` VALUES ('d7d742a79b5211e787be2c56dc7feae4', '2000', 'ba3d15ba9b4811e787be2c56dc7feae4');
INSERT INTO `money` VALUES ('dd8c149b9b5211e787be2c56dc7feae4', '-650', 'ba3d15ba9b4811e787be2c56dc7feae4');
INSERT INTO `money` VALUES ('e23f62139b4f11e787be2c56dc7feae4', '350', 'ba3d15ba9b4811e787be2c56dc7feae4');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(36) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `userid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'iPhone X销售', '8000', '2017-09-13 11:40:00', '1');
INSERT INTO `orders` VALUES ('1e35f3b2990311e79f722c56dc7feae4', '小米账单', '64564', '2017-09-13 11:40:00', '1');
INSERT INTO `orders` VALUES ('4b38af0298fd11e79f722c56dc7feae4', 'iPhone7sp', '6800', '2017-09-13 11:40:00', '1');
INSERT INTO `orders` VALUES ('61bc41c998fd11e79f722c56dc7feae4', 'iphone6sp', '4000', '2017-09-13 11:40:00', '1');
INSERT INTO `orders` VALUES ('f7a9ed1998fd11e79f722c56dc7feae4', 'iPhone6s', '3000', '2017-09-13 11:40:00', '1');
INSERT INTO `orders` VALUES ('fb8cfb1b992011e79f722c56dc7feae4', '魅族销售', '2000', '2017-09-14 00:00:00', '1');

-- ----------------------------
-- Table structure for ordersitems
-- ----------------------------
DROP TABLE IF EXISTS `ordersitems`;
CREATE TABLE `ordersitems` (
  `id` varchar(36) NOT NULL,
  `orderid` varchar(36) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `summoney` decimal(10,0) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `userid` varchar(36) DEFAULT NULL,
  `productid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordersitems
-- ----------------------------
INSERT INTO `ordersitems` VALUES ('1', '1', '2', '3800', '7600', '2017-09-13 11:42:03', '1', '1');

-- ----------------------------
-- Table structure for play
-- ----------------------------
DROP TABLE IF EXISTS `play`;
CREATE TABLE `play` (
  `play_id` varchar(36) NOT NULL,
  `play_nickname` varchar(20) DEFAULT NULL,
  `play_account` varchar(20) DEFAULT NULL,
  `play_password` varchar(30) DEFAULT NULL,
  `play_isvip` int(11) DEFAULT NULL,
  PRIMARY KEY (`play_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of play
-- ----------------------------
INSERT INTO `play` VALUES ('ba3d15ba9b4811e787be2c56dc7feae4', 'hello', '666666', '666666', '1');
INSERT INTO `play` VALUES ('f21dd76a9aaf11e7a0912c56dc7feae4', '888888', '888888', '888888', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(36) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('05af46cd991111e79f722c56dc7feae4', 'iphone 7s', '6000');
INSERT INTO `product` VALUES ('1', 'iPhone6sp', '4000');
INSERT INTO `product` VALUES ('2', 'iPhone7sp', '6800');
INSERT INTO `product` VALUES ('3', 'OPPO', '3000');
INSERT INTO `product` VALUES ('5c66935a9cd411e7adc32c56dc7feae4', '保时捷', '500001');
INSERT INTO `product` VALUES ('77b4664a9cd411e7adc32c56dc7feae4', '麻辣', '6');
INSERT INTO `product` VALUES ('f72205a5991011e79f722c56dc7feae4', '华为保时捷版', '8000');
INSERT INTO `product` VALUES ('fe28a786991011e79f722c56dc7feae4', 'iPhone X', '8800');

-- ----------------------------
-- Table structure for prop
-- ----------------------------
DROP TABLE IF EXISTS `prop`;
CREATE TABLE `prop` (
  `prop_id` varchar(36) NOT NULL,
  `prop_name` varchar(20) DEFAULT NULL,
  `prop_price` decimal(10,0) DEFAULT NULL,
  `prop_skill` varchar(30) DEFAULT NULL,
  `prop_genre` int(11) DEFAULT NULL,
  PRIMARY KEY (`prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prop
-- ----------------------------
INSERT INTO `prop` VALUES ('1', '铁剑', '688', '杀人于无形，不费一滴血', '0');
INSERT INTO `prop` VALUES ('631ee1c399d111e782252c56dc7feae4', '匕首', '650', '短小锋利，轻便，攻击力超强', '0');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(36) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `classno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10', '1', '1', '1', '1');
INSERT INTO `student` VALUES ('11', '2', '2', '2', '2');
INSERT INTO `student` VALUES ('16', '欧美', '17', '1', '5');
INSERT INTO `student` VALUES ('17', '合格后', '19', '0', '6');
INSERT INTO `student` VALUES ('1f487a3396c411e78dcc2c56dc7feae4', '454654', '45', '1', '2');
INSERT INTO `student` VALUES ('4', '天穹', '20', '0', '4');
INSERT INTO `student` VALUES ('4842925696ed11e78dcc2c56dc7feae4', 'sghf', '34', '0', '1');
INSERT INTO `student` VALUES ('5', '新西兰', '24', '0', '3');
INSERT INTO `student` VALUES ('6e2f618296c411e78dcc2c56dc7feae4', '4646', '45', '0', '5');
INSERT INTO `student` VALUES ('7', '染发个人', '27', '0', '6');
INSERT INTO `student` VALUES ('9', '吗你们', '20', '0', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0002c5a2a3ee11e7aed72c56dc7feae4', '刘红', '25');
INSERT INTO `users` VALUES ('0004e820a3ed11e7aed72c56dc7feae4', '刘红', '25');
INSERT INTO `users` VALUES ('0006ad6ba3ef11e7aed72c56dc7feae4', '刘红', '25');
INSERT INTO `users` VALUES ('0006b5f4a3ea11e7aed72c56dc7feae4', '王五', '21');
INSERT INTO `users` VALUES ('000bad6ea3ec11e7aed72c56dc7feae4', '刘红', '25');
INSERT INTO `users` VALUES ('000d315aa3ee11e7aed72c56dc7feae4', '刘红', '25');
INSERT INTO `users` VALUES ('000e2bdfa3ed11e7aed72c56dc7feae4', '刘红', '25');
