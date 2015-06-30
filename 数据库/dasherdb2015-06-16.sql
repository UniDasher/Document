/*
MySQL Data Transfer
Source Host: localhost
Source Database: dasherdb
Target Host: localhost
Target Database: dasherdb
Date: 2015/6/16 9:36:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for complain
-- ----------------------------
CREATE TABLE `complain` (
  `id` int(11) NOT NULL auto_increment,
  `comId` varchar(255) default NULL,
  `uid` varchar(255) default NULL,
  `mid` varchar(255) default NULL,
  `type` int(11) default NULL,
  `wid` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `comResult` int(11) default NULL,
  `comContent` varchar(255) default NULL,
  `returnMoney` float default NULL,
  `deductMoney` float default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for login
-- ----------------------------
CREATE TABLE `login` (
  `id` int(11) NOT NULL auto_increment,
  `loginId` varchar(255) default NULL,
  `authCode` varchar(255) default NULL,
  `cid` varchar(255) default NULL,
  `type` int(11) default NULL,
  `loginTime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manager
-- ----------------------------
CREATE TABLE `manager` (
  `id` int(11) NOT NULL auto_increment,
  `account` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `type` int(255) default NULL,
  `createBy` int(11) default NULL,
  `createDate` datetime default NULL,
  `updateBy` int(11) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_commodity
-- ----------------------------
CREATE TABLE `market_commodity` (
  `id` int(11) NOT NULL auto_increment,
  `smid` varchar(255) default NULL,
  `mcid` varchar(255) default NULL,
  `price` float default NULL,
  `name` varchar(255) default NULL,
  `unit` varchar(255) default NULL,
  `typeId` int(11) default NULL,
  `subscribe` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_info
-- ----------------------------
CREATE TABLE `market_info` (
  `id` int(11) NOT NULL auto_increment,
  `smid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `subscribe` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `serviceTime` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `goodEvaluate` int(11) default NULL,
  `badEvaluate` int(11) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_menu
-- ----------------------------
CREATE TABLE `market_menu` (
  `id` int(11) NOT NULL auto_increment,
  `mid` varchar(255) default NULL,
  `smid` varchar(255) default NULL,
  `uid` varchar(255) default NULL,
  `wid` varchar(255) default NULL,
  `dishsMoney` float default '0',
  `carriageMoney` float default '0',
  `taxesMoney` float default '0',
  `serviceMoney` float default '0',
  `tipMoney` float default '0',
  `menuCount` int(11) default NULL,
  `payType` int(11) default NULL,
  `address` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `mealStartDate` varchar(255) default NULL,
  `mealEndDate` varchar(255) default NULL,
  `startDate` datetime default NULL,
  `endDate` datetime default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_menu_record
-- ----------------------------
CREATE TABLE `market_menu_record` (
  `id` int(11) NOT NULL auto_increment,
  `mid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `price` float default NULL,
  `unit` varchar(255) default NULL,
  `count` int(11) default NULL,
  `subscribe` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
CREATE TABLE `menu` (
  `id` int(11) NOT NULL auto_increment,
  `mid` varchar(255) default NULL,
  `sid` varchar(255) default NULL,
  `uid` varchar(255) default NULL,
  `wid` varchar(255) default NULL,
  `dishsMoney` float default '0',
  `carriageMoney` float default '0',
  `taxesMoney` float default '0',
  `serviceMoney` float default '0',
  `tipMoney` float default '0',
  `menuCount` int(11) default NULL,
  `payType` int(11) default NULL,
  `mealStartDate` varchar(255) default NULL,
  `mealEndDate` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `startDate` datetime default NULL,
  `endDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu_dish
-- ----------------------------
CREATE TABLE `menu_dish` (
  `id` int(11) NOT NULL auto_increment,
  `mid` varchar(255) default NULL,
  `did` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `price` float(11,0) default '0',
  `count` int(11) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu_evaluate
-- ----------------------------
CREATE TABLE `menu_evaluate` (
  `id` int(11) NOT NULL auto_increment,
  `sid` varchar(255) default NULL,
  `mid` varchar(255) default NULL,
  `uid` varchar(255) default NULL,
  `wid` varchar(255) default NULL,
  `evalShop` int(11) default NULL,
  `evalServer` int(11) default NULL,
  `evalContent` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for server_settle
-- ----------------------------
CREATE TABLE `server_settle` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(255) default NULL,
  `oldBalance` float default '0',
  `type` int(11) default NULL,
  `typeDesc` varchar(255) default NULL,
  `settlePrice` float default '0',
  `curBalance` float default '0',
  `settleNumberType` varchar(255) default NULL,
  `settleNumber` varchar(255) default NULL,
  `settleDesc` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_dish
-- ----------------------------
CREATE TABLE `shop_dish` (
  `id` int(11) NOT NULL auto_increment,
  `sid` varchar(255) default NULL,
  `did` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `price` float default '0',
  `typeId` int(11) default NULL,
  `chilies` varchar(11) default NULL,
  `description` varchar(255) default NULL,
  `createBy` int(11) default NULL,
  `createDate` datetime default NULL,
  `updateBy` int(11) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_dish_type
-- ----------------------------
CREATE TABLE `shop_dish_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `sortNum` int(11) default NULL,
  `createBy` int(11) default NULL,
  `createDate` datetime default NULL,
  `updateBy` int(11) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  `type` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop_info
-- ----------------------------
CREATE TABLE `shop_info` (
  `id` int(11) NOT NULL auto_increment,
  `sid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `typeTab` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `subscribe` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `logo` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `goodEvaluate` int(11) default NULL,
  `badEvaluate` int(11) default NULL,
  `createBy` int(11) default NULL,
  `createDate` datetime default NULL,
  `updateBy` int(11) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  `serviceTimes` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL auto_increment,
  `uid` varchar(255) default NULL,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `account` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `equmentNumber` varchar(255) default NULL,
  `logo` varchar(255) default NULL,
  `balance` float(11,0) default '0',
  `mobilePhone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `goodEvaluate` int(11) default NULL,
  `badEvaluate` int(11) default NULL,
  `createDate` datetime default NULL,
  `bankType` varchar(255) default NULL,
  `bankAccount` varchar(255) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_settle
-- ----------------------------
CREATE TABLE `user_settle` (
  `id` int(11) NOT NULL auto_increment,
  `wid` varchar(255) default NULL,
  `oldBalance` float default '0',
  `type` int(11) default NULL,
  `typeDesc` varchar(255) default NULL,
  `settlePrice` float default '0',
  `curBalance` float default '0',
  `settleNumberType` varchar(255) default NULL,
  `settleNumber` varchar(255) default NULL,
  `settleDesc` varchar(255) default NULL,
  `createBy` varchar(11) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `complain` VALUES ('1', '20150603170925677', '20150428144843', '20150514165102296', '1', null, '服务态度差', '1', '家属啊加手机阿红说骄傲哈哈商家爱四', '1000', '1000', '20150521133015609', '2015-06-03 17:09:25', '2', '2015-06-09 13:24:15', '2');
INSERT INTO `complain` VALUES ('2', '20150603171325248', '20150428144843', '20150514165245098', '1', '20150429152537', '不合口味', null, '通过', '5', '5', '20150521133015609', '2015-06-03 17:13:25', '1', '2015-06-03 17:59:37', '1');
INSERT INTO `complain` VALUES ('3', '20150603171420768', '20150428144843', '20150514165504119', '1', '20150429152537', '不合口味', '1', '1233asasaa', '1000', '1000', '20150521133015609', '2015-06-03 17:14:20', '2', '2015-06-09 11:01:44', '2');
INSERT INTO `complain` VALUES ('4', '20150603171420769', '20150505131241', '20150603142641234', '2', null, null, null, null, null, null, null, '2015-06-08 10:06:44', null, null, '1');
INSERT INTO `complain` VALUES ('5', '20150603171420734', '20150505131241', '20150603142641235', '2', '20150505131348', null, null, null, null, null, null, '2015-06-08 10:07:50', null, null, '1');
INSERT INTO `complain` VALUES ('6', '20150603171430754', '20150505131241', '20150607142641235', '2', '20150505131348', null, '1', '啊飒飒', '12121', '12121', null, '2015-06-08 10:08:45', '2', '2015-06-08 16:45:50', '2');
INSERT INTO `login` VALUES ('1', '2', '37ff2d2a282d446aab2fe60f443a5978', null, '0', '2015-06-15 16:47:59');
INSERT INTO `login` VALUES ('15', '6', '26fcffacaf44485c9668bd56b3b47dcd', null, '0', '2015-05-13 13:36:57');
INSERT INTO `login` VALUES ('16', '1', '1c3eb055af2740ddbedec4de9625ab64', null, '0', '2015-05-13 17:00:57');
INSERT INTO `login` VALUES ('17', '20150428145032', '0839003f21c94199b03c190611126499', null, '1', '2015-05-21 11:32:10');
INSERT INTO `login` VALUES ('18', '20150428144843', '5b159476fd70401fb173d729a5d962f2', null, '1', '2015-05-21 11:31:29');
INSERT INTO `login` VALUES ('19', '20150508152851965', 'bb73c02f911746c7a83054a62cbdbc7d', null, '1', '2015-05-25 10:18:33');
INSERT INTO `login` VALUES ('20', '20150521133015609', 'ab46a7bf974746ba8b0e3de76df7933a', null, '1', '2015-05-21 13:35:20');
INSERT INTO `manager` VALUES ('1', 'sa', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', 'b7e45d0c65244a9f9d58fd7c36639023', 'sa', 'me', '137719049', '1', '0', '2015-04-27 14:15:06', '2', '2015-06-01 16:12:22', '0');
INSERT INTO `manager` VALUES ('2', 'admin', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '6ac603e8ea7e49949ca9617be163d6d1', 'admin', '', '453220567@qq.com', '0', '0', '2015-04-27 15:34:06', '2', '2015-05-28 13:15:18', '1');
INSERT INTO `manager` VALUES ('3', 'sa2', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '6923e0922885487d8f1ae547ba5eb02f', 'a', 'm', '13771904', '0', '0', '2015-04-27 15:55:44', '2', '2015-05-28 13:15:43', '0');
INSERT INTO `manager` VALUES ('4', 'sa3', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', 'eb52ceeeed1d4cafa04c828b80c3668a', 's', 'ds', '453220567@qq.com', '0', '0', '2015-04-29 14:29:42', '2', '2015-06-01 16:12:18', '0');
INSERT INTO `manager` VALUES ('5', 'sal', '5726B3D7D2CB43DEAEA3B713771A6C73D4B713C19F1843418376FD16', '18ba96f253ee4c959cc39e0bafc0c878', 'a', 'm', '13771904@qq.com', '0', '2', '2015-05-04 11:06:34', '2', '2015-06-01 16:12:16', '0');
INSERT INTO `manager` VALUES ('6', 'li', '5224D2F0C218344A98B8924325970D0881C7C41B63B5FA30CDB3DA8B', 'c4c4eae5cfac43dd8ba5ff4f37f7c190', 'a', 'm', '13771904@qq.com', '0', '2', '2015-05-04 11:11:40', '2', '2015-05-28 13:15:25', '0');
INSERT INTO `manager` VALUES ('7', 'adminstrice', '7C64C6443C0A8D60A6E864B46A87F4D42C8BC16786B8FC1C932857E9', '85609ffda67240e0b9ec61b6505938fc', 'a', 'm', '13771904@163.com', '0', '6', '2015-05-04 11:15:25', '2', '2015-06-01 16:12:13', '0');
INSERT INTO `manager` VALUES ('8', 'hjb', 'DFBA37CEE1F0F89D13D08F54AE86A5D98F14780D9829D155945E5671', 'bf987c6cdf5e4cf5a0cf6f8b1b06c67c', '黄金彪', '', '453220567@qq.com', '1', '2', '2015-05-28 13:13:44', null, null, '1');
INSERT INTO `manager` VALUES ('9', 'account1', '3CA2175FAED93B95597117482B586B92E50A3D5C40F1E6B9E175E5E5', 'ca8db0ced8d24aa4af16734cba1105eb', '你好', '', '453220567@qq.com', '0', '2', '2015-06-01 16:15:53', '2', '2015-06-05 13:35:32', '0');
INSERT INTO `manager` VALUES ('10', 'asas', 'E0C91CA7B9D522163EFBABA72A8BA26B8D9F4697EA1C94898EEF6BAE', '0e3921accb4c4bf7b86fda8108119e84', 'asasa', '', '45322@qq.com', '1', '2', '2015-06-05 13:35:58', null, null, '1');
INSERT INTO `market_commodity` VALUES ('1', '20150525145921720', '20150526112226281', null, '橙汁', '瓶', '0', '', '1', '2015-05-26 11:22:26', null, null, '1');
INSERT INTO `market_commodity` VALUES ('2', '20150525145921720', '20150526112335556', null, '果汁', '杯', '0', '现榨果汁', '1', '2015-05-26 11:23:35', null, null, '1');
INSERT INTO `market_commodity` VALUES ('3', '20150525150023683', '20150526112420808', null, '布丁奶茶', '杯', '0', '新品', '1', '2015-05-26 11:24:20', '6', '2015-05-26 11:27:10', '1');
INSERT INTO `market_commodity` VALUES ('4', '20150525150116505', '20150526112517485', null, '雪碧', '罐', '0', '热卖中', '1', '2015-05-26 11:25:17', '6', '2015-05-26 11:29:37', '1');
INSERT INTO `market_commodity` VALUES ('5', '20150527095111893', '20150527101641996', null, '商品一', '件', '0', '', '2', '2015-05-27 10:16:41', null, null, '1');
INSERT INTO `market_commodity` VALUES ('6', '20150603142646256', '20150603144733290', '55', '撒谎能够品议', '个', '10', '阿萨斯卡卡龙死垃圾卡死啦啦死卡死卡洛斯卡洛斯', '2', '2015-06-03 14:47:33', '2', '2015-06-03 16:49:03', '0');
INSERT INTO `market_commodity` VALUES ('7', '20150603142646256', '20150603145031412', '6655', '假死机是的', '座', '15', '啊飒飒556163163', '2', '2015-06-03 14:50:31', '2', '2015-06-03 16:49:03', '0');
INSERT INTO `market_commodity` VALUES ('8', '20150603142646256', '20150603164903731', '99', '商品一1', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('9', '20150603142646256', '20150603164903734', '99', '商品一2', '个', '7', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('10', '20150603142646256', '20150603164903736', '99', '商品一3', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('11', '20150603142646256', '20150603164903738', '99', '商品一4', '个', '10', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('12', '20150603142646256', '20150603164903740', '99', '商品一5', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('13', '20150603142646256', '20150603164903741', '99', '商品一6', '个', '16', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('14', '20150603142646256', '20150603164903743', '99', '商品一7', '个', '16', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('15', '20150603142646256', '20150603164903744', '99', '商品一8', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('16', '20150603142646256', '20150603164903746', '99', '商品一9', '个', '7', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('17', '20150603142646256', '20150603164903748', '99', '商品一10', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('18', '20150603142646256', '20150603164903749', '99', '商品一11', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('19', '20150603142646256', '20150603164903751', '99', '商品一12', '个', '10', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('20', '20150603142646256', '20150603164903753', '99', '商品一13', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('21', '20150603142646256', '20150603164903755', '99', '商品一14', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('22', '20150603142646256', '20150603164903757', '99', '商品一15', '个', '7', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('23', '20150603142646256', '20150603164903759', '99', '商品一16', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('24', '20150603142646256', '20150603164903761', '99', '商品一17', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('25', '20150603142646256', '20150603164903763', '99', '商品一18', '个', '8', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('26', '20150603142646256', '20150603164903765', '99', '商品一19', '个', '8', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('27', '20150603142646256', '20150603164903766', '99', '商品一20', '个', '8', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('28', '20150603142646256', '20150603164903768', '99', '商品一21', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('29', '20150603142646256', '20150603164903769', '99', '商品一22', '个', '11', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_commodity` VALUES ('30', '20150603142646256', '20150603164903771', '99', '商品一23', '个', '16', '超市商品介绍', '2', '2015-06-03 16:49:03', null, null, '1');
INSERT INTO `market_info` VALUES ('1', '20150525145921720', '苏果超市', '苏州市平江区', '大型购物超市', '13432@163.com', '13453312321', '', '23', '3', null, null, '6', '2015-05-25 14:59:21', '2', '2015-06-03 14:06:15', '0');
INSERT INTO `market_info` VALUES ('2', '20150525150023683', '华润万家', '江苏省苏州市虎丘区Y307(金枫路)', '大型购物超市', '1@163.com', '13453312324', '3:00-21:00', '120.537473', '31.314627', null, null, '6', '2015-05-25 15:00:23', '2', '2015-06-03 14:22:16', '0');
INSERT INTO `market_info` VALUES ('3', '20150525150116505', '华联超市', '江苏省苏州市吴中区澄湖路', '全国连锁超市', '123456@qq.com', '13453312324', '4:00--5:00', '120.623307', '31.248849', null, null, '6', '2015-05-25 15:01:16', '2', '2015-06-03 14:22:19', '0');
INSERT INTO `market_info` VALUES ('4', '20150527095111893', '超市以', '江苏省苏州市姑苏区爱河桥路24号', '', '453220567@qq.com', '15151540754', '9:00--21:00', '120.609147', '31.314598', null, null, '2', '2015-05-27 09:51:11', '2', '2015-06-03 14:22:21', '0');
INSERT INTO `market_info` VALUES ('5', '20150603140649994', '超市一', '江苏省苏州市姑苏区中街路59号', '', '453220567@qq.com', '15151540754', '9:00-22:00', '120.621077', '31.318346', null, null, '2', '2015-06-03 14:06:49', '2', '2015-06-03 14:22:23', '0');
INSERT INTO `market_info` VALUES ('6', '20150603142431717', '超市一三', '江苏省苏州市姑苏区吴趋坊117-5', '', '4646462@qq.com', '15151540754', '8:00---11:00', '120.616478', '31.318408', null, null, '2', '2015-06-03 14:24:31', '2', '2015-06-03 14:27:08', '0');
INSERT INTO `market_info` VALUES ('7', '20150603142646256', '超市一', '江苏省苏州市姑苏区留园路186号', '', '45567@qq.com', '15151540754', '9:00-21:00', '120.601853', '31.321431', null, null, '2', '2015-06-03 14:26:46', '2', '2015-06-03 14:27:01', '1');
INSERT INTO `market_menu` VALUES ('1', '20150603142641234', '20150603142646256', '20150505131241', '20150505131348', '88', '21', '0', '0', '0', '12', '1', '江苏省苏州市姑苏区留园路186号', '120.601853', '31.321431', null, '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:42', '1', '2015-06-05 10:27:01', '1', '2015-06-05 10:27:09', '1');
INSERT INTO `market_menu` VALUES ('2', '20150603142641235', '20150603142646256', '20150505131241', '20150505131348', '88', '21', '0', '0', '0', '12', '1', '江苏省苏州市姑苏区留园路186号', '120.601853', '31.321431', null, '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:42', '1', '2015-06-05 10:27:01', '1', '2015-06-05 10:27:09', '1');
INSERT INTO `market_menu` VALUES ('4', '20150603142641237', '20150603142646256', '20150505131241', '20150505131348', '88', '21', '0', '0', '0', '12', '1', '江苏省苏州市姑苏区留园路186号', '120.601853', '31.321431', null, '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:42', '1', '2015-06-05 10:27:01', '1', '2015-06-05 10:27:09', '1');
INSERT INTO `market_menu` VALUES ('8', '20150603142641235', '20150603142646256', '20150505131241', '20150505131348', '88', '21', '0', '0', '0', '12', '1', '江苏省苏州市姑苏区留园路186号', '120.601853', '31.321431', null, '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:42', '1', '2015-06-05 10:27:01', '1', '2015-06-05 10:27:09', '2');
INSERT INTO `market_menu` VALUES ('9', '20150604142641235', '20150603142646256', '20150505131241', '20150505131348', '88', '21', '0', '0', '0', '12', '1', '江苏省苏州市姑苏区留园路186号', '120.601853', '31.321431', null, '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:42', '1', '2015-06-05 10:27:01', '1', '2015-06-05 10:27:09', '3');
INSERT INTO `market_menu` VALUES ('10', '20150607142641235', '20150603142646256', '20150505131241', '20150505131348', '88', '21', '0', '0', '0', '12', '1', '江苏省苏州市姑苏区留园路186号', '120.601853', '31.321431', null, '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:38', '2015-06-05 10:26:42', '1', '2015-06-05 10:27:01', '1', '2015-06-05 10:27:09', '3');
INSERT INTO `market_menu_record` VALUES ('1', '20150607142641235', '商品一', '88', '个', '20', null, null);
INSERT INTO `market_menu_record` VALUES ('2', '20150607142641235', '商品二', '88', '组', '20', null, null);
INSERT INTO `market_menu_record` VALUES ('3', '20150607142641235', '商品三', '88', '团', '51', null, null);
INSERT INTO `market_menu_record` VALUES ('4', '20150607142641235', '商品四', '88', '中心', '10', null, null);
INSERT INTO `market_menu_record` VALUES ('5', '20150607142641235', '人员', '88', '是', '10', null, null);
INSERT INTO `menu` VALUES ('2', '20150514163531641', '20150602143621958', '20150428144843', '20150429152537', '15', '0', '0', '0', '0', '2', '1', '', '', '苏州平江区', '12', '142', '20150428144843', '2015-05-14 16:35:31', '20150428145032', '2015-05-15 15:34:00', '2015-05-15 15:34:00', null, '2');
INSERT INTO `menu` VALUES ('3', '20150514165102296', '20150602143621958', '20150428144843', '', '20', '0', '5', '3.9', '0', '1', '3', '', '', '苏州', '142', '142', '20150428144843', '2015-05-14 16:51:02', null, null, null, null, '1');
INSERT INTO `menu` VALUES ('4', '20150514165245098', '20150602143621958', '20150428144843', '20150429152537', '20.6', '0', '5', '3.9', '0', '1', '3', '', '', '中国', '142', '142', '20150428144843', '2015-05-14 16:52:45', '20150428145032', '2015-05-15 13:28:33', '2015-05-15 13:28:33', null, '2');
INSERT INTO `menu` VALUES ('5', '20150514165305438', '20150602143621958', '20150428144843', '', '20.6', '0', '5', '3.96', '0', '1', '3', '', '', '苏州', '142', '142', '20150428144843', '2015-05-14 16:53:05', null, null, null, null, '1');
INSERT INTO `menu` VALUES ('6', '20150514165504119', '20150602143621958', '20150428144843', '20150429152537', '20.6', '0', '5.9', '3.96', '0', '1', '3', '', '', '苏州', '142', '142', '20150428144843', '2015-05-14 16:55:04', '20150428145032', '2015-05-15 13:28:03', '2015-05-15 13:28:03', '2015-06-04 15:47:33', '3');
INSERT INTO `menu` VALUES ('7', '20150514165514676', '20150602143621958', '20150428144843', '', '20.6', '0', '5.9', '3.966', '0', '1', '3', '', '', '苏州', '142', '142', '20150428144843', '2015-05-14 16:55:14', null, null, null, null, '1');
INSERT INTO `menu` VALUES ('8', '20150514165722139', '20150602143621958', '20150428144843', '20150429152537', '20', '0', '5', '3.9', '0', '1', '3', '12', '', '苏州', '142', '142', '20150428144843', '2015-05-14 16:57:22', '20150428145032', '2015-05-15 13:27:09', '2015-05-15 10:23:58', null, '2');
INSERT INTO `menu` VALUES ('9', '20150514171045029', '20150602143621958', '20150428144843', '', '20.6', '0', '5', '3.9', '0', '1', '3', '12', '13', '江苏', '142', '142', '20150428144843', '2015-05-14 17:10:45', '20150508152851965', '2015-05-22 14:26:38', '2015-05-15 13:27:50', null, '1');
INSERT INTO `menu_dish` VALUES ('1', '20150514165504119', '20150602143621958', 'ds', '23', '4', '20150508152851965', '2015-05-18 15:37:16');
INSERT INTO `menu_dish` VALUES ('2', '20150514165504119', '20150602143621958', '新增', '23', '4', '20150508152851965', '2015-05-18 15:38:12');
INSERT INTO `menu_dish` VALUES ('3', '20150514165504119', '20150602143621958', 'wef', '23', '4', '20150508152851965', '2015-05-18 15:38:24');
INSERT INTO `menu_evaluate` VALUES ('1', '20150506155823', '20150514163531641', '20150428144843', '20150428145032', '5', '3', '', '20150428144843', '2015-05-20 16:29:42', null, null);
INSERT INTO `menu_evaluate` VALUES ('2', '20150506155823', '20150514165245098', '20150428144843', '20150505131348', '5', '3', '', '20150428144843', '2015-05-20 16:30:24', null, null);
INSERT INTO `menu_evaluate` VALUES ('3', '20150506155823', '20150514165504119', '20150508152851965', '20150505131348', '5', '3', '', '20150508152851965', '2015-05-20 16:30:45', null, null);
INSERT INTO `menu_evaluate` VALUES ('4', '20150508152851965', '20150514165722139', '20150428144843', '20150428145032', '5', '3', '', '20150428144843', '2015-05-20 16:30:59', null, null);
INSERT INTO `menu_evaluate` VALUES ('5', '20150506155823', '20150514171045029', '20150508152851965', '20150428145032', '5', '3', '', '20150428144843', '2015-05-21 09:47:44', null, null);
INSERT INTO `server_settle` VALUES ('1', '20150505131348', '0', '2', '用户结算', '876', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:37');
INSERT INTO `server_settle` VALUES ('2', '20150428144843', '0', '2', '用户结算', '12', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('3', '20150428145032', '0', '2', '用户结算', '34', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('4', '20150429152537', '0', '2', '用户结算', '54', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('5', '20150505131241', '0', '2', '用户结算', '65', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('6', '20150505131254', '0', '2', '用户结算', '343', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('7', '20150508152851965', '0', '2', '用户结算', '45', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('8', '20150521133015609', '0', '2', '用户结算', '343', '0', '结算账号：工商', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:40');
INSERT INTO `server_settle` VALUES ('9', '20150428144843', '0', '2', '用户结算', '12', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('10', '20150428145032', '0', '2', '用户结算', '3', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('11', '20150429152537', '0', '2', '用户结算', '3434', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('12', '20150505131241', '0', '2', '用户结算', '32', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('13', '20150505131254', '0', '2', '用户结算', '23', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('14', '20150505131348', '0', '2', '用户结算', '65', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('15', '20150508152851965', '0', '2', '用户结算', '5', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `server_settle` VALUES ('16', '20150521133015609', '0', '2', '用户结算', '8977', '0', '结算账号：工商', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10');
INSERT INTO `shop_dish` VALUES ('1', '20150506153039', '20150511133812676', '扬州炒饭', '8', '1', '炒饭', '特色小吃', '2', '2015-05-11 12:55:59', null, null, '1');
INSERT INTO `shop_dish` VALUES ('2', '20150506153039', '20150511133842653', '麻辣米线', '10', '2', '很辣', '推荐菜', '2', '2015-05-11 13:08:04', null, null, '1');
INSERT INTO `shop_dish` VALUES ('3', '20150506155823', '20150511133842676', '牛肉拉面', '15', '1', '微辣', '特色菜', '2', '2015-05-11 13:38:42', null, null, '1');
INSERT INTO `shop_dish` VALUES ('4', '20150506153039', '20150511133844243', '麻辣烫', '15', '7', '很辣', '特色', '2', '2015-05-11 13:38:44', '1', '2015-05-11 13:43:51', '1');
INSERT INTO `shop_dish` VALUES ('5', '20150506160130', '20150511142743600', '鸭血粉丝', '10', '1', '很辣', '地道', '2', '2015-05-11 14:27:43', null, null, '1');
INSERT INTO `shop_dish` VALUES ('6', '20150506153039', '20150511142834926', '麻辣香锅', '15', '9', '很辣', '正宗', '2', '2015-05-11 14:28:34', null, null, '1');
INSERT INTO `shop_dish` VALUES ('7', '20150506153039', 'df4d288b6eaa403c84444b46ca90fe44', '香锅', '15', '1', '很辣', '正宗', '6', '2015-05-14 11:43:30', null, null, '1');
INSERT INTO `shop_dish` VALUES ('8', '20150602143621958', 'ad9263b90cc9489a91dc1a3e34002ad8', '餐品一', '99', '2', '辣', '', '2', '2015-06-02 16:28:56', '2', '2015-06-03 10:41:21', '0');
INSERT INTO `shop_dish` VALUES ('9', '20150602143621958', '807e2190d5374391b1398fd8e854f7f3', '餐品二', '66', '3', '加update', '好菜', '2', '2015-06-02 16:40:31', '2', '2015-06-03 10:41:21', '0');
INSERT INTO `shop_dish` VALUES ('10', '20150602143621958', '5cedb0f7be564c4ca1e6154b346cbcdf', '阿萨斯', '55', '13', '阿萨斯', '', '2', '2015-06-02 16:41:10', '2', '2015-06-03 10:41:21', '0');
INSERT INTO `shop_dish` VALUES ('11', '20150602143621958', '88e6d4f52697453694f0dfed9eb26d0a', '餐品三', '66', '2', '辣', '', '2', '2015-06-02 16:49:38', '2', '2015-06-03 10:41:21', '0');
INSERT INTO `shop_dish` VALUES ('12', '20150602143621958', 'c7bae3de4ff44fe4b455ada78f01b960', '餐品一1', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('13', '20150602143621958', 'f4185666225449efab61ccb9e0954b56', '餐品一2', '88', '2', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', '2', '2015-06-03 13:49:51', '0');
INSERT INTO `shop_dish` VALUES ('14', '20150602143621958', '7fe950b59f5f40c6a1fd1512611c4286', '餐品一3', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', '2', '2015-06-03 13:49:57', '1');
INSERT INTO `shop_dish` VALUES ('15', '20150602143621958', '47a936421d314b12b23415f4ac2e64f8', '餐品一5', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('16', '20150602143621958', 'c1372ae58e1b45bca1b51180a1595cea', '餐品一4', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', '2', '2015-06-05 13:38:36', '0');
INSERT INTO `shop_dish` VALUES ('17', '20150602143621958', '60174b4fb07b45e28e5924f00b4b2d7b', '餐品一6', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('18', '20150602143621958', '6cbee463f27c47faa975c93625bc6d99', '餐品一7', '88', '3', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('19', '20150602143621958', '4ac7d346400846ef93c7c63f87945350', '餐品一8', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('20', '20150602143621958', 'e6de8825bacb4944ba43ac7f01fe58ae', '餐品一9', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('21', '20150602143621958', '691a1e1dbadf4282907ac9eb183ccaac', '餐品一10', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('22', '20150602143621958', '4956138c04ca4f0a85d7db52953bcb82', '餐品一11', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('23', '20150602143621958', 'f3addb33275649f18adf38326070479a', '餐品一12', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('24', '20150602143621958', 'b25a92ee2cbe41db98891f2f566cc99d', '餐品一13', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('25', '20150602143621958', '07f10d31392547b79d25edb36f9aa98b', '餐品一14', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('26', '20150602143621958', '87332a6e09c943b0be358c11e77d772f', '餐品一15', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('27', '20150602143621958', '5f64f4f3c46748c1a9e941543ff41aa9', '餐品一16', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('28', '20150602143621958', 'de73d58c59654d589b37ff1aba4dcad0', '餐品一17', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('29', '20150602143621958', '0ed4e9f9681a47cb96d3460fa335b21c', '餐品一18', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('30', '20150602143621958', 'b390a4fbf0b048ec8aab0f7f42505cdb', '餐品一19', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('31', '20150602143621958', '3b944173ebb945e88a1f9f0ae917cae4', '餐品一20', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('32', '20150602143621958', 'abab0716ca444d4c9d1e6995a49f1ebe', '餐品一22', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('33', '20150602143621958', 'ca1229061f284c9dbdbf83219837086e', '餐品一23', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('34', '20150602143621958', 'b2078a7d229a4f3f859b0abc706df61d', '餐品一24', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('35', '20150602143621958', 'ff12bf531f494455a6457c840c85023a', '餐品一25', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('36', '20150602143621958', 'fc5290624a3d45729a5b2b930931a108', '餐品一26', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('37', '20150602143621958', 'bc3b3d0c11ca4f32ba46e8b37c842f39', '餐品一27', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('38', '20150602143621958', 'dc2a667f093d48bb87a9a16bd47593f1', '餐品一28', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('39', '20150602143621958', '8a47c451964d4075ab84a34f2849b0a5', '餐品一29', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('40', '20150602143621958', '19dd3931e0ab4791ad80ef2798640385', '餐品一30', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish` VALUES ('41', '20150602143621958', '727d570780954fbfbbf4cca59ec4c5a1', '餐品一31', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-03 11:05:22', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('1', '苏州江浙update', '2', '6', '2015-05-07 15:29:17', '2', '2015-06-05 13:37:50', '1', '1');
INSERT INTO `shop_dish_type` VALUES ('2', '日韩料理', '1', '2', '2015-05-07 15:30:24', '2', '2015-06-05 13:37:50', '1', '1');
INSERT INTO `shop_dish_type` VALUES ('3', '火锅update', '6', '2', '2015-05-07 15:43:12', '2', '2015-06-02 15:58:10', '1', '1');
INSERT INTO `shop_dish_type` VALUES ('4', '小吃快餐', '4', '6', '2015-05-07 15:44:32', '2', '2015-06-02 16:03:48', '0', '1');
INSERT INTO `shop_dish_type` VALUES ('5', '江浙小吃', '9', '2', '2015-05-07 16:29:56', '2', '2015-06-02 15:58:15', '0', '1');
INSERT INTO `shop_dish_type` VALUES ('6', '江浙update', '3', '1', '2015-05-07 16:30:56', '2', '2015-06-02 15:58:09', '1', '1');
INSERT INTO `shop_dish_type` VALUES ('7', '烧烤', '7', '2', '2015-05-08 11:22:20', '2', '2015-06-03 14:29:12', '1', '2');
INSERT INTO `shop_dish_type` VALUES ('8', '烧烤2', '15', '6', '2015-05-08 11:33:40', '2', '2015-06-03 14:29:08', '1', '2');
INSERT INTO `shop_dish_type` VALUES ('9', '烧烤3', '11', '1', '2015-05-08 11:34:43', '2', '2015-06-03 14:28:08', '0', '2');
INSERT INTO `shop_dish_type` VALUES ('10', '热菜', '8', '6', '2015-05-08 11:35:34', '2', '2015-06-03 14:29:10', '1', '2');
INSERT INTO `shop_dish_type` VALUES ('11', '冷菜', '5', '6', '2015-05-08 11:45:44', '2', '2015-06-03 14:29:12', '1', '2');
INSERT INTO `shop_dish_type` VALUES ('12', '很多很多Insert', '12', '2', '2015-06-02 15:58:33', null, null, '1', '1');
INSERT INTO `shop_dish_type` VALUES ('13', '阿萨', '13', '2', '2015-06-02 15:58:46', null, null, '1', '1');
INSERT INTO `shop_dish_type` VALUES ('14', '阿萨斯', '14', '2', '2015-06-02 16:03:55', null, null, '1', '1');
INSERT INTO `shop_dish_type` VALUES ('15', '好久阿萨', '10', '2', '2015-06-03 14:27:51', '2', '2015-06-03 14:29:08', '1', '2');
INSERT INTO `shop_dish_type` VALUES ('16', '接口', '16', '2', '2015-06-03 14:27:56', null, null, '1', '2');
INSERT INTO `shop_dish_type` VALUES ('17', 'asas', '17', '2', '2015-06-05 13:37:39', '2', '2015-06-15 15:01:32', '0', '1');
INSERT INTO `shop_dish_type` VALUES ('18', 'asas', '17', '2', '2015-06-15 15:01:37', '2', '2015-06-15 15:02:03', '0', '1');
INSERT INTO `shop_dish_type` VALUES ('19', 'asas', '17', '2', '2015-06-15 15:02:08', null, null, '1', '1');
INSERT INTO `shop_info` VALUES ('34', '20150602143621958', '商家一Update', '中餐', '江苏省苏州市姑苏区包衙前17号', '', '453220567@qq.com', '15151540754', '/upload/shop/images/d0e42ff14cf140ceb2cd2bcf4cbefb67.png', '120.619137', '31.319148', null, null, '2', '2015-06-02 14:36:21', '0', '2015-06-02 15:49:30', '1', '10:00-14:00，16:00-22:00');
INSERT INTO `shop_info` VALUES ('35', '20150605133725361', 'asasas', 'asas', '江苏省苏州市姑苏区邵磨针巷92', '', '453320567@qq.com', '15151540754', '/upload/shop/images/1b4f8ef3f76444a0b996f174d225ca34.png', '120.630348', '31.315323', null, null, '2', '2015-06-05 13:37:25', '0', '2015-06-05 13:37:25', '1', 'asas');
INSERT INTO `user_address` VALUES ('1', '20150508152851965', '徐州', '102', '30', '20150428145032', '2015-05-12 14:07:39', '', null, '1');
INSERT INTO `user_address` VALUES ('2', '20150508152851965', '徐州', '102', '30', '20150428145032', '2015-05-12 14:08:15', '20150428144843', '2015-05-12 15:25:10', '1');
INSERT INTO `user_address` VALUES ('3', '20150508152851965', '苏州', '102', '30', '20150428145032', '2015-05-12 14:09:07', null, null, '1');
INSERT INTO `user_address` VALUES ('4', '20150508152851965', '苏州', '102', '30', '20150428145032', '2015-05-12 14:10:09', '20150428144843', '2015-05-12 15:26:00', '1');
INSERT INTO `user_address` VALUES ('5', '20150428144843', '江苏省', '32', '12', '20150428144843', '2015-05-12 15:09:19', '20150428144843', '2015-05-12 15:25:10', '1');
INSERT INTO `user_address` VALUES ('6', '20150428144843', '国际科技园', '32', '12', '20150428144843', '2015-05-12 15:10:03', null, null, '1');
INSERT INTO `user_address` VALUES ('7', '20150428144843', '科技园', '42', '112', '20150428144843', '2015-05-12 15:10:38', '20150428144843', '2015-05-12 15:26:00', '2');
INSERT INTO `user_info` VALUES ('1', '20150428144843', 'sdf', '23sd2', 'liuqing', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '53100d82c556461eb0b3afc1761a5c59', '1377649', '/upload/user/images/default.jpg', '0', '1355523', '4821362', '苏州', '112', '23', null, null, '2015-06-15 16:54:51', '建设银行', '15155565465464656', '1');
INSERT INTO `user_info` VALUES ('2', '20150428145032', 'lsd', '4ds', 'liu', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '89bbd7fc108549ec95a198d67239f2cf', '137719', '/upload/user/images/default.jpg', '0', '13771904', '133482', '平江区', '111', '111', null, null, '2015-06-15 16:54:54', '建设银行', '15155565465', '2');
INSERT INTO `user_info` VALUES ('3', '20150429152537', 'v', 'cxv', 'liu3', '1CE0E635F5B44C7810C1489FFA9141A8BF40359F2CCF47ADDCF5096C', '47becd2910fa474dae0847c58360df1d', '149', '/upload/user/images/default.jpg', '0', '1355523', '1334821362', '苏州', '112', '23', null, null, '2015-06-15 16:54:56', '建设银行', '15155565465', '2');
INSERT INTO `user_info` VALUES ('4', '20150505131241', 'et4', 'we', 'me', '7223D0248312822C9E9EF9500EDDD795AB8A20C989F74B1483ECC8DF', 'c2b97345aff64dffb82c650fd62473fb', '13771904649', '/upload/user/images/default.jpg', '0', '13711911043', '13362@163.com', '江苏', '112', '23', null, null, '2015-06-15 16:54:58', '支付宝', '15151540754', '1');
INSERT INTO `user_info` VALUES ('5', '20150505131254', '34', 'sd', 'mee', '8B4CD0A74C67BE890A4000D73B3FE998A9B189A65DD5110B43EB0CD7', '7c10106288ee448293530fcb33dd081f', '1649', '/upload/user/images/default.jpg', '0', '13711911049', '13362@163.com', '江苏', '112', '23', null, null, '2015-06-15 16:55:00', '支付宝', '12321342432', '2');
INSERT INTO `user_info` VALUES ('6', '20150505131348', 'mg', 'ds', 'tt', 'CE1D2F1AB71DC75032111AAD9E1790AB178A41CBB9033BAEADEAD3A2', '252d963133ed478b910808040abccec5', '137719', '/upload/user/images/default.jpg', '0', '13711911045', '13362@163.com', '徐州', '112', '23', null, null, '2015-06-15 16:55:03', '支付宝', '12321342432', '2');
INSERT INTO `user_info` VALUES ('7', '20150508152851965', 'liu', 'qing', 'sa', '2C2571F07529A51BBDEC3540B30B76916A2DEE411137858950A7D803', '1db013542f3b4825914e506424369c86', '13774504649', '/upload/user/images/default.jpg', '0', '137719049', '121362@qq.com', '苏州', '112', '23', null, null, '2015-06-15 16:55:06', '支付宝', '12321342432', '1');
INSERT INTO `user_info` VALUES ('8', '20150521133015609', 'liu', 'qing', '', '68EFBE717A9BDB0EC56CE516DA53B1FE49AC98AB2642907F65E1883C', '6c8f43dc6c2a446da03550cada4659ef', '13771904612', '/upload/user/images/default.jpg', '0', '13711911040', '133482@qq.com', '苏州', '112', '23', null, null, '2015-06-15 16:55:09', '工商', '12321342432', '1');
INSERT INTO `user_settle` VALUES ('1', '20150428144843', '0', '1', '投诉退款', '1000', '1000', '投诉单号', '20150603171420768', '投诉处理，返回餐费', '2', '2015-06-09 11:01:44', null, null, '1');
INSERT INTO `user_settle` VALUES ('2', '20150429152537', '0', '2', '投诉扣款', '1000', '-1000', '投诉单号', '20150603171420768', '投诉处理，扣除餐费', '2', '2015-06-09 11:01:44', null, null, '1');
INSERT INTO `user_settle` VALUES ('3', '20150428144843', '1000', '1', '投诉退款', '1000', '2000', '投诉单号', '20150603170925677', '投诉处理，返回餐费', '2', '2015-06-09 13:24:15', null, null, '1');
INSERT INTO `user_settle` VALUES ('4', '20150428144843', '2000', '2', '用户结算', '2000', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-09 16:17:50', null, null, '1');
INSERT INTO `user_settle` VALUES ('5', '20150505131241', '100', '2', '用户结算', '100', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-09 16:17:50', null, null, '1');
INSERT INTO `user_settle` VALUES ('6', '20150428144843', '2000', '2', '用户结算', '2000', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-09 16:29:26', null, null, '1');
INSERT INTO `user_settle` VALUES ('7', '20150505131241', '100', '2', '用户结算', '100', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-09 16:29:26', null, null, '1');
INSERT INTO `user_settle` VALUES ('11', '20150428144843', '2323', '2', '用户结算', '2323', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('12', '20150428145032', '544', '2', '用户结算', '544', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('13', '20150429152537', '100', '2', '用户结算', '100', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('14', '20150505131241', '23', '2', '用户结算', '23', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('15', '20150505131254', '23', '2', '用户结算', '23', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('16', '20150505131348', '2323', '2', '用户结算', '2323', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('17', '20150508152851965', '56', '2', '用户结算', '56', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('18', '20150521133015609', '676', '2', '用户结算', '676', '0', '结算账号：工商', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:19:59', null, null, '1');
INSERT INTO `user_settle` VALUES ('19', '20150429152537', '12', '2', '用户结算', '12', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:21:23', null, null, '1');
INSERT INTO `user_settle` VALUES ('20', '20150505131348', '876', '2', '用户结算', '876', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:37', null, null, '1');
INSERT INTO `user_settle` VALUES ('21', '20150428144843', '12', '2', '用户结算', '12', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('22', '20150428145032', '34', '2', '用户结算', '34', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('23', '20150429152537', '54', '2', '用户结算', '54', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('24', '20150505131241', '65', '2', '用户结算', '65', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('25', '20150505131254', '343', '2', '用户结算', '343', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('26', '20150508152851965', '45', '2', '用户结算', '45', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('27', '20150521133015609', '343', '2', '用户结算', '343', '0', '结算账号：工商', '12321342432', '用户账户余额结算', '2', '2015-06-10 10:44:40', null, null, '1');
INSERT INTO `user_settle` VALUES ('28', '20150428144843', '12', '2', '用户结算', '12', '0', '结算账号：建设银行', '15155565465464656', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('29', '20150428145032', '3', '2', '用户结算', '3', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('30', '20150429152537', '3434', '2', '用户结算', '3434', '0', '结算账号：建设银行', '15155565465', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('31', '20150505131241', '32', '2', '用户结算', '32', '0', '结算账号：支付宝', '15151540754', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('32', '20150505131254', '23', '2', '用户结算', '23', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('33', '20150505131348', '65', '2', '用户结算', '65', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('34', '20150508152851965', '5', '2', '用户结算', '5', '0', '结算账号：支付宝', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
INSERT INTO `user_settle` VALUES ('35', '20150521133015609', '8977', '2', '用户结算', '8977', '0', '结算账号：工商', '12321342432', '用户账户余额结算', '2', '2015-06-11 09:33:10', null, null, '1');
