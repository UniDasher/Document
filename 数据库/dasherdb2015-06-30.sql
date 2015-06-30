/*
MySQL Data Transfer
Source Host: localhost
Source Database: dasherdb
Target Host: localhost
Target Database: dasherdb
Date: 2015/6/30 10:07:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for complain
-- ----------------------------
CREATE TABLE `complain` (
  `id` int(11) NOT NULL auto_increment,
  `comId` varchar(255) default NULL,
  `comType` int(11) default NULL,
  `uid` varchar(255) default NULL,
  `mid` varchar(255) default NULL,
  `type` int(11) default NULL,
  `wid` varchar(255) default NULL,
  `content` varchar(255) default NULL,
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
-- Table structure for earn_info
-- ----------------------------
CREATE TABLE `earn_info` (
  `id` int(11) NOT NULL auto_increment,
  `eid` varchar(255) default NULL,
  `wid` varchar(255) default NULL,
  `mid` varchar(255) default NULL,
  `carriageMoney` float default NULL,
  `totalMoney` float default NULL,
  `type` int(11) default NULL,
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
  `cid` varchar(255) default NULL,
  `authCode` varchar(255) default NULL,
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
  `mcid` varchar(255) default NULL,
  `smid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `price` float default '0',
  `unit` varchar(255) default NULL,
  `typeId` int(255) default NULL,
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
  `distance` varchar(255) default NULL,
  `direction` varchar(255) default NULL,
  `longitude` varchar(255) default NULL,
  `latitude` varchar(255) default NULL,
  `mealStartDate` varchar(255) default NULL,
  `mealEndDate` varchar(255) default NULL,
  `startDate` datetime default NULL,
  `endDate` datetime default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
  `cancleDate` datetime default NULL,
  `overTimeDate` datetime default NULL,
  `complainDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_menu_record
-- ----------------------------
CREATE TABLE `market_menu_record` (
  `id` int(11) NOT NULL auto_increment,
  `mcid` varchar(255) default NULL,
  `mid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `price` float default NULL,
  `unit` varchar(255) default NULL,
  `count` int(11) default NULL,
  `subscribe` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
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
  `did` varchar(255) default NULL,
  `wid` varchar(255) default NULL,
  `dishsMoney` float default '0',
  `carriageMoney` float default '0',
  `taxesMoney` float default '0',
  `serviceMoney` float default '0',
  `tipMoney` float default '0',
  `menuCount` int(11) default NULL,
  `payType` int(11) default NULL,
  `mealStartDate` time default NULL,
  `mealEndDate` time default NULL,
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
  `cancleDate` datetime default NULL,
  `overTimeDate` datetime default NULL,
  `complainDate` datetime default NULL,
  `distance` varchar(255) default NULL,
  `direction` varchar(255) default NULL,
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
-- Table structure for phone_code
-- ----------------------------
CREATE TABLE `phone_code` (
  `id` int(11) NOT NULL auto_increment,
  `mobilePhone` varchar(255) default NULL,
  `phoneCode` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for server_settle
-- ----------------------------
CREATE TABLE `server_settle` (
  `id` int(11) NOT NULL auto_increment,
  `oldBalance` float default '0',
  `settleType` int(11) default NULL,
  `settlePrice` float default '0',
  `curBalance` float default '0',
  `settleNumber` varchar(255) default NULL,
  `settleDesc` varchar(255) default NULL,
  `createBy` varchar(11) default NULL,
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
  `type` int(11) default NULL,
  `sortNum` int(11) default NULL,
  `createBy` int(11) default NULL,
  `createDate` datetime default NULL,
  `updateBy` int(11) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
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
-- Table structure for time_info
-- ----------------------------
CREATE TABLE `time_info` (
  `id` int(11) NOT NULL auto_increment,
  `sid` varchar(255) default NULL,
  `weeks` int(11) default NULL,
  `flag` int(11) default NULL,
  `subscribe` varchar(255) default NULL,
  `time1` varchar(255) default NULL,
  `time2` varchar(255) default NULL,
  `time3` varchar(255) default NULL,
  `time4` varchar(255) default NULL,
  `time5` varchar(255) default NULL,
  `createBy` varchar(255) default NULL,
  `createDate` datetime default NULL,
  `updateBy` varchar(255) default NULL,
  `updateDate` datetime default NULL,
  `status` int(11) default NULL,
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
  `balance` float default '0',
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
  `authTime` datetime default NULL,
  `applyTime` datetime default NULL,
  `handlePerson` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_settle
-- ----------------------------
CREATE TABLE `user_settle` (
  `id` int(11) NOT NULL auto_increment,
  `wid` varchar(255) default NULL,
  `oldBalance` float default '0',
  `settleType` int(11) default NULL,
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
INSERT INTO `complain` VALUES ('1', '20150603170925677', null, '20150508152851965', '20150514171045029', null, null, '服务态度差', '通过', '5', '5', '20150521133015609', '2015-06-03 17:09:25', '1', '2015-06-03 17:52:02', '2');
INSERT INTO `complain` VALUES ('2', '20150603171325248', null, '20150508152851965', '20150514163531641', null, '20150505131348', '不合口味', '通过', '5', '5', '20150521133015609', '2015-06-03 17:13:25', '1', '2015-06-03 17:59:37', '2');
INSERT INTO `complain` VALUES ('3', '20150603171420768', null, '20150521133015609', '20150514165305438', null, null, '不合口味', null, null, null, '20150521133015609', '2015-06-03 17:14:20', null, null, '1');
INSERT INTO `login` VALUES ('1', '2', null, '2abe7e6ea81c4e18a2073bec37b0e1c8', '0', '2015-06-29 17:26:10');
INSERT INTO `login` VALUES ('15', '6', null, '64ae78e3ef644d6ea45b9c4444c2eee6', '0', '2015-05-28 15:14:22');
INSERT INTO `login` VALUES ('16', '1', null, '2531524dd4ca4e6984e135878e737bd0', '0', '2015-05-28 15:15:49');
INSERT INTO `login` VALUES ('17', '20150428145032', null, '0839003f21c94199b03c190611126499', '1', '2015-05-21 11:32:10');
INSERT INTO `login` VALUES ('18', '20150428144843', null, '5b159476fd70401fb173d729a5d962f2', '1', '2015-05-21 11:31:29');
INSERT INTO `login` VALUES ('19', '20150508152851965', null, 'bb73c02f911746c7a83054a62cbdbc7d', '1', '2015-05-25 10:18:33');
INSERT INTO `login` VALUES ('20', '20150521133015609', null, 'ab46a7bf974746ba8b0e3de76df7933a', '1', '2015-05-21 13:35:20');
INSERT INTO `login` VALUES ('21', '20150623141413701', null, '8d098acb493042559fd4b871989f3dd6', '1', '2015-06-26 17:57:37');
INSERT INTO `manager` VALUES ('1', 'sa', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', 'b7e45d0c65244a9f9d58fd7c36639023', 'sa', 'me', '137719049', '1', '0', '2015-04-27 14:15:06', '1', '2015-04-27 15:14:06', '1');
INSERT INTO `manager` VALUES ('2', 'admin', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '6ac603e8ea7e49949ca9617be163d6d1', '', '', '', '0', '0', '2015-04-27 15:34:06', '2', '2015-04-30 11:20:49', '1');
INSERT INTO `manager` VALUES ('3', 'sa2', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '6923e0922885487d8f1ae547ba5eb02f', 'a', 'm', '13771904', '0', '0', '2015-04-27 15:55:44', '3', '2015-04-29 13:40:45', '1');
INSERT INTO `manager` VALUES ('4', 'sa3', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', 'eb52ceeeed1d4cafa04c828b80c3668a', 's', 'ds', '123', '0', '0', '2015-04-29 14:29:42', null, null, '1');
INSERT INTO `manager` VALUES ('5', 'sal', '5726B3D7D2CB43DEAEA3B713771A6C73D4B713C19F1843418376FD16', '18ba96f253ee4c959cc39e0bafc0c878', 'a', 'm', '13771904@qq.com', '0', '2', '2015-05-04 11:06:34', null, null, '1');
INSERT INTO `manager` VALUES ('6', 'li', '5224D2F0C218344A98B8924325970D0881C7C41B63B5FA30CDB3DA8B', 'c4c4eae5cfac43dd8ba5ff4f37f7c190', 'a', 'm', '13771904@qq.com', '0', '2', '2015-05-04 11:11:40', null, null, '1');
INSERT INTO `manager` VALUES ('7', 'adminstrice', '7C64C6443C0A8D60A6E864B46A87F4D42C8BC16786B8FC1C932857E9', '85609ffda67240e0b9ec61b6505938fc', 'a', 'm', '13771904@163.com', '0', '6', '2015-05-04 11:15:25', null, null, '1');
INSERT INTO `market_commodity` VALUES ('1', '20150526112226281', '20150525145921720', '橙汁', '0', '瓶', '12', '', '1', '2015-05-26 11:22:26', null, null, '1');
INSERT INTO `market_commodity` VALUES ('2', '20150526112335556', '20150525145921720', '果汁', '0', '杯', '13', '现榨果汁', '1', '2015-05-26 11:23:35', null, null, '1');
INSERT INTO `market_commodity` VALUES ('3', '20150526112420808', '20150525150023683', '布丁奶茶', '0', '杯', '12', '新品', '1', '2015-05-26 11:24:20', '6', '2015-05-26 11:27:10', '1');
INSERT INTO `market_commodity` VALUES ('4', '20150526112517485', '20150525150116505', '雪碧', '0', '罐', '12', '热卖中', '1', '2015-05-26 11:25:17', '6', '2015-05-26 11:29:37', '1');
INSERT INTO `market_commodity` VALUES ('5', '20150528105111179', '20150525150116505', '可乐', '7.5', '杯', '10', '新品', '1', '2015-05-28 10:51:11', '2', '2015-05-28 16:24:27', '1');
INSERT INTO `market_info` VALUES ('1', '20150525145921720', '苏果超市', '苏州市平江区', '大型购物超市', '13432@163.com', '13453312321', '', '23', '3', null, null, '6', '2015-05-25 14:59:21', null, null, '1');
INSERT INTO `market_info` VALUES ('2', '20150525150023683', '华润万家', '苏州市平江区', '大型购物超市', '1@163.com', '13453312324', '', '154', '33', null, null, '6', '2015-05-25 15:00:23', null, null, '1');
INSERT INTO `market_info` VALUES ('3', '20150525150116505', '华联超市', '江苏', '全国连锁超市', '123456@qq.com', '13453312324', '', '63', '30', null, null, '6', '2015-05-25 15:01:16', '2', '2015-05-25 15:06:37', '1');
INSERT INTO `market_menu` VALUES ('1', '20150529161657329', '20150525145921720', '20150429152537', '20150428145032', '12.3', '0', '1', '5', '0', '1', '1', '江苏苏州', null, null, '12', '39', '12', '13', '2015-05-29 16:27:52', null, '20150521133015609', '2015-05-29 16:16:57', '20150428145032', '2015-05-29 16:28:41', '2', null, null, null);
INSERT INTO `market_menu` VALUES ('2', '20150529161905008', '20150525150023683', '20150508152851965', null, '40', '0', '1', '2', '0', '5', '1', '苏州', null, null, '12', '39', '12', '13', null, null, '20150521133015609', '2015-05-29 16:19:05', null, null, '1', null, null, null);
INSERT INTO `market_menu` VALUES ('3', '20150529161905879', '20150525145921720', '20150429152537', null, '12.3', '0', '1', '5', '0', '5', '1', '南京', null, null, '12', '39', '12', '13', null, null, '20150521133015609', '2015-05-29 16:19:05', null, null, '1', null, null, null);
INSERT INTO `market_menu_record` VALUES ('1', null, '20150529161657329', '橙汁', '10', '杯', '3', '', '20150428144843', '2015-06-02 11:45:03');
INSERT INTO `market_menu_record` VALUES ('2', null, '20150529161657329', '布丁奶茶', '15', '杯', '3', '', '20150428144843', '2015-06-02 11:45:23');
INSERT INTO `market_menu_record` VALUES ('3', null, '20150529161657329', '可乐', '7', '杯', '3', '', '20150428144843', '2015-06-02 11:45:42');
INSERT INTO `market_menu_record` VALUES ('4', null, '20150529161657329', '可乐', '7.56', '杯', '3', '', '20150428144843', '2015-06-02 11:46:09');
INSERT INTO `menu` VALUES ('2', '20150514163531641', '20150506153039', '20150508152851965', null, '20150428145032', '15', '0', '0', '0', '0', '2', '1', '00:00:00', '00:00:00', '苏州平江区', '12', '142', '20150428144843', '2015-05-14 16:35:31', '20150428145032', '2015-05-15 15:34:00', '2015-05-15 15:34:00', '2015-06-26 10:30:53', '5', '2015-06-26 10:31:25', null, '2015-06-26 10:31:36', null, null);
INSERT INTO `menu` VALUES ('3', '20150514165102296', '20150513110935241', '20150428144843', null, null, '20', '0', '5', '3.9', '0', '1', '3', '00:00:00', '06:00:00', '苏州', '142', '142', '20150428144843', '2015-05-14 16:51:02', null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `menu` VALUES ('4', '20150514165245098', '20150506155823', '20150428144843', null, '20150505131348', '20.6', '0', '5', '3.9', '0', '1', '3', '00:00:00', '08:00:00', '中国', '123', '34', '20150428144843', '2015-05-14 16:52:45', '20150428145032', '2015-05-15 13:28:33', '2015-05-15 13:28:33', null, '1', null, null, null, null, null);
INSERT INTO `menu` VALUES ('5', '20150514165305438', '20150506155823', '20150428144843', null, null, '20.6', '0', '5', '3.96', '0', '1', '3', '00:00:00', '06:00:00', '苏州', '142', '56', '20150428144843', '2015-05-14 16:53:05', null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `menu` VALUES ('6', '20150514165504119', '20150506155823', '20150508152851965', null, '20150505131348', '20.6', '0', '5.9', '3.96', '0', '1', '3', '00:00:00', '00:00:00', '苏州', '78', '58', '20150428144843', '2015-05-14 16:55:04', '20150428145032', '2015-05-15 13:28:03', '2015-05-15 13:28:03', '2015-06-24 10:48:41', '3', null, null, null, null, null);
INSERT INTO `menu` VALUES ('7', '20150514165514676', '20150506155823', '20150428145032', null, null, '20.6', '0', '5.9', '3.966', '0', '1', '3', '00:00:00', '11:00:00', '苏州', '94', '88', '20150428144843', '2015-05-14 16:55:14', null, null, null, null, '1', null, null, null, null, null);
INSERT INTO `menu` VALUES ('8', '20150514165722139', '20150513110935241', '20150428144843', null, '20150428145032', '20', '0', '5', '3.9', '0', '1', '3', '00:00:12', '00:00:00', '苏州', '43', '34', '20150428144843', '2015-05-14 16:57:22', '20150428145032', '2015-05-15 13:27:09', '2015-05-15 10:23:58', null, '2', null, null, null, null, null);
INSERT INTO `menu` VALUES ('9', '20150514171045029', '20150513110935241', '20150508152851965', null, '20150505131348', '20.6', '0', '5', '3.9', '0', '1', '3', '00:00:12', '00:00:13', '江苏', '38', '142', '20150428144843', '2015-05-14 17:10:45', '20150508152851965', '2015-05-22 14:26:38', '2015-05-15 13:27:50', null, '1', null, null, null, null, null);
INSERT INTO `menu` VALUES ('10', '20150627163644922', '20150623141212537', '20150623141413701', null, null, '264', '3', '0', '0', '0', '3', '0', '12:00:00', '12:30:00', '江苏省苏州市姑苏区白塔东路21号', '120.64169', '31.324514', '20150623141413701', '2015-06-27 16:36:44', null, null, null, null, '1', null, null, null, '25.135305846563572', '正西');
INSERT INTO `menu` VALUES ('11', '20150627163646182', '20150623141212537', '20150623141413701', null, null, '264', '3', '0', '0', '0', '3', '0', '12:00:00', '12:30:00', '江苏省苏州市姑苏区白塔东路21号', '120.64169', '31.324514', '20150623141413701', '2015-06-27 16:36:46', null, null, null, null, '1', null, null, null, '25.135305846563572', '正西');
INSERT INTO `menu_dish` VALUES ('1', '20150514163531641', '20150511133842653', 'ds', '23', '4', '20150508152851965', '2015-05-18 15:37:16');
INSERT INTO `menu_dish` VALUES ('2', '20150514163531641', '20150511133842653', '新增', '23', '4', '20150508152851965', '2015-05-18 15:38:12');
INSERT INTO `menu_dish` VALUES ('3', '20150514163531641', '20150511133842653', 'wef', '23', '4', '20150508152851965', '2015-05-18 15:38:24');
INSERT INTO `menu_dish` VALUES ('4', '20150627163644922', '9ca0ef00ef464cc0be4c62939e8fcf2a', '餐品一3', '88', '2', '20150623141413701', '2015-06-27 16:36:44');
INSERT INTO `menu_dish` VALUES ('5', '20150627163644922', '091fe03c22d141a2bc4e2262abe5c804', '餐品一1', '88', '1', '20150623141413701', '2015-06-27 16:36:44');
INSERT INTO `menu_dish` VALUES ('6', '20150627163646182', '9ca0ef00ef464cc0be4c62939e8fcf2a', '餐品一3', '88', '2', '20150623141413701', '2015-06-27 16:36:46');
INSERT INTO `menu_dish` VALUES ('7', '20150627163646182', '091fe03c22d141a2bc4e2262abe5c804', '餐品一1', '88', '1', '20150623141413701', '2015-06-27 16:36:46');
INSERT INTO `menu_evaluate` VALUES ('1', '20150506155823', '20150514163531641', '20150428144843', '20150428145032', '5', '3', '', '20150428144843', '2015-05-20 16:29:42', null, null);
INSERT INTO `menu_evaluate` VALUES ('2', '20150506155823', '20150514165245098', '20150428144843', '20150505131348', '5', '3', '', '20150428144843', '2015-05-20 16:30:24', null, null);
INSERT INTO `menu_evaluate` VALUES ('3', '20150506155823', '20150514165504119', '20150508152851965', '20150505131348', '5', '3', '', '20150508152851965', '2015-05-20 16:30:45', null, null);
INSERT INTO `menu_evaluate` VALUES ('4', '20150508152851965', '20150514165722139', '20150428144843', '20150428145032', '5', '3', '', '20150428144843', '2015-05-20 16:30:59', null, null);
INSERT INTO `menu_evaluate` VALUES ('5', '20150506155823', '20150514171045029', '20150508152851965', '20150428145032', '5', '3', '', '20150428144843', '2015-05-21 09:47:44', null, null);
INSERT INTO `phone_code` VALUES ('1', '13771904649', 'TCDP', '2015-06-09 15:42:44', null);
INSERT INTO `shop_dish` VALUES ('1', '20150506153039', '20150511133812676', '扬州炒饭', '8', '1', '炒饭', '特色小吃', '2', '2015-05-11 12:55:59', null, null, '1');
INSERT INTO `shop_dish` VALUES ('2', '20150506153039', '20150511133842653', '麻辣米线', '10', '2', '很辣', '推荐菜', '2', '2015-05-11 13:08:04', null, null, '1');
INSERT INTO `shop_dish` VALUES ('3', '20150506155823', '20150511133842676', '牛肉拉面', '15', '1', '微辣', '特色菜', '2', '2015-05-11 13:38:42', null, null, '1');
INSERT INTO `shop_dish` VALUES ('4', '20150506153039', '20150511133844243', '麻辣烫', '15', '7', '很辣', '特色', '2', '2015-05-11 13:38:44', '1', '2015-05-11 13:43:51', '1');
INSERT INTO `shop_dish` VALUES ('5', '20150506160130', '20150511142743600', '鸭血粉丝', '10', '1', '很辣', '地道', '2', '2015-05-11 14:27:43', null, null, '1');
INSERT INTO `shop_dish` VALUES ('6', '20150506153039', '20150511142834926', '麻辣香锅', '15', '9', '很辣', '正宗', '2', '2015-05-11 14:28:34', null, null, '1');
INSERT INTO `shop_dish` VALUES ('7', '20150506153039', 'df4d288b6eaa403c84444b46ca90fe44', '香锅', '15', '1', '很辣', '正宗', '6', '2015-05-14 11:43:30', null, null, '1');
INSERT INTO `shop_dish` VALUES ('8', '20150623141003242', '76047e9b11054148a9323ad800b0b447', '餐品一1', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('9', '20150623141003242', 'eba71e5ef4c54b82a401b22164ecd935', '餐品一2', '88', '2', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('10', '20150623141003242', '4cabd9d676544b11a7bc53b403fa55c9', '餐品一3', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('11', '20150623141003242', 'e2a5cccd0fe6496d9fd9cafe1817f390', '餐品一5', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('12', '20150623141003242', '27f169c52dd643189c62c9134f8cd620', '餐品一4', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('13', '20150623141003242', 'da951f9146354547b72b6c6cecc1fb91', '餐品一6', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('14', '20150623141003242', '22dd544ec7e24f0589f1f7faa689d304', '餐品一7', '88', '3', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('15', '20150623141003242', '0e40a338e8474955b8c59f2e1d06213f', '餐品一8', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('16', '20150623141003242', 'fdf913b8b4bc452db5f00da80715156f', '餐品一9', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('17', '20150623141003242', 'b3d12afe65cf45f49c23ff78d9c8fae8', '餐品一10', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('18', '20150623141003242', 'afd6e5ec968947688d3b14536486fe64', '餐品一11', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('19', '20150623141003242', 'f14950e8e2904d56be4c6143986551f6', '餐品一12', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('20', '20150623141003242', '90d1c0920e634106813a168ce9b17414', '餐品一13', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('21', '20150623141003242', '76476bb0be764fad8c2d6c2424bc57a6', '餐品一14', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('22', '20150623141003242', '903090c6df2349678043f938d6b1e358', '餐品一15', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('23', '20150623141003242', '9bd219d507ef436daffef5574718736e', '餐品一16', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('24', '20150623141003242', 'de8c519f077945d19f72c6c0a9393557', '餐品一17', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('25', '20150623141003242', 'e2c5054053e54a8691b465e5137044c1', '餐品一18', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('26', '20150623141003242', '18a9a8dc32d749098aa0010364aafc03', '餐品一19', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('27', '20150623141003242', 'e7790186db3140c2ab72c244ce588ab7', '餐品一20', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('28', '20150623141003242', 'cef158c44c3044248068d07644252f60', '餐品一22', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('29', '20150623141003242', 'd3133d32ffce478b90b87adb4eee4c4a', '餐品一23', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('30', '20150623141003242', 'dc0d615e7de74703a69863b456b3bda1', '餐品一24', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('31', '20150623141003242', 'abd3ca9962c445a9851b85420be83f91', '餐品一25', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('32', '20150623141003242', 'c5933e4e505c4a6a98d3c3f665a85d65', '餐品一26', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('33', '20150623141003242', 'a2859086491a4167b3cd50a0fb855a19', '餐品一27', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('34', '20150623141003242', 'f9f57914a1f54e69b7d2c072c9e3b9e5', '餐品一28', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('35', '20150623141003242', 'd30ec4b869774e02b8c9863286eedd2f', '餐品一29', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('36', '20150623141003242', 'da98f7390778438881d2cc533494692c', '餐品一30', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('37', '20150623141003242', '737bf3cc72a54bcfa40783daa6b8922e', '餐品一31', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:03:23', null, null, '1');
INSERT INTO `shop_dish` VALUES ('38', '20150623141212537', '091fe03c22d141a2bc4e2262abe5c804', '餐品一1', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('39', '20150623141212537', 'f884e80e15684e83afb34e0e80f4471c', '餐品一2', '88', '2', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('40', '20150623141212537', '9ca0ef00ef464cc0be4c62939e8fcf2a', '餐品一3', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('41', '20150623141212537', 'e647293f7e704bec899b7283006b24b7', '餐品一5', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('42', '20150623141212537', '2a69256871b349eba62674e25d576098', '餐品一4', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('43', '20150623141212537', '951334612d47407aaee00ecc447d2439', '餐品一6', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('44', '20150623141212537', '6b33e6ea463b4b20994a46ec99923e6a', '餐品一7', '88', '3', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('45', '20150623141212537', '9ad0b7f9d29d4f8497a3f9bbcf8b3d78', '餐品一8', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('46', '20150623141212537', 'c99498fab48e46d58c181458f9ffddcc', '餐品一9', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('47', '20150623141212537', '41c34baa7e0647eda46ddb9be9c07fed', '餐品一10', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('48', '20150623141212537', 'bc231532766644d2b705a673973c93ca', '餐品一11', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('49', '20150623141212537', 'd71401320bee40aea5996b96d89686ef', '餐品一12', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('50', '20150623141212537', 'e5cfe8db1c5a4392b043387212434f12', '餐品一13', '88', '13', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('51', '20150623141212537', '31876b89db3646128fe34bde1b66ea62', '餐品一14', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('52', '20150623141212537', '99b70164287846b6a7599ae41de862c2', '餐品一15', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('53', '20150623141212537', '402a252425924ad39621beafb1e95c32', '餐品一16', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('54', '20150623141212537', 'd0c648fb1c124a2bad4805f848314118', '餐品一17', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('55', '20150623141212537', '86fdd41ad29a40f59b38bdefb7fc5433', '餐品一18', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('56', '20150623141212537', 'fe30076465db43668f0a6137508226ca', '餐品一19', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('57', '20150623141212537', 'c2d94fa6fe4c48e59b329472ae3b681d', '餐品一20', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('58', '20150623141212537', '3b797864fa90433c9b96be2f5ef8c73c', '餐品一22', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('59', '20150623141212537', '2e344136bd4c44c283c9389bfbd0d07c', '餐品一23', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('60', '20150623141212537', '875af1393ddf4e12ad4196260a88a211', '餐品一24', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('61', '20150623141212537', '53fa95ef85f84c928869dbe8a80cde08', '餐品一25', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('62', '20150623141212537', '93047b39f7ea4a50bef84f7da37a6709', '餐品一26', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('63', '20150623141212537', '4475dc69fd854096986945dcd5ffc107', '餐品一27', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('64', '20150623141212537', '3291e9a55c7b42bcb15f3c5f29c988f1', '餐品一28', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('65', '20150623141212537', '93f189b927f54b3e831b5d4a758cc4b9', '餐品一29', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('66', '20150623141212537', '0c8747bdb44549ea930795d5bc5ad7d2', '餐品一30', '88', '1', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish` VALUES ('67', '20150623141212537', 'ca0111eadafb4bdeaa3d2f61a51a2181', '餐品一31', '88', '12', '微辣', '好吃的菜，有点辣', '2', '2015-06-23 16:34:12', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('1', '苏州江浙', '1', '1', '6', '2015-05-07 15:29:17', '2', '2015-05-08 16:25:45', '1');
INSERT INTO `shop_dish_type` VALUES ('2', '日韩料理', '1', '2', '2', '2015-05-07 15:30:24', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('3', '火锅', '1', '3', '2', '2015-05-07 15:43:12', '1', '2015-05-07 17:07:47', '1');
INSERT INTO `shop_dish_type` VALUES ('4', '小吃快餐', '1', '4', '6', '2015-05-07 15:44:32', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('5', '江浙小吃', '1', '6', '2', '2015-05-07 16:29:56', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('6', '江浙', '1', '9', '1', '2015-05-07 16:30:56', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('7', '烧烤', '1', '7', '2', '2015-05-08 11:22:20', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('8', '烧烤2', '1', '5', '6', '2015-05-08 11:33:40', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('9', '烧烤3', '1', '11', '1', '2015-05-08 11:34:43', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('10', '热菜', '2', '8', '6', '2015-05-08 11:35:34', null, null, '1');
INSERT INTO `shop_dish_type` VALUES ('11', '冷菜', '1', '10', '6', '2015-05-08 11:45:44', '2', '2015-05-08 16:25:45', '1');
INSERT INTO `shop_dish_type` VALUES ('12', '饮料', '2', '12', '1', '2015-05-28 14:58:18', null, null, '2');
INSERT INTO `shop_dish_type` VALUES ('13', '果汁', '2', '13', '6', '2015-05-28 15:16:14', '6', '2015-05-28 15:49:26', '2');
INSERT INTO `shop_info` VALUES ('1', '20150506153039', '麻辣米线', '特色', '江苏', '', '1371904649@qq.com', '13711321123', 'logo', '12', '12', null, null, '1', '2015-05-06 15:30:39', '2', '2015-05-13 15:41:09', '1', null);
INSERT INTO `shop_info` VALUES ('2', '20150506155823', '老妈米线', '特色', '江苏省苏州市姑苏区大新桥巷', '', '137@qq.com', '13711321123', 'logo', '120.641625', '31.321155', null, null, '2', '2015-05-06 15:58:23', '2', '2015-06-25 10:50:46', '1', null);
INSERT INTO `shop_info` VALUES ('3', '20150506160130', '四海游龙', '特色', '江苏', '特色小吃', '137@qq.com', '13711321123', 'logo', '145', '62', null, null, '6', '2015-05-06 16:01:30', '2', '2015-05-06 16:14:55', '1', null);
INSERT INTO `shop_info` VALUES ('4', '20150513110935241', '豪客来', '美味', '中国', '美食', '13719222@qq.com', '13711321123', '/image/default.jpg', '112', '12', null, null, '6', '2015-05-13 11:09:35', null, null, '1', null);
INSERT INTO `shop_info` VALUES ('5', '20150513133331452', '美食街', '特色', '平江2', '特色小吃2', '1372@qq.com', '13711321123', '/image/default.jpg', '12', '12', null, null, '6', '2015-05-13 13:33:31', '1', '2015-05-13 13:37:35', '1', null);
INSERT INTO `shop_info` VALUES ('6', '20150513154226627', 'xf', 'sd', '江苏省苏州市姑苏区中街路200', '', '13@qq.com', '13723431345', '/image/default.jpg', '120.620898', '31.322418', null, null, '2', '2015-05-13 15:42:26', '2', '2015-05-13 15:58:13', '0', null);
INSERT INTO `shop_info` VALUES ('7', '20150623141003242', '商家一', '中餐', '江苏省苏州市姑苏区白塔东路40号', '', '45325585@qq.com', '15151540754', '/upload/shop/images/bd8e48d507c743578e5cc88e4176ec34.png', '120.641657', '31.324801', null, null, '2', '2015-06-23 14:10:03', '0', '2015-06-23 14:10:03', '1', null);
INSERT INTO `shop_info` VALUES ('8', '20150623141212537', '商家二', '中van', '江苏省苏州市姑苏区白塔东路40号', '', '56165465@qq.com', '15151540754', '/upload/shop/images/ea618ff5691d447c928744f2aade990b.png', '120.641684', '31.32474', null, null, '2', '2015-06-23 14:12:12', '0', '2015-06-23 14:12:12', '1', null);
INSERT INTO `time_info` VALUES ('1', '20150506155823', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `time_info` VALUES ('2', '20150506155823', '0', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `time_info` VALUES ('3', '20150506155823', '0', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `time_info` VALUES ('4', '20150506155823', '0', '1', '', '7:30-9:00', '11:30-14:00', '15:30-18:00', '20:00-21:00', '00:00-2:00', '6', '2015-06-23 09:54:39', null, null, '1');
INSERT INTO `time_info` VALUES ('5', '20150506153039', '1', '1', '', '00:30-01:00', '04:00-06:00', '15:30-15:30', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('6', '20150506153039', '2', '1', '', '01:00-06:00', '', '', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('7', '20150506153039', '3', '1', '', '04:30-08:00', '', '', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('8', '20150506153039', '4', '1', '', '02:00-07:00', '', '', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('9', '20150506153039', '5', '1', '', '01:30-06:30', '', '', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('10', '20150506153039', '6', '1', '', '01:00-07:30', '', '', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('11', '20150506153039', '7', '1', '', '01:00-08:30', '', '', '', '', '2', '2015-06-24 15:06:42', null, null, '1');
INSERT INTO `time_info` VALUES ('12', '20150506153039', '1', '1', '', '00:30-01:00', '04:00-06:00', '15:30-15:30', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('13', '20150506153039', '2', '1', '', '01:00-06:00', '', '', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('14', '20150506153039', '3', '1', '', '04:30-08:00', '', '', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('15', '20150506153039', '4', '1', '', '02:00-07:00', '', '', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('16', '20150506153039', '5', '1', '', '01:30-06:30', '', '', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('17', '20150506153039', '6', '1', '', '01:00-07:30', '', '', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('18', '20150506153039', '7', '1', '', '01:00-08:30', '', '', '', '', '2', '2015-06-24 15:50:10', null, null, '1');
INSERT INTO `time_info` VALUES ('19', '20150525145921720', '1', '1', '', '00:00-01:00', '01:30-04:00', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `time_info` VALUES ('20', '20150525145921720', '2', '1', '', '04:00-06:00', '', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `time_info` VALUES ('21', '20150525145921720', '3', '1', '', '00:00-06:30', '', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `time_info` VALUES ('22', '20150525145921720', '4', '1', '', '02:00-12:30', '', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `time_info` VALUES ('23', '20150525145921720', '5', '1', '', '02:00-07:30', '', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `time_info` VALUES ('24', '20150525145921720', '6', '1', '', '02:00-08:00', '', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `time_info` VALUES ('25', '20150525145921720', '7', '1', '', '03:00-07:30', '', '', '', '', '2', '2015-06-24 16:00:53', null, null, '1');
INSERT INTO `user_address` VALUES ('1', '20150508152851965', '徐州', '102', '30', '20150428145032', '2015-05-12 14:07:39', '', null, '1');
INSERT INTO `user_address` VALUES ('2', '20150508152851965', '徐州', '102', '30', '20150428145032', '2015-05-12 14:08:15', '20150428144843', '2015-05-12 15:25:10', '1');
INSERT INTO `user_address` VALUES ('3', '20150508152851965', '苏州', '102', '30', '20150428145032', '2015-05-12 14:09:07', null, null, '1');
INSERT INTO `user_address` VALUES ('4', '20150508152851965', '苏州', '102', '30', '20150428145032', '2015-05-12 14:10:09', '20150428144843', '2015-05-12 15:26:00', '1');
INSERT INTO `user_address` VALUES ('5', '20150428144843', '江苏省', '32', '12', '20150428144843', '2015-05-12 15:09:19', '20150428144843', '2015-05-12 15:25:10', '1');
INSERT INTO `user_address` VALUES ('6', '20150428144843', '国际科技园', '32', '12', '20150428144843', '2015-05-12 15:10:03', null, null, '1');
INSERT INTO `user_address` VALUES ('7', '20150428144843', '科技园', '42', '112', '20150428144843', '2015-05-12 15:10:38', '20150428144843', '2015-05-12 15:26:00', '2');
INSERT INTO `user_info` VALUES ('1', '20150428144843', 'sdf', '23sd2', 'liuqing', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '53100d82c556461eb0b3afc1761a5c59', '1377649', '/upload/user/images/default.png', '0', '1355523', '4821362', '苏州', '112', '23', null, null, null, null, null, '1', '2015-06-26 09:39:41', '2015-06-25 15:19:05', '2');
INSERT INTO `user_info` VALUES ('2', '20150428145032', 'lsd', '4ds', 'liu', '946E554A715E2DCECA744EEEC54759AAAF76795700F581451BF81BC8', '89bbd7fc108549ec95a198d67239f2cf', '137719424', '/upload/user/images/default.png', '0', '13771904', '133482', '平江区', '111', '111', null, null, null, null, null, '2', '2015-06-26 09:39:43', '2015-06-25 15:19:07', '2');
INSERT INTO `user_info` VALUES ('3', '20150429152537', 'v', 'cxv', 'liu3', '1CE0E635F5B44C7810C1489FFA9141A8BF40359F2CCF47ADDCF5096C', '47becd2910fa474dae0847c58360df1d', '149', '/upload/user/images/default.png', '0', '135552374', '1334821362', '苏州', '112', '23', null, null, null, null, null, '2', '2015-06-26 09:39:46', '2015-06-25 15:19:10', '2');
INSERT INTO `user_info` VALUES ('4', '20150505131241', 'et4', 'we', 'me', '7223D0248312822C9E9EF9500EDDD795AB8A20C989F74B1483ECC8DF', 'c2b97345aff64dffb82c650fd62473fb', '13771904649', '/upload/user/images/default.png', '0', '13711911043', '13362@163.com', '江苏', '112', '23', null, null, null, null, null, '4', '2015-06-25 15:53:22', '2015-06-25 15:19:13', '2');
INSERT INTO `user_info` VALUES ('5', '20150505131254', '34', 'sd', 'mee', '8B4CD0A74C67BE890A4000D73B3FE998A9B189A65DD5110B43EB0CD7', '7c10106288ee448293530fcb33dd081f', '1649', '/upload/user/images/default.png', '0', '13711911049', '13362@163.com', '江苏', '112', '23', null, null, null, null, null, '2', '2015-06-26 09:39:48', '2015-06-25 15:19:15', '2');
INSERT INTO `user_info` VALUES ('6', '20150505131348', 'mg', 'ds', 'tt', 'CE1D2F1AB71DC75032111AAD9E1790AB178A41CBB9033BAEADEAD3A2', '252d963133ed478b910808040abccec5', '137719', '/upload/user/images/default.png', '0', '13711911045', '13362@163.com', '徐州', '112', '23', null, null, null, null, null, '2', '2015-06-26 09:39:51', '2015-06-25 15:19:24', '2');
INSERT INTO `user_info` VALUES ('7', '20150508152851965', 'liu', 'qing', 'sa', '2C2571F07529A51BBDEC3540B30B76916A2DEE411137858950A7D803', '1db013542f3b4825914e506424369c86', '13774504212', '/upload/user/images/default.png', '0', '137719049', '121362@qq.com', '苏州', '112', '23', null, null, null, null, null, '1', '2015-06-26 09:39:54', '2015-06-25 15:19:27', '2');
INSERT INTO `user_info` VALUES ('8', '20150521133015609', 'liu', 'qing', '', '68EFBE717A9BDB0EC56CE516DA53B1FE49AC98AB2642907F65E1883C', '6c8f43dc6c2a446da03550cada4659ef', '13771904612', '/upload/user/images/default.png', '0', '13711911040', '133482@qq.com', '苏州', '112', '23', null, null, null, '工商', '12321342432', '2', '2015-06-25 15:53:15', '2015-06-25 15:19:30', '2');
INSERT INTO `user_info` VALUES ('9', '20150623141413701', 'zdd', '', '', '71BDC87B5134B3769027BC62A1EF6A51CFD23D432DC8504A80D32C9C', '21659cb861ac42498fee9760c6aacd43', '', '/upload/user/images/default.png', '0', '18862323144', '', '', '', '', null, null, '2015-06-23 14:14:13', '', '', '1', '2015-06-26 09:39:57', '2015-06-25 15:19:33', '2');
INSERT INTO `user_settle` VALUES ('1', '20150428145032', '0', '1', '12', '0', '农行卡', '321344234', '送餐服务费', '1', '2015-06-04 17:40:56', null, null, '1');
INSERT INTO `user_settle` VALUES ('2', '20150428145032', '0', '1', '30', '0', '支付宝', '321344234', '服务费', '1', '2015-06-04 17:41:49', null, null, '1');
INSERT INTO `user_settle` VALUES ('3', '20150505131348', '0', '1', '56', '0', '工商银行', '321344234', '服务费', '1', '2015-06-04 17:41:51', null, null, '1');
INSERT INTO `user_settle` VALUES ('4', '20150428145032', '0', '1', '81', '0', '农行卡', '321344234', '服务费', '1', '2015-06-04 17:41:52', null, null, '1');
