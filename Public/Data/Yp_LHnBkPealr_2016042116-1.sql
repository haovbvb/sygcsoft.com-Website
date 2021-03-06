-- Yourphp SQL Backup
-- Time:2016-04-21 16:56:52
-- http://www.yourphp.cn 

--
-- Yourphp Table `yourphp_access`
-- 
DROP TABLE IF EXISTS `yourphp_access`;
CREATE TABLE `yourphp_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_area`
-- 
DROP TABLE IF EXISTS `yourphp_area`;
CREATE TABLE `yourphp_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3267 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_article`
-- 
DROP TABLE IF EXISTS `yourphp_article`;
CREATE TABLE `yourphp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(80) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `readgroup` varchar(255) NOT NULL DEFAULT '',
  `readpoint` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`lang`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_attachment`
-- 
DROP TABLE IF EXISTS `yourphp_attachment`;
CREATE TABLE `yourphp_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` varchar(80) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_block`
-- 
DROP TABLE IF EXISTS `yourphp_block`;
CREATE TABLE `yourphp_block` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pos` char(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_cart`
-- 
DROP TABLE IF EXISTS `yourphp_cart`;
CREATE TABLE `yourphp_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sessionid` char(32) NOT NULL DEFAULT '',
  `moduleid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_thumb` varchar(120) NOT NULL DEFAULT '',
  `product_name` varchar(120) NOT NULL DEFAULT '',
  `product_url` varchar(120) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr` text NOT NULL,
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isgift` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessionid` (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_category`
-- 
DROP TABLE IF EXISTS `yourphp_category`;
CREATE TABLE `yourphp_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlruleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `presentpoint` tinyint(3) NOT NULL DEFAULT '0',
  `chargepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repeatchargedays` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_config`
-- 
DROP TABLE IF EXISTS `yourphp_config`;
CREATE TABLE `yourphp_config` (
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_dbsource`
-- 
DROP TABLE IF EXISTS `yourphp_dbsource`;
CREATE TABLE `yourphp_dbsource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(20) NOT NULL DEFAULT '',
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `dbtablepre` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_download`
-- 
DROP TABLE IF EXISTS `yourphp_download`;
CREATE TABLE `yourphp_download` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) unsigned NOT NULL,
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `file` varchar(80) NOT NULL DEFAULT '',
  `ext` varchar(10) NOT NULL DEFAULT '',
  `size` varchar(10) NOT NULL DEFAULT '',
  `downs` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_feedback`
-- 
DROP TABLE IF EXISTS `yourphp_feedback`;
CREATE TABLE `yourphp_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_field`
-- 
DROP TABLE IF EXISTS `yourphp_field`;
CREATE TABLE `yourphp_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_guestbook`
-- 
DROP TABLE IF EXISTS `yourphp_guestbook`;
CREATE TABLE `yourphp_guestbook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `reply_content` mediumtext NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_kefu`
-- 
DROP TABLE IF EXISTS `yourphp_kefu`;
CREATE TABLE `yourphp_kefu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `code` mediumtext NOT NULL,
  `skin` varchar(3) NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_lang`
-- 
DROP TABLE IF EXISTS `yourphp_lang`;
CREATE TABLE `yourphp_lang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `path` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_link`
-- 
DROP TABLE IF EXISTS `yourphp_link`;
CREATE TABLE `yourphp_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL,
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_log`
-- 
DROP TABLE IF EXISTS `yourphp_log`;
CREATE TABLE `yourphp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_menu`
-- 
DROP TABLE IF EXISTS `yourphp_menu`;
CREATE TABLE `yourphp_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_module`
-- 
DROP TABLE IF EXISTS `yourphp_module`;
CREATE TABLE `yourphp_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_node`
-- 
DROP TABLE IF EXISTS `yourphp_node`;
CREATE TABLE `yourphp_node` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_online`
-- 
DROP TABLE IF EXISTS `yourphp_online`;
CREATE TABLE `yourphp_online` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL,
  `lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_order`
-- 
DROP TABLE IF EXISTS `yourphp_order`;
CREATE TABLE `yourphp_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` bigint(19) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_sn` varchar(100) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_code` varchar(120) NOT NULL DEFAULT '',
  `amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `invoice_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `accept_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `point` int(5) unsigned NOT NULL DEFAULT '0',
  `invoice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `invoice_title` varchar(100) NOT NULL DEFAULT '',
  `postmessage` varchar(255) NOT NULL DEFAULT '',
  `note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_order_data`
-- 
DROP TABLE IF EXISTS `yourphp_order_data`;
CREATE TABLE `yourphp_order_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `moduleid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_thumb` varchar(120) NOT NULL DEFAULT '',
  `product_name` varchar(120) NOT NULL DEFAULT '',
  `product_url` varchar(120) NOT NULL DEFAULT '',
  `product_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr` text NOT NULL,
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isgift` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `userid` (`userid`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_page`
-- 
DROP TABLE IF EXISTS `yourphp_page`;
CREATE TABLE `yourphp_page` (
  `id` smallint(5) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(250) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_payment`
-- 
DROP TABLE IF EXISTS `yourphp_payment`;
CREATE TABLE `yourphp_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_fee_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_config` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_picture`
-- 
DROP TABLE IF EXISTS `yourphp_picture`;
CREATE TABLE `yourphp_picture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `pics` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_posid`
-- 
DROP TABLE IF EXISTS `yourphp_posid`;
CREATE TABLE `yourphp_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_product`
-- 
DROP TABLE IF EXISTS `yourphp_product`;
CREATE TABLE `yourphp_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `url` varchar(150) NOT NULL DEFAULT '',
  `xinghao` varchar(30) NOT NULL DEFAULT '',
  `pics` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`status`,`lang`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_role`
-- 
DROP TABLE IF EXISTS `yourphp_role`;
CREATE TABLE `yourphp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL,
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL,
  `allowattachment` tinyint(1) NOT NULL,
  `maxpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxmessagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_role_user`
-- 
DROP TABLE IF EXISTS `yourphp_role_user`;
CREATE TABLE `yourphp_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_shipping`
-- 
DROP TABLE IF EXISTS `yourphp_shipping`;
CREATE TABLE `yourphp_shipping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `first_weight` int(11) unsigned NOT NULL DEFAULT '0',
  `second_weight` int(11) unsigned NOT NULL DEFAULT '0',
  `first_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `second_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '99',
  `is_insure` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure_fee` int(11) unsigned NOT NULL DEFAULT '0',
  `insure_low_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `price_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_slide`
-- 
DROP TABLE IF EXISTS `yourphp_slide`;
CREATE TABLE `yourphp_slide` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `flashfile` varchar(150) NOT NULL DEFAULT '',
  `xmlfile` varchar(150) NOT NULL DEFAULT '',
  `tpl` varchar(30) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_slide_data`
-- 
DROP TABLE IF EXISTS `yourphp_slide_data`;
CREATE TABLE `yourphp_slide_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `small` varchar(150) NOT NULL DEFAULT '',
  `pic` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_tags`
-- 
DROP TABLE IF EXISTS `yourphp_tags`;
CREATE TABLE `yourphp_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` varchar(30) NOT NULL DEFAULT '',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`moduleid`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_tags_data`
-- 
DROP TABLE IF EXISTS `yourphp_tags_data`;
CREATE TABLE `yourphp_tags_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`tagid`),
  KEY `tagid` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_type`
-- 
DROP TABLE IF EXISTS `yourphp_type`;
CREATE TABLE `yourphp_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_urlrule`
-- 
DROP TABLE IF EXISTS `yourphp_urlrule`;
CREATE TABLE `yourphp_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showurlrule` varchar(255) NOT NULL DEFAULT '',
  `showexample` varchar(255) NOT NULL DEFAULT '',
  `listurlrule` varchar(255) NOT NULL DEFAULT '',
  `listexample` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_user`
-- 
DROP TABLE IF EXISTS `yourphp_user`;
CREATE TABLE `yourphp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `web_url` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_logintime` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_ip` char(15) NOT NULL DEFAULT '',
  `last_ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- Yourphp Table `yourphp_user_address`
-- 
DROP TABLE IF EXISTS `yourphp_user_address`;
CREATE TABLE `yourphp_user_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `yourphp_area` VALUES ('1','0','ï»¿åäº\¬','0');
INSERT INTO `yourphp_area` VALUES ('2','1','åäº¬å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3','2','ä¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('4','2','è¥¿åå\º','0');
INSERT INTO `yourphp_area` VALUES ('5','2','å´æå\º','0');
INSERT INTO `yourphp_area` VALUES ('6','2','å®£æ­¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('7','2','æé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('8','2','ä¸°å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('9','2','ç³æ¯å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('10','2','æµ·æ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('11','2','é¨å¤´æ²åº','0');
INSERT INTO `yourphp_area` VALUES ('12','2','æ¿å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('13','2','éå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('14','2','é¡ºä¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('15','2','æå¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('16','2','å¤§å´å\º','0');
INSERT INTO `yourphp_area` VALUES ('17','2','ææåº','0');
INSERT INTO `yourphp_area` VALUES ('18','2','å¹³è°·å\º','0');
INSERT INTO `yourphp_area` VALUES ('19','2','å¯äºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('20','2','å»¶åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('21','0','ä¸æµ·','0');
INSERT INTO `yourphp_area` VALUES ('22','21','ä¸æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('23','22','é»æµ¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('24','22','å¢æ¹¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('25','22','å¾æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('26','22','é¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('27','22','éå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('28','22','æ®éå\º','0');
INSERT INTO `yourphp_area` VALUES ('29','22','é¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('30','22','è¹å£å\º','0');
INSERT INTO `yourphp_area` VALUES ('31','22','æ¨æµ¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('32','22','éµè¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('33','22','å®å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('34','22','åå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('35','22','æµ¦ä¸æ°åº','0');
INSERT INTO `yourphp_area` VALUES ('36','22','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('37','22','æ¾æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('38','22','éæµ¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('39','22','åæ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('40','22','å¥è´¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('41','22','å´æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('42','0','å¤©æ´¥','0');
INSERT INTO `yourphp_area` VALUES ('43','42','å¤©æ´¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('44','43','åå¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('45','43','æ²³ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('46','43','æ²³è¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('47','43','åå¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('48','43','æ²³åå\º','0');
INSERT INTO `yourphp_area` VALUES ('49','43','çº¢æ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('50','43','å¡æ²½å\º','0');
INSERT INTO `yourphp_area` VALUES ('51','43','æ±æ²½å\º','0');
INSERT INTO `yourphp_area` VALUES ('52','43','å¤§æ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('53','43','ä¸ä¸½å\º','0');
INSERT INTO `yourphp_area` VALUES ('54','43','è¥¿éå\º','0');
INSERT INTO `yourphp_area` VALUES ('55','43','æ´¥åå\º','0');
INSERT INTO `yourphp_area` VALUES ('56','43','åè¾°å\º','0');
INSERT INTO `yourphp_area` VALUES ('57','43','æ­¦æ¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('58','43','å®å»å\º','0');
INSERT INTO `yourphp_area` VALUES ('59','43','å®æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('60','43','éæµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('61','43','èå¿','0');
INSERT INTO `yourphp_area` VALUES ('62','0','éåº','0');
INSERT INTO `yourphp_area` VALUES ('63','62','éåºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('64','63','ä¸å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('65','63','æ¶ªéµå\º','0');
INSERT INTO `yourphp_area` VALUES ('66','63','æ¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('67','63','å¤§æ¸¡å£åº','0');
INSERT INTO `yourphp_area` VALUES ('68','63','æ±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('69','63','æ²åªååº','0');
INSERT INTO `yourphp_area` VALUES ('70','63','ä¹é¾å¡åº','0');
INSERT INTO `yourphp_area` VALUES ('71','63','åå²¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('72','63','åç¢å\º','0');
INSERT INTO `yourphp_area` VALUES ('73','63','ä¸çå\º','0');
INSERT INTO `yourphp_area` VALUES ('74','63','åæ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('75','63','æ¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('76','63','å·´åå\º','0');
INSERT INTO `yourphp_area` VALUES ('77','63','é»æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('78','63','é¿å¯¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('79','63','ç¶¦æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('80','63','æ½¼åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('81','63','éæ¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('82','63','å¤§è¶³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('83','63','è£æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('84','63','ç§å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('85','63','æ¢å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('86','63','åå£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('87','63','ä¸°é½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('88','63','å«æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('89','63','æ­¦éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('90','63','å¿ å¿','0');
INSERT INTO `yourphp_area` VALUES ('91','63','å¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('92','63','äºé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('93','63','å¥èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('94','63','å·«å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('95','63','å·«æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('96','63','ç³æ±åå®¶æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('97','63','ç§å±±åå®¶æèæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('98','63','éé³åå®¶æèæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('99','63','å½­æ°´èæåå®¶æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('100','63','æ±æ´¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('101','63','åå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('102','63','æ°¸å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('103','63','åå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('104','0','å®å¾½','0');
INSERT INTO `yourphp_area` VALUES ('105','104','åè¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('106','105','ç¶æµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('107','105','åºé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('108','105','èå±±åº','0');
INSERT INTO `yourphp_area` VALUES ('109','105','åæ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('110','105','é¿ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('111','105','è¥ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('112','105','è¥è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('113','104','å®åºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('114','113','è¿æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('115','113','å¤§è§å\º','0');
INSERT INTO `yourphp_area` VALUES ('116','113','éåº','0');
INSERT INTO `yourphp_area` VALUES ('117','113','æå®å¿','0');
INSERT INTO `yourphp_area` VALUES ('118','113','æé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('119','113','æ½å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('120','113','å¤ªæ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('121','113','å®¿æ¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('122','113','ææ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('123','113','å²³è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('124','113','æ¡åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('125','104','èå å¸\','0');
INSERT INTO `yourphp_area` VALUES ('126','125','é¾å­æ¹åº','0');
INSERT INTO `yourphp_area` VALUES ('127','125','èå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('128','125','ç¦¹ä¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('129','125','æ·®ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('130','125','æè¿å¿','0');
INSERT INTO `yourphp_area` VALUES ('131','125','äºæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('132','125','åºéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('133','104','äº³å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('134','133','è°¯åå\º','0');
INSERT INTO `yourphp_area` VALUES ('135','133','æ¶¡é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('136','133','èåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('137','133','å©è¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('138','104','å·¢æ¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('139','138','å±å·¢å\º','0');
INSERT INTO `yourphp_area` VALUES ('140','138','åºæ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('141','138','æ ä¸ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('142','138','å«å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('143','138','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('144','104','æ± å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('145','144','è´µæ± å\º','0');
INSERT INTO `yourphp_area` VALUES ('146','144','ä¸è³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('147','144','ç³å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('148','144','éé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('149','104','æ»å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('150','149','ççå\º','0');
INSERT INTO `yourphp_area` VALUES ('151','149','åè°¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('152','149','æ¥å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('153','149','å¨æ¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('154','149','å®è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('155','149','å¤é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('156','149','å¤©é¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('157','149','æåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('158','104','éé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('159','158','é¢å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('160','158','é¢ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('161','158','é¢æ³å\º','0');
INSERT INTO `yourphp_area` VALUES ('162','158','ä¸´æ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('163','158','å¤ªåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('164','158','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('165','158','é¢ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('166','158','çé¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('167','104','æ·®åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('168','167','æéå\º','0');
INSERT INTO `yourphp_area` VALUES ('169','167','ç¸å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('170','167','çå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('171','167','æ¿æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('172','104','æ·®åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('173','172','å¤§éåº','0');
INSERT INTO `yourphp_area` VALUES ('174','172','ç°å®¶åºµåº','0');
INSERT INTO `yourphp_area` VALUES ('175','172','è°¢å®¶éåº','0');
INSERT INTO `yourphp_area` VALUES ('176','172','å«å¬å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('177','172','æ½éå\º','0');
INSERT INTO `yourphp_area` VALUES ('178','172','å¤å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('179','104','é»å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('180','179','å±¯æºªå\º','0');
INSERT INTO `yourphp_area` VALUES ('181','179','é»å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('182','179','å¾½å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('183','179','æ­å¿','0');
INSERT INTO `yourphp_area` VALUES ('184','179','ä¼å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('185','179','é»å¿','0');
INSERT INTO `yourphp_area` VALUES ('186','179','ç¥é¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('187','104','å­å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('188','187','éå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('189','187','è£å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('190','187','å¯¿å¿','0');
INSERT INTO `yourphp_area` VALUES ('191','187','éé±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('192','187','èåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('193','187','éå¯¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('194','187','éå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('195','104','é©¬éå±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('196','195','éå®¶åºåº','0');
INSERT INTO `yourphp_area` VALUES ('197','195','è±å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('198','195','é¨å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('199','195','å½æ¶å\¿','0');
INSERT INTO `yourphp_area` VALUES ('200','104','å®¿å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('201','200','å¢æ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('202','200','ç å±±å¿','0');
INSERT INTO `yourphp_area` VALUES ('203','200','è§å¿','0');
INSERT INTO `yourphp_area` VALUES ('204','200','çµç§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('205','200','æ³å¿','0');
INSERT INTO `yourphp_area` VALUES ('206','104','ééµå¸\','0');
INSERT INTO `yourphp_area` VALUES ('207','206','éå®å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('208','206','ç®å­å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('209','206','éåº','0');
INSERT INTO `yourphp_area` VALUES ('210','206','ééµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('211','104','èæ¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('212','211','éæ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('213','211','é©¬å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('214','211','æ°èå\º','0');
INSERT INTO `yourphp_area` VALUES ('215','211','é¸ æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('216','211','èæ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('217','211','ç¹æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('218','211','åéµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('219','104','å®£åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('220','219','å®£å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('221','219','éæºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('222','219','å¹¿å¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('223','219','æ³¾å¿','0');
INSERT INTO `yourphp_area` VALUES ('224','219','ç»©æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('225','219','æå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('226','219','å®å½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('227','0','ç¦å»º','0');
INSERT INTO `yourphp_area` VALUES ('228','227','ç¦å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('229','228','é¼æ¥¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('230','228','å°æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('231','228','ä»å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('232','228','é©¬å°¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('233','228','æå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('234','228','é½ä¾¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('235','228','è¿æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('236','228','ç½æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('237','228','é½æ¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('238','228','æ°¸æ³°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('239','228','å¹³æ½­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('240','228','ç¦æ¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('241','228','é¿ä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('242','227','é¾å²©å¸\','0');
INSERT INTO `yourphp_area` VALUES ('243','242','æ°ç½å\º','0');
INSERT INTO `yourphp_area` VALUES ('244','242','é¿æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('245','242','æ°¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('246','242','ä¸æ­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('247','242','æ­¦å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('248','242','è¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('249','242','æ¼³å¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('250','227','åå¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('251','250','å»¶å¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('252','250','é¡ºæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('253','250','æµ¦åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('254','250','åæ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('255','250','æ¾æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('256','250','æ¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('257','250','éµæ­¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('258','250','æ­¦å¤·å±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('259','250','å»ºç¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('260','250','å»ºé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('261','227','å®å¾·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('262','261','èåå\º','0');
INSERT INTO `yourphp_area` VALUES ('263','261','éæµ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('264','261','å¤ç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('265','261','å±åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('266','261','å¯¿å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('267','261','å¨å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('268','261','æè£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('269','261','ç¦å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('270','261','ç¦é¼å¸\','0');
INSERT INTO `yourphp_area` VALUES ('271','227','èç°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('272','271','åå¢å\º','0');
INSERT INTO `yourphp_area` VALUES ('273','271','æ¶µæ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('274','271','èåå\º','0');
INSERT INTO `yourphp_area` VALUES ('275','271','ç§å±¿åº','0');
INSERT INTO `yourphp_area` VALUES ('276','271','ä»æ¸¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('277','227','æ³å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('278','277','é²¤åå\º','0');
INSERT INTO `yourphp_area` VALUES ('279','277','ä¸°æ³½å\º','0');
INSERT INTO `yourphp_area` VALUES ('280','277','æ´æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('281','277','æ³æ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('282','277','æ å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('283','277','å®æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('284','277','æ°¸æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('285','277','å¾·åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('286','277','éé¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('287','277','ç³ç®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('288','277','ææ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('289','277','åå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('290','227','ä¸æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('291','290','æ¢åå\º','0');
INSERT INTO `yourphp_area` VALUES ('292','290','ä¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('293','290','ææºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('294','290','æ¸æµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('295','290','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('296','290','å¤§ç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('297','290','å°¤æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('298','290','æ²å¿','0');
INSERT INTO `yourphp_area` VALUES ('299','290','å°ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('300','290','æ³°å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('301','290','å»ºå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('302','290','æ°¸å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('303','227','å¦é¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('304','303','ææå\º','0');
INSERT INTO `yourphp_area` VALUES ('305','303','æµ·æ²§å\º','0');
INSERT INTO `yourphp_area` VALUES ('306','303','æ¹éå\º','0');
INSERT INTO `yourphp_area` VALUES ('307','303','éç¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('308','303','åå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('309','303','ç¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('310','227','æ¼³å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('311','310','èåå\º','0');
INSERT INTO `yourphp_area` VALUES ('312','310','é¾æå\º','0');
INSERT INTO `yourphp_area` VALUES ('313','310','äºéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('314','310','æ¼³æµ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('315','310','è¯å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('316','310','é¿æ³°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('317','310','ä¸å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('318','310','åéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('319','310','å¹³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('320','310','åå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('321','310','é¾æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('322','0','çè','0');
INSERT INTO `yourphp_area` VALUES ('323','322','å°å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('324','323','åå³å\º','0');
INSERT INTO `yourphp_area` VALUES ('325','323','ä¸éæ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('326','323','è¥¿åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('327','323','å®å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('328','323','çº¢å¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('329','323','æ°¸ç»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('330','323','çå°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('331','323','æ¦ä¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('332','322','ç½é¶å¸\','0');
INSERT INTO `yourphp_area` VALUES ('333','332','ç½é¶å\º','0');
INSERT INTO `yourphp_area` VALUES ('334','332','å¹³å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('335','332','éè¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('336','332','ä¼å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('337','332','æ¯æ³°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('338','322','å®è¥¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('339','338','å®å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('340','338','éæ¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('341','338','éè¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('342','338','æ¸­æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('343','338','ä¸´æ´®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('344','338','æ¼³å¿','0');
INSERT INTO `yourphp_area` VALUES ('345','338','å²·å¿','0');
INSERT INTO `yourphp_area` VALUES ('346','322','çåèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('347','346','åä½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('348','346','ä¸´æ½­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('349','346','åå°¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('350','346','èæ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('351','346','è¿­é¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('352','346','çæ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('353','346','ç¢æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('354','346','å¤æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('355','322','åå³ªå³å¸','0');
INSERT INTO `yourphp_area` VALUES ('356','322','éæå¸\','0');
INSERT INTO `yourphp_area` VALUES ('357','356','éå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('358','356','æ°¸æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('359','322','éæ³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('360','359','èå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('361','359','éå¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('362','359','å®è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('363','359','èåèå¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('364','359','é¿åå¡åè¨åæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('365','359','çé¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('366','359','æ¦çå¸\','0');
INSERT INTO `yourphp_area` VALUES ('367','322','ä¸´å¤åæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('368','367','ä¸´å¤å¸\','0');
INSERT INTO `yourphp_area` VALUES ('369','367','ä¸´å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('370','367','åº·ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('371','367','æ°¸éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('372','367','å¹¿æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('373','367','åæ¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('374','367','ä¸ä¹¡æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('375','367','ç§¯ç³å±±ä¿å®æä¸ä¹¡ææææèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('376','322','éåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('377','376','æ­¦é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('378','376','æå¿','0');
INSERT INTO `yourphp_area` VALUES ('379','376','æå¿','0');
INSERT INTO `yourphp_area` VALUES ('380','376','å®æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('381','376','åº·å¿','0');
INSERT INTO `yourphp_area` VALUES ('382','376','è¥¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('383','376','ç¤¼å¿','0');
INSERT INTO `yourphp_area` VALUES ('384','376','å¾½å¿','0');
INSERT INTO `yourphp_area` VALUES ('385','376','ä¸¤å½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('386','322','å¹³åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('387','386','å´å³å\º','0');
INSERT INTO `yourphp_area` VALUES ('388','386','æ³¾å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('389','386','çµå°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('390','386','å´ä¿¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('391','386','åäº­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('392','386','åºæµªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('393','386','éå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('394','322','åºé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('395','394','è¥¿å³°å\º','0');
INSERT INTO `yourphp_area` VALUES ('396','394','åºåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('397','394','ç¯å¿','0');
INSERT INTO `yourphp_area` VALUES ('398','394','åæ± å\¿','0');
INSERT INTO `yourphp_area` VALUES ('399','394','åæ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('400','394','æ­£å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('401','394','å®å¿','0');
INSERT INTO `yourphp_area` VALUES ('402','394','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('403','322','å¤©æ°´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('404','403','ç§¦åå\º','0');
INSERT INTO `yourphp_area` VALUES ('405','403','åéå\º','0');
INSERT INTO `yourphp_area` VALUES ('406','403','æ¸æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('407','403','ç§¦å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('408','403','çè°·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('409','403','æ­¦å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('410','403','å¼ å®¶å·åæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('411','322','æ­¦å¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('412','411','åå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('413','411','æ°å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('414','411','å¤æµªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('415','411','å¤©ç¥èæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('416','322','å¼ æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('417','416','çå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('418','416','èåè£åºæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('419','416','æ°ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('420','416','ä¸´æ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('421','416','é«å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('422','416','å±±ä¸¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('423','0','å¹¿ä¸','0');
INSERT INTO `yourphp_area` VALUES ('424','423','å¹¿å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('425','424','ä¸å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('426','424','èæ¹¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('427','424','è¶ç§å\º','0');
INSERT INTO `yourphp_area` VALUES ('428','424','æµ·ç å\º','0');
INSERT INTO `yourphp_area` VALUES ('429','424','å¤©æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('430','424','è³æå\º','0');
INSERT INTO `yourphp_area` VALUES ('431','424','ç½äºå\º','0');
INSERT INTO `yourphp_area` VALUES ('432','424','é»åå\º','0');
INSERT INTO `yourphp_area` VALUES ('433','424','çªç¦ºå\º','0');
INSERT INTO `yourphp_area` VALUES ('434','424','è±é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('435','424','å¢åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('436','424','ä»åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('437','423','æ½®å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('438','437','æ¹æ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('439','437','æ½®å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('440','437','é¥¶å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('441','423','ä¸èå¸\','0');
INSERT INTO `yourphp_area` VALUES ('442','423','ä½å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('443','442','ç¦åå\º','0');
INSERT INTO `yourphp_area` VALUES ('444','442','åæµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('445','442','é¡ºå¾·å\º','0');
INSERT INTO `yourphp_area` VALUES ('446','442','ä¸æ°´å\º','0');
INSERT INTO `yourphp_area` VALUES ('447','442','é«æå\º','0');
INSERT INTO `yourphp_area` VALUES ('448','423','æ²³æºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('449','448','æºåå\º','0');
INSERT INTO `yourphp_area` VALUES ('450','448','ç´«éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('451','448','é¾å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('452','448','è¿å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('453','448','åå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('454','448','ä¸æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('455','423','æ å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('456','455','æ åå\º','0');
INSERT INTO `yourphp_area` VALUES ('457','455','æ é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('458','455','åç½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('459','455','æ ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('460','455','é¾é¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('461','423','æ±é¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('462','461','è¬æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('463','461','æ±æµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('464','461','æ°ä¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('465','461','å°å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('466','461','å¼å¹³å¸','0');
INSERT INTO `yourphp_area` VALUES ('467','461','é¹¤å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('468','461','æ©å¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('469','423','æ­é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('470','469','æ¦åå\º','0');
INSERT INTO `yourphp_area` VALUES ('471','469','æ­ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('472','469','æ­è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('473','469','æ æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('474','469','æ®å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('475','423','èåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('476','475','èåå\º','0');
INSERT INTO `yourphp_area` VALUES ('477','475','èæ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('478','475','çµç½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('479','475','é«å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('480','475','åå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('481','475','ä¿¡å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('482','423','æ¢æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('483','423','æ¢å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('484','483','æ¢å¿','0');
INSERT INTO `yourphp_area` VALUES ('485','483','å¤§åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('486','483','ä¸°é¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('487','483','äºåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('488','483','å¹³è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('489','483','èå²­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('490','483','å´å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('491','423','æ¸è¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('492','491','æ¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('493','491','ä½åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('494','491','é³å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('495','491','è¿å±±å£®æç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('496','491','è¿åç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('497','491','æ¸æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('498','491','è±å¾·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('499','491','è¿å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('500','423','æ±å¤´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('501','500','é¾æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('502','500','éå¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('503','500','æ¿ æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('504','500','æ½®é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('505','500','æ½®åå\º','0');
INSERT INTO `yourphp_area` VALUES ('506','500','æ¾æµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('507','500','åæ¾³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('508','423','æ±å°¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('509','508','ååº','0');
INSERT INTO `yourphp_area` VALUES ('510','508','æµ·ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('511','508','éæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('512','508','éä¸°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('513','423','é¶å³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('514','513','æ­¦æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('515','513','æµæ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('516','513','æ²æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('517','513','å§å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('518','513','ä»åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('519','513','ç¿æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('520','513','ä¹³æºç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('521','513','æ°ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('522','513','ä¹æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('523','513','åéå¸\','0');
INSERT INTO `yourphp_area` VALUES ('524','423','æ·±å³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('525','524','ç½æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('526','524','ç¦ç°å\º','0');
INSERT INTO `yourphp_area` VALUES ('527','524','åå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('528','524','å®å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('529','524','é¾å²å\º','0');
INSERT INTO `yourphp_area` VALUES ('530','524','çç°å\º','0');
INSERT INTO `yourphp_area` VALUES ('531','423','é³æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('532','531','æ±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('533','531','é³è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('534','531','é³ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('535','531','é³æ¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('536','423','äºæµ®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('537','536','äºåå\º','0');
INSERT INTO `yourphp_area` VALUES ('538','536','æ°å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('539','536','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('540','536','äºå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('541','536','ç½å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('542','423','æ¹æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('543','542','èµ¤åå\º','0');
INSERT INTO `yourphp_area` VALUES ('544','542','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('545','542','å¡å¤´å\º','0');
INSERT INTO `yourphp_area` VALUES ('546','542','éº»ç« å\º','0');
INSERT INTO `yourphp_area` VALUES ('547','542','éæºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('548','542','å¾é»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('549','542','å»æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('550','542','é·å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('551','542','å´å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('552','423','èåºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('553','552','ç«¯å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('554','552','é¼æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('555','552','å¹¿å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('556','552','æéå¿','0');
INSERT INTO `yourphp_area` VALUES ('557','552','å°å¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('558','552','å¾·åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('559','552','é«è¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('560','552','åä¼å¸\','0');
INSERT INTO `yourphp_area` VALUES ('561','423','ä¸­å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('562','423','ç æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('563','562','é¦æ´²å\º','0');
INSERT INTO `yourphp_area` VALUES ('564','562','æé¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('565','562','éæ¹¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('566','0','å¹¿è¥¿','0');
INSERT INTO `yourphp_area` VALUES ('567','566','åå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('568','567','å´å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('569','567','éç§å\º','0');
INSERT INTO `yourphp_area` VALUES ('570','567','æ±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('571','567','è¥¿ä¹¡å¡åº','0');
INSERT INTO `yourphp_area` VALUES ('572','567','è¯åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('573','567','éå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('574','567','æ­¦é¸£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('575','567','éå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('576','567','é©¬å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('577','567','ä¸æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('578','567','å®¾é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('579','567','æ¨ªå¿','0');
INSERT INTO `yourphp_area` VALUES ('580','566','ç¾è²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('581','580','å³æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('582','580','ç°é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('583','580','ç°ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('584','580','å¹³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('585','580','å¾·ä¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('586','580','éè¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('587','580','é£å¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('588','580','åäºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('589','580','ä¹ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('590','580','ç°æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('591','580','è¥¿æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('592','580','éæåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('593','566','åæµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('594','593','æµ·åå\º','0');
INSERT INTO `yourphp_area` VALUES ('595','593','é¶æµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('596','593','éå±±æ¸¯åº','0');
INSERT INTO `yourphp_area` VALUES ('597','593','åæµ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('598','566','å´å·¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('599','598','æ±æ´²å\º','0');
INSERT INTO `yourphp_area` VALUES ('600','598','æ¶ç»¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('601','598','å®æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('602','598','é¾å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('603','598','å¤§æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('604','598','å¤©ç­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('605','598','å­ç¥¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('606','566','é²åæ¸¯å¸','0');
INSERT INTO `yourphp_area` VALUES ('607','606','æ¸¯å£å\º','0');
INSERT INTO `yourphp_area` VALUES ('608','606','é²åå\º','0');
INSERT INTO `yourphp_area` VALUES ('609','606','ä¸æå¿','0');
INSERT INTO `yourphp_area` VALUES ('610','606','ä¸å´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('611','566','è´µæ¸¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('612','611','æ¸¯åå\º','0');
INSERT INTO `yourphp_area` VALUES ('613','611','æ¸¯åå\º','0');
INSERT INTO `yourphp_area` VALUES ('614','611','è¦å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('615','611','å¹³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('616','611','æ¡å¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('617','566','æ¡æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('618','617','ç§å³°åº','0');
INSERT INTO `yourphp_area` VALUES ('619','617','å å½©å\º','0');
INSERT INTO `yourphp_area` VALUES ('620','617','è±¡å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('621','617','ä¸æå\º','0');
INSERT INTO `yourphp_area` VALUES ('622','617','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('623','617','é³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('624','617','ä¸´æ¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('625','617','çµå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('626','617','å¨å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('627','617','å´å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('628','617','æ°¸ç¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('629','617','çé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('630','617','é¾èåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('631','617','èµæºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('632','617','å¹³ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('633','617','èè²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('634','617','æ­åç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('635','566','æ²³æ± å¸\','0');
INSERT INTO `yourphp_area` VALUES ('636','635','éåæ±åº','0');
INSERT INTO `yourphp_area` VALUES ('637','635','åä¸¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('638','635','å¤©å³¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('639','635','å¤å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('640','635','ä¸å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('641','635','ç½åä»«ä½¬æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('642','635','ç¯æ±æ¯åæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('643','635','å·´é©¬ç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('644','635','é½å®ç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('645','635','å¤§åç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('646','635','å®å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('647','566','è´ºå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('648','647','å«æ­¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('649','647','æ­å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('650','647','éå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('651','647','å¯å·ç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('652','566','æ¥å®¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('653','652','å´å®¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('654','652','å¿»åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('655','652','è±¡å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('656','652','æ­¦å®£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('657','652','éç§ç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('658','652','åå±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('659','566','æ³å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('660','659','åä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('661','659','é±¼å³°å\º','0');
INSERT INTO `yourphp_area` VALUES ('662','659','æ³åå\º','0');
INSERT INTO `yourphp_area` VALUES ('663','659','æ³åå\º','0');
INSERT INTO `yourphp_area` VALUES ('664','659','æ³æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('665','659','æ³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('666','659','é¹¿å¯¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('667','659','èå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('668','659','èæ°´èæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('669','659','ä¸æ±ä¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('670','566','é¦å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('671','670','é¦åå\º','0');
INSERT INTO `yourphp_area` VALUES ('672','670','é¦åå\º','0');
INSERT INTO `yourphp_area` VALUES ('673','670','çµå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('674','670','æµ¦åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('675','566','æ¢§å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('676','675','ä¸ç§å\º','0');
INSERT INTO `yourphp_area` VALUES ('677','675','è¶å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('678','675','é¿æ´²å\º','0');
INSERT INTO `yourphp_area` VALUES ('679','675','èæ¢§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('680','675','è¤å¿','0');
INSERT INTO `yourphp_area` VALUES ('681','675','èå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('682','675','å²æºªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('683','566','çæå¸\','0');
INSERT INTO `yourphp_area` VALUES ('684','683','çå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('685','683','å®¹å¿','0');
INSERT INTO `yourphp_area` VALUES ('686','683','éå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('687','683','åç½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('688','683','å´ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('689','683','åæµå¸\','0');
INSERT INTO `yourphp_area` VALUES ('690','0','è´µå·','0');
INSERT INTO `yourphp_area` VALUES ('691','690','è´µé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('692','691','åæå\º','0');
INSERT INTO `yourphp_area` VALUES ('693','691','äºå²©å\º','0');
INSERT INTO `yourphp_area` VALUES ('694','691','è±æºªå\º','0');
INSERT INTO `yourphp_area` VALUES ('695','691','ä¹å½å\º','0');
INSERT INTO `yourphp_area` VALUES ('696','691','ç½äºå\º','0');
INSERT INTO `yourphp_area` VALUES ('697','691','å°æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('698','691','å¼é³å¿','0');
INSERT INTO `yourphp_area` VALUES ('699','691','æ¯ç½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('700','691','ä¿®æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('701','691','æ¸éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('702','690','å®é¡ºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('703','702','è¥¿ç§å\º','0');
INSERT INTO `yourphp_area` VALUES ('704','702','å¹³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('705','702','æ®å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('706','702','éå®å¸ä¾æèæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('707','702','å³å²­å¸ä¾æèæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('708','702','ç´«äºèæå¸ä¾æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('709','690','æ¯èå°åº','0');
INSERT INTO `yourphp_area` VALUES ('710','709','æ¯èå¸\','0');
INSERT INTO `yourphp_area` VALUES ('711','709','å¤§æ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('712','709','é»è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('713','709','éæ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('714','709','ç»éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('715','709','çº³éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('716','709','å¨å®å½æåæèæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('717','709','èµ«ç« å\¿','0');
INSERT INTO `yourphp_area` VALUES ('718','690','å­çæ°´å¸','0');
INSERT INTO `yourphp_area` VALUES ('719','718','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('720','718','å­æç¹åº','0');
INSERT INTO `yourphp_area` VALUES ('721','718','æ°´åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('722','718','çå¿','0');
INSERT INTO `yourphp_area` VALUES ('723','690','é»ä¸åèæä¾æèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('724','723','å¯éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('725','723','é»å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('726','723','æ½ç§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('727','723','ä¸ç©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('728','723','éè¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('729','723','å²å·©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('730','723','å¤©æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('731','723','é¦å±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('732','723','åæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('733','723','å°æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('734','723','é»å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('735','723','æ¦æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('736','723','ä»æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('737','723','é·å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('738','723','éº»æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('739','723','ä¸¹å¯¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('740','690','é»åå¸ä¾æèæèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('741','740','é½åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('742','740','ç¦æ³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('743','740','èæ³¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('744','740','è´µå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('745','740','ç®å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('746','740','ç¬å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('747','740','å¹³å¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('748','740','ç½ç¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('749','740','é¿é¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('750','740','é¾éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('751','740','æ æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('752','740','ä¸é½æ°´æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('753','690','é»è¥¿åå¸ä¾æèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('754','753','å´ä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('755','753','å´ä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('756','753','æ®å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('757','753','æ´éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('758','753','è´ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('759','753','æè°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('760','753','åäº¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('761','753','å®é¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('762','690','éä»å°åº','0');
INSERT INTO `yourphp_area` VALUES ('763','762','éä»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('764','762','æ±å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('765','762','çå±ä¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('766','762','ç³é¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('767','762','æåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('768','762','å°æ±åå®¶æèæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('769','762','å¾·æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('770','762','æ²¿æ²³åå®¶æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('771','762','æ¾æ¡èæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('772','762','ä¸å±±ç¹åº','0');
INSERT INTO `yourphp_area` VALUES ('773','690','éµä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('774','773','çº¢è±å²åº','0');
INSERT INTO `yourphp_area` VALUES ('775','773','æ±å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('776','773','éµä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('777','773','æ¡æ¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('778','773','ç»¥é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('779','773','æ­£å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('780','773','éçä»¡ä½¬æèæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('781','773','å¡å·ä»¡ä½¬æèæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('782','773','å¤åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('783','773','æ¹æ½­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('784','773','ä½åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('785','773','ä¹ æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('786','773','èµ¤æ°´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('787','773','ä»æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('788','0','æµ·å','0');
INSERT INTO `yourphp_area` VALUES ('789','788','æµ·å£å¸\','0');
INSERT INTO `yourphp_area` VALUES ('790','789','ç§è±åº','0');
INSERT INTO `yourphp_area` VALUES ('791','789','é¾åå\º','0');
INSERT INTO `yourphp_area` VALUES ('792','789','ç¼å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('793','789','ç¾å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('794','788','ç½æ²é»æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('795','788','ä¿äº­é»æèæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('796','788','ææ±é»æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('797','788','æ¾è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('798','788','åå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('799','788','å®å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('800','788','ä¸æ¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('801','788','ä¹ä¸é»æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('802','788','ä¸´é«å\¿','0');
INSERT INTO `yourphp_area` VALUES ('803','788','éµæ°´é»æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('804','788','åæ²ç¾¤å²','0');
INSERT INTO `yourphp_area` VALUES ('805','788','ç¼æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('806','788','ç¼ä¸­é»æèæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('807','788','ä¸äºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('808','788','å±¯æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('809','788','ä¸å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('810','788','ææå¸\','0');
INSERT INTO `yourphp_area` VALUES ('811','788','äºæå±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('812','788','è¥¿æ²ç¾¤å²','0');
INSERT INTO `yourphp_area` VALUES ('813','788','ä¸­æ²ç¾¤å²çå²ç¤åå¶æµ·å\','0');
INSERT INTO `yourphp_area` VALUES ('814','0','æ²³å','0');
INSERT INTO `yourphp_area` VALUES ('815','814','ç³å®¶åºå¸','0');
INSERT INTO `yourphp_area` VALUES ('816','815','é¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('817','815','æ¡¥ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('818','815','æ¡¥è¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('819','815','æ°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('820','815','äºéç¿åº','0');
INSERT INTO `yourphp_area` VALUES ('821','815','è£åå\º','0');
INSERT INTO `yourphp_area` VALUES ('822','815','äºéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('823','815','æ­£å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('824','815','æ ¾åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('825','815','è¡åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('826','815','çµå¯¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('827','815','é«éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('828','815','æ·±æ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('829','815','èµçå\¿','0');
INSERT INTO `yourphp_area` VALUES ('830','815','æ æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('831','815','å¹³å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('832','815','åæ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('833','815','èµµå¿','0');
INSERT INTO `yourphp_area` VALUES ('834','815','è¾éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('835','815','èåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('836','815','æå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('837','815','æ°ä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('838','815','é¹¿æ³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('839','814','ä¿å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('840','839','æ°å¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('841','839','åå¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('842','839','åå¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('843','839','æ»¡åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('844','839','æ¸èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('845','839','æ¶æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('846','839','éå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('847','839','å¾æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('848','839','å®å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('849','839','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('850','839','é«é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('851','839','å®¹åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('852','839','æ¶æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('853','839','æé½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('854','839','å®æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('855','839','æå¿','0');
INSERT INTO `yourphp_area` VALUES ('856','839','æ²é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('857','839','è ¡å¿','0');
INSERT INTO `yourphp_area` VALUES ('858','839','é¡ºå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('859','839','åéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('860','839','éå¿','0');
INSERT INTO `yourphp_area` VALUES ('861','839','æ¶¿å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('862','839','å®å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('863','839','å®å½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('864','839','é«ç¢åºå¸','0');
INSERT INTO `yourphp_area` VALUES ('865','814','æ²§å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('866','865','æ°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('867','865','è¿æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('868','865','æ²§å¿','0');
INSERT INTO `yourphp_area` VALUES ('869','865','éå¿','0');
INSERT INTO `yourphp_area` VALUES ('870','865','ä¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('871','865','æµ·å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('872','865','çå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('873','865','èå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('874','865','åç®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('875','865','å´æ¡¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('876','865','ç®å¿','0');
INSERT INTO `yourphp_area` VALUES ('877','865','å­æåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('878','865','æ³å¤´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('879','865','ä»»ä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('880','865','é»éªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('881','865','æ²³é´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('882','814','æ¿å¾·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('883','882','åæ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('884','882','åæ»¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('885','882','é¹°æè¥å­ç¿åº','0');
INSERT INTO `yourphp_area` VALUES ('886','882','æ¿å¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('887','882','å´éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('888','882','å¹³æ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('889','882','æ»¦å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('890','882','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('891','882','ä¸°å®æ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('892','882','å®½åæ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('893','882','å´åºæ»¡æèå¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('894','814','é¯é¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('895','894','é¯å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('896','894','ä¸å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('897','894','å¤å´å\º','0');
INSERT INTO `yourphp_area` VALUES ('898','894','å³°å³°ç¿åº','0');
INSERT INTO `yourphp_area` VALUES ('899','894','é¯é¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('900','894','ä¸´æ¼³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('901','894','æå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('902','894','å¤§åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('903','894','æ¶å¿','0');
INSERT INTO `yourphp_area` VALUES ('904','894','ç£å¿','0');
INSERT INTO `yourphp_area` VALUES ('905','894','è¥ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('906','894','æ°¸å¹´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('907','894','é±å¿','0');
INSERT INTO `yourphp_area` VALUES ('908','894','é¸¡æ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('909','894','å¹¿å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('910','894','é¦é¶å\¿','0');
INSERT INTO `yourphp_area` VALUES ('911','894','é­å¿','0');
INSERT INTO `yourphp_area` VALUES ('912','894','æ²å¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('913','894','æ­¦å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('914','814','è¡¡æ°´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('915','914','æ¡åå\º','0');
INSERT INTO `yourphp_area` VALUES ('916','914','æ£å¼ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('917','914','æ­¦éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('918','914','æ­¦å¼ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('919','914','é¥¶é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('920','914','å®å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('921','914','æåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('922','914','æ¯å¿','0');
INSERT INTO `yourphp_area` VALUES ('923','914','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('924','914','åå·å¸','0');
INSERT INTO `yourphp_area` VALUES ('925','914','æ·±å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('926','814','å»åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('927','926','å®æ¬¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('928','926','å¹¿é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('929','926','åºå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('930','926','æ°¸æ¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('931','926','é¦æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('932','926','å¤§åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('933','926','æå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('934','926','å¤§ååæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('935','926','é¸å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('936','926','ä¸æ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('937','814','ç§¦çå²å¸','0');
INSERT INTO `yourphp_area` VALUES ('938','937','æµ·æ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('939','937','å±±æµ·å³åº','0');
INSERT INTO `yourphp_area` VALUES ('940','937','åæ´æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('941','937','éé¾æ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('942','937','æé»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('943','937','æå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('944','937','å¢é¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('945','814','åå±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('946','945','è·¯åå\º','0');
INSERT INTO `yourphp_area` VALUES ('947','945','è·¯åå\º','0');
INSERT INTO `yourphp_area` VALUES ('948','945','å¤å¶å\º','0');
INSERT INTO `yourphp_area` VALUES ('949','945','å¼å¹³åº','0');
INSERT INTO `yourphp_area` VALUES ('950','945','ä¸°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('951','945','ä¸°æ¶¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('952','945','æ»¦å¿','0');
INSERT INTO `yourphp_area` VALUES ('953','945','æ»¦åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('954','945','ä¹äº­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('955','945','è¿è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('956','945','çç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('957','945','åæµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('958','945','éµåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('959','945','è¿å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('960','814','é¢å°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('961','960','æ¡¥ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('962','960','æ¡¥è¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('963','960','é¢å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('964','960','ä¸´åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('965','960','åä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('966','960','æä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('967','960','éå°§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('968','960','ä»»å¿','0');
INSERT INTO `yourphp_area` VALUES ('969','960','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('970','960','å®æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('971','960','å·¨é¹¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('972','960','æ°æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('973','960','å¹¿å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('974','960','å¹³ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('975','960','å¨å¿','0');
INSERT INTO `yourphp_area` VALUES ('976','960','æ¸æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('977','960','ä¸´è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('978','960','åå®«å¸\','0');
INSERT INTO `yourphp_area` VALUES ('979','960','æ²æ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('980','814','å¼ å®¶å£å¸','0');
INSERT INTO `yourphp_area` VALUES ('981','980','æ¡¥ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('982','980','æ¡¥è¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('983','980','å®£åå\º','0');
INSERT INTO `yourphp_area` VALUES ('984','980','ä¸è±å­åº','0');
INSERT INTO `yourphp_area` VALUES ('985','980','å®£åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('986','980','å¼ åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('987','980','åº·ä¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('988','980','æ²½æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('989','980','å°ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('990','980','èå¿','0');
INSERT INTO `yourphp_area` VALUES ('991','980','é³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('992','980','æå®å¿','0');
INSERT INTO `yourphp_area` VALUES ('993','980','ä¸å¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('994','980','ææ¥å¿','0');
INSERT INTO `yourphp_area` VALUES ('995','980','æ¶¿é¹¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('996','980','èµ¤åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('997','980','å´ç¤¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('998','0','æ²³å','0');
INSERT INTO `yourphp_area` VALUES ('999','998','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1000','999','ä¸­åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1001','999','äºä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1002','999','ç®¡ååæå\º','0');
INSERT INTO `yourphp_area` VALUES ('1003','999','éæ°´å\º','0');
INSERT INTO `yourphp_area` VALUES ('1004','999','ä¸è¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1005','999','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1006','999','ä¸­çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1007','999','å·©ä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1008','999','è¥é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1009','999','æ°å¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1010','999','æ°éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1011','999','ç»å°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1012','998','å®é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1013','1012','æå³°å\º','0');
INSERT INTO `yourphp_area` VALUES ('1014','1012','åå³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1015','1012','æ®·é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('1016','1012','é¾å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1017','1012','å®é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1018','1012','æ±¤é´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1019','1012','æ»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1020','1012','åé»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1021','1012','æå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1022','998','é¹¤å£å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1023','1022','é¹¤å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1024','1022','å±±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1025','1022','æ·æ»¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('1026','1022','æµå¿','0');
INSERT INTO `yourphp_area` VALUES ('1027','1022','æ·å¿','0');
INSERT INTO `yourphp_area` VALUES ('1028','998','æµæºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1029','998','ç¦ä½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1030','1029','è§£æ¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1031','1029','ä¸­ç«å\º','0');
INSERT INTO `yourphp_area` VALUES ('1032','1029','é©¬æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1033','1029','å±±é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1034','1029','ä¿®æ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1035','1029','åç±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1036','1029','æ­¦éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1037','1029','æ¸©å¿','0');
INSERT INTO `yourphp_area` VALUES ('1038','1029','æµæºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1039','1029','æ²é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1040','1029','å­å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1041','998','å¼å°å¸','0');
INSERT INTO `yourphp_area` VALUES ('1042','1041','é¾äº­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1043','1041','é¡ºæ²³åæå\º','0');
INSERT INTO `yourphp_area` VALUES ('1044','1041','é¼æ¥¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('1045','1041','åå³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1046','1041','éåº','0');
INSERT INTO `yourphp_area` VALUES ('1047','1041','æå¿','0');
INSERT INTO `yourphp_area` VALUES ('1048','1041','éè®¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1049','1041','å°æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1050','1041','å¼å°å¿','0');
INSERT INTO `yourphp_area` VALUES ('1051','1041','å°èå¿','0');
INSERT INTO `yourphp_area` VALUES ('1052','998','æ´é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1053','1052','èåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1054','1052','è¥¿å·¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('1055','1052','å»æ²³åæå\º','0');
INSERT INTO `yourphp_area` VALUES ('1056','1052','æ¶§è¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1057','1052','åå©å\º','0');
INSERT INTO `yourphp_area` VALUES ('1058','1052','æ´é¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1059','1052','å­æ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1060','1052','æ°å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1061','1052','æ ¾å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1062','1052','åµ©å¿','0');
INSERT INTO `yourphp_area` VALUES ('1063','1052','æ±é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1064','1052','å®é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1065','1052','æ´å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1066','1052','ä¼å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1067','1052','åå¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1068','998','æ¼¯æ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1069','1068','æºæ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1070','1068','é¾åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1071','1068','å¬éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1072','1068','èé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1073','1068','ä¸´é¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1074','998','åé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1075','1074','å®åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1076','1074','å§é¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1077','1074','åå¬å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1078','1074','æ¹åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1079','1074','è¥¿å³¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1080','1074','éå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1081','1074','åä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1082','1074','æ·å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1083','1074','ç¤¾æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1084','1074','åæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1085','1074','æ°éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1086','1074','æ¡æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1087','1074','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1088','998','å¹³é¡¶å±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('1089','1088','æ°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1090','1088','å«ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1091','1088','ç³é¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1092','1088','æ¹æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1093','1088','å®ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1094','1088','å¶å¿','0');
INSERT INTO `yourphp_area` VALUES ('1095','1088','é²å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1096','1088','éå¿','0');
INSERT INTO `yourphp_area` VALUES ('1097','1088','èé¢å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1098','1088','æ±å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1099','998','æ¿®é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1100','1099','åé¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1101','1099','æ¸ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1102','1099','åä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1103','1099','èå¿','0');
INSERT INTO `yourphp_area` VALUES ('1104','1099','å°åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1105','1099','æ¿®é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1106','998','ä¸é¨å³¡å¸','0');
INSERT INTO `yourphp_area` VALUES ('1107','1106','æ¹æ»¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('1108','1106','æ¸æ± å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1109','1106','éå¿','0');
INSERT INTO `yourphp_area` VALUES ('1110','1106','å¢æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1111','1106','ä¹é©¬å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1112','1106','çµå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1113','998','åä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1114','1113','æ¢å­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1115','1113','ç¢é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1116','1113','æ°æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1117','1113','ç¢å¿','0');
INSERT INTO `yourphp_area` VALUES ('1118','1113','å®éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1119','1113','æåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1120','1113','èåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1121','1113','å¤éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1122','1113','æ°¸åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1123','998','æ°ä¹¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1124','1123','çº¢æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1125','1123','å«æ»¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('1126','1123','å¤æ³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1127','1123','ç§éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1128','1123','æ°ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1129','1123','è·åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1130','1123','åé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1131','1123','å»¶æ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1132','1123','å°ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1133','1123','é¿å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1134','1123','å«è¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1135','1123','è¾å¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1136','998','ä¿¡é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1137','1136','å¸æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1138','1136','å¹³æ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('1139','1136','ç½å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1140','1136','åå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1141','1136','æ°å¿','0');
INSERT INTO `yourphp_area` VALUES ('1142','1136','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1143','1136','åºå§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1144','1136','æ½¢å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1145','1136','æ·®æ»¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1146','1136','æ¯å¿','0');
INSERT INTO `yourphp_area` VALUES ('1147','998','è®¸æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1148','1147','é­é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('1149','1147','è®¸æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1150','1147','é¢éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1151','1147','è¥åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1152','1147','ç¦¹å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1153','1147','é¿èå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1154','998','å¨å£å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1155','1154','å·æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1156','1154','æ¶æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1157','1154','è¥¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1158','1154','åæ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1159','1154','æ²ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1160','1154','é¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1161','1154','æ·®é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1162','1154','å¤ªåº·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1163','1154','é¹¿éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1164','1154','é¡¹åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1165','998','é©»é©¬åºå¸','0');
INSERT INTO `yourphp_area` VALUES ('1166','1165','é©¿åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1167','1165','è¥¿å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1168','1165','ä¸è¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1169','1165','å¹³èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1170','1165','æ­£é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1171','1165','ç¡®å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1172','1165','æ³é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1173','1165','æ±åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1174','1165','éå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1175','1165','æ°è¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1176','0','é»é¾æ±\','0');
INSERT INTO `yourphp_area` VALUES ('1177','1176','åå°æ»¨å¸','0');
INSERT INTO `yourphp_area` VALUES ('1178','1177','ééå\º','0');
INSERT INTO `yourphp_area` VALUES ('1179','1177','åå²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1180','1177','éå¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('1181','1177','é¦åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1182','1177','å¨åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1183','1177','å¹³æ¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1184','1177','æ¾åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1185','1177','å¼å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('1186','1177','ä¾å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1187','1177','æ¹æ­£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1188','1177','å®¾å¿','0');
INSERT INTO `yourphp_area` VALUES ('1189','1177','å·´å½¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1190','1177','æ¨å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1191','1177','éæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1192','1177','å»¶å¯¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1193','1177','é¿åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1194','1177','ååå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1195','1177','å°å¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1196','1177','äºå¸¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1197','1176','å¤§åºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1198','1197','è¨å°å¾åº','0');
INSERT INTO `yourphp_area` VALUES ('1199','1197','é¾å¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('1200','1197','è®©è¡è·¯åº','0');
INSERT INTO `yourphp_area` VALUES ('1201','1197','çº¢å²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1202','1197','å¤§åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1203','1197','èå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1204','1197','èæºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1205','1197','æç¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1206','1197','æå°ä¼¯ç¹èå¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1207','1176','å¤§å´å®å²­å°åº','0');
INSERT INTO `yourphp_area` VALUES ('1208','1207','å¼çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1209','1207','å¡æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1210','1207','æ¼ æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1211','1176','é¹¤å²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1212','1211','åé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1213','1211','å·¥åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1214','1211','åå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1215','1211','å´å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1216','1211','ä¸å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1217','1211','å´å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1218','1211','èåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1219','1211','ç»¥æ»¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1220','1176','é»æ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1221','1220','ç±è¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1222','1220','å«©æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1223','1220','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1224','1220','å­å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1225','1220','åå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1226','1220','äºå¤§è¿æ± å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1227','1176','é¸¡è¥¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1228','1227','é¸¡å å\º','0');
INSERT INTO `yourphp_area` VALUES ('1229','1227','æå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1230','1227','æ»´éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1231','1227','æ¢¨æ å\º','0');
INSERT INTO `yourphp_area` VALUES ('1232','1227','åå­æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('1233','1227','éº»å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1234','1227','é¸¡ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1235','1227','èæå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1236','1227','å¯å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1237','1176','ä½³æ¨æ¯å¸','0');
INSERT INTO `yourphp_area` VALUES ('1238','1237','æ°¸çº¢å\º','0');
INSERT INTO `yourphp_area` VALUES ('1239','1237','åé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1240','1237','åè¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1241','1237','ä¸é£å\º','0');
INSERT INTO `yourphp_area` VALUES ('1242','1237','éåº','0');
INSERT INTO `yourphp_area` VALUES ('1243','1237','æ¡¦åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1244','1237','æ¡¦å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1245','1237','æ±¤åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1246','1237','æè¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1247','1237','åæ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1248','1237','å¯é¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1249','1176','ç¡ä¸¹æ±å¸','0');
INSERT INTO `yourphp_area` VALUES ('1250','1249','ä¸å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1251','1249','é³æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1252','1249','ç±æ°å\º','0');
INSERT INTO `yourphp_area` VALUES ('1253','1249','è¥¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1254','1249','ä¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1255','1249','æå£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1256','1249','ç»¥è¬æ²³å¸','0');
INSERT INTO `yourphp_area` VALUES ('1257','1249','æµ·æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1258','1249','å®å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1259','1249','ç©æ£±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1260','1176','ä¸å°æ²³å¸','0');
INSERT INTO `yourphp_area` VALUES ('1261','1260','æ°å´å\º','0');
INSERT INTO `yourphp_area` VALUES ('1262','1260','æ¡å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1263','1260','èå­æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('1264','1260','åå©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1265','1176','é½é½åå°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1266','1265','é¾æ²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1267','1265','å»ºåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1268','1265','ééå\º','0');
INSERT INTO `yourphp_area` VALUES ('1269','1265','æææºªåº','0');
INSERT INTO `yourphp_area` VALUES ('1270','1265','å¯æå°åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('1271','1265','ç¢¾å­å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('1272','1265','æ¢éæ¯è¾¾æ¡å°æåº','0');
INSERT INTO `yourphp_area` VALUES ('1273','1265','é¾æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1274','1265','ä¾å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1275','1265','æ³°æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1276','1265','çåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1277','1265','å¯è£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1278','1265','åå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1279','1265','åä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1280','1265','ææ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1281','1265','è®·æ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1282','1176','åé¸­å±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('1283','1282','å°å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1284','1282','å²­ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1285','1282','åæ¹å°åº','0');
INSERT INTO `yourphp_area` VALUES ('1286','1282','å®å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1287','1282','éè´¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1288','1282','åè°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1289','1282','å®æ¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1290','1282','é¥¶æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1291','1176','ç»¥åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1292','1291','åæå\º','0');
INSERT INTO `yourphp_area` VALUES ('1293','1291','æå¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1294','1291','å°è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1295','1291','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1296','1291','åºå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1297','1291','ææ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1298','1291','ç»¥æ£±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1299','1291','å®è¾¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1300','1291','èä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1301','1291','æµ·ä¼¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1302','1176','ä¼æ¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1303','1302','ä¼æ¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('1304','1302','åå²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1305','1302','åå¥½å\º','0');
INSERT INTO `yourphp_area` VALUES ('1306','1302','è¥¿æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1307','1302','ç¿ å³¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('1308','1302','æ°éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1309','1302','ç¾æºªå\º','0');
INSERT INTO `yourphp_area` VALUES ('1310','1302','éå±±å±¯åº','0');
INSERT INTO `yourphp_area` VALUES ('1311','1302','äºè¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('1312','1302','ä¹é©¬æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('1313','1302','æ±¤æºæ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('1314','1302','å¸¦å²­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1315','1302','ä¹ä¼å²­åº','0');
INSERT INTO `yourphp_area` VALUES ('1316','1302','çº¢æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1317','1302','ä¸çå²­åº','0');
INSERT INTO `yourphp_area` VALUES ('1318','1302','åè«å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1319','1302','éåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1320','0','æ¹å','0');
INSERT INTO `yourphp_area` VALUES ('1321','1320','æ­¦æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1322','1321','æ±å²¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1323','1321','æ±æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1324','1321','ä¹å£å\º','0');
INSERT INTO `yourphp_area` VALUES ('1325','1321','æ±é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1326','1321','æ­¦æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1327','1321','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1328','1321','æ´ªå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1329','1321','ä¸è¥¿æ¹åº','0');
INSERT INTO `yourphp_area` VALUES ('1330','1321','æ±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1331','1321','è¡ç¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1332','1321','æ±å¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('1333','1321','é»éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1334','1321','æ°æ´²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1335','1320','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1336','1335','æ¢å­æ¹åº','0');
INSERT INTO `yourphp_area` VALUES ('1337','1335','åå®¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1338','1335','éåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1339','1320','æ©æ½åå®¶æèæèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('1340','1339','æ©æ½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1341','1339','å©å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1342','1339','å»ºå§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1343','1339','å·´ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1344','1339','å®£æ©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1345','1339','å¸ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1346','1339','æ¥å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1347','1339','é¹¤å³°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1348','1320','é»åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1349','1348','é»å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1350','1348','å¢é£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1351','1348','çº¢å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1352','1348','ç½ç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1353','1348','è±å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1354','1348','æµ æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1355','1348','è²æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1356','1348','é»æ¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1357','1348','éº»åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1358','1348','æ­¦ç©´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1359','1320','é»ç³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1360','1359','é»ç³æ¸¯åº','0');
INSERT INTO `yourphp_area` VALUES ('1361','1359','è¥¿å¡å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('1362','1359','ä¸éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1363','1359','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1364','1359','é³æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1365','1359','å¤§å¶å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1366','1320','èé¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1367','1366','ä¸å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1368','1366','æåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1369','1366','äº¬å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1370','1366','æ²æ´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1371','1366','éç¥¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1372','1320','èå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1373','1372','æ²å¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1374','1372','èå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1375','1372','å¬å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1376','1372','çå©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1377','1372','æ±éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1378','1372','ç³é¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1379','1372','æ´ªæ¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1380','1372','æ¾æ»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1381','1320','æ½æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1382','1320','ç¥åæ¶æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1383','1320','åå °å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1384','1383','èç®­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1385','1383','å¼ æ¹¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1386','1383','é§å¿','0');
INSERT INTO `yourphp_area` VALUES ('1387','1383','é§è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1388','1383','ç«¹å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1389','1383','ç«¹æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1390','1383','æ¿å¿','0');
INSERT INTO `yourphp_area` VALUES ('1391','1383','ä¸¹æ±å£å¸','0');
INSERT INTO `yourphp_area` VALUES ('1392','1320','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1393','1392','æ¾é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('1394','1392','å¹¿æ°´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1395','1320','å¤©é¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1396','1320','ä»æ¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1397','1320','å¸å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1398','1397','å¸å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1399','1397','åé±¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1400','1397','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1401','1397','å´é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1402','1397','éå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1403','1397','èµ¤å£å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1404','1320','è¥æ¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1405','1404','è¥åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1406','1404','æ¨åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1407','1404','è¥é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1408','1404','åæ¼³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1409','1404','è°·åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1410','1404','ä¿åº·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1411','1404','èæ²³å£å¸','0');
INSERT INTO `yourphp_area` VALUES ('1412','1404','æ£é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1413','1404','å®åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1414','1320','å­æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1415','1414','å­åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1416','1414','å­æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1417','1414','å¤§æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1418','1414','äºæ¢¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1419','1414','åºåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1420','1414','å®éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1421','1414','æ±å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1422','1320','å®æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1423','1422','è¥¿éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1424','1422','ä¼å®¶å²åº','0');
INSERT INTO `yourphp_area` VALUES ('1425','1422','ç¹åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1426','1422','çäº­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1427','1422','å¤·éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1428','1422','è¿å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1429','1422','å´å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1430','1422','ç§­å½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1431','1422','é¿é³åå®¶æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1432','1422','äºå³°åå®¶æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1433','1422','å®é½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1434','1422','å½é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1435','1422','ææ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1436','0','æ¹å','0');
INSERT INTO `yourphp_area` VALUES ('1437','1436','é¿æ²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1438','1437','èèå\º','0');
INSERT INTO `yourphp_area` VALUES ('1439','1437','å¤©å¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1440','1437','å²³éºå\º','0');
INSERT INTO `yourphp_area` VALUES ('1441','1437','å¼ç¦åº','0');
INSERT INTO `yourphp_area` VALUES ('1442','1437','é¨è±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1443','1437','é¿æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1444','1437','æåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1445','1437','å®ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1446','1437','æµé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1447','1436','å¸¸å¾·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1448','1447','æ­¦éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1449','1447','é¼åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1450','1447','å®ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1451','1447','æ±å¯¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1452','1447','æ¾§å¿','0');
INSERT INTO `yourphp_area` VALUES ('1453','1447','ä¸´æ¾§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1454','1447','æ¡æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1455','1447','ç³é¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1456','1447','æ´¥å¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1457','1436','é´å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1458','1457','åæ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1459','1457','èä»å\º','0');
INSERT INTO `yourphp_area` VALUES ('1460','1457','æ¡é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1461','1457','å®ç« å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1462','1457','æ°¸å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1463','1457','åç¦¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1464','1457','ä¸´æ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1465','1457','æ±åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1466','1457','æ¡ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1467','1457','å®ä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1468','1457','èµå´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1469','1436','è¡¡é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1470','1469','ç æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1471','1469','éå³°å\º','0');
INSERT INTO `yourphp_area` VALUES ('1472','1469','ç³é¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('1473','1469','è¸æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1474','1469','åå²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1475','1469','è¡¡é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1476','1469','è¡¡åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1477','1469','è¡¡å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1478','1469','è¡¡ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1479','1469','ç¥ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1480','1469','èé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1481','1469','å¸¸å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1482','1436','æåå¸','0');
INSERT INTO `yourphp_area` VALUES ('1483','1482','é¹¤åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1484','1482','ä¸­æ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1485','1482','æ²éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1486','1482','è¾°æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1487','1482','æºæµ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1488','1482','ä¼åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1489','1482','éº»é³èæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1490','1482','æ°æä¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1491','1482','è·æ±ä¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1492','1482','éå·èæä¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1493','1482','ééä¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1494','1482','æ´ªæ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1495','1436','å¨åºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1496','1495','å¨æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1497','1495','åå³°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1498','1495','æ°åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1499','1495','å·æ°´æ±å¸','0');
INSERT INTO `yourphp_area` VALUES ('1500','1495','æ¶æºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1501','1436','éµé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1502','1501','åæ¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1503','1501','å¤§ç¥¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('1504','1501','åå¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1505','1501','éµä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1506','1501','æ°éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1507','1501','éµé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1508','1501','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1509','1501','æ´å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1510','1501','ç»¥å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1511','1501','æ°å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1512','1501','åæ­¥èæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1513','1501','æ­¦åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1514','1436','æ¹æ½­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1515','1514','é¨æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1516','1514','å²³å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1517','1514','æ¹æ½­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1518','1514','æ¹ä¹¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1519','1514','é¶å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1520','1436','æ¹è¥¿åå®¶æèæèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('1521','1520','åé¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1522','1520','æ³¸æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1523','1520','å¤å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1524','1520','è±å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1525','1520','ä¿éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1526','1520','å¤ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1527','1520','æ°¸é¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1528','1520','é¾å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1529','1436','çé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1530','1529','èµé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1531','1529','èµ«å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1532','1529','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('1533','1529','æ¡æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1534','1529','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1535','1529','æ²æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1536','1436','æ°¸å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1537','1536','èå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1538','1536','å·æ°´æ»©åº','0');
INSERT INTO `yourphp_area` VALUES ('1539','1536','ç¥é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1540','1536','ä¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1541','1536','åçå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1542','1536','éå¿','0');
INSERT INTO `yourphp_area` VALUES ('1543','1536','æ±æ°¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1544','1536','å®è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1545','1536','èå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1546','1536','æ°ç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1547','1536','æ±åç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1548','1436','å²³é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1549','1548','å²³é³æ¥¼åº','0');
INSERT INTO `yourphp_area` VALUES ('1550','1548','äºæºªå\º','0');
INSERT INTO `yourphp_area` VALUES ('1551','1548','åå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1552','1548','å²³é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1553','1548','åå®¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1554','1548','æ¹é´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1555','1548','å¹³æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1556','1548','æ±¨ç½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1557','1548','ä¸´æ¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1558','1436','å¼ å®¶çå¸','0');
INSERT INTO `yourphp_area` VALUES ('1559','1558','æ°¸å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1560','1558','æ­¦éµæºåº','0');
INSERT INTO `yourphp_area` VALUES ('1561','1558','æå©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1562','1558','æ¡æ¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1563','1436','æ ªæ´²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1564','1563','è·å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1565','1563','è¦æ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1566','1563','ç³å³°å\º','0');
INSERT INTO `yourphp_area` VALUES ('1567','1563','å¤©åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1568','1563','æ ªæ´²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1569','1563','æ¸å¿','0');
INSERT INTO `yourphp_area` VALUES ('1570','1563','è¶éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1571','1563','çéµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1572','1563','é´éµå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1573','0','åæ','0');
INSERT INTO `yourphp_area` VALUES ('1574','1573','é¿æ¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1575','1574','åå³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1576','1574','å®½åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1577','1574','æé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1578','1574','äºéå\º','0');
INSERT INTO `yourphp_area` VALUES ('1579','1574','ç»¿å­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1580','1574','åé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1581','1574','åå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1582','1574','ä¹å°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1583','1574','æ¦æ å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1584','1574','å¾·æ å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1585','1573','ç½åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1586','1585','æ´®åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1587','1585','éèµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1588','1585','éæ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1589','1585','æ´®åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1590','1585','å¤§å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1591','1573','ç½å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1592','1591','å«éæ±åº','0');
INSERT INTO `yourphp_area` VALUES ('1593','1591','ææ¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1594','1591','éå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1595','1591','é¿ç½æé²æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1596','1591','æ±æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1597','1591','ä¸´æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1598','1573','åæå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1599','1598','æéå\º','0');
INSERT INTO `yourphp_area` VALUES ('1600','1598','é¾æ½­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1601','1598','è¹è¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('1602','1598','ä¸°æ»¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1603','1598','æ°¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1604','1598','èæ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1605','1598','æ¡¦ç¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1606','1598','èå°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1607','1598','ç£ç³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1608','1573','è¾½æºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1609','1608','é¾å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1610','1608','è¥¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1611','1608','ä¸ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1612','1608','ä¸è¾½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1613','1573','åå¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1614','1613','éè¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1615','1613','éä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1616','1613','æ¢¨æ å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1617','1613','ä¼éæ»¡æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1618','1613','å¬ä¸»å²­å¸','0');
INSERT INTO `yourphp_area` VALUES ('1619','1613','åè¾½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1620','1573','æ¾åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1621','1620','å®æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1622','1620','åé­å°ç½æ¯èå¤æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1623','1620','é¿å²­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1624','1620','ä¹¾å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1625','1620','æ¶ä½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1626','1573','éåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1627','1626','ä¸æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1628','1626','äºéæ±åº','0');
INSERT INTO `yourphp_area` VALUES ('1629','1626','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1630','1626','è¾åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1631','1626','æ³æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1632','1626','æ¢æ²³å£å¸','0');
INSERT INTO `yourphp_area` VALUES ('1633','1626','éå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1634','1573','å»¶è¾¹æé²æèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('1635','1634','å»¶åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1636','1634','å¾ä»¬å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1637','1634','æ¦åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1638','1634','ç²æ¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1639','1634','é¾äºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1640','1634','åé¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1641','1634','æ±ªæ¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1642','1634','å®å¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1643','0','æ±è','0');
INSERT INTO `yourphp_area` VALUES ('1644','1643','åäº¬å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1645','1644','çæ­¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('1646','1644','ç½ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1647','1644','ç§¦æ·®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1648','1644','å»ºéºå\º','0');
INSERT INTO `yourphp_area` VALUES ('1649','1644','é¼æ¥¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('1650','1644','ä¸å³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1651','1644','æµ¦å£å\º','0');
INSERT INTO `yourphp_area` VALUES ('1652','1644','æ éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1653','1644','é¨è±å°åº','0');
INSERT INTO `yourphp_area` VALUES ('1654','1644','æ±å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1655','1644','å­åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1656','1644','æº§æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1657','1644','é«æ·³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1658','1643','å¸¸å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1659','1658','å¤©å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1660','1658','éæ¥¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('1661','1658','æå¢å °åº','0');
INSERT INTO `yourphp_area` VALUES ('1662','1658','æ°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1663','1658','æ­¦è¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1664','1658','æº§é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1665','1658','éåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1666','1643','æ·®å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1667','1666','æ¸æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1668','1666','æ¥å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1669','1666','æ·®é´å\º','0');
INSERT INTO `yourphp_area` VALUES ('1670','1666','æ¸æµ¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('1671','1666','æ¶æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1672','1666','æ´ªæ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1673','1666','ç±çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1674','1666','éæ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1675','1643','è¿äºæ¸¯å¸','0');
INSERT INTO `yourphp_area` VALUES ('1676','1675','è¿äºå\º','0');
INSERT INTO `yourphp_area` VALUES ('1677','1675','æ°æµ¦å\º','0');
INSERT INTO `yourphp_area` VALUES ('1678','1675','æµ·å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1679','1675','èµ£æ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1680','1675','ä¸æµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1681','1675','çäºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1682','1675','çåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1683','1643','åéå¸','0');
INSERT INTO `yourphp_area` VALUES ('1684','1683','å´å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1685','1683','æ¸¯é¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1686','1683','æµ·å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1687','1683','å¦ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1688','1683','å¯ä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1689','1683','å¦çå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1690','1683','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1691','1683','æµ·é¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1692','1643','èå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1693','1692','æ²§æµªå\º','0');
INSERT INTO `yourphp_area` VALUES ('1694','1692','å¹³æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1695','1692','ééå\º','0');
INSERT INTO `yourphp_area` VALUES ('1696','1692','èä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1697','1692','å´ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('1698','1692','ç¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1699','1692','å¸¸çå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1700','1692','å¼ å®¶æ¸¯å¸','0');
INSERT INTO `yourphp_area` VALUES ('1701','1692','æå±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1702','1692','å´æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1703','1692','å¤ªä»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1704','1643','å®¿è¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1705','1704','å®¿åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1706','1704','å®¿è±«å\º','0');
INSERT INTO `yourphp_area` VALUES ('1707','1704','æ²­é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1708','1704','æ³é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1709','1704','æ³æ´ªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1710','1643','æ³°å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1711','1710','æµ·éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1712','1710','é«æ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('1713','1710','å´åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1714','1710','éæ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1715','1710','æ³°å´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1716','1710','å§å °å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1717','1643','æ é¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1718','1717','å´å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1719','1717','åé¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1720','1717','åå¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1721','1717','é¡å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1722','1717','æ å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1723','1717','æ»¨æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1724','1717','æ±é´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1725','1717','å®å´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1726','1643','å¾å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1727','1726','é¼æ¥¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('1728','1726','äºé¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1729','1726','ä¹éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1730','1726','è´¾æ±ªå\º','0');
INSERT INTO `yourphp_area` VALUES ('1731','1726','æ³å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1732','1726','ä¸°å¿','0');
INSERT INTO `yourphp_area` VALUES ('1733','1726','æ²å¿','0');
INSERT INTO `yourphp_area` VALUES ('1734','1726','éå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1735','1726','ç¢å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1736','1726','æ°æ²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1737','1726','é³å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1738','1643','çåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1739','1738','äº­æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1740','1738','çé½å\º','0');
INSERT INTO `yourphp_area` VALUES ('1741','1738','åæ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1742','1738','æ»¨æµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1743','1738','éå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1744','1738','å°é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1745','1738','å»ºæ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1746','1738','ä¸å°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1747','1738','å¤§ä¸°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1748','1643','æ¬å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1749','1748','å¹¿éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1750','1748','éæ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1751','1748','éåº','0');
INSERT INTO `yourphp_area` VALUES ('1752','1748','å®åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1753','1748','ä»ªå¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1754','1748','é«é®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1755','1748','æ±é½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1756','1643','éæ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1757','1756','äº¬å£å\º','0');
INSERT INTO `yourphp_area` VALUES ('1758','1756','æ¶¦å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1759','1756','ä¸¹å¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('1760','1756','ä¸¹é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1761','1756','æ¬ä¸­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1762','1756','å¥å®¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1763','0','æ±è¥¿','0');
INSERT INTO `yourphp_area` VALUES ('1764','1763','åæå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1765','1764','ä¸æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1766','1764','è¥¿æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1767','1764','éäºè°±åº','0');
INSERT INTO `yourphp_area` VALUES ('1768','1764','æ¹¾éå\º','0');
INSERT INTO `yourphp_area` VALUES ('1769','1764','éå±±æ¹åº','0');
INSERT INTO `yourphp_area` VALUES ('1770','1764','åæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1771','1764','æ°å»ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1772','1764','å®ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1773','1764','è¿è´¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1774','1763','æå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1775','1774','ä¸´å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1776','1774','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1777','1774','é»å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1778','1774','åä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1779','1774','å´ä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1780','1774','ä¹å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1781','1774','å®é»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1782','1774','éæºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1783','1774','èµæºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1784','1774','ä¸ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1785','1774','å¹¿æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1786','1763','èµ£å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1787','1786','ç« è´¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1788','1786','èµ£å¿','0');
INSERT INTO `yourphp_area` VALUES ('1789','1786','ä¿¡ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1790','1786','å¤§ä½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1791','1786','ä¸ç¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1792','1786','å´ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1793','1786','å®è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1794','1786','é¾åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1795','1786','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1796','1786','å¨åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1797','1786','å®é½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1798','1786','äºé½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1799','1786','å´å½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1800','1786','ä¼æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1801','1786','å¯»ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1802','1786','ç³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1803','1786','çéå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1804','1786','ååº·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1805','1763','åå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1806','1805','åå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1807','1805','éåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1808','1805','åå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1809','1805','åæ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1810','1805','å³¡æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1811','1805','æ°å¹²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1812','1805','æ°¸ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1813','1805','æ³°åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1814','1805','éå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1815','1805','ä¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1816','1805','å®ç¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1817','1805','æ°¸æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1818','1805','äºåå±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('1819','1763','æ¯å¾·éå¸','0');
INSERT INTO `yourphp_area` VALUES ('1820','1819','ææ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1821','1819','ç å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1822','1819','æµ®æ¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1823','1819','ä¹å¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1824','1763','ä¹æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1825','1824','åºå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1826','1824','æµé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1827','1824','ä¹æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1828','1824','æ­¦å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1829','1824','ä¿®æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1830','1824','æ°¸ä¿®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1831','1824','å¾·å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1832','1824','æå­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1833','1824','é½æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1834','1824','æ¹å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1835','1824','å½­æ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1836','1824','çæå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1837','1763','èä¹¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1838','1837','å®æºå\º','0');
INSERT INTO `yourphp_area` VALUES ('1839','1837','æ¹ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1840','1837','è²è±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1841','1837','ä¸æ å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1842','1837','è¦æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1843','1763','ä¸é¥¶å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1844','1843','ä¿¡å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1845','1843','ä¸é¥¶å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1846','1843','å¹¿ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1847','1843','çå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1848','1843','éå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1849','1843','æ¨ªå³°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1850','1843','å¼é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1851','1843','ä½å¹²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1852','1843','é±é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1853','1843','ä¸å¹´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1854','1843','å©ºæºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1855','1843','å¾·å´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1856','1763','æ°ä½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1857','1856','æ¸æ°´å\º','0');
INSERT INTO `yourphp_area` VALUES ('1858','1856','åå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1859','1763','å®æ¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1860','1859','è¢å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1861','1859','å¥æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1862','1859','ä¸è½½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1863','1859','ä¸é«å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1864','1859','å®ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1865','1859','éå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1866','1859','éé¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1867','1859','ä¸°åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1868','1859','æ¨æ å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1869','1859','é«å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1870','1763','é¹°æ½­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1871','1870','ææ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1872','1870','ä½æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1873','1870','è´µæºªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1874','0','è¾½å®','0');
INSERT INTO `yourphp_area` VALUES ('1875','1874','æ²é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1876','1875','åå¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1877','1875','æ²æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1878','1875','å¤§ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1879','1875','çå§å\º','0');
INSERT INTO `yourphp_area` VALUES ('1880','1875','éè¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1881','1875','èå®¶å±¯åº','0');
INSERT INTO `yourphp_area` VALUES ('1882','1875','ä¸éµå\º','0');
INSERT INTO `yourphp_area` VALUES ('1883','1875','æ°åå­åº','0');
INSERT INTO `yourphp_area` VALUES ('1884','1875','äºæ´ªå\º','0');
INSERT INTO `yourphp_area` VALUES ('1885','1875','è¾½ä¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1886','1875','åº·å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1887','1875','æ³åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1888','1875','æ°æ°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1889','1874','éå±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1890','1889','éä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1891','1889','éè¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('1892','1889','ç«å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1893','1889','åå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1894','1889','å°å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1895','1889','å²«å²©æ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1896','1889','æµ·åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1897','1874','æ¬æºªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1898','1897','å¹³å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1899','1897','æºªæ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1900','1897','æå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1901','1897','åè¬å\º','0');
INSERT INTO `yourphp_area` VALUES ('1902','1897','æ¬æºªæ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1903','1897','æ¡ä»æ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1904','1874','æé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1905','1904','åå¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1906','1904','é¾åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1907','1904','æé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1908','1904','å»ºå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1909','1904','ååæ²å·¦ç¿¼èå¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1910','1904','åç¥¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1911','1904','åæºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1912','1874','å¤§è¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1913','1912','ä¸­å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1914','1912','è¥¿å²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1915','1912','æ²æ²³å£åº','0');
INSERT INTO `yourphp_area` VALUES ('1916','1912','çäºå­åº','0');
INSERT INTO `yourphp_area` VALUES ('1917','1912','æé¡ºå£åº','0');
INSERT INTO `yourphp_area` VALUES ('1918','1912','éå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1919','1912','é¿æµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1920','1912','ç¦æ¿åºå¸','0');
INSERT INTO `yourphp_area` VALUES ('1921','1912','æ®å°åºå¸','0');
INSERT INTO `yourphp_area` VALUES ('1922','1912','åºæ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1923','1874','ä¸¹ä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1924','1923','åå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1925','1923','æ¯å´å\º','0');
INSERT INTO `yourphp_area` VALUES ('1926','1923','æ¯å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('1927','1923','å®½ç¸æ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1928','1923','ä¸æ¸¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1929','1923','å¤åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1930','1874','æé¡ºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1931','1930','æ°æå\º','0');
INSERT INTO `yourphp_area` VALUES ('1932','1930','ä¸æ´²å\º','0');
INSERT INTO `yourphp_area` VALUES ('1933','1930','æè±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1934','1930','é¡ºåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1935','1930','æé¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1936','1930','æ°å®¾æ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1937','1930','æ¸åæ»¡æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1938','1874','éæ°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1939','1938','æµ·å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1940','1938','æ°é±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1941','1938','å¤ªå¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1942','1938','æ¸æ²³é¨åº','0');
INSERT INTO `yourphp_area` VALUES ('1943','1938','ç»æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1944','1938','éæ°èå¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('1945','1938','å½°æ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1946','1874','è«è¦å²å¸','0');
INSERT INTO `yourphp_area` VALUES ('1947','1946','è¿å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('1948','1946','é¾æ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('1949','1946','åç¥¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('1950','1946','ç»¥ä¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1951','1946','å»ºæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('1952','1946','å´åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('1953','1874','é¦å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1954','1953','å¤å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1955','1953','åæ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1956','1953','å¤ªåå\º','0');
INSERT INTO `yourphp_area` VALUES ('1957','1953','é»å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1958','1953','ä¹å¿','0');
INSERT INTO `yourphp_area` VALUES ('1959','1953','åæµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1960','1953','åå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1961','1874','è¾½é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1962','1961','ç½å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('1963','1961','æå£å\º','0');
INSERT INTO `yourphp_area` VALUES ('1964','1961','å®ä¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('1965','1961','å¼é¿å²­åº','0');
INSERT INTO `yourphp_area` VALUES ('1966','1961','å¤ªå­æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('1967','1961','è¾½é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1968','1961','ç¯å¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1969','1874','çé¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1970','1969','åå°å­åº','0');
INSERT INTO `yourphp_area` VALUES ('1971','1969','å´éå°åº','0');
INSERT INTO `yourphp_area` VALUES ('1972','1969','å¤§æ´¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1973','1969','çå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1974','1874','éå²­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1975','1974','é¶å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('1976','1974','æ¸æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1977','1974','éå²­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1978','1974','è¥¿ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1979','1974','æå¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1980','1974','è°åµå±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('1981','1974','å¼åå¸','0');
INSERT INTO `yourphp_area` VALUES ('1982','1874','è¥å£å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1983','1982','ç«åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1984','1982','è¥¿å¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('1985','1982','é²é±¼ååº','0');
INSERT INTO `yourphp_area` VALUES ('1986','1982','èè¾¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('1987','1982','çå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1988','1982','å¤§ç³æ¡¥å¸','0');
INSERT INTO `yourphp_area` VALUES ('1989','0','åèå\¤','0');
INSERT INTO `yourphp_area` VALUES ('1990','1989','å¼åæµ©ç¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('1991','1990','æ°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('1992','1990','åæ°å\º','0');
INSERT INTO `yourphp_area` VALUES ('1993','1990','çæ³å\º','0');
INSERT INTO `yourphp_area` VALUES ('1994','1990','èµç½å\º','0');
INSERT INTO `yourphp_area` VALUES ('1995','1990','åé»ç¹å·¦æ\','0');
INSERT INTO `yourphp_area` VALUES ('1996','1990','æåæå¿','0');
INSERT INTO `yourphp_area` VALUES ('1997','1990','åææ ¼å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('1998','1990','æ¸æ°´æ²³å¿','0');
INSERT INTO `yourphp_area` VALUES ('1999','1990','æ­¦å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2000','1989','é¿æåç','0');
INSERT INTO `yourphp_area` VALUES ('2001','2000','é¿æåå·¦æ\','0');
INSERT INTO `yourphp_area` VALUES ('2002','2000','é¿æåå³æ\','0');
INSERT INTO `yourphp_area` VALUES ('2003','2000','é¢æµçº³æ','0');
INSERT INTO `yourphp_area` VALUES ('2004','1989','å·´å½¦æ·å°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2005','2004','ä¸´æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2006','2004','äºåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2007','2004','ç£´å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2008','2004','ä¹æç¹åæ\','0');
INSERT INTO `yourphp_area` VALUES ('2009','2004','ä¹æç¹ä¸­æ\','0');
INSERT INTO `yourphp_area` VALUES ('2010','2004','ä¹æç¹åæ\','0');
INSERT INTO `yourphp_area` VALUES ('2011','2004','æ­é¦åæ','0');
INSERT INTO `yourphp_area` VALUES ('2012','1989','åå¤´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2013','2012','ä¸æ²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2014','2012','æé½ä»åº','0');
INSERT INTO `yourphp_area` VALUES ('2015','2012','éå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2016','2012','ç³æå\º','0');
INSERT INTO `yourphp_area` VALUES ('2017','2012','ç½äºç¿åº','0');
INSERT INTO `yourphp_area` VALUES ('2018','2012','ä¹åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2019','2012','åé»ç¹å³æ\','0');
INSERT INTO `yourphp_area` VALUES ('2020','2012','åºé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2021','2012','è¾¾å°ç½èæå®èåæ\','0');
INSERT INTO `yourphp_area` VALUES ('2022','1989','èµ¤å³°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2023','2022','çº¢å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2024','2022','åå®å±±åº','0');
INSERT INTO `yourphp_area` VALUES ('2025','2022','æ¾å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2026','2022','é¿é²ç§å°æ²æ','0');
INSERT INTO `yourphp_area` VALUES ('2027','2022','å·´æå·¦æ','0');
INSERT INTO `yourphp_area` VALUES ('2028','2022','å·´æå³æ','0');
INSERT INTO `yourphp_area` VALUES ('2029','2022','æè¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2030','2022','åä»åè¾æ\','0');
INSERT INTO `yourphp_area` VALUES ('2031','2022','ç¿çç¹æ','0');
INSERT INTO `yourphp_area` VALUES ('2032','2022','ååæ²æ\','0');
INSERT INTO `yourphp_area` VALUES ('2033','2022','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2034','2022','ææ±æ\','0');
INSERT INTO `yourphp_area` VALUES ('2035','1989','éå°å¤æ¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2036','2035','ä¸èå\º','0');
INSERT INTO `yourphp_area` VALUES ('2037','2035','è¾¾æç¹æ','0');
INSERT INTO `yourphp_area` VALUES ('2038','2035','åæ ¼å°æ','0');
INSERT INTO `yourphp_area` VALUES ('2039','2035','éæååæ\','0');
INSERT INTO `yourphp_area` VALUES ('2040','2035','éæåæ','0');
INSERT INTO `yourphp_area` VALUES ('2041','2035','æ­é¦æ\','0');
INSERT INTO `yourphp_area` VALUES ('2042','2035','ä¹å®¡æ\','0');
INSERT INTO `yourphp_area` VALUES ('2043','2035','ä¼ééæ´æ\','0');
INSERT INTO `yourphp_area` VALUES ('2044','1989','å¼ä¼¦è´å°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2045','2044','æµ·æå°åº','0');
INSERT INTO `yourphp_area` VALUES ('2046','2044','é¿è£æ\','0');
INSERT INTO `yourphp_area` VALUES ('2047','2044','è«åè¾¾ç¦è¾¾æ¡å°æèªæ²»æ\','0');
INSERT INTO `yourphp_area` VALUES ('2048','2044','éä¼¦æ¥èªæ²»æ','0');
INSERT INTO `yourphp_area` VALUES ('2049','2044','éæ¸©åæèªæ²»æ\','0');
INSERT INTO `yourphp_area` VALUES ('2050','2044','éå·´å°èæ\','0');
INSERT INTO `yourphp_area` VALUES ('2051','2044','æ°å·´å°èå·¦æ','0');
INSERT INTO `yourphp_area` VALUES ('2052','2044','æ°å·´å°èå³æ','0');
INSERT INTO `yourphp_area` VALUES ('2053','2044','æ»¡æ´²éå¸','0');
INSERT INTO `yourphp_area` VALUES ('2054','2044','çåç³å¸','0');
INSERT INTO `yourphp_area` VALUES ('2055','2044','æå°å±¯å¸','0');
INSERT INTO `yourphp_area` VALUES ('2056','2044','é¢å°å¤çº³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2057','2044','æ ¹æ²³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2058','1989','éè¾½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2059','2058','ç§å°æ²åº','0');
INSERT INTO `yourphp_area` VALUES ('2060','2058','ç§å°æ²å·¦ç¿¼ä¸­æ\','0');
INSERT INTO `yourphp_area` VALUES ('2061','2058','ç§å°æ²å·¦ç¿¼åæ\','0');
INSERT INTO `yourphp_area` VALUES ('2062','2058','å¼é²å¿','0');
INSERT INTO `yourphp_area` VALUES ('2063','2058','åºä¼¦æ\','0');
INSERT INTO `yourphp_area` VALUES ('2064','2058','å¥æ¼æ\','0');
INSERT INTO `yourphp_area` VALUES ('2065','2058','æé²ç¹æ','0');
INSERT INTO `yourphp_area` VALUES ('2066','2058','éæé­åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2067','1989','ä¹æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2068','2067','æµ·åæ¹¾åº','0');
INSERT INTO `yourphp_area` VALUES ('2069','2067','æµ·åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2070','2067','ä¹è¾¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('2071','1989','ä¹å°å¯å¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2072','2071','éå®å\º','0');
INSERT INTO `yourphp_area` VALUES ('2073','2071','åèµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2074','2071','åå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2075','2071','åé½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2076','2071','å´åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2077','2071','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2078','2071','å¯åå°å³ç¿¼åæ\','0');
INSERT INTO `yourphp_area` VALUES ('2079','2071','å¯åå°å³ç¿¼ä¸­æ\','0');
INSERT INTO `yourphp_area` VALUES ('2080','2071','å¯åå°å³ç¿¼åæ\','0');
INSERT INTO `yourphp_area` VALUES ('2081','2071','åå­çæ','0');
INSERT INTO `yourphp_area` VALUES ('2082','2071','ä¸°éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2083','1989','é¡æé­åç\','0');
INSERT INTO `yourphp_area` VALUES ('2084','2083','äºè¿æµ©ç¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2085','2083','é¡ææµ©ç¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2086','2083','é¿å·´åæ','0');
INSERT INTO `yourphp_area` VALUES ('2087','2083','èå°¼ç¹å·¦æ\','0');
INSERT INTO `yourphp_area` VALUES ('2088','2083','èå°¼ç¹å³æ\','0');
INSERT INTO `yourphp_area` VALUES ('2089','2083','ä¸ä¹ç ç©æ²æ','0');
INSERT INTO `yourphp_area` VALUES ('2090','2083','è¥¿ä¹ç ç©æ²æ','0');
INSERT INTO `yourphp_area` VALUES ('2091','2083','å¤ªä»å¯ºæ','0');
INSERT INTO `yourphp_area` VALUES ('2092','2083','é¶é»æ\','0');
INSERT INTO `yourphp_area` VALUES ('2093','2083','æ­£é¶ç½æ','0');
INSERT INTO `yourphp_area` VALUES ('2094','2083','æ­£èæ\','0');
INSERT INTO `yourphp_area` VALUES ('2095','2083','å¤ä¼¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2096','1989','å´å®ç\','0');
INSERT INTO `yourphp_area` VALUES ('2097','2096','ä¹å°æµ©ç¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2098','2096','é¿å°å±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('2099','2096','ç§å°æ²å³ç¿¼åæ\','0');
INSERT INTO `yourphp_area` VALUES ('2100','2096','ç§å°æ²å³ç¿¼ä¸­æ\','0');
INSERT INTO `yourphp_area` VALUES ('2101','2096','æèµç¹æ','0');
INSERT INTO `yourphp_area` VALUES ('2102','2096','çªæ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2103','0','å®å¤','0');
INSERT INTO `yourphp_area` VALUES ('2104','2103','é¶å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2105','2104','å´åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2106','2104','è¥¿å¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('2107','2104','éå¤å\º','0');
INSERT INTO `yourphp_area` VALUES ('2108','2104','æ°¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2109','2104','è´ºå°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2110','2104','çµæ­¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2111','2103','åºåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2112','2111','åå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2113','2111','è¥¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2114','2111','éå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2115','2111','æ³¾æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2116','2111','å½­é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2117','2103','ç³å´å±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('2118','2117','å¤§æ­¦å£åº','0');
INSERT INTO `yourphp_area` VALUES ('2119','2117','æ åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2120','2117','å¹³ç½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2121','2103','å´å¿ å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2122','2121','å©éåº','0');
INSERT INTO `yourphp_area` VALUES ('2123','2121','çæ± å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2124','2121','åå¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2125','2121','ééå³¡å¸','0');
INSERT INTO `yourphp_area` VALUES ('2126','2103','ä¸­å«å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2127','2126','æ²å¡å¤´åº','0');
INSERT INTO `yourphp_area` VALUES ('2128','2126','ä¸­å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2129','2126','æµ·åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2130','0','éæµ·','0');
INSERT INTO `yourphp_area` VALUES ('2131','2130','è¥¿å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2132','2131','åä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('2133','2131','åä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2134','2131','åè¥¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('2135','2131','ååå\º','0');
INSERT INTO `yourphp_area` VALUES ('2136','2131','å¤§éåæåæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2137','2131','æ¹ä¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2138','2131','æ¹æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2139','2130','ææ´èæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2140','2139','çæ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2141','2139','ç­çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2142','2139','çå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2143','2139','è¾¾æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2144','2139','ä¹æ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2145','2139','çå¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2146','2130','æµ·åèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2147','2146','é¨æºåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2148','2146','ç¥è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2149','2146','æµ·æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2150','2146','åå¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2151','2130','æµ·ä¸å°åº','0');
INSERT INTO `yourphp_area` VALUES ('2152','2151','å¹³å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2153','2151','æ°ååæåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2154','2151','ä¹é½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2155','2151','äºå©åæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2156','2151','åéåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2157','2151','å¾ªåæææèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2158','2130','æµ·åèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2159','2158','å±åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2160','2158','åå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2161','2158','è´µå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2162','2158','å´æµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2163','2158','è´µåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2164','2130','æµ·è¥¿èå¤æèæèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('2165','2164','æ ¼å°æ¨å¸','0');
INSERT INTO `yourphp_area` VALUES ('2166','2164','å¾·ä»¤åå¸','0');
INSERT INTO `yourphp_area` VALUES ('2167','2164','ä¹å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2168','2164','é½å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2169','2164','å¤©å³»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2170','2130','é»åèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2171','2170','åä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2172','2170','å°æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2173','2170','æ³½åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2174','2170','æ²³åèå¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2175','2130','çæ èæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2176','2175','çæ å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2177','2175','æå¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2178','2175','ç§°å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2179','2175','æ²»å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2180','2175','åè°¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2181','2175','æ²éº»è±å¿','0');
INSERT INTO `yourphp_area` VALUES ('2182','0','å±±ä¸','0');
INSERT INTO `yourphp_area` VALUES ('2183','2182','æµåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2184','2183','åä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('2185','2183','å¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2186','2183','æ§è«å\º','0');
INSERT INTO `yourphp_area` VALUES ('2187','2183','å¤©æ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('2188','2183','ååå\º','0');
INSERT INTO `yourphp_area` VALUES ('2189','2183','é¿æ¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('2190','2183','å¹³é´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2191','2183','æµé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2192','2183','åæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2193','2183','ç« ä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2194','2182','æ»¨å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2195','2194','æ»¨åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2196','2194','æ æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2197','2194','é³ä¿¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2198','2194','æ æ££å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2199','2194','æ²¾åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2200','2194','åå´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2201','2194','é¹å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2202','2182','å¾·å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2203','2202','å¾·åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2204','2202','éµå¿','0');
INSERT INTO `yourphp_area` VALUES ('2205','2202','å®æ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2206','2202','åºäºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2207','2202','ä¸´éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2208','2202','é½æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2209','2202','å¹³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2210','2202','å¤æ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2211','2202','æ­¦åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2212','2202','ä¹éµå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2213','2202','ç¦¹åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2214','2182','ä¸è¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2215','2214','ä¸è¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('2216','2214','æ²³å£å\º','0');
INSERT INTO `yourphp_area` VALUES ('2217','2214','å¦å©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2218','2214','å©æ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2219','2214','å¹¿é¥¶å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2220','2182','èæ³½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2221','2220','ç¡ä¸¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('2222','2220','æ¹å¿','0');
INSERT INTO `yourphp_area` VALUES ('2223','2220','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('2224','2220','ææ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2225','2220','å·¨éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2226','2220','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2227','2220','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2228','2220','å®é¶å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2229','2220','ä¸æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2230','2182','æµå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2231','2230','å¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2232','2230','ä»»åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2233','2230','å¾®å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2234','2230','é±¼å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2235','2230','éä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2236','2230','åç¥¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2237','2230','æ±¶ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2238','2230','æ³æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2239','2230','æ¢å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2240','2230','æ²éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2241','2230','åå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2242','2230','é¹åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2243','2182','è±èå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2244','2243','è±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2245','2243','é¢åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2246','2182','èåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2247','2246','ä¸æåºåº','0');
INSERT INTO `yourphp_area` VALUES ('2248','2246','é³è°·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2249','2246','èå¿','0');
INSERT INTO `yourphp_area` VALUES ('2250','2246','èå¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2251','2246','ä¸é¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2252','2246','å å¿','0');
INSERT INTO `yourphp_area` VALUES ('2253','2246','é«åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2254','2246','ä¸´æ¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2255','2182','ä¸´æ²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2256','2255','å°å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2257','2255','ç½åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2258','2255','æ²³ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('2259','2255','æ²åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2260','2255','é¯åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2261','2255','æ²æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2262','2255','èå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2263','2255','è´¹å¿','0');
INSERT INTO `yourphp_area` VALUES ('2264','2255','å¹³éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2265','2255','èåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2266','2255','èé´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2267','2255','ä¸´æ²­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2268','2182','éå²å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2269','2268','å¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2270','2268','å¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2271','2268','åæ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('2272','2268','é»å²å\º','0');
INSERT INTO `yourphp_area` VALUES ('2273','2268','å´å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2274','2268','ææ²§å\º','0');
INSERT INTO `yourphp_area` VALUES ('2275','2268','åé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2276','2268','è¶å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2277','2268','å³å¢¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2278','2268','å¹³åº¦å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2279','2268','è¶åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2280','2268','è±è¥¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2281','2182','æ¥ç§å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2282','2281','ä¸æ¸¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('2283','2281','å²å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2284','2281','äºè²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2285','2281','èå¿','0');
INSERT INTO `yourphp_area` VALUES ('2286','2182','æ³°å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2287','2286','æ³°å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2288','2286','å²±å²³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2289','2286','å®é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2290','2286','ä¸å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2291','2286','æ°æ³°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2292','2286','è¥åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2293','2182','å¨æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2294','2293','ç¯ç¿ å\º','0');
INSERT INTO `yourphp_area` VALUES ('2295','2293','æç»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2296','2293','è£æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2297','2293','ä¹³å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2298','2182','æ½åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2299','2298','æ½åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2300','2298','å¯äº­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2301','2298','åå­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2302','2298','å¥æå\º','0');
INSERT INTO `yourphp_area` VALUES ('2303','2298','ä¸´æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2304','2298','æä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2305','2298','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2306','2298','è¯¸åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2307','2298','å¯¿åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2308','2298','å®ä¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2309','2298','é«å¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2310','2298','æéå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2311','2182','çå°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2312','2311','èç½å\º','0');
INSERT INTO `yourphp_area` VALUES ('2313','2311','ç¦å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2314','2311','çå¹³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2315','2311','è±å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2316','2311','é¿å²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2317','2311','é¾å£å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2318','2311','è±é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2319','2311','è±å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2320','2311','è¬è±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2321','2311','æè¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2322','2311','æ éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2323','2311','æµ·é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2324','2182','æ£åºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2325','2324','å¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2326','2324','èåå\º','0');
INSERT INTO `yourphp_area` VALUES ('2327','2324','å³åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2328','2324','å°å¿åºåº','0');
INSERT INTO `yourphp_area` VALUES ('2329','2324','å±±äº­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2330','2324','æ»å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2331','2182','æ·åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2332','2331','æ·å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2333','2331','å¼ åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2334','2331','åå±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2335','2331','ä¸´æ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2336','2331','å¨æå\º','0');
INSERT INTO `yourphp_area` VALUES ('2337','2331','æ¡å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2338','2331','é«éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2339','2331','æ²æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2340','0','å±±è¥¿','0');
INSERT INTO `yourphp_area` VALUES ('2341','2340','å¤ªåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2342','2341','å°åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2343','2341','è¿æ³½å\º','0');
INSERT INTO `yourphp_area` VALUES ('2344','2341','æè±å²­åº','0');
INSERT INTO `yourphp_area` VALUES ('2345','2341','å°èåªåº','0');
INSERT INTO `yourphp_area` VALUES ('2346','2341','ä¸ææåº','0');
INSERT INTO `yourphp_area` VALUES ('2347','2341','ææºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2348','2341','æ¸å¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2349','2341','é³æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2350','2341','å¨ç¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2351','2341','å¤äº¤å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2352','2340','é¿æ²»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2353','2352','ååº','0');
INSERT INTO `yourphp_area` VALUES ('2354','2352','éåº','0');
INSERT INTO `yourphp_area` VALUES ('2355','2352','é¿æ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2356','2352','è¥å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2357','2352','å±¯çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2358','2352','å¹³é¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2359','2352','é»åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2360','2352','å£¶å³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2361','2352','é¿å­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2362','2352','æ­¦ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2363','2352','æ²å¿','0');
INSERT INTO `yourphp_area` VALUES ('2364','2352','æ²æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2365','2352','æ½åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2366','2340','å¤§åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2367','2366','ååº','0');
INSERT INTO `yourphp_area` VALUES ('2368','2366','ç¿åº','0');
INSERT INTO `yourphp_area` VALUES ('2369','2366','åéå\º','0');
INSERT INTO `yourphp_area` VALUES ('2370','2366','æ°è£å\º','0');
INSERT INTO `yourphp_area` VALUES ('2371','2366','é³é«å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2372','2366','å¤©éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2373','2366','å¹¿çµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2374','2366','çµä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2375','2366','æµæºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2376','2366','å·¦äºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2377','2366','å¤§åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2378','2340','æåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2379','2378','ååº','0');
INSERT INTO `yourphp_area` VALUES ('2380','2378','æ²æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2381','2378','é³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2382','2378','éµå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2383','2378','æ³½å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2384','2378','é«å¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2385','2340','æä¸­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2386','2385','æ¦æ¬¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('2387','2385','æ¦ç¤¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2388','2385','å·¦æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2389','2385','åé¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2390','2385','æé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2391','2385','å¯¿é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2392','2385','å¤ªè°·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2393','2385','ç¥å¿','0');
INSERT INTO `yourphp_area` VALUES ('2394','2385','å¹³é¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2395','2385','çµç³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2396','2385','ä»ä¼å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2397','2340','ä¸´æ±¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2398','2397','å°§é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('2399','2397','æ²æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2400','2397','ç¿¼åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2401','2397','è¥æ±¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2402','2397','æ´ªæ´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2403','2397','å¤å¿','0');
INSERT INTO `yourphp_area` VALUES ('2404','2397','å®æ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2405','2397','æµ®å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2406','2397','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('2407','2397','ä¹¡å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2408','2397','å¤§å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2409','2397','é°å¿','0');
INSERT INTO `yourphp_area` VALUES ('2410','2397','æ°¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2411','2397','è²å¿','0');
INSERT INTO `yourphp_area` VALUES ('2412','2397','æ±¾è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2413','2397','ä¾¯é©¬å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2414','2397','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2415','2340','åæ¢å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2416','2415','ç¦»ç³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2417','2415','ææ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2418','2415','äº¤åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2419','2415','å´å¿','0');
INSERT INTO `yourphp_area` VALUES ('2420','2415','ä¸´å¿','0');
INSERT INTO `yourphp_area` VALUES ('2421','2415','æ³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2422','2415','ç³æ¥¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2423','2415','å²å¿','0');
INSERT INTO `yourphp_area` VALUES ('2424','2415','æ¹å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2425','2415','ä¸­é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2426','2415','äº¤å£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2427','2415','å­ä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2428','2415','æ±¾é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2429','2340','æå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2430','2429','æåå\º','0');
INSERT INTO `yourphp_area` VALUES ('2431','2429','å¹³é²å\º','0');
INSERT INTO `yourphp_area` VALUES ('2432','2429','å±±é´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2433','2429','åºå¿','0');
INSERT INTO `yourphp_area` VALUES ('2434','2429','å³çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2435','2429','æä»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2436','2340','å¿»å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2437','2436','å¿»åºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2438','2436','å®è¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2439','2436','äºå°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2440','2436','ä»£å¿','0');
INSERT INTO `yourphp_area` VALUES ('2441','2436','ç¹å³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2442','2436','å®æ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2443','2436','éä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2444','2436','ç¥æ± å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2445','2436','äºå¯¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2446','2436','å²¢å²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2447','2436','æ²³æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2448','2436','ä¿å¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2449','2436','åå³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2450','2436','åå¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2451','2340','é³æ³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2452','2451','ååº','0');
INSERT INTO `yourphp_area` VALUES ('2453','2451','ç¿åº','0');
INSERT INTO `yourphp_area` VALUES ('2454','2451','éåº','0');
INSERT INTO `yourphp_area` VALUES ('2455','2451','å¹³å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2456','2451','çå¿','0');
INSERT INTO `yourphp_area` VALUES ('2457','2340','è¿åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2458','2457','çæ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('2459','2457','ä¸´çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2460','2457','ä¸è£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2461','2457','é»åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2462','2457','ç¨·å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2463','2457','æ°ç»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2464','2457','ç»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2465','2457','å£æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2466','2457','å¤å¿','0');
INSERT INTO `yourphp_area` VALUES ('2467','2457','å¹³éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2468','2457','è®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2469','2457','æ°¸æµå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2470','2457','æ²³æ´¥å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2471','0','éè¥¿','0');
INSERT INTO `yourphp_area` VALUES ('2472','2471','è¥¿å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2473','2472','æ°åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2474','2472','ç¢æå\º','0');
INSERT INTO `yourphp_area` VALUES ('2475','2472','è²æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('2476','2472','çæ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('2477','2472','æªå¤®å\º','0');
INSERT INTO `yourphp_area` VALUES ('2478','2472','éå¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('2479','2472','éè¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('2480','2472','ä¸´æ½¼å\º','0');
INSERT INTO `yourphp_area` VALUES ('2481','2472','é¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('2482','2472','èç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2483','2472','å¨è³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2484','2472','æ·å¿','0');
INSERT INTO `yourphp_area` VALUES ('2485','2472','é«éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2486','2471','å®åº·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2487','2486','æ±æ»¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('2488','2486','æ±é´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2489','2486','ç³æ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2490','2486','å®éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2491','2486','ç´«é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2492','2486','å²çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2493','2486','å¹³å©å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2494','2486','éåªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2495','2486','æ¬é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2496','2486','ç½æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2497','2471','å®é¸¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2498','2497','æ¸­æ»¨å\º','0');
INSERT INTO `yourphp_area` VALUES ('2499','2497','éå°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2500','2497','éä»å\º','0');
INSERT INTO `yourphp_area` VALUES ('2501','2497','å¤ç¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2502','2497','å²å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2503','2497','æ¶é£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2504','2497','çå¿','0');
INSERT INTO `yourphp_area` VALUES ('2505','2497','éå¿','0');
INSERT INTO `yourphp_area` VALUES ('2506','2497','åé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2507','2497','éºæ¸¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2508','2497','å¤å¿','0');
INSERT INTO `yourphp_area` VALUES ('2509','2497','å¤ªç½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2510','2471','æ±ä¸­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2511','2510','æ±å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2512','2510','åéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2513','2510','ååºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2514','2510','æ´å¿','0');
INSERT INTO `yourphp_area` VALUES ('2515','2510','è¥¿ä¹¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2516','2510','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('2517','2510','å®å¼ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2518','2510','ç¥é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2519','2510','éå·´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2520','2510','çåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2521','2510','ä½åªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2522','2471','åæ´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2523','2522','åå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2524','2522','æ´åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2525','2522','ä¸¹å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2526','2522','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2527','2522','å±±é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2528','2522','éå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2529','2522','ææ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2530','2471','éå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2531','2530','ççå\º','0');
INSERT INTO `yourphp_area` VALUES ('2532','2530','å°å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2533','2530','èå·åº','0');
INSERT INTO `yourphp_area` VALUES ('2534','2530','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2535','2471','æ¸­åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2536','2535','ä¸´æ¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2537','2535','åå¿','0');
INSERT INTO `yourphp_area` VALUES ('2538','2535','æ½¼å³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2539','2535','å¤§èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2540','2535','åé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2541','2535','æ¾åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2542','2535','è²åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2543','2535','ç½æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2544','2535','å¯å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2545','2535','é©åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2546','2535','åé´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2547','2471','å¸é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2548','2547','ç§¦é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('2549','2547','æ¨åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2550','2547','æ¸­åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2551','2547','ä¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2552','2547','æ³¾é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2553','2547','ä¹¾å¿','0');
INSERT INTO `yourphp_area` VALUES ('2554','2547','ç¤¼æ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2555','2547','æ°¸å¯¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2556','2547','å½¬å¿','0');
INSERT INTO `yourphp_area` VALUES ('2557','2547','é¿æ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2558','2547','æ¬éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2559','2547','æ·³åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2560','2547','æ­¦åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2561','2547','å´å¹³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2562','2471','å»¶å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2563','2562','å®å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('2564','2562','å»¶é¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2565','2562','å»¶å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2566','2562','å­é¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2567','2562','å®å¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2568','2562','å¿ä¸¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2569','2562','å´æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2570','2562','çæ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2571','2562','å¯å¿','0');
INSERT INTO `yourphp_area` VALUES ('2572','2562','æ´å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2573','2562','å®å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2574','2562','é»é¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2575','2562','é»éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2576','2471','æ¦æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2577','2576','æ¦é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2578','2576','ç¥æ¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2579','2576','åºè°·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2580','2576','æ¨ªå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2581','2576','éè¾¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2582','2576','å®è¾¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2583','2576','ç»¥å¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2584','2576','ç±³èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2585','2576','ä½³å¿','0');
INSERT INTO `yourphp_area` VALUES ('2586','2576','å´å ¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2587','2576','æ¸æ¶§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2588','2576','å­æ´²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2589','0','åå·','0');
INSERT INTO `yourphp_area` VALUES ('2590','2589','æé½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2591','2590','é¦æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2592','2590','éç¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('2593','2590','éçå\º','0');
INSERT INTO `yourphp_area` VALUES ('2594','2590','æ­¦ä¾¯å\º','0');
INSERT INTO `yourphp_area` VALUES ('2595','2590','æåå\º','0');
INSERT INTO `yourphp_area` VALUES ('2596','2590','é¾æ³é©¿åº','0');
INSERT INTO `yourphp_area` VALUES ('2597','2590','éç½æ±åº','0');
INSERT INTO `yourphp_area` VALUES ('2598','2590','æ°é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('2599','2590','æ¸©æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2600','2590','éå å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2601','2590','åæµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2602','2590','é«å¿','0');
INSERT INTO `yourphp_area` VALUES ('2603','2590','å¤§éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2604','2590','è²æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2605','2590','æ°æ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2606','2590','é½æ±å °å¸','0');
INSERT INTO `yourphp_area` VALUES ('2607','2590','å½­å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2608','2590','éå´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2609','2590','å´å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2610','2589','é¿åèæç¾æèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2611','2610','æ±¶å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2612','2610','çå¿','0');
INSERT INTO `yourphp_area` VALUES ('2613','2610','èå¿','0');
INSERT INTO `yourphp_area` VALUES ('2614','2610','æ¾æ½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2615','2610','ä¹å¯¨æ²å¿','0');
INSERT INTO `yourphp_area` VALUES ('2616','2610','éå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2617','2610','å°éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2618','2610','é»æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2619','2610','é©¬å°åº·å¿','0');
INSERT INTO `yourphp_area` VALUES ('2620','2610','å£¤å¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2621','2610','é¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2622','2610','è¥å°çå¿','0');
INSERT INTO `yourphp_area` VALUES ('2623','2610','çº¢åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2624','2589','å·´ä¸­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2625','2624','å·´å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2626','2624','éæ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2627','2624','åæ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2628','2624','å¹³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2629','2589','è¾¾å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2630','2629','éå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2631','2629','è¾¾å¿','0');
INSERT INTO `yourphp_area` VALUES ('2632','2629','å®£æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2633','2629','å¼æ±å¿','0');
INSERT INTO `yourphp_area` VALUES ('2634','2629','å¤§ç«¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2635','2629','æ¸ å¿','0');
INSERT INTO `yourphp_area` VALUES ('2636','2629','ä¸æºå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2637','2589','å¾·é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2638','2637','æé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2639','2637','ä¸­æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2640','2637','ç½æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2641','2637','å¹¿æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2642','2637','ä»é¡å¸','0');
INSERT INTO `yourphp_area` VALUES ('2643','2637','ç»µç«¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2644','2589','çå­èæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2645','2644','åº·å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2646','2644','æ³¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2647','2644','ä¸¹å·´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2648','2644','ä¹é¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2649','2644','éæ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2650','2644','éå­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2651','2644','çéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2652','2644','çå­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2653','2644','æ°é¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2654','2644','å¾·æ ¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2655','2644','ç½çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2656','2644','ç³æ¸ å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2657','2644','è²è¾¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2658','2644','çå¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2659','2644','å·´å¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2660','2644','ä¹¡åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2661','2644','ç¨»åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2662','2644','å¾è£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2663','2589','å¹¿å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2664','2663','å¹¿å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('2665','2663','å²³æ± å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2666','2663','æ­¦èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2667','2663','é»æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2668','2663','åè¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2669','2589','å¹¿åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2670','2669','å¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2671','2669','ååå\º','0');
INSERT INTO `yourphp_area` VALUES ('2672','2669','æå¤©å\º','0');
INSERT INTO `yourphp_area` VALUES ('2673','2669','æºèå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2674','2669','éå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2675','2669','åéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2676','2669','èæºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2677','2589','ä¹å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2678','2677','å¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2679','2677','æ²æ¹¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('2680','2677','äºéæ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('2681','2677','éå£æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('2682','2677','çä¸ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2683','2677','äºç å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2684','2677','å¤¹æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2685','2677','æ²å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2686','2677','å³¨è¾¹å½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2687','2677','é©¬è¾¹å½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2688','2677','å³¨çå±±å¸','0');
INSERT INTO `yourphp_area` VALUES ('2689','2589','åå±±å½æèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2690','2689','è¥¿æå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2691','2689','æ¨éèæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2692','2689','çæºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2693','2689','å¾·æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2694','2689','ä¼çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2695','2689','ä¼ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2696','2689','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2697','2689','æ®æ ¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2698','2689','å¸æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2699','2689','éé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2700','2689','æ­è§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2701','2689','åå¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2702','2689','åå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2703','2689','è¶è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2704','2689','çæ´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2705','2689','ç¾å§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2706','2689','é·æ³¢å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2707','2589','æ³¸å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2708','2707','æ±é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2709','2707','çº³æºªå\º','0');
INSERT INTO `yourphp_area` VALUES ('2710','2707','é¾é©¬æ½­åº','0');
INSERT INTO `yourphp_area` VALUES ('2711','2707','æ³¸å¿','0');
INSERT INTO `yourphp_area` VALUES ('2712','2707','åæ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2713','2707','åæ°¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2714','2707','å¤èºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2715','2589','çå±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2716','2715','ä¸å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('2717','2715','ä»å¯¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2718','2715','å½­å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2719','2715','æ´ªéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2720','2715','ä¸¹æ£±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2721','2715','éç¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2722','2589','ç»µé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2723','2722','æ¶ªåå\º','0');
INSERT INTO `yourphp_area` VALUES ('2724','2722','æ¸¸ä»å\º','0');
INSERT INTO `yourphp_area` VALUES ('2725','2722','ä¸å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2726','2722','çäº­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2727','2722','å®å¿','0');
INSERT INTO `yourphp_area` VALUES ('2728','2722','æ¢æ½¼å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2729','2722','åå·ç¾æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2730','2722','å¹³æ­¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2731','2722','æ±æ²¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2732','2589','åæ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2733','2732','å¸ä¸­å\º','0');
INSERT INTO `yourphp_area` VALUES ('2734','2732','ä¸å´å\º','0');
INSERT INTO `yourphp_area` VALUES ('2735','2732','å¨è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2736','2732','èµä¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2737','2732','éæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2738','2589','ååå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2739','2738','é¡ºåºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2740','2738','é«åªå\º','0');
INSERT INTO `yourphp_area` VALUES ('2741','2738','åéµå\º','0');
INSERT INTO `yourphp_area` VALUES ('2742','2738','åé¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2743','2738','è¥å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2744','2738','è¬å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2745','2738','ä»ªéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2746','2738','è¥¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2747','2738','éä¸­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2748','2589','ææè±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2749','2748','ä¸åº','0');
INSERT INTO `yourphp_area` VALUES ('2750','2748','è¥¿åº','0');
INSERT INTO `yourphp_area` VALUES ('2751','2748','ä»åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2752','2748','ç±³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2753','2748','çè¾¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2754','2589','éå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2755','2754','è¹å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2756','2754','å®å±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2757','2754','è¬æºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2758','2754','å°æ´ªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2759','2754','å¤§è±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2760','2589','éå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2761','2760','é¨åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2762','2760','åå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2763','2760','è¥ç»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2764','2760','æ±æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2765','2760','ç³æ£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2766','2760','å¤©å¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2767','2760','è¦å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2768','2760','å®å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2769','2589','å®å®¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2770','2769','ç¿ å±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2771','2769','å®å®¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2772','2769','åæºªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2773','2769','æ±å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2774','2769','é¿å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2775','2769','é«å¿','0');
INSERT INTO `yourphp_area` VALUES ('2776','2769','çå¿','0');
INSERT INTO `yourphp_area` VALUES ('2777','2769','ç­ è¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2778','2769','å´æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2779','2769','å±å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2780','2589','èµé³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2781','2780','éæ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2782','2780','å®å²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2783','2780','ä¹è³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2784','2780','ç®é³å¸','0');
INSERT INTO `yourphp_area` VALUES ('2785','2589','èªè´¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2786','2785','èªæµäºåº','0');
INSERT INTO `yourphp_area` VALUES ('2787','2785','è´¡äºå\º','0');
INSERT INTO `yourphp_area` VALUES ('2788','2785','å¤§å®å\º','0');
INSERT INTO `yourphp_area` VALUES ('2789','2785','æ²¿æ»©å\º','0');
INSERT INTO `yourphp_area` VALUES ('2790','2785','è£å¿','0');
INSERT INTO `yourphp_area` VALUES ('2791','2785','å¯é¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2792','0','è¥¿è','0');
INSERT INTO `yourphp_area` VALUES ('2793','2792','æè¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2794','2793','åå³å\º','0');
INSERT INTO `yourphp_area` VALUES ('2795','2793','æå¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2796','2793','å½éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2797','2793','å°¼æ¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2798','2793','æ²æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2799','2793','å é¾å¾·åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2800','2793','è¾¾å­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2801','2793','å¢¨ç«¹å·¥å¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2802','2792','é¿éå°åº','0');
INSERT INTO `yourphp_area` VALUES ('2803','2802','æ®å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2804','2802','æ­è¾¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2805','2802','å¶å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2806','2802','æ¥åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2807','2802','é©åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2808','2802','æ¹åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2809','2802','æªå¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2810','2792','æé½å°åº','0');
INSERT INTO `yourphp_area` VALUES ('2811','2810','æé½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2812','2810','æ±è¾¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2813','2810','è´¡è§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2814','2810','ç±»ä¹é½å¿','0');
INSERT INTO `yourphp_area` VALUES ('2815','2810','ä¸éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2816','2810','å¯éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2817','2810','å«å®¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2818','2810','å·¦è´¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2819','2810','èåº·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2820','2810','æ´éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2821','2810','è¾¹åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2822','2792','æèå°åº','0');
INSERT INTO `yourphp_area` VALUES ('2823','2822','æèå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2824','2822','å·¥å¸æ±è¾¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2825','2822','ç±³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2826','2822','å¢¨è±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2827','2822','æ³¢å¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2828','2822','å¯éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2829','2822','æå¿','0');
INSERT INTO `yourphp_area` VALUES ('2830','2792','é£æ²å°åº','0');
INSERT INTO `yourphp_area` VALUES ('2831','2830','é£æ²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2832','2830','åé»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2833','2830','æ¯å¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2834','2830','èè£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2835','2830','å®å¤å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2836','2830','ç³æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2837','2830','ç´¢å¿','0');
INSERT INTO `yourphp_area` VALUES ('2838','2830','ç­æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2839','2830','å·´éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2840','2830','å°¼çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2841','2792','æ¥ååå°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2842','2841','æ¥ååå¸','0');
INSERT INTO `yourphp_area` VALUES ('2843','2841','åæ¨æå¿','0');
INSERT INTO `yourphp_area` VALUES ('2844','2841','æ±å­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2845','2841','å®æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2846','2841','è¨è¿¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2847','2841','æå­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2848','2841','æä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2849','2841','è°¢éé¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2850','2841','ç½æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2851','2841','ä»å¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2852','2841','åº·é©¬å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2853','2841','å®ç»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2854','2841','ä»²å·´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2855','2841','äºä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2856','2841','åéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2857','2841','èææ¨å¿','0');
INSERT INTO `yourphp_area` VALUES ('2858','2841','è¨åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2859','2841','å²å·´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2860','2792','å±±åå°åº','0');
INSERT INTO `yourphp_area` VALUES ('2861','2860','ä¹ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2862','2860','æåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2863','2860','è´¡åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2864','2860','æ¡æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2865','2860','ç¼ç»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2866','2860','æ²æ¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2867','2860','æªç¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2868','2860','æ´æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2869','2860','å æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2870','2860','éå­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2871','2860','éé£å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2872','2860','æµªå¡å­å¿','0');
INSERT INTO `yourphp_area` VALUES ('2873','0','æ°ç','0');
INSERT INTO `yourphp_area` VALUES ('2874','2873','ä¹é²æ¨é½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2875','2874','å¤©å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2876','2874','æ²ä¾å·´åå\º','0');
INSERT INTO `yourphp_area` VALUES ('2877','2874','æ°å¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('2878','2874','æ°´ç£¨æ²åº','0');
INSERT INTO `yourphp_area` VALUES ('2879','2874','å¤´å±¯æ²³åº','0');
INSERT INTO `yourphp_area` VALUES ('2880','2874','è¾¾åååº','0');
INSERT INTO `yourphp_area` VALUES ('2881','2874','ä¸å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2882','2874','ä¹é²æ¨é½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2883','2873','é¿åèå°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2884','2883','é¿åèå¸','0');
INSERT INTO `yourphp_area` VALUES ('2885','2883','æ¸©å®¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2886','2883','åºè½¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2887','2883','æ²éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2888','2883','æ°åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2889','2883','æåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2890','2883','ä¹ä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2891','2883','é¿ç¦æå¿','0');
INSERT INTO `yourphp_area` VALUES ('2892','2883','æ¯åªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2893','2873','é¿æå°å¸','0');
INSERT INTO `yourphp_area` VALUES ('2894','2873','é¿åæ³°å°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2895','2894','é¿åæ³°å¸','0');
INSERT INTO `yourphp_area` VALUES ('2896','2894','å¸å°æ´¥å¿','0');
INSERT INTO `yourphp_area` VALUES ('2897','2894','å¯è´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2898','2894','ç¦æµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2899','2894','åå·´æ²³å¿','0');
INSERT INTO `yourphp_area` VALUES ('2900','2894','éæ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2901','2894','åæ¨ä¹å¿','0');
INSERT INTO `yourphp_area` VALUES ('2902','2873','å·´é³é­æ¥èå¤èªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2903','2902','åºå°åå¸','0');
INSERT INTO `yourphp_area` VALUES ('2904','2902','è½®å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2905','2902','å°çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2906','2902','è¥ç¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2907','2902','ä¸æ«å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2908','2902','çèåæèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2909','2902','åéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2910','2902','åç¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2911','2902','åæ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2912','2873','åå°å¡æèå¤èªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2913','2912','åä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2914','2912','ç²¾æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2915','2912','æ¸©æ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2916','2873','æååæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2917','2916','æåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2918','2916','éåº·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2919','2916','ç±³æ³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2920','2916','å¼å¾å£å¿','0');
INSERT INTO `yourphp_area` VALUES ('2921','2916','ççº³æ¯å¿','0');
INSERT INTO `yourphp_area` VALUES ('2922','2916','å¥å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2923','2916','åæ¨è¨å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2924','2916','æ¨ååè¨åèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2925','2873','åå¯å°åº','0');
INSERT INTO `yourphp_area` VALUES ('2926','2925','åå¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2927','2925','å·´éå¤åè¨åèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2928','2925','ä¼å¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2929','2873','åç°å°åº','0');
INSERT INTO `yourphp_area` VALUES ('2930','2929','åç°å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2931','2929','åç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2932','2929','å¢¨çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2933','2929','ç®å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2934','2929','æ´æµ¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2935','2929','ç­åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2936','2929','äºç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2937','2929','æ°ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2938','2873','åä»å°åº','0');
INSERT INTO `yourphp_area` VALUES ('2939','2938','åä»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2940','2938','çéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2941','2938','çåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2942','2938','è±åæ²å¿','0');
INSERT INTO `yourphp_area` VALUES ('2943','2938','æ³½æ®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2944','2938','èè½¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2945','2938','å¶åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2946','2938','éº¦çæå¿','0');
INSERT INTO `yourphp_area` VALUES ('2947','2938','å²³æ®æ¹å¿','0');
INSERT INTO `yourphp_area` VALUES ('2948','2938','ä¼½å¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2949','2938','å·´æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2950','2938','å¡ä»åºå°å¹²å¡ååèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2951','2873','åæçä¾å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2952','2951','ç¬å±±å­åº','0');
INSERT INTO `yourphp_area` VALUES ('2953','2951','åæçä¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('2954','2951','ç½ç¢±æ»©åº','0');
INSERT INTO `yourphp_area` VALUES ('2955','2951','ä¹å°ç¦¾åº','0');
INSERT INTO `yourphp_area` VALUES ('2956','2873','åå­åèæ¯å°åå­èªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('2957','2956','é¿å¾ä»å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2958','2956','é¿åé¶å¿','0');
INSERT INTO `yourphp_area` VALUES ('2959','2956','é¿åå¥å¿','0');
INSERT INTO `yourphp_area` VALUES ('2960','2956','ä¹æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2961','2873','ç³æ²³å­å¸','0');
INSERT INTO `yourphp_area` VALUES ('2962','2873','å¡åå°åº','0');
INSERT INTO `yourphp_area` VALUES ('2963','2962','å¡åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2964','2962','ä¹èå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2965','2962','é¢æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2966','2962','æ²æ¹¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2967','2962','æéå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2968','2962','è£æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2969','2962','åå¸åèµå°èå¤èªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('2970','2873','å¾æ¨èåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2971','2873','åé²çªå°å\º','0');
INSERT INTO `yourphp_area` VALUES ('2972','2971','åé²çªå¸','0');
INSERT INTO `yourphp_area` VALUES ('2973','2971','é¯åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2974','2971','æåéå¿','0');
INSERT INTO `yourphp_area` VALUES ('2975','2873','äºå®¶æ¸ å¸','0');
INSERT INTO `yourphp_area` VALUES ('2976','2873','ä¼çåè¨åèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('2977','2976','ä¼å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2978','2976','å¥å±¯å¸\','0');
INSERT INTO `yourphp_area` VALUES ('2979','2976','ä¼å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2980','2976','å¯å¸æ¥å°é¡ä¼¯èªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2981','2976','éåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2982','2976','å·©çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2983','2976','æ°æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2984','2976','æ­èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('2985','2976','ç¹åæ¯å¿','0');
INSERT INTO `yourphp_area` VALUES ('2986','2976','å°¼ååå¿','0');
INSERT INTO `yourphp_area` VALUES ('2987','0','äºå','0');
INSERT INTO `yourphp_area` VALUES ('2988','2987','ææå¸\','0');
INSERT INTO `yourphp_area` VALUES ('2989','2988','äºåå\º','0');
INSERT INTO `yourphp_area` VALUES ('2990','2988','çé¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('2991','2988','å®æ¸¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('2992','2988','è¥¿å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('2993','2988','ä¸å·å\º','0');
INSERT INTO `yourphp_area` VALUES ('2994','2988','åè´¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2995','2988','æå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2996','2988','å¯æ°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2997','2988','å®è¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2998','2988','ç³æå½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('2999','2988','åµ©æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3000','2988','ç¦åå½æèæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3001','2988','å¯»ç¸åæå½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3002','2988','å®å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3003','2987','ä¿å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3004','3003','éé³å\º','0');
INSERT INTO `yourphp_area` VALUES ('3005','3003','æ½ç¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3006','3003','è¾å²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3007','3003','é¾éµå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3008','3003','æå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3009','2987','æ¥éå½æèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('3010','3009','æ¥éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3011','3009','åæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3012','3009','çå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3013','3009','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3014','3009','å§å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3015','3009','å¤§å§å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3016','3009','æ°¸ä»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3017','3009','åè°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3018','3009','æ­¦å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3019','3009','ç¦ä¸°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3020','2987','å¤§çç½æèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('3021','3020','å¤§çå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3022','3020','æ¼¾æ¿å½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3023','3020','ç¥¥äºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3024','3020','å®¾å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3025','3020','å¼¥æ¸¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3026','3020','åæ¶§å½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3027','3020','å·å±±å½æåæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3028','3020','æ°¸å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3029','3020','äºé¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3030','3020','æ´±æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3031','3020','åå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3032','3020','é¹¤åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3033','2987','å¾·å®å£ææ¯é¢æèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('3034','3033','çä¸½å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3035','3033','æ½è¥¿å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3036','3033','æ¢æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3037','3033','çæ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3038','3033','éå·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3039','2987','è¿ªåºèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('3040','3039','é¦æ ¼éæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3041','3039','å¾·é¦å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3042','3039','ç»´è¥¿åå³æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3043','2987','çº¢æ²³åå°¼æå½æèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('3044','3043','ä¸ªæ§å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3045','3043','å¼è¿å¸','0');
INSERT INTO `yourphp_area` VALUES ('3046','3043','èèªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3047','3043','å±è¾¹èæèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3048','3043','å»ºæ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3049','3043','ç³å±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3050','3043','å¼¥åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3051','3043','æ³¸è¥¿å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3052','3043','åé³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3053','3043','çº¢æ²³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3054','3043','éå¹³èæç¶æå£æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3055','3043','ç»¿æ¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3056','3043','æ²³å£ç¶æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3057','2987','ä¸½æ±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3058','3057','å¤åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3059','3057','çé¾çº³è¥¿æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3060','3057','æ°¸èå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3061','3057','ååªå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3062','3057','å®èå½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3063','2987','ä¸´æ²§å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3064','3063','ä¸´ç¿å\º','0');
INSERT INTO `yourphp_area` VALUES ('3065','3063','å¤åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3066','3063','äºå¿','0');
INSERT INTO `yourphp_area` VALUES ('3067','3063','æ°¸å¾·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3068','3063','éåº·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3069','3063','åæ±æç¥æä½¤æå¸ææå£æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3070','3063','è¿é©¬å£æä½¤æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3071','3063','æ²§æºä½¤æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3072','2987','ææ±åå³æèªæ²»å·','0');
INSERT INTO `yourphp_area` VALUES ('3073','3072','æ³¸æ°´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3074','3072','ç¦è´¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3075','3072','è´¡å±±ç¬é¾æææèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3076','3072','å°åªç½ææ®ç±³æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3077','2987','æ²éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3078','3077','éºéºå\º','0');
INSERT INTO `yourphp_area` VALUES ('3079','3077','é©¬é¾å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3080','3077','éè¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3081','3077','å¸å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3082','3077','ç½å¹³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3083','3077','å¯æºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3084','3077','ä¼æ³½å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3085','3077','æ²¾çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3086','3077','å®£å¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3087','2987','æèå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3088','3087','ç¿ äºå\º','0');
INSERT INTO `yourphp_area` VALUES ('3089','3087','æ®æ´±åå°¼æå½æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3090','3087','å¢¨æ±åå°¼æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3091','3087','æ¯ä¸å½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3092','3087','æ¯è°·å£æå½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3093','3087','éæ²å½æåå°¼ææç¥æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3094','3087','æ±ååå°¼æå½æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3095','3087','å­è¿å£ææç¥æä½¤æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3096','3087','æ¾æ²§æç¥æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3097','3087','è¥¿çä½¤æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3098','2987','æå±±å£®æèæèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('3099','3098','æå±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3100','3098','ç å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3101','3098','è¥¿ç´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3102','3098','éº»æ å¡å¿','0');
INSERT INTO `yourphp_area` VALUES ('3103','3098','é©¬å³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3104','3098','ä¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3105','3098','å¹¿åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3106','3098','å¯å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3107','2987','è¥¿åççº³å£æèªæ²»å·\','0');
INSERT INTO `yourphp_area` VALUES ('3108','3107','æ¯æ´ªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3109','3107','åæµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3110','3107','åèå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3111','2987','çæºªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3112','3111','çº¢å¡å\º','0');
INSERT INTO `yourphp_area` VALUES ('3113','3111','æ±å·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3114','3111','æ¾æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3115','3111','éæµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3116','3111','åå®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3117','3111','æé¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3118','3111','å³¨å±±å½æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3119','3111','æ°å¹³å½æå£æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3120','3111','åæ±åå°¼æå½æå£æèªæ²»å¿','0');
INSERT INTO `yourphp_area` VALUES ('3121','2987','æ­éå¸','0');
INSERT INTO `yourphp_area` VALUES ('3122','3121','æ­é³å\º','0');
INSERT INTO `yourphp_area` VALUES ('3123','3121','é²ç¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3124','3121','å·§å®¶å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3125','3121','çæ´¥å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3126','3121','å¤§å³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3127','3121','æ°¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3128','3121','ç»¥æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3129','3121','ééå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3130','3121','å½è¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3131','3121','å¨ä¿¡å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3132','3121','æ°´å¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3133','0','æµæ±','0');
INSERT INTO `yourphp_area` VALUES ('3134','3133','æ­å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3135','3134','ä¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3136','3134','ä¸åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3137','3134','æ±å¹²å\º','0');
INSERT INTO `yourphp_area` VALUES ('3138','3134','æ±å¢å\º','0');
INSERT INTO `yourphp_area` VALUES ('3139','3134','è¥¿æ¹å\º','0');
INSERT INTO `yourphp_area` VALUES ('3140','3134','æ»¨æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('3141','3134','è§å±±å\º','0');
INSERT INTO `yourphp_area` VALUES ('3142','3134','ä½æ­å\º','0');
INSERT INTO `yourphp_area` VALUES ('3143','3134','æ¡åºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3144','3134','æ·³å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3145','3134','å»ºå¾·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3146','3134','å¯é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3147','3134','ä¸´å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3148','3133','æ¹å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3149','3148','å´å´å\º','0');
INSERT INTO `yourphp_area` VALUES ('3150','3148','åæµå\º','0');
INSERT INTO `yourphp_area` VALUES ('3151','3148','å¾·æ¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3152','3148','é¿å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3153','3148','å®åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3154','3133','åå´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3155','3154','ç§ååº','0');
INSERT INTO `yourphp_area` VALUES ('3156','3154','ç§æ´²åº','0');
INSERT INTO `yourphp_area` VALUES ('3157','3154','ååå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3158','3154','æµ·çå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3159','3154','æµ·å®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3160','3154','å¹³æ¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3161','3154','æ¡ä¹¡å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3162','3133','éåå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3163','3162','å©ºåå\º','0');
INSERT INTO `yourphp_area` VALUES ('3164','3162','éä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('3165','3162','æ­¦ä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3166','3162','æµ¦æ±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3167','3162','ç£å®å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3168','3162','å°æºªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3169','3162','ä¹ä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3170','3162','ä¸é³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3171','3162','æ°¸åº·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3172','3133','ä¸½æ°´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3173','3172','è²é½å\º','0');
INSERT INTO `yourphp_area` VALUES ('3174','3172','éç°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3175','3172','ç¼äºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3176','3172','éæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3177','3172','æ¾é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3178','3172','äºåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3179','3172','åºåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3180','3172','æ¯å®ç²æèªæ²»å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3181','3172','é¾æ³å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3182','3133','å®æ³¢å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3183','3182','æµ·æå\º','0');
INSERT INTO `yourphp_area` VALUES ('3184','3182','æ±ä¸å\º','0');
INSERT INTO `yourphp_area` VALUES ('3185','3182','æ±åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3186','3182','åä»å\º','0');
INSERT INTO `yourphp_area` VALUES ('3187','3182','éæµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('3188','3182','éå·å\º','0');
INSERT INTO `yourphp_area` VALUES ('3189','3182','è±¡å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3190','3182','å®æµ·å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3191','3182','ä½å§å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3192','3182','ææºªå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3193','3182','å¥åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3194','3133','è¡¢å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3195','3194','æ¯åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3196','3194','è¡¢æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('3197','3194','å¸¸å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3198','3194','å¼åå¿','0');
INSERT INTO `yourphp_area` VALUES ('3199','3194','é¾æ¸¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3200','3194','æ±å±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3201','3133','ç»å´å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3202','3201','è¶åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3203','3201','ç»å´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3204','3201','æ°æå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3205','3201','è¯¸æ¨å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3206','3201','ä¸èå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3207','3201','åµå·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3208','3133','å°å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3209','3208','æ¤æ±å\º','0');
INSERT INTO `yourphp_area` VALUES ('3210','3208','é»å²©å\º','0');
INSERT INTO `yourphp_area` VALUES ('3211','3208','è·¯æ¡¥å\º','0');
INSERT INTO `yourphp_area` VALUES ('3212','3208','çç¯å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3213','3208','ä¸é¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3214','3208','å¤©å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3215','3208','ä»å±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3216','3208','æ¸©å²­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3217','3208','ä¸´æµ·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3218','3133','æ¸©å·å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3219','3218','é¹¿åå\º','0');
INSERT INTO `yourphp_area` VALUES ('3220','3218','é¾æ¹¾å\º','0');
INSERT INTO `yourphp_area` VALUES ('3221','3218','ç¯æµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('3222','3218','æ´å¤´å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3223','3218','æ°¸åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3224','3218','å¹³é³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3225','3218','èåå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3226','3218','ææå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3227','3218','æ³°é¡ºå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3228','3218','çå®å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3229','3218','ä¹æ¸å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3230','3133','èå±±å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3231','3230','å®æµ·å\º','0');
INSERT INTO `yourphp_area` VALUES ('3232','3230','æ®éå\º','0');
INSERT INTO `yourphp_area` VALUES ('3233','3230','å²±å±±å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3234','3230','åµæ³å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3235','0','é¦æ¸¯','0');
INSERT INTO `yourphp_area` VALUES ('3236','3235','ä¹é¾','0');
INSERT INTO `yourphp_area` VALUES ('3237','3235','é¦æ¸¯å²\','0');
INSERT INTO `yourphp_area` VALUES ('3238','3235','æ°ç','0');
INSERT INTO `yourphp_area` VALUES ('3239','0','æ¾³é¨','0');
INSERT INTO `yourphp_area` VALUES ('3240','3239','æ¾³é¨åå²','0');
INSERT INTO `yourphp_area` VALUES ('3241','3239','ç¦»å²','0');
INSERT INTO `yourphp_area` VALUES ('3242','0','å°æ¹¾','0');
INSERT INTO `yourphp_area` VALUES ('3243','3242','å°åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3244','3242','é«éå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3245','3242','é«éå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3246','3242','è±è²å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3247','3242','åºéå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3248','3242','åä¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3249','3242','åä¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3250','3242','éé¨å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3251','3242','èæ å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3252','3242','åæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3253','3242','æ¾æ¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3254','3242','å±ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3255','3242','å°åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3256','3242','å°ä¸å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3257','3242','å°åå¸\','0');
INSERT INTO `yourphp_area` VALUES ('3258','3242','å°åå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3259','3242','å°ä¸­å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3260','3242','å°ä¸­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3261','3242','æ¡å­å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3262','3242','æ°ç«¹å¸\','0');
INSERT INTO `yourphp_area` VALUES ('3263','3242','æ°ç«¹å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3264','3242','å®å°å\¿','0');
INSERT INTO `yourphp_area` VALUES ('3265','3242','äºæå\¿','0');
INSERT INTO `yourphp_area` VALUES ('3266','3242','å½°åå\¿','0');
INSERT INTO `yourphp_article` VALUES ('2','24','1','pingphp','æ¥æ','','','','','æ¥ææ¯æ¸¯äº¤æå¬å¸ä¸å¸çæ®æ éèéå¢çåéæ§æä¸çä¸ªäººéèç»¼åæå¡å¹³å°ï¼è´åäºä¸ºå¹¿å¤§ç¨æ·æä¾å¤å±æ¬¡ãå¨æ¹ä½ãæè´å®å¨ãæè´ä½éªçæèµçè´¢æå¡ã\','<p style=\"color:#3F3F3F;font-family:&quot;microsoft YAHEI&quot;;background-color:#FFFFFF;\">\r\n	<span style=\"color:black;font-family:Calibri;font-size:44pt;\"> </span><span style=\"color:black;font-family:å®ä½;font-size:16pt;\">æ\¥</span><span style=\"color:black;font-family:å®ä½;font-size:16pt;\">ææ¯æ¸¯äº¤æå¬å¸ä¸å¸çæ®æ éèéå¢çåéæ§æä¸çä¸ªäººéèç»¼åæå¡å¹³å°ï¼è´åäºä¸ºå¹¿å¤§ç¨æ·æä¾å¤å±æ¬¡ãå¨æ¹ä½ãæè´å®å¨ãæè´ä½éªçæèµçè´¢æå¡</span><span style=\"color:black;font-family:å®ä½;font-size:16pt;\">ã\</span>\r\n</p>','0','/Uploads/201603/56e5691c56624.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=2','42','1457493144','1457877211','','0');
INSERT INTO `yourphp_article` VALUES ('3','22','1','pingphp','å»çå»è¯',';font-weight:bold','','','','æå¯é æ°æ®ç»è®¡ï¼è¶è¿å­æçæºè½ææºç¨æ·ä¼å©ç¨ç©ºä½æ¶é´æ¥ä½¿ç¨å¥åº·å»çå«çç±»çAPPåºç¨ãå»çå«çç±»çææºåºç¨è½¯ä»¶è½æè¿å»çæºæä¸æºè½ææºç¨æ·ã\ æ®éå®¶åº­ä½¿ç¨èçè·ç¦»ï¼éè¿ææºé®å»ãææºå¥åº·æµè¯ãææºæå·ãæ...','<p style=\"color:#888888;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>æä¸å»é¢<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"text-indent:21pt;\">å¨ä¼ ç»çå»çè¡ä¸ç°ç¶ä¸ï¼æ£èå¯¹å»é¢ç¼ºä¹äºè§£ãä¿¡æ¯ä¸å¯¹ç§°ï¼èççé¾ãççç¦ãççæ¢ï¼æå¡ä¸å°ä½å¯¼è´å»æ£å³ç³»ç´§å¼ ï¼é¨åå»é¢åçå½¢è±¡ç¼ºä¹ãå¨ç§»å¨äºèç½æ¶ä»£ï¼åªéè½»å¨ææï¼åä¸ç«å¼æ¹åå°±å»ä½éªã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><b style=\"text-indent:-28pt;\">æ ¸å¿ç®æ </b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"text-indent:-21pt;\">ä¸ã\</span><span style=\"text-indent:-21pt;\">æåå»é¢åçå½¢è±¡</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æä¸å»é¢<span>APP</span>ä¸ºç¨æ·å±ç°å»é¢æ´ä½å½¢è±¡ãåè¿è®¾å¤ãæå¨ä¸å®¶åæå¡é¡¹ç®ï¼è®©ç¨æ·äº§çä¿¡ä»»åå¥½æã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"text-indent:21pt;\">äºãå¸å¼å»æ£èµæº\</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æä¸å»é¢<span>APP</span>å¯ä»¥è®©å»é¢éè¿è¯¥ç§»å¨åºç¨å¹³å°åç¸å³çå®£ä¼ æ¨å¹¿ï¼å·²è¾¾å°è®©å»é¢éè¿è¯¥äº§åå¸å¼å¤§æ¹ç¨æ·çç®æ ã\\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;\">ä¸ãç¼è§£å»é¢æ®éå­å¨çâä¸é¿ä¸ç­âé®é¢\</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;\">æä¸å»é¢</span><span style=\"text-indent:21pt;\">APP</span><span style=\"text-indent:21pt;\">ä¼åå»é¢ç°æè¯çæµç¨ï¼ç¼è§£æ®éå­å¨çâä¸é¿ä¸ç­âé®é¢ï¼å³æå·æé¿éï¼ç¼´è´¹æé¿éï¼æ£æ¥æé¿éï¼çå»çæ¶é´ç­é®é¢ã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"text-indent:21pt;\">åãç¼è§£å»æ£ä¿¡æ¯ä¸å¯¹ç§°é®é¢</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æä¸å»é¢<span>APP</span>ä¸ºæ£èæä¾èªå©æå¡ï¼æ¹ä¾¿æ£èäºè§£ææ£ç¾çãäºè§£æ£æ¥åéªé¡¹ç®ãäºè§£ç¸å³è¯åãè½å¤çææ£æ¥åéªåï¼è½å¤çæå¤æ¹ï¼è½å¤ç´¢åèªå·±ççµå­çåç­ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>äº§ååè½<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"text-indent:21pt;\">æä¸å»é¢</span><span style=\"text-indent:21pt;\">APP</span><span style=\"text-indent:21pt;\">æ¯çæ­£æä¹ä¸çé¢åé¨è¯å¨æµç¨çç§»å¨å»çå¹³å°ï¼æ¯å®å¨è´´åå»é¢å°±è¯æµç¨èè®¾è®¡ï¼å¹¶ä¸æä¾äºææçå»æ£æ²éå¹³å°ï¼å¨æé«äºæ£èæ»¡æåº¦çåæä¸ï¼ä¹æåäºå»ççæå¡æ°´å¹³ãä»é®è¯äººä½éªåºåï¼ä»¥æ¶æ¯éç¥ä¸ºæ ¸å¿ï¼è¦çé¨è¯å°±å»å¨æµç¨ï¼ä¸ºé®è¯äººæä¾ä¾¿æ·çé¨è¯æå¡ã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><b style=\"text-indent:-24pt;\">&nbsp; &nbsp; &nbsp; &nbsp;1.</b><b style=\"text-indent:-24pt;\">é¢çº¦æå·</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ç¨æ·è½å¤éè¿<span>APP</span>è¿è¡å¨çº¿é¢çº¦ççæå¡ï¼åæ¶å®åå°±å»é¢çº¦ä¿¡æ¯ï¼ç³»ç»å°±è½å¤æºè½ä¸ºç¨æ·å¹éç¸å³çä¸ä¸å»çè¿è¡å°±è¯\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span style=\"text-indent:-28px;\">é¢çº¦æå·âéæ©ç§å®¤âéæ©å»ç</span><span style=\"text-indent:-21pt;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e66f2f30491.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æå¼äºä»¥å¾å¾å½¢å¯¼è¯è¿äºä¸ä¸åçç¾çåè¯ï¼ä»æ£èå®éä½éªåºåï¼æ¹ç¨ä»¥çç¶é®ç­ä¸ºæ ¸å¿çäº¤äºæ¨¡å¼ï¼å¸®å©æ£èå®æåæ­¥åè¯ï¼ç¡®å®æå·ç§å®¤ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	éæ©å°±è¯æ¶é´<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e66f89ec420.jpg\" /> \r\n</p>\r\n&nbsp;\r\n<p class=\"MsoNormal\">\r\n	<b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;2.</b><b>å¨çº¿æ¯ä»<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.1pt;text-indent:-21.1pt;\">\r\n	<b><span>&nbsp;</span></b><span style=\"text-indent:21pt;\">ææºæ¯ä»ï¼èçæ¶é´ãç½ç»å»é\¢</span><span style=\"text-indent:21pt;\">APP</span><span style=\"text-indent:21pt;\">å¯æ¯ä»æå·è´¹ãè¯è´¹ãæ£æ¥è´¹ç­åç±»è´¹ç¨ï¼åæéå½ç¶çæ¶çå¿çåï¼</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><img src=\"/Uploads/201603/56e66fdb8f80e.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<b>3.</b><b>è¯æ­æ¥å<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ç¨æ·å¨å°±è¯çè¿ç¨ä¸­ï¼ä¸ºç¨æ·è®°å½é¨è¯çåãä½æ£æ¥åãå»çè¯æ­ãæ£æ¥æ¥åãçæµæ°æ®ç­åå®¹ï¼ä¸ºç¨æ·éæ¶çåæ¡£æ¡æ¥è¯¢ï¼æ¹ä¾¿å»çåæ¶äºè§£æ£èçç¶åµã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<b>4.</b><b>å»é¢å½¢è±¡<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<b>&nbsp;</b><b><u><img src=\"/Uploads/201603/56e66ff39ea4f.jpg\" /></u></b> \r\n</p>\r\n<b><u></u></b><b><u></u></b> \r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<b>&nbsp;</b><b style=\"text-indent:-24pt;\">5.</b><b style=\"text-indent:-24pt;\">å¶ä»åè½</b> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	å®æ¶æå·ï¼å¯éè¿è¯çå¡ä½é¢å®æ¶æ¯ä»ãå®æ¶è·åé¨è¯å·æºï¼å®æ¶éå®å·æºï¼å®æ¶ä½é¢æ¯ä»æé¶è¡å¡å¿«æ·æ¯ä»ï¼éåæµç¨çªå£å®æã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æºè½åè¯ï¼å®æ¶ææ¡å½åæéç¶æï¼åå°æ£èç¦èï¼æ ¹æ®è§åï¼æéæ£èå°±è¯ï¼åå°åå¤é®è¯¢ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	è¯çå¡åå¼ï¼åè®¸é®è¯äººå®æ¶æ¥è¯¢ä½é¢ï¼æ¯æä¸»æµé¶è¡å¡ãåè®°å¡åå¼ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	è¯åéå¯¹çæåæåº¦è¯ä»·ï¼å³å®ç°äºå¬å¼çç£ï¼åå¯ä»¥å¸®å©æ£èæ´åç¡®çéæ©ç¹é¿å»çã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æ¶æ¯æ¨éï¼éè¿<span>APP</span>æ¨éç»ç¨æ·ææ°çå»çæ¿ç­ãæéç¨æ·ææ¶ç¨è¯ãå¥åº·èµè®¯ç­ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	æ£èçåç®¡çï¼å»çå\¨<span>APP</span>ä¸ç®¡çæ£èççåï¼çæ§æ£èçèº«ä½ç°ç¶ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	äºå¨æ´»å¨ï¼éè¿åçº¢åç­æ¹å¼ï¼å¸å¼ç¨æ·å°é¢æ£æ¥èº«ä½ã\<span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#888888;font-family:&quot;background-color:#FFFFFF;\">\r\n	<b></b> \r\n</p>','0','/Uploads/201603/56e27c7a87f10.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=3','152','1457493943','1458273813','','0');
INSERT INTO `yourphp_article` VALUES ('4','22','1','pingphp','ç§»å¨åå¬',';font-weight:bold','','','','å©ç¨ææºçAPPå®ä½ãæéä¸ä¾¿æºç­ç¹ç¹ï¼æå¯¹ä¸å¡äººåçç®¡çåæ¯ææ¬å°ææºä¸ãå®ç°å¯¹ä¸å¡å¢éâç§»å¨åç®¡çâAPPå®ä½ä¸éæ¶ä¸æ¥ä½ç½®åéä»»å¡è´£ä»»å°äººè®¡ååäºä¸ææ¡ä¸ç´è®¾ç½®æéé¿åå¿äºè®°å½è¿å±å®å¨ææ§æ²éåå­å¨ä¼\...','<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>ç§»å¨åå¬app</b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"text-indent:-28px;\">ç§»å¨åå¬ç³»ç»æ¯é¢åä¼ä¸æä¾é¨ç½²çç§»å¨åå¬ç³»ç»ï¼å·æå¯éç½®çåè½æ¨¡åï¼çµæ´»çæµç¨ç®¡çåéç½®æ¨¡å¼ï¼\</span><span style=\"text-indent:-28px;\">ç®åæç¨çä½¿ç¨ä½éªï¼å¹¶å¯ä»¥åºäºä¼ä¸çéæ±è¿è¡ç§æé¨ç½²åå®å¶å¼åã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<b style=\"text-indent:-28pt;\">æ ¸å¿ç®æ </b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">ä¸ãæ­å»ºååä¿¡æ¯å¨ç§»å¨ç»ç«¯å±ç¤ºå¹³å°ï¼æé«ä¼ä¸æå¡è½åï¼</span><span style=\"text-indent:21pt;\">&nbsp;</span><span style=\"text-indent:21pt;\">ä¸å¡æ¯è¾ç¹å¿ï¼ç»å¸¸åºå·®ï¼å¸æå¨å¤å°ä¹å¯ä»¥å¾æ¹ä¾¿å°ç»å½åé¨åå¬ç³»ç»ï¼åæ¶åæ¥é®é¢ï¼è°åèµæï¼æ»ç»åä½;</span><span style=\"text-indent:21pt;\">&nbsp;&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">äºãç®¡çäººåå¤èäºå¡ç¹å¤ï¼éæ¶éè¦æ¥çãè°ç¨ãå®¡æ¹åé¨çèµæææ¡£ï¼å¯¹å¬å¸äºå¡è¿è¡ç®¡çï¼éè¦ä¸ç§å¨ä»»ä½åºåãä»»ä½å°ç¹é½è½ç»å½åé¨åå¬ç³»ç»çä¿¡æ¯åäº§åï¼</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">ä¸ãå¿«èå¥çç¤¾ä¼ï¼åä¸äºæä¸äºçªååæå¤æåµçåçï¼éè¦æä¸å¥ç³»ç»ï¼å¯ä»¥ä¸åå®¢è§æ¡ä»¶å¶çº¦ï¼è½å¨äºä»¶åççæç­äºä»¶åï¼å°äºæä¸æ¥ãä¼ è¾¾ç»åé¨çç¸å³äººåï¼</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">åãç¸å³äººååé¢å¯¼å±è½ä¸åå®¢è§æåµéå¶ï¼å¿«éåæ¶å¯¹åæ æåµä½åºæç¤ºåå³å®ã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿åè½<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	ä¸ãç¾¤ç»\<span>-</span>æ¹ä¾¿çç»ç»åæ±éèµæ\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span style=\"text-indent:21pt;\">ææç¨æ·åå¯å»ºç«ç¾¤ç»ï¼åå¬å¼åç§å¯ï¼</span><span style=\"text-indent:21pt;\">ç¾¤ç»æ¥æèå¯ç®¡çç¾¤ç»åç¨æ·ï¼ç§»é¤ãæ·»å ãè®¾ç½®ç¾¤ç»ç®¡çåã\</span> \r\n</p>\r\n<p>\r\n	äºãéè®¯å½\-ä¾¿å©çæ¥æ¾åèç³»åäº\r\n</p>\r\n<p>\r\n	<span style=\"text-indent:21pt;\">æåäºï¼å§åï¼ãé¨é¨åç±»æ¾ç¤ºï¼æä¾æç´¢åè½ãç¹å»èç³»äººå¯è¿å¥èç³»äººè¯¦ç»ä¿¡æ¯ï¼æ¾ç¤ºä¸ªäººä¿¡æ¯ï¼å¯å å³æ³¨ãç­ä¿¡ãéè¯ãå¯å¨åéä¼ä¸å¾®ä¿¡ãæé¨é¨æ¶ï¼åå«é¨é¨å¨æåé¨é¨ææ¡£ã\</span> \r\n</p>\r\n<p>\r\n	ä¸ãå·¥ä½æ¥å\-å³æ³¨åå·¥æ¯å¤©çå·¥ä½ç¶æ\\r\n</p>\r\n<p style=\"text-indent:0px;\">\r\n	<span style=\"text-indent:21pt;\">åä¸ºæäº¤ç»æçæ¥ååææäº¤çæ¥åï¼æ¥ååæ¥æ¥åå¨æ¥ä¸¤ç±»ãå¨å¿è®°æäº¤æ¥åæ¶ï¼å¯ä»¥éè¿å¾®ä¿¡æ¶æ¯èªå¨æéãæ¥åå®¹ä¸ºæ¬æ¥æ»ç»ãææ¥è®¡åï¼å¨æ¥åå®¹ä¸ºæ¬å¨æ»ç»ãä¸å¨è®¡åï¼åè®¾ç½®æ¹éäººåæéäººï¼æ¹éäººå¯ä¸éæ©ï¼æéäººå¯å¤éã\</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	åãå¨æ\-ä¼ä¸åæåæåµå¿«éå±äº\«\r\n</p>\r\n<p>\r\n	<span style=\"text-indent:21pt;\">åä¸ºå³æ³¨çå¨æãå¨é¨å¨æåæçæ¶èï¼åç±»æ¾ç¤ºãå¨æåå¸ï¼é»è®¤å¬å¼åå¸ä¿¡æ¯ï¼å¯åæ¶@ä¸äººæå¤äººï¼å¨éè®¯å½éæ©äººåï¼å¯åå¸å¾çãè¯­é³ãå°çä½ç½®ç­ä¿¡æ¯ã\</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e574be46aed.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=4','180','1457518574','1457941845','','0');
INSERT INTO `yourphp_article` VALUES ('7','23','1','pingphp','æä¸å»é¢','','å¤§æ°æ\®,çæ´»','','','æä¸å»é¢APPä»¥ç§»å¨äºèç½ç»ç«¯ä¸ºè½½ä½ï¼æå¤§ç¨åº¦çç®åå°±å»æµç¨ï¼ä¸ºå®ç°é«æãä¾¿æ·ä¼è´¨çå»çæå¡åé ç¯å¢ãå¯å®ç°é¢çº¦æå·ãæéæ¥è¯¢ãæ¥åæ¥è¯¢ãåå»ä»ç»ãå»é¢å¯¼èªãç§»å¨æ¯ä»ç­åè½ã\\r\n','<p style=\"text-align:justify;text-indent:2em;font-family:&quot;Hiragino Sans GB&quot;, &quot;Open Sans&quot;, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯éé», STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif;font-size:16px;vertical-align:baseline;\">\r\n	æä¸å»é¢APPä»¥ç§»å¨äºèç½ç»ç«¯ä¸ºè½½ä½ï¼æå¤§ç¨åº¦çç®åå°±å»æµç¨ï¼ä¸ºå®ç°é«æãä¾¿æ·ä¼è´¨çå»çæå¡åé ç¯å¢ãå¯å®ç°é¢çº¦æå·ãæéæ¥è¯¢ãæ¥åæ¥è¯¢ãåå»ä»ç»ãå»é¢å¯¼èªãç§»å¨æ¯ä»ç­åè½ã\\r\n</p>','0','/Uploads/201603/56e56a0b72465.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=7','28','1457597740','1457877082','','0');
INSERT INTO `yourphp_article` VALUES ('8','26','2','hello','å¥½é»ä¾¿å©',';font-weight:bold','','','','å¥½é»ä¾¿å©ï¼æ¯å¨å½ææ°æå¨çä¾¿å©åºé»é¡µï¼å¯ä»¥éè¿éæ©çå°çä½ç½®æèªå¨å®ä½çæ¹æ³ï¼æ¥æ¾éè¿çä¾¿å©åºãåæ¶æä¾è¿äºä¾¿å©åºççµè¯åååä¿¡æ¯ï¼æ¹ä¾¿ç¨æ·è´­ä¹°ã\\r\n','<p align=\"left\" class=\"MsoNormal\" style=\"text-indent:21pt;\">\r\n	å¥½é»ä¾¿å©ï¼æ¯å¨å½ææ°æå¨çä¾¿å©åºé»é¡µï¼å¯ä»¥éè¿éæ©çå°çä½ç½®æèªå¨å®ä½çæ¹æ³ï¼æ¥æ¾éè¿çä¾¿å©åºãåæ¶æä¾è¿äºä¾¿å©åºççµè¯åååä¿¡æ¯ï¼æ¹ä¾¿ç¨æ·è´­ä¹°ã\\r\n</p>','0','/Uploads/201603/56e568cf4d940.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=8','32','1457689827','1457876863','','0');
INSERT INTO `yourphp_article` VALUES ('9','22','2','hello','çµå­åå¡',';font-weight:bold','','','','è¯¥ç§»å¨è§£å³æ¹æ¡æ¨å¨å©ç¨æåè¿çç§»å¨äºèææ¯ï¼ä»¥ç¨æ·éæ±ä¸ºä¸­å¿ï¼ä¸æ­ä¼åãæä¾æ æä¸å¨çæå¡ï¼ä¸ºçµåä¼ä¸æä¾âæ´ç¤¾äº¤åãæ´ä½ææ¬ãæ´ä¸ªæ§åâçæå¡ï¼ä¸æ­å®åç§»å¨è´­ç©åºæ¯ï¼...','<p class=\"MsoNormal\">\r\n	<b>ç§»å¨åå<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:-28px;margin-left:21pt;\">\r\n	<span style=\"text-indent:21pt;\">&nbsp; &nbsp; &nbsp; &nbsp;æè¿é«å</span><span style=\"text-indent:21pt;\">O2O</span><span style=\"text-indent:21pt;\">çµåç§»å¨è§£å³æ¹æ¡æ¨å¨å©ç¨æåè¿çç§»å¨äºèææ¯ï¼ä»¥ç¨æ·éæ±ä¸ºä¸­å¿ï¼ä¸æ­ä¼åãæä¾æ æä¸å¨çæå¡ï¼ä¸ºçµåä¼ä¸æä¾âæ´ç¤¾äº¤åãæ´ä½ææ¬ãæ´ä¸ªæ§åâçæå¡ï¼ä¸æ­å®åç§»å¨è´­ç©åºæ¯ï¼æé æä½³ç¨æ·ä½éªï¼æ¨å¨ä¸­å½ç§»å¨äºèç½è¡ä¸çå¿«éåå±ã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	å å³ç­è·¯å¾åç°åºç¤¾äº¤åçç¹æ§ï¼è¯¥æ¹æ¡å°éæä¼ ç»çµåæ¨¡å¼ãç³»ç»éè¿å¾®åãå¾®ä¿¡ã\<span>H5</span>ç­ç¤¾äº¤å·¥å·è¿è¡ååä¿¡æ¯çä¼ æ­ååäº«ï¼è¾¾å°å®¢æ·æ°éç­æå¿«éå¢é¿ï¼æä¾åºäºç¤¾ä¼ååååæå¡çç§»å¨è´­ç©ä½éªã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>æ ¸å¿ç®æ <span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"text-indent:-21pt;\">ä¸ãæ­å»ºååä¿¡æ¯å¨ç§»å¨ç»ç«¯å±ç¤ºå¹³å°ï¼æé«ä¼ä¸æå¡è½åï¼</span><span style=\"text-indent:-21pt;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	äºãææºéèº«æºå¸¦ï¼éæ¶æµè§ï¼å®¢æ·å¯ä»¥å¨ç½ç»å®ç°è®¢è´§ï¼æ¥çè´§åä¿¡æ¯ï¼åå®¶å¯ä»¥æä¾æ´å å¿«æ·çæå¡ï¼æ©å±ä¸å¡çº¿ï¼æé«å®¢æ·å¿ è¯åº¦ï¼<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	ä¸ãç²¾åè¥éï¼å é¢åæºãå¯ä»¥ç´è§çï¼å¿«æ·çç¬¬ä¸æ¶é´æåå®¶çææ°äº§åä¿¡æ¯ãä¿éä¿¡æ¯ç­æ¨éå°å®¢æ·æä¸­ï¼\<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	åãæ¹ä¾¿éæå°çä½ç½®ç³»ç»ï¼å®ç°çº¿ä¸ãçº¿ä¸èå¨ï¼<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	äºãæ¹ä¾¿æå±å¤ç§æ¯ä»æ¥å£ï¼å¢å¤åä¸æºä¼ï¼\<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	å­ãéè¿åå°å¯ä»¥ç®¡çåæ¶éç®æ å®¢æ·æ°æ®ä¿æåæ¬¡æ¶è´¹ï¼<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	ä¸ãéè¿äºç»´ç ãå¹¿åãæç´¢å¼ææ¨å¹¿ç­æ¹å¼ï¼å¼å¯¼ç®æ å®¢æ·å®è£æ¬è½¯ä»¶ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>ååæ¨¡å¼<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p>\r\n	<b><img src=\"/Uploads/201603/56e66a345c69f.jpg\" /> </b> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:24.1pt;text-indent:-24.1pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<b>æ ¸å¿åè½</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.1pt;text-indent:-28.1pt;\">\r\n	<span style=\"text-indent:21pt;\">å¨ç§»å¨äºèç½æ¶ä»£ï¼çµåå¹³å\°</span><span style=\"text-indent:21pt;\">7</span><span style=\"text-indent:21pt;\">å¤\©</span><span style=\"text-indent:21pt;\">*24</span><span style=\"text-indent:21pt;\">å°æ¶ä¸æçï¼æ¶è´¹èéè¿ç¢çåæ¶é´å®æäº¤æï¼å®ç°éæ¶éå°è´­ç©ï¼ææ\º</span><span style=\"text-indent:21pt;\">App</span><span style=\"text-indent:21pt;\">åååå¾®ä¿¡å¾®åºä¸ä½ååºç¨ï¼ä¸ºä¼ä¸è¥éæé¿æ³¨å¥æ°å¨åï¼</span><span style=\"text-indent:21pt;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	ä¸ãéè¿ææº<span>App</span>åå¾®ä¿¡å¾®åºï¼éå®ååæ¨å¹¿ä¼ä¸ã\<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;\">\r\n	äºãä¼æ ææ£ä¿¡æ¯ï¼æ¨éå°æ¶è´¹èææºåå¾®ä¿¡ã\<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;\">\r\n	ä¸ãææºç®¡çè®¢ååå¨è¯¢ï¼å®æ¶æå¡ã\<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoListParagraph\" align=\"left\" style=\"margin-left:21pt;text-indent:-21pt;\">\r\n	åãæä¼ä¸ä»ç»<span>/</span>ååéå\®<span>/</span>é®é¢å¨è¯¢<span>/</span>ææºæ¯ä»<span>/</span>ä¼æ ææ£æ¨é\<span>/</span>ä¼åç®¡çç­ä¸°å¯åè½ã\<span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<br />\r\n</p>','0','/Uploads/201603/56e5698bbac10.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=9','154','1457876361','1458273990','','0');
INSERT INTO `yourphp_article` VALUES ('10','22','2','hello','é¤é¥®å¤å',';font-weight:bold','','','','éè¿é¤åAPPå¯å®ç°ææºç¹é¤ãè®¢é¤ãçµå­ä¼åå¡ãå¯¼èªå°åºãç­¾å°ä¼æ ãæä¸æãä¿¡æ¯æ¨éãä¸é®å¼å«ãææºè®¢ä½ãäºç»´ç éªè¯ãå¨çº¿æ¯ä»ãåæç­äºå¨åè½ã\  ','<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>ç§»å¨é¤é¥®<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"text-indent:21pt;\">éçæºè½ä¿¡æ¯æ¶ä»£çè¿æ­¥ï¼ä¼ ç»çç»è¥æ¨¡å¼æ­£å¨éæ­¥çè¢«æ°çæ¹å¼åä»£ãéåºç§»å¨äºèç½åå±çç»è¥æ¨¡å¼æè½è®©ä¼ä¸å¿«éé«æçåå±ãç§»å\¨</span><span style=\"text-indent:21pt;\">app</span><span style=\"text-indent:21pt;\">è¥éå°æ¯ä¼ä¸è´èçæ³å®ï¼</span><span style=\"text-indent:21pt;\">è¶æ¥è¶å¤çåå®¶æä½äºæ®éå¤§ä¼çå¿çï¼å¨ä¼æ ä¿¡æ¯ååå®¶ç¹è²ä¸é½æ¯è±è´¹äºå¾å¤§çç²¾åãè¿æ¯å±äºèªå·±çä¸ä¸ªåé¨åçï¼ç´æ¥å½±åçæ´ä¸ªåæ·ç¾¤ä½çèµ°åãéè¿</span><span style=\"text-indent:21pt;\">app</span><span style=\"text-indent:21pt;\">è½å¤å°åå®¶çç¹è²ãææ°çä¼æ ä¿¡æ¯åæ¶çæ¨éå°æ¯ä¸ªç¨æ·çæä¸­ãéè¿è¿ç§å¾ªåºæ¸è¿çæ¨éï¼å¯ä»¥å°åå®¶çç¹è²å¤§èå´çå®£ä¼ åºå»ã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span><img src=\"/Uploads/201603/56e5697a660d8.png\" /> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿ç®æ <span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	æåä¼ä¸å½¢è±¡ï¼\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	ç§»å¨äºèç½çåå±æ¨å¨äºç§»å\¨<span>app</span>åççå¤§èå´æ¨å¹¿ãè¶æ¥è¶å¤çåå®¶å°\<span>app</span>æé æèªå·±çä¼ä¸å½¢è±¡ï¼ä»èæ¿ä»£ä¼ ç»çä¼ä¸ç½ç«ãæ ç«è¯å¥½çç§»å¨åçã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>æå®½è¥éæ¸ éï¼\</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	ç§»å¨<span>app</span>å¯ä»¥ç²¾åå®ä½åä¼äººç¾¤ï¼åæ¶çå°ä¸çº§ä¿éåä¼æ ä¿¡æ¯æ¨éå°æ¯ä½é¡¾å®¢çæä¸ãè®©é¡¾å®¢å¨ç¬¬ä¸æ¶é´äºè§£ï¼è¿å°å¤§å¤§çåå°å®£ä¼ ææ¬ï¼åä½è¿è¥è´¹ç¨ãèä¸è¿ç§ç§»å¨<span>app</span>è¥éæ¸ éå°±æçå¯ä¿¡åº¦é«ãäºå¨æ§æå¼ºçç¹ç¹ãå¹¶ä¸è¿è½ææçå¢å èå®¢æ·çç²åº¦ï¼å¸å¼åæ¬¡æ¶è´¹ã\<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	æºè½åä¼ä¸ç®¡çï¼<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	éç<span>app</span>çä¸æ­åå±åå®åï¼ä¸ä½å¨ä¼ä¸è¿è¥åè·å¾ä¸è´çå¥½è¯ï¼å¨ä¼ä¸æºè½åç®¡çä¸æ´è½å®ç¾çå±ç°ãå¨ä¿¡æ¯é«éåå±çä»å¤©ï¼è¶æ¥è¶å¤çç¨æ·é½å·²ç»ä¹ æ¯äºç²¾ç®åçç®¡çæ¨¡å¼ãä¼ä¸åé¨çç®¡çå¶åº¦ä¹å®å¨å¯ä»¥ä¾é\ <span>app</span>è¿è¡å®æ¶ãå¯ä»¥ä¼åçå®ç°ç§å­¦çä¼ä¸ç®¡çã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	å³æ¶åäº«åè¯è®ºï¼<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	ç°å¨è¶æ¥è¶å¤çäººç¾¤å¼å§å¨åå®¶æå¡åæ¹é¢æçé«è¦æ±ãå¯¹äºæå¡å¥½çåå®¶ï¼é¡¾å®¢å¾å¾å¯¹å¶çè¯ä»·ä¸è´å¾é«å¹¶ä¸è¿äºé¡¾å®¢çç²åº¦æå¥½ãä»ä»¬ä¼éè¿<span>app</span>å°åå®¶ä¿¡æ¯åäº«ç»èªå·±çæåï¼æ å½¢ä¸­ä¹ç»åå®¶åäºä¸æ¬¡å®£ä¼ ãç®åå¾å¤ç<span>app</span>ä¸­é½ä¼å å¥å°è¯è®ºååäº«çæ¨¡åï¼é¡¾å®¢å¯ä»¥è®²èªå·±ççå°çãåå°å°çä¸ååäº«ç»æ¯ä¸ªäººãåäºæ´è½å¯¹åå®¶çä¸è¶³ä¹å¤ååºè¯è®ºï¼æå©äºåå®¶å¨æå¡æ¹é¢çæåã\\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"text-indent:0cm;\">&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b>æ¨¡å¼<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	éè¿é¤å<span>APP</span>å¯å®ç°ææºç¹é¤ãè®¢é¤ãçµå­ä¼åå¡ãå¯¼èªå°åºãç­¾å°ä¼æ ãæä¸æãä¿¡æ¯æ¨éãä¸é®å¼å«ãææºè®¢ä½ãäºç»´ç éªè¯ãå¨çº¿æ¯ä»ãåæç­äºå¨åè½ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	ä¸»è¦åè½ï¼\<span>&nbsp; </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>1</span>ãææºè®¢é¤ï¼<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>2</span>ãä¼ååè\½<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>3</span>ãç­¾å°ä¼æ ï¼<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>4</span>ãä¿¡æ¯æ¨éï¼<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>5</span>ãææºè®¢ä½ï¼<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;\">\r\n	<span>6</span>ãå¨çº¿æ¯ä»ç­ç­\<span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e6685249419.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:left;margin-left:0.38in;\">\r\n	<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n</div>','0','/Uploads/201603/56e5697a660d8.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=10','189','1457877929','1458273781','','0');
INSERT INTO `yourphp_article` VALUES ('11','23','2','hello','äºå»','','','','','äºå»æ¯ä¸ºå¨å½å»çãè¯å¸ãåå¸ãæ¤å£«ãå»å­¦çéèº«æé çç§»å¨ç¤¾äº¤Appï¼äºå»å®è¡å®åè®¤è¯ï¼æ¯æçº¯åçå»æ¤äº¤æµå¹³å°è´­ã\','äºå»æ¯ä¸ºå¨å½å»çãè¯å¸ãåå¸ãæ¤å£«ãå»å­¦çéèº«æé çç§»å¨ç¤¾äº¤Appï¼äºå»å®è¡å®åè®¤è¯ï¼æ¯æçº¯åçå»æ¤äº¤æµå¹³å°è´­ã\','0','/Uploads/201603/56e569f4514db.png','0','1','1','','0','0','/index.php?m=Article&a=show&id=11','18','1457878402','1457878465','','0');
INSERT INTO `yourphp_article` VALUES ('12','26','2','hello','ä¿åå\','','','','','ä¿ååç§»å¨åºç¨å®¢æ·ç«¯æ¯é¡¶çº§å¥¢åæè¡°æ¤è¤åçä¿åå²çå®æ¹APPï¼è®¾æç§æä¸åºãå¢è´­ä¸åºï¼ç­¾å°é¢ç§¯åï¼æ¯æ¥æ½å¤§å¥ï¼è±ªç¤¼ä¸åæ­ç­åè½ï¼ä¸ºå®¢æ·å¸¦æ¥å¨æ°è´­ç©ä½éªã\','ä¿ååç§»å¨åºç¨å®¢æ·ç«¯æ¯é¡¶çº§å¥¢åæè¡°æ¤è¤åçä¿åå²çå®æ¹APPï¼è®¾æç§æä¸åºãå¢è´­ä¸åºï¼ç­¾å°é¢ç§¯åï¼æ¯æ¥æ½å¤§å¥ï¼è±ªç¤¼ä¸åæ­ç­åè½ï¼ä¸ºå®¢æ·å¸¦æ¥å¨æ°è´­ç©ä½éªã\','0','/Uploads/201603/56e57719d3f5a.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=12','58','1457878823','1457939077','','0');
INSERT INTO `yourphp_article` VALUES ('17','22','2','hello','çé²çµå','','','','','çé²ç±»APPå¼åæ¹æ¡\ Â  Â Â åäº§ç´ä¾çå½¢å¼æ¯éççé²çµåè¡ä¸çå´èµ·èäº§çï¼å¯¹äºå¸¸æ¸©ç©æµè½å¤å®æçäº§åï¼å¶æå¥ææ¬æ´ä½ï¼åæ¶ææè§£å³äºä¾åºé¾é®é¢ä¹éä¹è§£å³ï¼å¹¶ä¸æä¸ºå¹³å°ç±»ååç´çé²çµåä¸æ­åå±...','<p style=\"font-weight:400;font-size:24px;color:#333333;font-family:å®ä½;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:24px;\">çé²ç±»APPå¼å\</span><span style=\"font-size:24px;\">æ¹æ¡</span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e8d09838fda.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-weight:400;font-size:24px;color:#333333;font-family:å®ä½;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;åäº§ç´ä¾çå½¢å¼æ¯éççé²çµåè¡ä¸çå´èµ·èäº§çï¼å¯¹äºå¸¸æ¸©ç©æµè½å¤å®æçäº§åï¼å¶æå¥ææ¬æ´ä½ï¼åæ¶ææè§£å³äºä¾åºé¾é®é¢ä¹éä¹è§£å³ï¼å¹¶ä¸æä¸ºå¹³å°ç±»ååç´çé²çµåä¸æ­åå±çæ¹å¼ãçé²APPå¼åå¯¹äºåäº§ç´ä¾çæ¹å¼æçæ·±è¿çæä¹ãä¼ä¸æçå¼æ¾çå¿æï¼å¼å±ä¸çº¿ä¸é¶å®ä¼ä¼´åç§å½¢å¼çæ·±åº¦åä½ï¼å°ä¼ ç»é¶å®åå·²ç»ç§¯ç´¯çä¼è´¨èµæºä¸æä»¬çäºèç½ææ¯ãä¾åºé¾ç®¡çä¼å¿ç¸ç»åãä¼ ç»é¶å®åçè§¦ç½å°ä½¿ä»ä»¬æ´å¹¿æ³å°è§¦è¾¾ç¨æ·ãæ©å¤§ä¸å¡è§æ¨¡ï¼èæä»¬å°åå©B2Cä¸å¡ä¸ºæ¶è´¹èæä¾æ´åè¶çç¨æ·ä½éªï¼æåç¨æ·é»åº¦çç­ç¥ãçº¿ä¸çº¿ä¸æºæï¼å±ååèµ¢æ¨¡å¼ãå±åæ°åå±å¸¦æ¥ççº¢å©ã\</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; çé²APPæ¯éå¯¹ç¤¾åºççé²å®éå¹³å°ææºå®¢æ·ç«¯ï¼ä»¥B2Cçµå­åå¡ä¸ºè½½ä½ï¼ä»¥çé²ç´æç«ä¸ºç¤¾åºæå¡ç¹ï¼ç±åä¸çäº§åºå°ç´ä¾å°äº§çé²è³ç¤¾åºï¼ç­éå·é¾ééï¼ç´æä¿é²ææºè½ä¿é²ï¼ä»åäº§ååºå°å°é¤æ¡å¨ç¨çæ§åäº§åè´¨éï¼å¨æ¹ä½ä¿éé£åå®å¨ï¼ä¸ºç¨æ·å®ç°è½»æ¾ä¾¿æ·çè´­ä¹°çé²é£åã\</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">çé²APPé¢ä¸´çä¸å¤§é®é¢ï¼</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; å¨çé²çµåAPPå®å¶å¼åè¿è¥ä¸­ï¼ç©æµé®é¢æ¯æå¤§çé»ç¢å ç´ ä¹ä¸ãä¸ºæ­¤å¾å¤çé²ä¼ä¸éæ©æ­å»ºä¸å±çç©æµä½ç³»ï¼å¦é¡ºä¸°ä¾é ç©æµä¼å¿æ¨åºé¡ºä¸°ä¼éï¼é¿éå·´å·´å¯å¨äºçé²å·é¾ç©æµãå¦å¤è¿æä¸äºåç´çµåå¹³å°éæ©ä¸ç¬¬ä¸æ¹åä½ï¼å¦å¤©å¤©æå­åå©äº¬ä¸çç©æµä½ç³»è¿ä¸æ­¥æ©å¤§å¸åºè¦çï¼è§£å³ä»å¨ææµéé®é¢ã\</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; é£åå®å¨é®é¢ãçé²æ¯æ¯ä¸ªå®¶åº­æ¯ä¸ªäººæ¯å¤©è¦åãæ¯é¤è¦åçé£åï¼ä¸ä»è¦åå¾å¯å£ï¼æ´è¦åå¾æ¾å¿ãåå¾å¥åº·ãå¯æ¯ï¼å¨ç®åççäº§åå¸åºç¯å¢ä¸ï¼æ³åå°è¿ç¹å®å¨å¤ªé¾äºãçç®¡ä¸åçåè´¸å¸åºéåçè¬èãè¡å¤´å··å°¾å°åå°è´©åçæ°´æï¼ç¨çæ¯åªæ¥çç§å­ï¼å¨åªéç§çï¼æ¯è°ç§çï¼æä¹ç§åºæ¥çï¼åè¯æ®çãééå±æ®çæ¯å¦è¾¾å°é£ç¨æ åï¼ä½ä¸ºæ®éæ¶è´¹èï¼å¾é¾å»è¯å«è¿ä¸ç³»åé®é¢ã\</span><br />\r\n<span style=\"font-size:16px;\">é£åä»·æ ¼è´µççç¹ãçé²æ¶è´¹éå¸¸é«é¢ï¼è¿å¯¼è´ç¨æ·å¯¹ä»·æ ¼æå¶ææãå¯æ¯ï¼å¨çé²ï¼å°¤å¶æ¯è¬èï¼å¸åºä¸ç´å­å¨ä¸ä¸ªæªåââé¢å¥½å¿è´µãè¿å¶ä¸­ä¸ä¸ªå¾å¤§çåå æ¯ï¼è¬èä»çäº§ä¸­çâèå­å­âå°æ¶è´¹èçââèç¯®å­ï¼å¶ä¸­è¦ç»åæ°ä¸æ¸çç¯èï¼ææ¬ä¸æ­å å ï¼æåå°è¾¾æ¶è´¹èæä¸­çæ¶åï¼ä»·æ ¼å·²ç»ç¿»äºå ä¸ªè·æã\</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp;çé²APPå¼åå·é¾ç©æµé®é¢ï¼çé²äº§åä»åºåºå°æ¶è´¹èæä¸­éè¦å¨ç¨å·é¾è¿è¾ï¼ç®åå·é¾è¿è¾ææ¬é«ãä»å¨è´¹ç¨é«ï¼å¯¼è´çé²äº§åå·é¾ç©æµææ¬å±é«ä¸ä¸ã\</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">çé²è¡ä¸APPè§£å³æ¹æ¡åè½éæ±ï¼ &nbsp;</span><br />\r\n<span style=\"font-size:16px;\">1ãäº§åå±ç¤ºï¼æå¼çé²APPï¼ç¨æ·å¯ä»¥çå°ä¸ååç§çæ°é²è¬èãæ°´æä»¥åèç±»ã\&nbsp;</span><br />\r\n<span style=\"font-size:16px;\">2ãå®æ¶æ¶è´§ï¼ä¹°å®¶å¯ä»¥é¢çº¦æ¶é²æ¶é´ï¼ä¿å­äº§åçæ°é²ã\</span><br />\r\n<span style=\"font-size:16px;\">3ãä¿éæ¨éï¼å°ä¸äºçé²è¬æä¿éæ´»å¨åæ¶æ¨éå°ç¨æ·ççé²APPå®¢æ·ç«¯ä¸ï¼ä»·æ ¼ä¼æ ï¼å¸å¼å®¢æ·è´­ä¹°ã\</span><br />\r\n<span style=\"font-size:16px;\">4ãå°åºåç±»è´­ä¹°ï¼æ ¹æ®è¿ä¸ªåè½ï¼å¯ä»¥è®¾ç½®ä½ ççé²å°åºèå´ï¼éæ¶å¾ç¥éè¿ç©æµæå¿«ççé²å®ç¹ï¼ç¨é«æçä¹°å°ææ³åççé²é£åã\&nbsp;</span><br />\r\n<span style=\"font-size:16px;\">5ãè¥å»é£è°±ï¼ç°å¨çäººä»¬çæ´»èå¥å¿«ï¼å¾å¤æ¶åå¿äºç»èªå·±çèº«ä½è¡¥åè¥å»ï¼æä»¥è¥å»é£è°±æ¯ä¸é¨ä¸ºäºå¼¥è¡¥ç°ä»£äººç¼ºä¹çè¥å»è¡¥åæè¯èæ¨åºçåè½ã\</span><br />\r\n<span style=\"font-size:16px;\">6ãç¦èº«é£è°±ï¼éåºç¦èº«é£è°±åè½ï¼å¹¿å¤§çç©èçäººå°±è½å°½æçåäºï¼åªè¦åå¾å¥åº·ï¼å°±ä¸ä¼åèãç±çé²APPæä¾çç¦èº«é£è°±è¿å¯ä»¥æ ¹æ®å½åçèåååºè°æ´ï¼æ¯å¤©é½æä¸åçç¦èº«é¤åã\&nbsp;</span><br />\r\n<span style=\"font-size:16px;\">7ãå¨çº¿æ¯ä»ï¼ç´æ¥ä¸åï¼ç©æµéè¾¾ä¹åå³å¯ä½¿ç¨å¨çº¿æ¯ä»åè½ï¼å®æè®¢åä»æ¬¾ç¯èã\</span><br />\r\n<span style=\"font-size:16px;\">8ãLBSä½ç½®å®ä½ï¼ç¨æ·è½å¤éè¿ä½ç½®å®ä½çåè½ï¼å®ä½éè¿æä¾çé²äº§åæå¡çåå®¶ï¼æèç¨æ·è½å¤éè¿è®¾ç½®ç¸åºçæç´ èå´ï¼éæ¶è·å¾åå®¶çæ°åä¸å¸çä¿¡æ¯ï¼åæ¶éè´­æ°é²å¯å£çååã\</span><br />\r\n<span style=\"font-size:16px;\">9ãéè¿åå®¶æ¨éåè½ï¼ç¨æ·è½å¤éè¿å³æ³¨ç¸å³çéè¿çåå®¶ï¼åå®¶å°±è½å¤ä¸ºç²ä¸æ¨éç¸å³çæ°åä¸å¸ãä¼æ ä¿¡æ¯ç­ï¼å®ç°ç²¾åè¥éã\</span><br />\r\n<span style=\"font-size:16px;\">10ãå®æ¶æ¶è´§ï¼ä¹°å®¶å¯ä»¥é¢çº¦æ¶é²æ¶é´ï¼ä¿å­äº§åçæ°é²ã\</span><br />\r\n<br />\r\n<span style=\"font-size:16px;\">çé²APPå¼åï¼ä¾åºå\</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;æä»¬é½ç¥éï¼å¨ä¼ ç»çéå®æ¨¡å¼ä¸­ï¼åçä¾åºåè¿é©»å¤§åååºéè¦è±è´¹çææ¬è¾é«ãä½æ¯ç§»å¨å¹³å°çåºç°ä¸ºä¾åºåå¸¦æ¥çå¥½å¤æå¢å éå®æ¸ éï¼æå¤§åéä½éå®ææ¬ï¼æåè¥éå©æ¶¦ã\</span> \r\n</p>\r\n<p style=\"font-weight:400;color:#333333;font-family:å®ä½;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> <span style=\"font-size:16px;\">çé²APPå¼åï¼å°åé\¨</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;çµå­åå¡çåå±ï¼ä»¥åäººä»¬çä¹ æ¯éæ¸åç§»å¨ç«¯è½¬ç§»ï¼çº¿ä¸çå®ä½å°åé¨çéå®åå°è¾å¤§çå²å»ãä¸ºæ­¤ééè½¯ä»¶ä¸ºç¨æ·æä¾äºå¨çº¿æ¥åééçæå¡ï¼ä¸ä»è½å¤ä¸ºåå®¶å¢å¼ºçå©çæ¸ éï¼åæ¶å°åé¨è½å¤éè¿å¹³å°æ­å®åºåçååï¼ä»¥çæ´»ç¨åä¸ºä¸»ï¼å æ­¤ä¹å¯ä»¥æé«åºåçéå®é¢ã\</span> \r\n</p>\r\n<p style=\"font-weight:400;color:#333333;font-family:å®ä½;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><br />\r\n</span> <span style=\"font-size:16px;\">çé²APPå¼åï¼ç¨æ·</span><br />\r\n<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp; &nbsp; çé²ééAPPå¼åæç´æ¥çè·å©èå°±æ¯ï¼ä¸»è¦è§£å³ç¨æ·ç½è´­è¿ç¨ä¸­çç©æµé®é¢ï¼ç¨æ·è½å¤å¨æç­æ¶é´åï¼ä¹°å°åä¸è¬ä¾¿å©åºæå·®å¼åçååï¼åæ¬ææºè¬èãå°æ·æ·ãä¹³åç­ã\</span> \r\n</p>','show','/Uploads/201603/56e8d09838fda.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=17','140','1458098368','1458205029','','0');
INSERT INTO `yourphp_article` VALUES ('18','10','2','hello','èæ¿ï¼ç½é¡µãAppãå¾®ä¿¡ï¼åºè¯¥ååªä¸ªï¼',';font-weight:bold','','','','ä½ä¸ºä¸åä¸æææ¯çCEOï¼ä½ çé®é¢å¯è½ä¼å¾å¤ãæ¯å¦å¨Ideaï¼Nothingï¼é¶æ®µå°±ä¼çé®ï¼âææä¸ä¸ªå¥½ç¹å­ï¼æ¯ä¸æ¯å¯ä»¥åä¸ªAPPï¼å¾®ä¿¡å¬ä¼å·è¦ååï¼è¿æ¯åç½ç«ï¼âæèå¨ideaè¿ç®é è°±çæ¶åï¼åä¼çæï¼âææ³æä¸ä¸ªblabl...','<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"> </span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-size:16px;\">&nbsp;\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e8d901b3118.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n</span><span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp; &nbsp;ä½ä¸ºä¸åä¸æææ¯çCEOï¼ä½ çé®é¢å¯è½ä¼å¾å¤ã\</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">æ¯å¦å¨Ideaï¼Nothingï¼é¶æ®µå°±ä¼çé®ï¼âææä¸ä¸ªå¥½ç¹å­ï¼æ¯ä¸æ¯å¯ä»¥åä¸ªAPPï¼å¾®ä¿¡å¬ä¼å·è¦ååï¼è¿æ¯åç½ç«ï¼â\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">æèå¨ideaè¿ç®é è°±çæ¶åï¼åä¼çæï¼âææ³æä¸ä¸ªblablablaçAPPï¼æ¾å¤åè¿æ¯èªå·±æäººï¼æçè¯è¦æåªäºäººï¼éè¦å¤å°é±ï¼å¤ä¹è½æåºæ¥ï¼â\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">éå¿ååå°å¼å§æ®æ¼äº§åç»ççè§è²ä¸æ®µæ¶é´åï¼ä½ åå»äºï¼âä¸ºä»ä¹æçé¡¹ç®çèµ·æ¥åæ°¸è¿ä¹åä¸å®äºï¼ä¸ä¸ªå®ç¾çç¬¬ä¸çäº§åé¿ä»ä¹æ ·ï¼â\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"><strong>ç½é¡µãAppãå¾®ä¿¡ï¼ç¬¬ä¸çäº§ååºè¯¥ååªä¸ªï¼\</strong></span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">æä»¬ç°å¨åä¸ï¼å¤å¤å°å°é½ä¼æè½¯ä»¶å¼åãè½¯ä»¶å¼åå¤§å¤æ¯è¿å ç§ï¼ç½é¡µãAppãå¾®ä¿¡ãå¶å®å¾å¤å¬å¸é½æ¯ä»å¾®ä¿¡å¬ä¼å·å¼å§ï¼åçåçè§å¾è¿ä¸éï¼äº§åææºå¤äººç¨ï¼äºæ¯ä»ä»¬å°±æ³åå¼åä¸ªAppæå¾®ä¿¡å¬ä¼å·å¯¼æµå¯¼è¿å»ãä½äºå®ä¼åè¯ä½ ï¼ä»å¾®ä¿¡å¬ä¼å·å¯¼æµå¯¼å°Appæ¯ä»¶éå¸¸çè¦çäºæãæ¯å¦å¾®ä¿¡å¬ä¼å·å¯è½æ\5ä¸æè\10ä¸çç²ä¸ï¼ä½æ¯è¿5ä¸ã\10ä¸çç²ä¸å¨æäºAppä¹åä¼ç¬é´è¿å»åï¼ä¸ä¼çãè¿ä¸ªè¿ç¨éå¸¸å°é¾ãé£ä¹é®é¢æ¥äºï¼</span> \r\n</p>\r\n<ul class=\"list-paddingleft-2\" style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p style=\"text-indent:2em;font-size:18px;\">\r\n			<span style=\"font-size:16px;\">ååå¬ä¼å·è¿æ¯ç´æ¥åAppï¼\</span> \r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">å¨æèè¿ä¸ªé®é¢çæ¶åï¼æè§å¾ï¼å¦æä½ çäº§åå¼ºçå°ä¾èµCç«¯çä¼ æ­ï¼å°±åºè¯¥ååå¬ä¼å·ãå ä¸ºå¾®ä¿¡åé¨çä¼ æ­æ¯Appçä¼ æ­è¦æ¹ä¾¿å¾å¤ï¼Cç«¯å¾å¤çä¸è¥¿ï¼å¶å®å¨å¬ä¼å·éå°±è½è§£å³é®é¢ï¼ä¸æ¯ä¸å®éè¦Appçã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">æå¬ä¼å·åå¥½ï¼æ¯å¦å°ç¨æ·ç§¯ç´¯å\°10ä¸ï¼ææ ·åæè¿\10ä¸ç¨æ·è½¬åå°Appï¼è¿æ¯åé¢çäºæãä½æ¯è¿ä»¶äºæéå¸¸çå°é¾ï¼è½¬åçå¾ä½ï¼èä¸è¦éè¿åç§åæ ·çæ¹æ³å»åºæ¿è½¬åã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">è¦çæ¸æè·¯ï¼è¿æ¯è¦ä»ç½ç«ãAppãå¾®ä¿¡å¼åçå¼åå¼å§è®²èµ·ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094522595.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094522595.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<ul class=\"list-paddingleft-2\" style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p style=\"text-indent:2em;font-size:18px;\">\r\n			<span style=\"font-size:16px;\">ç½ç«ãAppãå¾®ä¿¡å¼åæä»ä¹ä¸ä¸æ ·çå°æ¹ï¼\</span> \r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">é¦åæ¯æµç¨ä¸ä¸æ ·ï¼ç¬¬äºæ¯æ¶åå°çææ¯æ¯æä¸å¤ªä¸æ ·ï¼ç¬¬ä¸æ¯å¼åçææ¬ä¸ä¸æ ·ã\</span> \r\n</p>\r\n<blockquote style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<p style=\"text-indent:2em;font-size:18px;\">\r\n		<span style=\"font-size:16px;\">1ãç½ç«å¼å\</span> \r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">ç½ç«å¶å®æ¯å·²ç»éå¸¸æççææ¯ï¼ææ¬ä¹éå¸¸ä¾¿å®ãç°å¨è¦åä¸ä¸ªä¼ä¸ç½ç«æèä¸ä¸ªç®åçç¤¾äº¤ç½ç«ï¼åºæ¬ä¸è\±3å\°5ä¸å°±å¯ä»¥ååºæ¥äºã\2ä¸\-3ä¸äººæ°å¸æ¯å¨å¤åçæåµä¸ï¼å¾å¾è¿å«è®¾è®¡è´¹ç¨ï¼å¯ä»¥è¯´ï¼è¿å¶å®æ¯ç¸å¯¹æ¯è¾ä¾¿å®çä¸ä¸ªäº§åã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">å¦æè¦èªå·±æå¢éæ¥åçè¯ï¼é¦åéè¦è®¾è®¡ï¼ç¶åéè¦ä¸ä¸ªåç«¯ç¨åºåï¼è¿éè¦ä¸ä¸ªåç«¯ç¨åºåå»å®ç°ä¸äºç«é·çææãå½ç¶ä¹æç¨åºåå«å¨æ å·¥ç¨å¸ï¼æè°çâå¨æ âå°±æ¯è¯´ä»ä»ä¹é½è½å¹²ï¼å³è½åæ°æ®åºåè½åç½é¡µçææï¼è¿æ ·çç¨åºåæ¯è¾é¾æãæä»¥ä»æè½ä¸æ¥è®²ï¼åä¸ä¸ªç½ç«å¤§æ¦éè¦è¿ä¸ç§äººã\</span> \r\n</p>\r\n<blockquote style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<p style=\"text-indent:2em;font-size:18px;\">\r\n		<span style=\"font-size:16px;\">2ãApp</span> \r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">å¼åApp</span></a><span style=\"font-size:16px;\">ç¸å¯¹æ¥è¯´å°±æ¯è¾éº»ç¦ä¸ç¹ï¼ä¹æ¯è¾è´µãåä¸ä¸ªç®åçAppï¼å¤§æ¦æåå ä¸ªé¡µé¢è¿æ ·çä½éï¼å¯è½å°±éè¦è±10ä¸åé±ï¼è¿æ¯æå¤åçæåµä¸ï¼åå«è®¾è®¡ãiOSä»£ç ååå°æ°æ®åºçä»£ç ï¼ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">é£ä¹é®é¢æ¥äºï¼ä¸ºä»ä¹\</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">å¼åApp</span></a><span style=\"font-size:16px;\">ä¼è´µå¢ï¼è¿éä¸»è¦å°±æ¯å ä¸ºiOSçå¼åæ¯è¾è´µãå¨åæä¸¾ä¾çAppä½éçåºç¡ä¸ï¼å¦æååä¸ä¸ªAndroidççæ¬ï¼é£å¯è½è¿éè¦å¢å\ 5ä¸å°8ä¸ãå ä¸ºä¸¤ä¸ªçæ¬çè®¾è®¡ååå°åºæ¬ä¸å¯ä»¥éç¨ï¼æä»¥å¯ä»¥çä¸äºé±ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">ä½è¿é½æ¯å¨å¤åçåæä¸ï¼å¦æè¦æ¯èªå·±æäººåä¸ªAppè¿è¦è¦çAndroidåiOSä¸¤ä¸ªå¹³å°ï¼é£å°±è´¹å²äºã\</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">Appçå¼å\</span></a><span style=\"font-size:16px;\">ä¹éè¦ä¸ä¸ªè§è²ï¼ä¸ä¸ªè®¾è®¡å¸ï¼ä¸ä¸ªåå°å¼åï¼iOSæ\</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">Androidå¼å\</span></a><span style=\"font-size:16px;\">ï¼åä¸¤ä¸ªçæ¬å°±æå³çè¦æä¸ä¸ªiOSç¨åºååAndroidç¨åºåï¼åå ä¸è®¾è®¡å¸ååç«¯ï¼å°±åæäºåä¸ªè§è²ãè¿å ä¸ªäººè¿éè¦ç¸å¯¹æç»éªï¼å¨æ¥å£çè®¾è®¡ãåºç¨åæå¡å¨äº¤äºç­ç­è¿äºæ¹é¢è¦è½éåå¾æ¯è¾é»å¥ãå¨è¿ç§æåµä¸ï¼å¾å¾åªæä¸ä¸¤å¹´ç»éªçç¨åºååè®¾è®¡å¸åæ æ³èä»»ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525616.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525616.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<blockquote style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<p style=\"text-indent:2em;font-size:18px;\">\r\n		<span style=\"font-size:16px;\">3ãå¾®ä¿\¡</span> \r\n	</p>\r\n</blockquote>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">Appå¼åæ¯è¾è´¹å²ï¼é£ä¹æäººå°±è¯´æä»¬åªåå¾®ä¿¡è¡ä¸è¡ï¼å¾®ä¿¡å¾ç®åï¼ç°å¨å¼æ¾äºåç§åæ ·çæ¥å£ï¼ä½ ç¹è¿å»å®å°±èªå¨ç»å½äºï¼å¤´åæ¿å°äºï¼ç¨æ·åä¹æ¿å°äºãå¾®ä¿¡è¿æä¸ä¸ªæ¹ä¾¿ä¹å¤å°±æ¯å¯ä»¥ç´æ¥æ¯ä»ï¼ä¹å°±æ¯è¯´å¼åå¢éä¹ä¸éè¦é¢å¤å»æ¥å¥æ¯ä»è¿ä¸ªè´¹äºçäºæäºãç°å¨éè¿H5ï¼å¾®ä¿¡å¼åå¶å®å°±è·ç½é¡µå¼åæ¯ä¸æ ·çãH5é¤äºå¨å¾®ä¿¡æååéä¼ æ­ï¼ç°å¨ä¹åµå¨å¾å¤å¾®ä¿¡å¬ä¼å·æèæå¡å·çèåéï¼ç¹ä¸ä¸å°±ä¼åºç°ä¸ä¸ªå¾æ¼äº®çé¡µé¢ï¼å¯ä»¥è·åå°ç¨æ·ä¿¡æ¯ï¼å¯ä»¥è°ç¨å¾®ä¿¡çä»æ¬¾åè½ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">èä¸å®è¿åºæ¬ä¸ä¼æ¶åå°å¼å®¹æ§é®é¢ãåä¸ä¸ªç½ç«ççï¼å¯è½è¦èèå¼å®¹Macï¼å¼å®¹Windowsãæµè§å¨ä¹æå¾å¤ç³»åï¼æ¯å¦æçç½é¡µå¨IE6ä¸çèµ·æ¥å¾å·®ï¼å¼å®¹æ§å¾è´¹å²ï¼è¿äºé½è¦å»è°æ´ãä½æ¯åå¾®ä¿¡åºæ¬ä¸å°±æ²¡æå¼å®¹æ§è¿ä¸ªäºæï¼å ä¸ºææºæµè§å¨åºç°å¾æï¼æ²¡æé£ä¹å¤åæ­§ï¼æ åç¸å¯¹æ¥è¯´æ¯è¾ç»ä¸ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">åä¸ä¸ªå¾®ä¿¡çå¼åï¼å¤§æ¦3ã\5ä¸åé±å°±è½æå®ï¼è¿ä¹æ¯å«è®¾è®¡çãå¾®ä¿¡çç¯å¢éï¼é¤äºçµåç³»ç»ï¼å¦åè®¾è®¡çè±æ ·å¹¶ä¸å¤ªå¤ãå°±ç®è¦å¨å¾®ä¿¡ç¯å¢éåçµåç³»ç»ï¼åæ¬è®¢åãè´­ç©è½¦ç­ç­ï¼å¤åçè¯å¤§æ¦ä¹åªè¦è±è´¹5ã\8ä¸ãèªå·±æäººåçè¯ï¼æ¾ä¸ä¸ªè®¾è®¡ï¼åæ¾ä¸ä¸ªå¨æ å·¥ç¨å¸å°±è§£å³é®é¢äºã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">ä»¥ä¸åªæ¯ä»ææ¯çè§åº¦æ¥è®²æä»ä¹ä¸ä¸æ ·ãä»è¿è¥çè§åº¦æ¥è®²ï¼ä¸è¬é½æ¯åæå¾®ä¿¡å¬ä¼å·ï¼æè¿ä¸ªæå¡å·åå¼ºå¤§ï¼åèèè¦ä¸è¦åAppï¼ç»§èåèèç½ç«çäºæã\</span> \r\n</p>\r\n<ul class=\"list-paddingleft-2\" style=\"color:#333333;font-family:\'microsoft yahei\';font-size:16px;background-color:#FFFFFF;\">\r\n	<li>\r\n		<p style=\"text-indent:2em;font-size:18px;\">\r\n			<span style=\"font-size:16px;\">åä¸ä¸ªAppè¦è±å¤å°æ¶é´ï¼\</span> \r\n		</p>\r\n	</li>\r\n</ul>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">ä»¥å¤åä¸ºæ åï¼åºæ¬ä¸é½æ¯ä¸ä¸ªæåæå®ã\</span><span style=\"font-size:16px;text-indent:2em;\">è¿éå¯ä»¥æä¾ä¸ä¸ªæ£æµçå°æ¹æ³ï¼å¨ä¸ä¸ä¸ªè¿æ¯è¾é è°±çå¤åå¢éåé¡¹ç®ä¼°ç®çæ¶åï¼å¦æä»è¯´ä¸ä¸ªæåä¸åºæ¥ï¼é£å°±æ¯ä½ æ³åçä¸è¥¿å¤ªå¤äºã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">åä¸èä»¬çé®é¢éå¸¸æ¯å¯¹Appçéæ±ç å¾ä¸å¤ï¼ä¹å°±æ¯æ³åçä¸è¥¿å¤ªå¤ï¼åªä¸ªé½èä¸å¾ä¸¢ï¼æèå¨ä¸å¼å§å°±è¦æ±iOSåAndroidä¸¤ä¸ªçæ¬é½è¦åãå¶å®å¾å¤æ¶åï¼åAppçå¼ååªéè¦iOSä¸ä¸ªå¹³å°å°±å¤äºï¼å ä¸ºæå¼å§è¯éªé¶æ®µï¼ç»å¤§é¨åçåºç¨åºæ¯æ¯å¨iOSï¼éè¿iPhoneçç¨æ·å°±è½çåºæ¥è¿ä¸ªAppè¡ä¸è¡ãå¦æiPhoneé£è¾¹è¡ï¼ååAndroidã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">&nbsp;</span><a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525449.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525449.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">ä¸ºäºè½è¿ééªè¯ä¸äºé®é¢ï¼æä»¬å°±è¦å¿«éååºè¿ä¸ªçæ¬çAppãåæè¯´äºï¼åªåiOSï¼åæ ·éè¦ä¸ä¸ªè®¾è®¡ãä¸ä¸ªiOSãä¸ä¸ªåç«¯ãå¦æè¿ä¸ä¸ªäººæ¯å¨èçå¢éï¼åºè¯¥å¨ä¸ä¸ªæåååºä¸è¥¿æ¥ï¼å¦åè¦ä¹æ¯å¢éä¸å¤å¥½ï¼è¦ä¹å°±æ¯å½åçéæ±æ²¡æçæ¸æ¥ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">å¨çè¿å¾å¤\</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">Appçå¼å\</span></a><span style=\"font-size:16px;\">ä¹åï¼æè®¤ä¸ºAppçéæ±æ¯å¦åçæ¯å¯ä»¥æä¸ä¸ªæ åæ¥è¡¡éçãä»¥Appä½ä¸ºä¾å­æ¥è®²ï¼å¯ä»¥æ¿âå¤å\3ä¸ªæåå®âåâiOSå¢é1ä¸ªæååºææâä½ä¸ºæ åæ¥å¯¹æ èªå·±çäº§åã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\">ç¬¬ä¸çäº§åï¼æéæ±ç å°ä¸è½åç æå¯\¹</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">å¨åCodingç å¸è¿ä¸ªå¹³å°çæ¶åï¼æä¹æ¾éå°å¾å¤å¾å¤çéæ±ï¼å¹¶ä¸åä¸åæè¿å¾å¤çéæ±ãæåç°ï¼æå¼å§åäº§åç¬¬ä¸çæ¶éå°æå¤§çé®é¢æ¯ï¼ä»ä¹ä¸è¥¿ååãä»ä¹ä¸è¥¿ååãä»ä¹ä¸è¥¿ä¸åãè¿ä¸ªä¹æ¯å¾å¤åä¸é¡¹ç®å¨æå¼å§çæ¶åéå°çé®é¢ãæçå»ºè®®æ¯ï¼æ è®ºæ¯ç½ç«ãAppè¿æ¯å¾®ä¿¡ï¼ç¬¬ä¸çäº§ååªæä¸»è¦çç¾ï¼æéæ±ç å°ä¸è½åç ï¼åªè¦è§£å³ä¸ä¸ªé®é¢å°±å¤äºã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';text-align:center;background-color:#FFFFFF;\">\r\n	<a href=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525622.jpg\" target=\"_blank\"><img alt=\"\\\" src=\"http://www.dongweinet.com/uploadfile/2016/0218/20160218094525622.jpg\" style=\"height:auto;\" /></a> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">è¿ä¸ªè¡ä¸ä¹è®¸å¾ä¹±ï¼æå¾å¤å¾å¤çé®é¢éè¦è§£å³ï¼ä½æ¯ç¬¬ä¸ä¸ªçæ¬çäº§åè¦æ¾ä¸ä¸ªæçççç¹å»è§£å³ï¼è§£å³å¥½äºåºæ¬ä¸å°±ææµéï¼ç¨æ·æ¥äºä¹ååå¿«éè¿­ä»£ãå¦æè§å¾è¿ä¸ªå¾éè¦é£ä¸ªä¹å¾éè¦ï¼è¦ä¸è¦åä¸ªç¨æ·ä¹é´çå³æ³¨ï¼è¦ä¸è¦åä¸ªç¨æ·ä¹é´çäºç²ï¼è¦ä¸è¦åä¸ªèªå¨æéâ¦â¦æè¿ç§åè½å¨é¨å ä¸ï¼ä½ ä¼åç°è¿ä¸ªé¡¹ç®æ°¸è¿åä¸å®ï¼èä¸åæçæå¥ä¼éå¸¸é«ãæ¬æ¥æ¯1ä¸ªæçé¡¹ç®ï¼å å®è¿äºä¸è¥¿å¯è½å°±åæ\4ä¸ªæçé¡¹ç®äºã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">è½¯ä»¶å¼åé¡¹ç®çå¤æç¨åº¦å¹¶ä¸æ¯ä¸æ¡ç´çº¿è½ä»£è¡¨çãæ¯å¦è¯´ï¼æ¬æ¥è¿ä¸\ª</span><a href=\"http://www.dongweinet.com/\"><span style=\"font-size:16px;\">App</span></a><span style=\"font-size:16px;\">åªæ10ä¸ªåè½ï¼è\±1ä¸ªæçæ¶é´ï¼è®¾è®¡å¼åå¨é½è½æå®ãä½å¦æåæ20ä¸ªåè½ï¼é£å¼åæ¶é´å°±ä¸æ¯2ä¸ªæï¼å¾å¯è½å°±æ¯3ã\4ä¸ªæã\4ä¸ªæä¹åå¸åºä¼åçä»ä¹ååè°ä¹è¯´ä¸å¥½ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:18px;color:#333333;font-family:\'microsoft yahei\';background-color:#FFFFFF;\">\r\n	<span style=\"font-size:16px;\">æä»¥æè®¤ä¸ºï¼äº§åçç¬¬ä¸çä¸å®åªè§£å³ç¨æ·å¨æä¸»è¦åºæ¯ä¸éå°çæä¸»è¦çé®é¢ãè¿æ ·ä¸æ¥ï¼äº§åä¼å¾ç®åï¼ææ¬ä½ï¼è¿è½å¤å¾å¿«ä¸çº¿ãä¸çº¿ä»¥åï¼å°±è½æµè¯å¸åºå¯¹è¿ä¸ªäº§åçååºï¼å°åºææ²¡æäººç¨ï¼éä¸éè¦å¿«éè¿­ä»£ï¼å¦ä½è¿­ä»£ãè³äºåä¸æ¨¡å¼çé®é¢å¹¶ä¸æ¯å¼åç¬¬ä¸çäº§åçæ¶åéè¦å»èèæççã\</span> \r\n</p>','show','/Uploads/201603/56e8d8ee89d3e.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=18','61','1437017428','1458180219','','0');
INSERT INTO `yourphp_article` VALUES ('19','3','2','hello','APPå¼åï¼æ¹åç¨æ·ä½éªçä¸å¤§å»ºè®\®',';font-weight:bold','','','','Â  Â  Â  Â Â APPåºç¨å¸åºä¸ï¼æ¯å¤©é½æ°çAPPä¸æ¶ãä»åå¼å§çä¸æ¶æ¯æ¼å°åæ¥çåæå¯¹å³ï¼è¿ä¸è·¯èµ°æ¥ï¼æä»¬æ¯ä¸æ¯éæ¼äºä»ä¹ï¼ä½ä¸ºå¼åè¿è¥èçæä»¬ï¼è¦åä¸æ¥å¥½å¥½æ³ä¸æ³ãå¾å¤å¼åè¿è¥èé½å¨çº³...','<span style=\"font-size:14px;font-family:arial, helvetica, sans-serif;color:#333333;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;APPåºç¨å¸åºä¸ï¼æ¯å¤©é½æ°ç\<a href=\"http://www.dongweinet.com/\">APP</a>ä¸æ¶ãä»åå¼å§çä¸æ¶æ¯æ¼å°åæ¥çåæå¯¹å³ï¼è¿ä¸è·¯èµ°æ¥ï¼æä»¬æ¯ä¸æ¯éæ¼äºä»ä¹ï¼ä½ä¸ºå¼åè¿è¥èçæä»¬ï¼è¦åä¸æ¥å¥½å¥½æ³ä¸æ³ã\</span><span style=\"color:#494949;font-family:å®ä½;font-size:14px;background-color:#FFFFFF;\"></span> \r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">å¾å¤å¼åè¿è¥èé½å¨çº³é·ï¼åºç³èªå·±çåææå¤ç¹å«ï¼æä½æå¤ç®åï¼ä½æ¯åºç¨æåå´åæ»ä¸åãåå å¶å®å¾ç®åï¼æä»¬å¨å¿çå¼åååå¸æ°åºç¨çæ¶åï¼å¾å¾ä¼å¿½ç¥æè¿ä¸ªè¿ç¨ä¸­æéè¦çå ç´ ï¼é£å°±æ¯ï¼ç¨æ·ãå½±ååºç¨æåçæå¤§å ç´ æ¯ä»ä¹ï¼ç¨æ·ä½éªã\</span><br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;1ãè¯·ä½ çåå¼å§ä»¬æ¥æµè¯ä½ çåºç\¨</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; éæºæ\¾10ã\20æ\50ä¸ªäººæ¥æµè¯ä½ çåºç¨ï¼æ¶å»è·è¸ªä»ä»¬ï¼è¯·ä»ä»¬å°èªå·±çæåå¦ç½åè¯ä½ ãè®¤çå¾å¬ä»ä»¬çè§æåæè§ï¼è§å¯ä»ä»¬ä½¿ç¨åºç¨çæ¹å¼ï¼ç¹å«æ³¨æä»ä»¬å¯¹ä»ä¹æä¸æ»¡æãä½ åä½ çå¢éå¯è½ä¼éè¿åè®¾çæ¹å¼æ¥å®ååºç¨ï¼ä½æ¯è¿äºæµè¯äººåç»åºçæè§æ¯å¤§å¤æ°åæè½¯ä»¶è½å¤ç»åºçä¿®æ¹æè§æ´ä¸ºä¸­è¯ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>2ãæ¢ä½æèï¼ä»ç¨æ·çè§åº¦å»æååºç\¨</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;&nbsp;å¼ºè¿«èªå·±ååºç¨ç¨æ·ä¸æ ·å»æèãå°èªå·±æ¾å¨ç¨æ·çä½ç½®ä¸ï¼å½ç¶ï¼ä½ æå¥½å°½å¯è½å»ä½¿ç¨ä½ çåºç¨ãæä»¬æè¿ä¸ç´å¨è¿ä¹åï¼å ä¸ºç°å¨ä»ä»¬éå¸¸ä¼åå¨æ±½è½¦éç¹é¤ãæä»¬å¿é¡»æç ´å¸¸è§æç»´ï¼è±¡é©¾é©¶åä¸æ ·æèé®é¢ãè¿æ¯ä¸é¡¹ææï¼ä¹æ¯å¼ååºææ£çåºç¨çä¸é¡¹ç§è¯ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span><span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; 3ãä¸æ³¨äºæä¾ææç¨çåè\½</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; å¼ååå¨å¼ååºç¨æ¶å¾å®¹æé·å¥ä¸ç§è¢«ç§°ä½âåè½èå»¶âçé·é±ãå¼ååæ»æ³å¨ç¨æ·ä½éªä¸­å å¥æ´å¤çæ°åè½ï¼ä½æ¯è¿å¹¶ä¸æ­£ç¡®ï¼ä½ åºè¯¥å­¦ä¼å¯¹æ°åè½è¯´âä¸âï¼å¹¶ä¸ä¸æ³¨äºä¸ºç¨æ·æä¾ææç¨çåè½ãæ°éæéä½å¼ºå¤§çåè½æ¯æ°éä¼å¤ä½å´å¹¶ä¸ä¸ç²¾çåè½æ´å¥½ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>4ãç¥å½¢åä¸ï¼æ´åå¤è§ååè½</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp;ä½ å¿é¡»å¼å·ç¼ç¨ååç¨æ·çé¢è®¾è®¡å¸ä¸¤ç§èº«ä»½ï¼éè¿ä½ çäº§åæä¾ææ£çç¨æ·ä½éªãç¼ç¨åå¯ä»¥ä¿è¯ç»æä¸çé»è¾åçæ§ï¼è®¾è®¡å¸åä¿è¯åºç¨å¨äººå·¥ç¾å­¦ä¸çç¹ç¹ãå½ç¶ï¼ä½ è¿éè¦æµè¯ä½ çäº§åï¼ä½æ¯ä»å¼é¡¾å¤è§ååè½çè§åº¦å¼å§ï¼è³å°å¯ä»¥ä¿è¯ä½ è½å¤å¨è·å¾äºååçä¿¡æ¯ååä½åºå³å®ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>5ãèäººæµè¯</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;ä¸ä¹åï¼å¤§å¤æ°äºç©çæµè¯é½ä¼æå°ä¸ä¸ªé®é¢ï¼â\8å²çå°å­©å­è½å¤ä½¿ç¨åçè§£å®å?âå¯¹äºåºç¨æ¥è¯´ï¼æ¯è¾éç¨çé®é¢åæ¯ï¼â\81å²çèå¹´äººè½å¤ä½¿ç¨åçè§£å®å?âä½ å¿é¡»å¸¦çè¿ä¸ªé®é¢å»å®åä½ çç¨æ·ä½éªãå¦æè¿81å²çèå¹´äººé½ç±ä½¿ç¨ä½ çåºç¨ï¼é£ä¹äººäººé½ä¼åæ¬¢å®ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span>6ãå¨å¯¹åºç¨ååºä¿®æ¹ååå¾æ±ç¨æ·çæè§</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp;å¨å¯¹åºç¨ååºä¿®æ¹ååå¾æ±ç¨æ·çæè§æ¯å®åç¨æ·ä½éªçæä½³æ¹å¼ãå¨åºç¨åè¿è¡åææè®¸å¹¶ä¸è½å½»åºå°ä½ç°åºå®å¯¹ç¨æ·çæå¤§ä½ç¨æå®è½ç»ç¨æ·çæå¤§å¸®å©ãä¸åçè§ç¹æå©äºä½ éè¿æ°çæ¹å¼æ¥è§£å³é®é¢ï¼ææ¶ä½ å¯è½ä¼åç°ï¼ä½ çåºç¨å¹¶ä¸è±¡ä½ ååæ³çé£æ ·éè¦å®åã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<br />\r\n<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;<span>&nbsp;7ãåç¨æ·ä¸æ ·æè\</span></span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:arial, helvetica, sans-serif;\">&nbsp; è¿ä¸æ¡ä¼¼ä¹æ¯èçå¸¸è°ï¼å¥½åè°é½ç¥éï¼ä½æ¯å®ç¡®å®æ¯æ¹åç¨æ·ä½éªçæä½³éå¾ãä½æ¯è°å°æççè¯ï¼é£ä¹ä»ä»å»æèå¦ä½éè¿åä¸ªé¡¹ç®ãåè½åæé®å¨é¡µé¢ä¸çå¸å±æ¥å®ç°ç¨æ·åå¥½åº¦çè¯æ¯è¿è¿ä¸å¤çãä½ å¿é¡»èèç¨æ·æ³è¦å¦ä½ä½¿ç¨åºç¨çé®é¢ï¼ç¶ååªåå»éåä»ä»¬ã\</span> \r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-indent:2em;font-size:14px;color:#333333;font-family:Tahoma, Helvetica, Arial, å®ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<span><span style=\"font-family:arial, helvetica, sans-serif;\">ä½ å¿é¡»æ³å°ä½ çåºç¨å¨å®éçæ´»ä¸­çä½¿ç¨æ¹å¼ï¼èä¸ä»ä»æ¯ç¨æ·å°å¦ä½ç¹å»å±å¹ãèä¸ï¼ä½ è¿è¦èèä»ä»¬ä½¿ç¨çå¶ä»åºç¨å¯¹ä»ä»¬çè¡ä¸ºé æäºä»ä¹æ ·çå½±åãæç§è¿ä¸¤æ¡ååå»åï¼ä½ å°±å¯ä»¥åé åºæ´ç´è§ãæ´åå¥½çç¨æ·ä½éªã\</span></span> \r\n</p>','show','/Uploads/201603/56e8d4f219473.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=19','34','1445312247','1458180310','','0');
INSERT INTO `yourphp_article` VALUES ('31','22','2','hello','ç©æµäº¤é\',';font-weight:bold','','','','ç§»å¨ç©æµAPPç©æµAPPå®¢æ·ç«¯å¯ä»¥å¸®å©ä¼ä¸ç®åä¸å¿è¦çç¯èï¼èçå¤§éçäººå·¥ãæ¶æ´¾ææ¬ï¼å¹¶ä¸ä¸ºç¨æ·æä¾ä¸ªæ§åçæå¡ï¼è¿ä¸æ­¥æ©å¤§æ¶è´¹ç¾¤ä½ï¼ç¼è§£ç©æµè¡ä¸ç«äºæ¿ççç°ç¶ãå æ­¤ï¼è°æ¢å äºç§»å¨äºèç½åæºï¼è°å°±æ¥æäºæªæ\¥...','<p class=\"MsoNormal\">\r\n	<b>ç§»å¨ç©æµ<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ç©æµ<span>APP</span>å®¢æ·ç«¯å¯ä»¥å¸®å©ä¼ä¸ç®åä¸å¿è¦çç¯èï¼èçå¤§éçäººå·¥ãæ¶æ´¾ææ¬ï¼å¹¶ä¸ä¸ºç¨æ·æä¾ä¸ªæ§åçæå¡ï¼è¿ä¸æ­¥æ©å¤§æ¶è´¹ç¾¤ä½ï¼ç¼è§£ç©æµè¡ä¸ç«äºæ¿ççç°ç¶ãå æ­¤ï¼è°æ¢å äºç§»å¨äºèç½åæºï¼è°å°±æ¥æäºæªæ¥ç©æµè¡ä¸çå¹¿éå¸åºã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	è¡ä¸çç¹<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ä¸ãå¸åºé«åº¦åæ£ï¼ä¿¡æ¯ä¸¥éä¸å¯¹ç§°ï¼ä¾éåæ¹å¾é¾è¾¾æäº¤æãè´§è½¦å¸æºæ¾è´§é¾ï¼è´§ä¸»æ¾å¸æºé¾ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	äºãè¯ä¿¡æ­£æ¯ç©æµè¡ä¸æç¼ºå¤±çç®¡çåæå¡ãä¾éåæ¹ç¼ºä¹ä¿¡ä»»ãè´§ä¸»å°ä»·å¼ä¸è²çè´§ç©äº¤ä»å¸æºè¿è¾ï¼æåè¾å¤§çé£é©ãè´§è¿å¸æºå±¡å±¡é­éè½¦è¾é²ç½®ãè¢«ææ¬ è¿è´¹ãè¢«æ²è¯è¢«æ¬ºéªãåç©ºè½¦ãè¢«éªè½¦ãè¢«ææ¬ è¿è´¹ãè¶å®½ãè¶é¿ãè¶é«ã\\r\næ¼è½¦ãæ²è¯ç­ç­ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e9056b6556a.jpg\" /> \r\n</p>\r\n&nbsp;\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿ç®æ <span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ä¸ãä¸ºè´§ä¸»åè½¦ä¸»æ­å»ºç´æ¥äº¤æçå¹³å°ï¼ææ¶ä¿¡æ¯ä¸éæï¼è®©è´§è½¦å¸æºå¯ä»¥ç´æ¥ä¸è´§ä¸»å¯¹æ¥ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	äºãä¾é äºèç½å¹³å°ï¼\ ä¾é èµè´¨è®¤è¯ãèº«ä»½è®¤è¯ï¼ä¿é©æä¿ä»¥åå¤§æ°æ®ç­å¤ç§ææ®µå®ç°è´§ä¸»ä¸å¸æºä¹é´çäºä¿¡ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ä¸ãéè¿å¹³å°å¤§æ°æ®å®ç°è´§ä¸»ä¸å¸æºä¹é´çäº¤ææ®åï¼å®ç°æä½³çèµæºéç½®ï¼éä½æ¾è´§ææ¬åè¿è´¹ï¼è®©å¸æºå¸åå¯ä»¥åç¨å¤è´§é¿åç©ºè½¦ç°è±¡ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p>\r\n	<b><img src=\"/Uploads/201603/56e90593a2a09.jpg\" /> </b> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿åè½<span></span></b> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>ä¸ã\&nbsp;&nbsp;&nbsp;&nbsp; </span>ç²¾åå¯»æ¾è½¦æºä¿¡æ¯ãè´§æºä¿¡æ¯ãåå¸è½¦æºåè´§æºä¿¡æ¯<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>äºã\&nbsp;&nbsp;&nbsp;&nbsp; </span>æä¾è´§ä¸»è½¦ä¸»çå®èº«ä»½åä¼ä¸èµè´¨è®¤è¯ï¼å¸®å©ç©æµä¼ä¸å»ºç«å£ç¢ï¼\<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>ä¸ã\&nbsp;&nbsp;&nbsp;&nbsp; </span>è½¦ä¸»å¯ä»¥åè´§ä¸»è¿è¡å¨çº¿æ´½è°ãéè´§é¢çº¦ãå¨çº¿ä¸åãä¸ä¼ è½¦è¾ä½ç½®ãéè¾¾ç¡®è®¤ãå¨çº¿è¯ä»·ç­ï¼\<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:49.5pt;text-indent:-28.5pt;\">\r\n	<span>åã\&nbsp;&nbsp;&nbsp;&nbsp; </span>éè¿è½¦è½½ç»ç«¯åææ\º<span>APP</span>è½¦è¾ä½ç½®å®ä½ï¼å¯¹è½¦è¾åå²è¡é©¶è½¨è¿¹å®æ¶åæ¾æ¥çï¼æå¤§å å¼ºè½¦è¾å®å¨è¿è¾æå¡ä¿éï¼å®ç°è´§ç©è¿è¾å¨ç¨ç¶æè½»æ¾çç®¡ï¼<span></span> \r\n</p>','show','/Uploads/201603/56e8fe7f9bd4f.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=31','138','1458100924','1458274048','','0');
INSERT INTO `yourphp_article` VALUES ('43','10','2','hello','åä¸ä¸ªAPPéè¦å¤å°é±',';font-weight:bold','','','','Â  Â  Â  Â ä½ä¸ºäºèç½ä»ä¸èï¼è¢«è¡å¤æåä»¬é®åæå¤çé®é¢æ¯ã\ åä¸ä¸ªç½ç«éè¦å¤å°é±ï¼ã\ æèãåä¸ä¸ªAPPéè¦å¤å°é±ï¼ããä½ä¸ºåè¿å®æ´ç½ç«é¡¹ç®åAPPçäººï¼ä»å¤©ä»äº§åç»ççè§åº¦ï¼ä¸èµ·æ¥ç®ä¸ä¸ä¸­...','<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">&nbsp; &nbsp; &nbsp; &nbsp;ä½ä¸ºäºèç½ä»ä¸èï¼è¢«è¡å¤æåä»¬é®åæå¤çé®é¢æ¯ã\ åä¸ä¸ªç½ç«éè¦å¤å°é±ï¼ã\ æèãåä¸ä¸ªAPPéè¦å¤å°é±ï¼ããä½ä¸ºåè¿å®æ´ç½ç«é¡¹ç®åAPPçäººï¼ä»å¤©ä»äº§åç»ççè§åº¦ï¼ä¸èµ·æ¥ç®ä¸ä¸ä¸­å°åAPPä»æ å°æéè¦ååªäºå·¥ä½ï¼ä»¥åä¸ºè¾¾æä½¿å½ï¼éè¦ä»åºå¤å°éé±ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">ä»¥ä¸åå®¹çåææ¯ï¼æ·±å³ãç§»å¨äºèç½æ¹åãåå«ç åä¸ä¸ªæ°äº§åè¿ç¨ä¸­ä¸äºå¸¸è§çå·¥ä½ï¼å¹¶éåå¨åç¾ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">&nbsp; &nbsp; &nbsp; &nbsp;é¦ååè®¾å¨åAPPä¹åæä»¬å·²ç»æäºä¸ä¸ªæççå¢éï¼è¿æ¯éå¸¸å¹¸è¿çåæï¼å¾å¤äº§åç åè¿åº¦æå¶ç¼æ¢çåå ä¹ä¸å°±æ¯å¨è¿ç¨ä¸­ä¸æ­å¨æäººï¼ï¼å¢éçç»æä»¥æ¶æå¸å¼åå°å¼å\1å\ + å®å1å\ + iOSå¼å\1å\ + äº§åç»ç1å\ + åç«¯å¼å\1å\ + è®¾è®¡å¸\1åãä½ å¯è½ä¹åç°äºè¿äºäººåéå¤é½æ¯åç¹çï¼ä¸æ¦æäººççæè¯·åï¼æä¸ªèä½å°±ä¼ç¼ºå¤±ï¼é¡¹ç®è¿åº¦å°±ä¼æåï¼æä»¥æä»¬å¤§çº¦éå¤\2ä¸ªæµ®å¨åé¢ï¼ä¹å°±æ¯ï¼åå§å¢éå¤§æ¦æ\8åï¼æä»¬åè®¾å¢éå¹³åå·¥èµå\¨13000å·¦å³ï¼ææè®¶ï¼æ·±å³éè¦è¿ä¸ªæ°ï¼è¿æ¯æ¯è¾ä½çâ¦ï¼ï¼éè¦ç»åå·¥ç¼´çº³äºé©ä¸éï¼è¯¦è§ä¸è¡¨ï¼åè®¾æä»¬æ¯èå®åè¯çå¬å¸ï¼å¬ç§¯éææä½æ åç¼´çº³ï¼ï¼\\r\n	<p>\r\n		<img src=\"/Uploads/201604/5716f16a41e9a.jpg\" />\r\n	</p>\r\n</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-align:center;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">é¤å·¥èµçé¨åï¼è¿è¦å¹³åä¸ºæ¯ä¸ªåå·¥å¤ç¼´çº\³ 3653åçäºé©ä¸éæ¯åºï¼åå·¥é¨åçæ¯åºæ¯ ï¼\13000+3653ï¼\*8=133224å\/æã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">å¥½ï¼æäºå¢éï¼ä¸ä¸æ­¥è¦è§£å³çæ¯å·¥ä½åºæçé®é¢ï¼8äººå¢éå¯ä»¥éæ©åä¸å­µåå¨ï¼åææ¯ä½ è½æ¾å°å­µåå¨ï¼æèä¸­ä½ç«¯çåå¬åºæï¼è¿ç±»çåå¬åºæï¼æ·±å³å¤§çº¦æ¯120å\/ã¡ï¼å¤§çº¦100å¹³ç±³ï¼ãè¿éæå¿è¦ç¨å¾®æä»¥ä¸å­µåå¨ï¼å­µåå¨çç§éä¼æ¯è¾ä¾¿å®ï¼æèä¸è¦é±ï¼ï¼å¨æ¥çº³åä¸å¢éä¹åä¸è¬ä¼ç­¾ç½²åè®®ï¼éè¦ä»¥åºå°ä½ä¸ºè¡æç½®æ¢æ¡ä»¶ï¼æèæ¯ä¼åæèµæï¼æ¯å¦åç®ï¼å¾åä¸å¢éèªå·±æéãç®ä¸æ°´çµãç©ä¸ï¼ä¸ä¸ªæ15000å·¦å³ç®æ¯è¾çäºã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">æäºåºå°åå¢éï¼æ¥ä¸æ¥ç½®æ¢åå¬èæãå®½å¸¦ä¹ç±»çï¼åè®¾çµèèªå·±å¸¦ï¼ï¼æ®éçäººä½å·¥ç¨å­¦æ¤å­ä»·æ ¼å¨150åå·¦å³ï¼å¦æä¸ä¹°å·¥ç¨å­¦æ¤å­ä¹å¯ä»¥ï¼ç¨æ®éçæ¤å­ï¼å ä¸æ¡å­å¹³æææ¬ï¼æ¡æ¤éè¦\200å·¦å³çææ¬ï¼è¿ç®ä¸æ¬¡æ§ä»åºãæèè¢ï¼\6000åå¯ä»¥æå®å§ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">åï¼äººãåºå°ãä½æ¡å·¥å·é½æ´»äºï¼å¼å§è¿å¥æ­£é¢å§ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">1</em></strong></span>äº§åå®ä½ãæ¯ç®ãæ©æå·¥ä½åå¤é¶æ®µã\\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">åAPPä¹åä¸è¬ä¼æä¸ªèæ¿ï¼èæ¿å¤§æ¦ç¥éèªå·±æ³è¦ä»ä¹åè½ï¼å¯¹ï¼èæ¿ä¸è¬ä¸ç¥éèªå·±è¦åä»ä¹ä¸è¥¿ï¼éæ±æ¯ä»ä¹ï¼äº§åå®ä½æ¯ä»ä¹ï¼ï¼è¿æ¶åäº§åç»çè¦åºé©¬äºï¼è·èæ¿åç§æ¯ç®ãåæ¸éæ±ãæ¾äº§åå®ä½ï¼è¿éå¤§æ¦æ¯ä¸ªä¸¤å¨ï¼å¥½è¯´æ­¹è¯´ä¼æäº§åçå®ä½ãä¸æçéæ±æ³æ¸æ¥ï¼æé´æ¶æå¸å¯ä»¥å¼å§ææäº§åçææ¯æ¶æäºï¼æªè½æ­£å¼å¼å·¥ï¼ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">äº§åå®ä½ä»¥åæ©æçéæ±ç¡®å®åºæ¥ä¹åï¼éè¦æ³ä¸ªäº§åçåå­ãéæ±è°ç ãç«åè°ç åæãæ³¨åååãè´­ç½®æå¡å¨ä»¥åå¨è¾¹åºç¡è½åï¼å¦CDNå­å¨ãç­ä¿¡æå¡ãæ¶æ¯æ¨éç­ï¼ãåæ ï¼æªæ³¨ååæ ãå¾å¤å¢éå°±æ¯åäºè¿ä¸ªäºï¼ãæ¢æ³¨ååãè®¾è®¡Logoï¼è¿éå¨èæ¿ä¸ä¸­éæ¹åæ³æ³ãåæ´äº§åéæ±åå®ä½çåæä¸ï¼æèµ·ç æ¯ä¸å¨ï¼è¿æ¶åäº§åçååãææ¯æ¶æçéå½¢ä¹åºæ¥äºï¼åºæ¬å¯ä»¥è¿å¥çåçæªçå¹²æ´»äºãè¿ä¸æ­¥åè®¾ååä¸éè¦è±å¤§ä»·é±è´­ä¹°ï¼å¨é¨è´¹ç¨ç®èµ·æ¥æèè¢10000å\/å¹\´ å¯ä»¥æå®ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">2</em></strong></span>äº§åçæ¬ç­åãæ¶æè®¾è®¡é¶æ®µã\\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">çä¼¼ä¸åé½åå¤å°±ç»ªä¹åï¼äº§åå¼å§æ´çéæ±ï¼æç§éæ±ä¼åçº§è§åçæ¬ãæ¶æå¸æç§äº§åçåå±æ¹åææ³ï¼å¼å§çæè¿å¥å¼åç¯å¢ãçäº§ç¯å¢é¨ç½²ãåºç¡ä»£ç ç åé¶æ®µã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">å¾æå¿è¦æä¸ä¸çæ¯ï¼åAPPæ¯è¾å¸¸è§çä¸¤ç§åè½å®ç°æ¹å¼æNativeåçåWebview æ¹å¼ï¼è¿ä¸¤ç§æ¹å¼çä¼å£ä¸å¨æ¬æçè®¨è®ºèå´ï¼ä¸è¬ä¸ºäºä¿è¯ä½éªï¼ä»¥åççæ¹å¼ä¸ºä¸»ï¼Webviewçæ¹å¼ä¸ºè¾ãä»¥åççæ¹å¼åå¼åï¼çæ¬æ¯å°¤ä¸ºéè¦çãå¶ä¸ï¼APPå¼åå®æä¹åï¼éè¦æä¸æ¶å°APP storeï¼åè®¾æä»¬åªä¸iOSåå®åï¼ï¼iOS çAPP Store æåé¿çåºç¨å®¡æ ¸å¨æï¼ä½ å¿é¡»æåæå¾åå ä¸ªä¸­å°çæ¬çåè½è§åå¥½äºæä¸è³äºå¨è¿ä¸ªç¯èèªä¹±éµèï¼å¶äºï¼ä½ çAPPå®è£å°ç¨æ·çææºä¸æ¶ä½ è¯å®å¸æä»å¤§é¨åæ¶åè¿è¡çé½æ¯ææ°ççæ¬ï¼å¦æä½ ççæ¬æ´æ°è¿äºé¢ç¹ï¼ç¨æ·ä¹ä¼ç¦ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">çèµ·æ¥è¿ç¨ä¼¼ä¹éå¸¸é¡ºå©ï¼äº§åç»çæäº§åçæè·¯åæ¸ä¹åï¼å¼å§åå¤äº§åV1.0 çè§åã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">æ°äº§åä»æ å°æå¸¸è§çå·¥ä½ï¼\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">äº§åå®ç½ï¼äº§åå®ç½æ¯äº§åãå¬å¸ãå¢éçè¸é¢ï¼è®©ç¨æ·è¿å¥ä¹åè½ä»¥æå¿«çéåº¦äºè§£ä½ çå®ä½ä»¥åäº§åç¹æ§ï¼ä¹å°±æ¯ä»ä¹æ ·çäººå¨ä¸ºè§£å³ä»ä¹æ ·çé®é¢ï¼åçä»ä¹æ ·çäºæã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">ç¨æ·åè®®ãæ¯çï¼å¦æç¨æ·è¦æ³¨åãä½¿ç¨ä½ çäº§åï¼ä½ å¾èµ·èä½ çç¨æ·åè®®ï¼è·å¾å¸ææ³å¡ä¸æ­æ²éè°æ´ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">ç§å­ç¨æ·ãå¯ï¼ä½ è¦æèä½ çç¬¬ä¸æ¹ç§å­ç¨æ·ä»åªéæ¥ï¼å¦ä½ç»ç»ï¼æä¹ç®¡çï¼ä»ä»¬æ¯æ£éªä½ äº§åçç¬¬ä¸ç¾¤äººï¼å¯¹äºéªè¯ä½ çäº§åå®ä½ãåç°äº§åé®é¢ãæåäº§åä½éªæ¥è¯´è³å³éè¦ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">åºç¡æ°æ®ä¸æ¥è§åãä½ è¦ç¥éäº§åä¸æ¦åå¸ï¼å¨å¯¹ç¨æ·è¡ä¸ºä¸æ æç¥çæåµä¸ï¼éè¦æ¶éä»ä¹æ°æ®æ¥ä¼åãè°æ´ä½ çäº§åè®¾è®¡ï¼æèä½ çäº§åæ¹åã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">UIè®¾è®¡ä¸äº¤äºæ åå¶å®ãä¸è½ä¿è¯äº§åçUIä»¥åäº¤äºä¸ä¸çº¿å°±æè®©ç¨æ·è§å¾æè³çææï¼ä½æ¯å¿é¡»ä¿è¯UI/äº¤äºå¨ä¸è´æ§ä¸æ²¡æé®é¢ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">åå°ç®¡çç³»ç»ãå¦è®ºæ¯æ¥çæ°æ®è¿æ¯åå®¹ç®¡çï¼åå°ç®¡çç³»ç»æ¯ä½ å·¥ä½çææè¾å©ï¼ä¹ä¸è½å°ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">APPãè¿æ¯ä½ çäº§åçéä¸­ä¹éï¼å¯åè§å¯è·è¸ªã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">â¦â\¦</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">å¦æä¸åé¡ºå©ï¼é£ä¹å\¨3-6ä¸ªæä¹åï¼ä½ çAPPç¬¬ä¸çåºè¯¥æäºç¬¬ä¸ä¸ªéå½¢äºã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">3</em></strong></span>åé¨æµè¯ãæç£¨é¶æ®\µ\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">å¨è¿ä¸ªé¶æ®µï¼ä½ è¦è·è®¾è®¡ãç åãç§å­ç¨æ·ä¹é´ä¿æå¯åæ²éï¼ä¸æ­æ¶éé®é¢ãåç°é®é¢ãä¼åãè§£å³é®é¢ï¼æé´å¯è½éè¦åå¸\1-3ä¸ªbetaå­çæ¬ãåæ¶ï¼ä½ è¦æ³åæ³ä¿æç§å­ç¨æ·çæ´»è·ä¸éåçæ¿æï¼è¿æ¯ä¸é¡¹è°å·¨çå·¥ä½ï¼è°åè°ç¥éã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"color:inherit;\"><strong><em class=\"autonum\" style=\"color:inherit;\">4</em></strong></span>åå¸é¶æ®µ\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">åå¸çæ¶åï¼ä¸ç®æ¸ éå®£ä¼ è´¹ç¨ï¼ä¸æå¹¿åï¼ä¸çº¿iOS APP Store éè¦æ³¨åå¼åèè´¦å·ï¼è´­ä¹°è¯ä¹¦ï¼ä¹éè¦è±è´¹ä¸å®çè´¹ç¨ï¼ä¸å¤ï¼ä¹å°±99ç¾å/å¹´ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">å¦æä½ åå¾å¤ä¸äºï¼æ¾å®å¨å¢éå¸®ä½ åå®å¨è¯ä¼°ï¼è¿éä¹è¦è±ä¸ä¸äºé±ï¼è¿éå°±ä¸ç®äºãè³äºè´è½½åè¡¡ãå éææ¯ä»ä¹çï¼ä½ çAPPåä¸çº¿ï¼åºè¯¥ç¨ä¸ä¸ã\</span> \r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">6ä¸ªæçæ¶é´ï¼ç®å¿«ï¼ä¸ä¸ªAPPä»æ å°æéè¦çè´¹ç¨å¤§æ¦è¿ä¹ç®ï¼</span> \r\n</p>\r\n<p>\r\n	äººå·¥è´¹ç¨ï¼\ 133224å\*6ä¸ªæ â\ 80 wã\\r\n</p>\r\n<p>\r\n	åºå°ç§éï¼\ 15000å\*6ä¸ªæ = 9wã\\r\n</p>\r\n<p>\r\n	åå¬èæ+æ¡æ¤æ¯åºï¼\1wã\\r\n</p>\r\n<p>\r\n	æå¡å¨ãååãå¨è¾¹ITåºç¡è´¹ç¨ï¼\2wã\\r\n</p>\r\n<p>\r\n	å¤§çº¦ç®ä¸æ¥ï¼ä¸ç®è¥éè´¹ç¨ï¼ç¬¬ä¸ä¸ªçæ¬ï¼ä½ éè¦åå¤\100wã\\r\n</p>\r\n<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;text-align:justify;font-size:14px;color:#A1A1A1;background-color:#FFFFFF;\">\r\n	<span style=\"color:#333333;\">æ¯çï¼å½æäººé®é¢åä¸ä¸ªAPPéè¦å¤å°é±æ¶ï¼ä½ å¯ä»¥åç­ä¸ä¸ªä¸å¤ªå¤æçAPPï¼ä»æ å°æååºæ¥ï¼åå¹´ç¬¬ä¸ä¸ªçæ¬åºæ¥ï¼éè¦\100ä¸ã\</span> \r\n</p>','0','/Uploads/201603/56e8f7779a2e0.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=43','47','1451281907','1461121391','','0');
INSERT INTO `yourphp_article` VALUES ('44','22','2','hello','ç§»å¨éè',';font-weight:bold','','','','äºèç½éèæ¯ä¼ ç»éèè¡ä¸ä¸äºèç½ç¸ç»åçæ°å´é¢åãæä¸éèç§»å¨è§£å³æ¹æ¡å°¤ä¸ºéè§å¯¹éèå¸åºçåºåè½åï¼éè¿å¼ºå¤§çç§»å¨äºèææ¯ï¼åæºè½åçæ°æ®åæï¼å³æ¶ååºéèå¸åºçç»å¾®åå\...','<p class=\"MsoNormal\">\r\n	<b>ç§»å¨éè<span>APP</span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	äºèç½éèæ¯ä¼ ç»éèè¡ä¸ä¸äºèç½ç¸ç»åçæ°å´é¢åãæä¸éèç§»å¨è§£å³æ¹æ¡å°¤ä¸ºéè§å¯¹éèå¸åºçåºåè½åï¼éè¿å¼ºå¤§çç§»å¨äºèææ¯ï¼åæºè½åçæ°æ®åæï¼å³æ¶ååºéèå¸åºçç»å¾®ååï¼ä»¥é£é©çæ§æ¥åãé£é©åºå¯¹è®¡åãæºè½åæèµç­ç¥ç»åæ¹æ¡ãå¨çåéèæå¡æ¹æ¡ãæºè½åçè´¢ç­å½¢å¼å¸®å©ç¨æ·å¨é¢å¯¹äºèç½éèçæ±¹æ¶æµªæ½®æ¶æ¸¸åæä½ãç§»å¨äºèä¸éèçå¼ºå¼ºèåï¼å®ç°äºéèäº§åä¸æå¡çåæ¬¡åæ°ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	äºèç½éèæ¨¡å¼ä¸çæ¯ä»æ¹å¼ä»¥ç§»å¨æ¯ä»ä¸ºåºç¡ã\ äºèç½éèæ¨¡å¼ä¸ï¼æ¯ä»ç³»ç»å·æä»¥ä¸æ ¹æ¬æ§ç¹ç¹ï¼\r\nææä¸ªäººåæºæé½å¨ä¸­å¤®é¶è¡çæ¯ä»ä¸­å¿ï¼è¶çº§ç½é¶ï¼å¼è´¦æ·ï¼å­æ¬¾åè¯å¸ç»è®°ï¼\<span>;</span>è¯å¸ãç°éç­éèèµäº§çæ¯ä»åè½¬ç§»éè¿ç§»å¨äºèç½ç»è¿è¡ï¼å·ä½å·¥å·æ¯ææºå\<span>iPad; </span>æ¯ä»æ¸ç®å®å¨çµå­åï¼ç¤¾ä¼ä¸­æ ç°éæµé\<span>;</span>äºçº§åä¸é¶è¡è´¦æ·ä½ç³»å¯è½ä¸åå­å¨ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:21.0pt;text-indent:-21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿ç®æ <span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span>P2P</span>ç½è´·å¹³å°å ä¸ºå¶æèµé¨æ§ä½ãèµéè¿è½¬å¿«ãæèµçè´¢æç»­ä¾¿æ·ãé£é©å¯æ§ï¼å¯¹æ¬éææä¿éç­ä¼ç¹è·å¾äºå¹¿å¤§æèµçå³æ³¨ãèæ¾³ç¯ææºç«¯<span>P2P</span>ç½è´·åè½å¼ºå¤§ææ©å±ãæä½ç®åæç»´æ¤ãé¨ç½²å¿«æ·ææ¬ä½ãå®å¨ç¨³å®æ é£é©ãä»¥å°åå¤§æå¢å¼ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	<b>&nbsp;</b><img src=\"/Uploads/201603/56e8fc348a5ba.png\" /> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿åè½<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	ææºçè´¢ï¼ä¼åçè´¢ãææ å¥å£ãåºæè½¬è®©ãæ°æåºç­ç­ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	æèµç®¡çï¼å·²ç»åå¸å°åå°çåæ¬¾æ ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	ææºåè´·ï¼æµæ¼æ ãä¿¡ç¨æ ãç§æ ãè½¬è®©æ ç­åæ¬¾æ ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	æ¶æ¯æ¨éï¼åæ¶æ¨éç«åä¿¡æ¯ç«åéç¥å°ææºã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	å®£ä¼ ç®¡çï¼å³äºæä»¬ãå¬å¸å¨æã\<span>p2p</span>å¹³å°ä¿éãæèµæ»ç¥ç­ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	å¬å¸ä»ç»ï¼å¬å¸ç®ä»ãå¢éä»ç»ãå°åãçµè¯ãé®ç®±ç­ç­é½æ¯ç¨æ·æ³è¦äºè§£çï¼æ¯å¿ä¸å¯å°çã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	èµéæç®¡ï¼ç¬¬ä¸æ¹èµéæç®¡ç®¡çã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	åºç¡ä¿¡æ¯ç®¡çï¼é¶è¡è®¾ç½®ãåºåç®¡çãäº¤æç±»åç®¡çãæ ç±»åç®¡çãæµæ¼ç©ç®¡çç­ç­ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	è®¡ç®å¨ï¼æ ¹æ®æèµéé¢ãå©çãæéç­è®¡ç®æ¶çã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	é»ååï¼ç¨æ·é»ååä¿¡æ¯ç®¡çã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	å¸®å©ä¸­å¿ï¼ä¸ä¸ªä¸å¯ç¼ºå°çå¸®å©ä¸­å¿ï¼å¸®å©ä¸äºä¸ä¼æä½çç¨æ·ã\<span></span> \r\n</p>','0','/Uploads/201603/56e8fc348a5ba.png','1','1','1','','0','0','/index.php?m=Article&a=show&id=44','112','1458109583','1458205011','','0');
INSERT INTO `yourphp_article` VALUES ('45','22','2','hello','æè²å¹è®­',';font-weight:bold','','','','æ®æå¨é¨é¨ç»è®¡æå½ææºä¸ç½çç½æ°å·²è¶è¿\9äº¿ï¼è¿è¶è¿ä¼ ç»PCäºèç½çç¨æ·è§æ¨¡ï¼èä¸è¿ä¸æ°å­è¿å¨è¿ä¸æ­¥æ©å¤§ï¼å ä¸ºææç»ç«¯è®¾å¤è¶æ¥è¶æºè½åï¼èä¸ä¾¿äºæºå¸¦ï¼è¶...','<p>\r\n	<span style=\"font-size:18px;\"><strong>ç§»å¨æè²appè§£å³æ¹æ¡</strong></span> \r\n</p>\r\n<p>\r\n	&nbsp;<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:14px;\">æ®æå¨é¨é¨ç»è®¡æå½ææºä¸ç½çç½æ°å·²è¶è¿\9äº¿ï¼è¿è¶è¿ä¼ ç»PCäºèç½çç¨æ·è§æ¨¡ï¼èä¸è¿ä¸æ°å­è¿å¨è¿ä¸æ­¥æ©å¤§ï¼å ä¸ºææç»ç«¯è®¾å¤è¶æ¥è¶æºè½åï¼èä¸ä¾¿äºæºå¸¦ï¼è¶æ¥è¶å¤çäººå¼å§å°å­¦ä¹ çè¯¾å è½¬ç§»å°ææº</span><span style=\"text-indent:24pt;\"><span style=\"font-size:14px;\">ä¸éæ¶éå\°</span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\">å­¦ä¹ ã\</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<strong>æ ¸å¿ç®æ </strong> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"text-indent:24pt;\"></span><span style=\"font-size:14px;text-indent:24pt;\">çµæ´»å¤åçæè²æ¹å¼\</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">åè¿é«æ ¡çå­¦ä¹ çå¿\µ</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">ç²¾åå®ä½çæ½å¨å®¢æ\·</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">åå°æè²èµæºææ¬</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">å­¦ä¹ ææå®å¨ææ¡</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">ä¸ªæ§å®å¶æè²æ¹æ¡\</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">&nbsp;</span><strong><span style=\"font-size:16px;\">æ ¸å¿ä»·å\¼</span></strong> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">ç»æè²æºæå¸¦æ¥çä»·å\¼</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">éè¿appå¨æ¹ä½å±ç¤ºæè²æºæï¼è¯¾ç¨ä¿¡æ¯ãæå¸ä¿¡æ¯ï¼æ»¡è¶³ç¨æ·å¯¹åç§ä¿¡æ¯çå®æ¶æ¥è¯¢ï¼éå­¦åæ³¨åãç»å½ãè¯¾ç¨åè¡¨æµè§ãéè¯¾ãæ¨¡æèè¯ãæ¥èèµè®¯ãç¼´è´¹ãå­¦ä¹ ãæ¥è¯¢ç­åè½äºä¸ä½ã\</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">ç»å­¦åå¸¦æ¥çä»·å\¼</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:24pt;\">\r\n	<span style=\"font-size:14px;\">éè¿APPå¯ä»¥æå¤§åå©ç¨ç¢çåçæ¶é´æ¥å­¦ä¹ ï¼è¯¾ç¨ç§ç±»å¤ï¼åå®¹ç²¾å½©ï¼è¾¹èµ°è¾¹å­¦ï¼ä¸äºèç½ç»å©ï¼è®©å­¦ä¹ åå¾å¿«ä¹ãå®¹æï¼ä¸æå¸æ·±åº¦äºå¨ï¼éå¯¹æ§è§£å³é®é¢ã\</span> \r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;<span style=\"font-size:16px;\">&nbsp;</span><strong>&nbsp;æ ¸å¿åè½</strong> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;<span style=\"font-family:SimSun;\"> </span><span style=\"font-size:14px;font-family:SimSun;\">&nbsp;</span><span style=\"font-size:14px;font-family:SimSun;\">1ãå¨çº¿äº¤æµï¼2ãæå­¦è§é¢ï¼3ãçº¿ä¸è¯¾ä»¶ï¼4ãé¢çº¦ä¸è¯¾ï¼5ãææåäº«ï¼6ãèè½å²ä½ä»ç»ã\</span><span style=\"font-size:14px;font-family:SimSun;\"></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:14px;font-family:SimSun;\">&nbsp; &nbsp;&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56e9125b96ab7.png\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e9138d13f7c.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=45','129','1458114669','1458273646','','0');
INSERT INTO `yourphp_article` VALUES ('46','10','2','hello','äºèç½å®¶è£è¿æ¥å¸åºçæ´é£å\£','','','','','éçä¸­å½åéåæ­¥ä¼å å¿«ï¼æ¯å¹´æå¤§éåä¸äººå£è½¬åä¸ºåéäººå£ï¼è´­æ¿éæ±æç»­å¢é¿ï¼ä¸ºä½å®è£ä¿®åå®¶å±ç¾åå¸¦æ¥ä¸°å¯çéæ±ãæ°æ®æ¾ç¤ºï¼2015å¹´ä½å®ç¾åå¸åºè§æ¨¡è¾¾5ä¸äº¿ãå¶ä¸­ä¸»æ\1ä¸å¤äº¿ï¼å®¶å·1ä¸å¤äº¿ï¼è£ä¿®(å«è¾æ\)1.8ä¸\...','<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\">éçä¸­å½åéåæ­¥ä¼å å¿«ï¼æ¯å¹´æå¤§éåä¸äººå£è½¬åä¸ºåéäººå£ï¼è´­æ¿éæ±æç»­å¢é¿ï¼ä¸ºä½å®è£ä¿®åå®¶å±ç¾åå¸¦æ¥ä¸°å¯çéæ±ã\</span> \r\n</p>\r\n<div>\r\n	<strong><span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\"> \r\n	<p>\r\n		<strong><span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\"> </span></strong> \r\n	</p>\r\n	<p>\r\n		<strong><img src=\"/Uploads/201603/56e91736c7a1f.jpg\" /> </strong> \r\n	</p>\r\n<strong>æ°æ®æ¾ç¤ºï¼\2015å¹´ä½å®ç¾åå¸åºè§æ¨¡è¾¾5ä¸äº¿</strong></span><span style=\"font-weight:normal;color:#3E3E3E;background-color:#FFFFFF;\">ãå¶ä¸­ä¸»æ\1ä¸å¤äº¿ï¼å®¶å·1ä¸å¤äº¿ï¼è£ä¿®(å«è¾æ\)1.8ä¸äº¿ï¼å¤§å®¶çµ6åå¤äº¿ï¼å¸åºå·¨å¤§ï¼ä½å¸åºæ ¼å±çåæ£ãä¾åºé¾çä½æï¼æ¸æ°çç¨æ·çç¹ï¼ç»äºèç½å®¶è£ä¼ä¸å¸¦æ¥äºæºä¼ã\</span> \r\n	<p>\r\n		<br />\r\n	</p>\r\n</strong> \r\n</div>\r\n<p>\r\n	<strong><span style=\"font-size:14px;font-family:å¾®è½¯éé», sans-serif;\">2015å¹´è¢«ç§°ä¸ºäºèç½å®¶è£åå¹\´</span></strong><span style=\"color:#3E3E3E;font-size:14px;font-family:å¾®è½¯éé», sans-serif;\">ï¼ä¸æ¶é´ï¼è¯çäºè®¸å¤âäºèç½å®¶è£âå¹³å°ï¼å¶ä¸­ä¸ä¹ä¼ç§èã\</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#3E3E3E;font-family:å¾®è½¯éé», sans-serif;font-size:14px;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\">&nbsp;å¤§è´æä¸¤ç§æ¨¡å¼ï¼</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-size:14px;font-family:å¾®è½¯éé», sans-serif;\">O2Oæ¨¡å¼</span></strong><span style=\"font-size:14px;font-family:å¾®è½¯éé», sans-serif;\">ï¼æ¯æå°âåºâéè´­ï¼åæ¬ååºé¨åºãç¬ç«åºï¼çè³æ¯åæ´ä¸ºé¶çâå®¶åº­åºâï¼é¤äºååæç´¢ä¸LBSå¤ï¼æ´éè¦çæ¯ï¼ç±äºè¿äºåç±»æ¯å¸åçè®®ä»·åç±»ï¼æç»ä»·æ ¼ææ¡å¨ä¿éåæéï¼å æ­¤å°ä¿éåä¸ç¨æ·ç´æ¥è¿æ¥ï¼å½¢æC2Cæ¨¡å¼çO2Oã\</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\">&nbsp;</span><strong><span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\">C2Mæ¨¡å¼</span></strong><span style=\"font-family:å¾®è½¯éé», sans-serif;font-size:14px;\">ï¼åç´æ¥è¿æ¥ç¨æ·ä¸åçå·¥åçäº§ç¯èï¼åå°çæ­£çå°æ¹éå®å¶ãå¤§æ¹éé¢å®ï¼è¿ææ¯çæ­£çäºèç½+æ¨¡å¼ï¼æçæ­£éæä¾åºé¾ãä½è¿éè¦å¯¹é¶å®çæ·±å»ææ¡ã\</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e91736c7a1f.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=46','46','1452932411','1458180395','','0');
INSERT INTO `yourphp_article` VALUES ('47','24','2','hello','æä¸­å®\','','','','','äºèç½ä¿é©éå®æå¡å¹³å°ãä»¥\"ç®åä¿é©ï¼å¿«ä¹çæ´»\"ä¸ºè¿è¥çå¿µï¼æé åç±\»\"å°èç¾ãä¸èç²¾\"çä¿é©ç²¾åï¼è®©ä¿é©æå¡æ´ç®åãæ´éæãæ´å®ç¨ã\','çåéæ§æä¸äºèç½ä¿é©éå®æå¡å¹³å°ãä»¥\"ç®åä¿é©ï¼å¿«ä¹çæ´»\"ä¸ºè¿è¥çå¿µï¼æé åç±\»\"å°èç¾ãä¸èç²¾\"çä¿é©ç²¾åï¼è®©ä¿é©æå¡æ´ç®åãæ´éæãæ´å®ç¨ã\','0','/Uploads/201603/56e9240cb3611.png','0','1','1','','0','0','','0','1458119706','1458119706','','0');
INSERT INTO `yourphp_article` VALUES ('48','28','2','hello','éç¾ä¸\','','','','','ä»¥ç»è¥æ­£å®åäº¬ç¤é¸­ãç²¾åäº¬èä¸ºä¸»ä½ï¼è¾ä»¥åå°ç¹è²èçæ¨éåºæ°ï¼å½¢æç»¿è²å¥åº·âå®¶å¸¸èâç åç®¡çä½ç³»ï¼åé åºäºå¨æ°çç¤¾åºé¤é¥®æ¨¡å¼ï¼åå±è³ä»å·²æä¸ºäº¬åç¾å§å±å®¶æ¶è´¹çé¦éé¤åã\','<span style=\"color:#333333;font-family:simsun;font-size:14px;text-indent:28px;background-color:#FFFFFF;\">ä»¥ç»è¥æ­£å®åäº¬ç¤é¸­ãç²¾åäº¬èä¸ºä¸»ä½ï¼è¾ä»¥åå°ç¹è²èçæ¨éåºæ°ï¼å½¢æç»¿è²å¥åº·âå®¶å¸¸èâç åç®¡çä½ç³»ï¼åé åºäºå¨æ°çç¤¾åºé¤é¥®æ¨¡å¼ï¼åå±è³ä»å·²æä¸ºäº¬åç¾å§å±å®¶æ¶è´¹çé¦éé¤åã\</span>','0','/Uploads/201603/56e92ad81557b.png','0','1','1','','0','0','','0','1458121542','1458121542','','0');
INSERT INTO `yourphp_article` VALUES ('49','3','2','hello','æè¿é«åæåä¸­æ æä¸å¸éå¢å¬å¸æä¸P2Pç½è´·å¹³å°å¼åé¡¹ç\®','','æè¿é«å  ä¸å¸å¬å¸   p2på¹³å°','','','æè¿é«åæåä¸­æ æä¸å¸éå¢å¬å¸æä¸P2Pç½è´·å¹³å°å¼åé¡¹ç\®','<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">æè¿é«åæåä¸­æ æä¸å¸éå¢å¬å¸æä¸P2Pç½è´·å¹³å°å¼åé¡¹ç\®</span>','0','/Uploads/201603/56ea0fdb94270.jpeg','0','1','1','','0','0','/index.php?m=Article&a=show&id=49','39','1428544876','1458180140','','0');
INSERT INTO `yourphp_article` VALUES ('50','3','2','hello','æè¿é«åä¸ºèæ³æåå®æ½Windchillé¡¹ç®','','','','','æè¿é«åä¸ºèæ³æåå®æ½Windchillé¡¹ç®ã\','<p>\r\n	<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">æè¿é«åä¸ºèæ³æåå®æ½Windchillé¡¹ç®ã\</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	<p>\r\n		<img src=\"/Uploads/201603/56ea126879350.jpg\" />\r\n	</p>\r\n<br />\r\n</span>\r\n</p>','0','/Uploads/201603/56ea126879350.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=50','36','1331777378','1458180794','','0');
INSERT INTO `yourphp_article` VALUES ('51','3','2','hello','æè¿é«åæºææ·±å³è¿çå»ç','','','','','æè¿é«åæåç­¾çº¦è¿ççç©å»ççµå­è¡ä»½æéå¬å¸æ°æ®åºè¿ç§»æ´åé¡¹ç\®','<span style=\"color:#686868;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">æè¿é«åæåç­¾çº¦è¿ççç©å»ççµå­è¡ä»½æéå¬å¸æ°æ®åºè¿ç§»æ´åé¡¹ç\®\r\n<p>\r\n	<img src=\"/Uploads/201603/56ea158880f90.jpg\" /> \r\n</p>\r\n</span>','0','/Uploads/201603/56ea141cd2abe.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=51','67','1369016765','1458181611','','0');
INSERT INTO `yourphp_article` VALUES ('52','3','2','hello','æè¿é«ååä¸åå®è½¯ä»¶MISç³»ç»çå¼å\','','','','','MISç³»ç»å¼åÂ ææ¯ç¹ç¹ï¼Â åå®æ¥æèªä¸»å¼åçåºç¨å¼åå¹³å°Arteryä»¥ååºç¨å¼åæ¡æ¶ãéè¿Arteryåºç¨å¹³å°ï¼å°å·æä¸å¡æä¹çååºç¨æ¨¡åå°è£æä¸ºä¸å¡ç»ä»¶ï¼ä»èå¯ä»¥çµæ´»å°å¨æå¡æ»çº¿ä¸è¿è¡å¨æé¨ç½²ãç»è£ï¼å·\¥...','<strong>MISç³»ç»å¼å\&nbsp;</strong><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\"> \r\n<p>\r\n	<img src=\"/Uploads/201603/56ea177c06c48.jpg\" /> \r\n</p>\r\nææ¯ç¹ç¹ï¼&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">åå®æ¥æèªä¸»å¼åçåºç¨å¼åå¹³å°Arteryä»¥ååºç¨å¼åæ¡æ¶ãéè¿Arteryåºç¨å¹³å°ï¼å°å·æä¸å¡æä¹çååºç¨æ¨¡åå°è£æä¸ºä¸å¡ç»ä»¶ï¼ä»èå¯ä»¥çµæ´»å°å¨æå¡æ»çº¿ä¸è¿è¡å¨æé¨ç½²ãç»è£ï¼å·¥ä½æµå¼ææ¯æä¸å¡æµç¨å¯è§åå®ä¹ãæµç¨åéãæµç¨çæ§ç­åè½ï¼æä¾äºä¸å¡ç»ä»¶çå¨æéç½®è½åï¼ä»èå®ç°äºä¸å¡æµç¨çå¯è§åè£éåéæã\&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">é¡¹ç®é¾ç¹ï¼\&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">1.éåºå®¢æ·å¯¹äººåï¼ææ¯ï¼éæ±çç´§æ¥æ§ååæ¢æ\§&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">2.è¿éãææçæèæéå¤æ´¾ææ¯äººåçé¾åº¦&nbsp;</span><br />\r\n<span style=\"color:#686868;font-family:Simsun;background-color:#FFFFFF;\">3.ææç®¡çãæ¿å±åå¹è®­å¤æ´¾ææ¯äººåçé¾åº¦</span>','0','/Uploads/201603/56ea1750179ac.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=52','28','1397961248','1458182082','','0');
INSERT INTO `yourphp_article` VALUES ('53','3','2','hello','æè¿é«ååä¸ä¸­ç³åéè´­çµåå¹³å°å»ºè®\¾',';font-weight:bold','','','','Â éå®å¤éè´­ç±»åãå¤éè´­æ¹å¼ãå¤éè´­å±çº§ãç¾ä¸ä»¥ä¸éè´­åç§ï¼æä¾è§èåæµç¨ãå®æ¶æä½ãæºè½åå¼å¯¼åæ¹ä¾¿å¿«æ·çéè´­äº¤æç³»ç»ãå¹¶è¿ç¨å¤§æ°æ®åæç­åè¿ææ¯ä¸ºä¼ä¸æä¾éè´­ä¿¡æ¯åæãç©æµåéè´­è¿ç¨çæ§ç­å»¶ä¼\¸...','<p>\r\n	<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">&nbsp;éå®å¤éè´­ç±»åãå¤éè´­æ¹å¼ãå¤éè´­å±çº§ãç¾ä¸ä»¥ä¸éè´­åç§ï¼æä¾è§èåæµç¨ãå®æ¶æä½ãæºè½åå¼å¯¼åæ¹ä¾¿å¿«æ·çéè´­äº¤æç³»ç»ãå¹¶è¿ç¨å¤§æ°æ®åæç­åè¿ææ¯ä¸ºä¼ä¸æä¾éè´­ä¿¡æ¯åæãç©æµåéè´­è¿ç¨çæ§ç­å»¶ä¼¸æå¡ã\</span><span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\"> </span> \r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56ea1ef80ac81.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\"> </span> \r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>é¿åeéï¼</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åçµåä¾æä¸­å½ç³å14å¹´çµå­åéè´­ææï¼æé é¢åå¨ç¤¾ä¼çãæ¥æå®å¨èªä¸»ç¥è¯äº§æçéè´­äº¤æçµå­åå¡å¹³å°âââé¿åeéâã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>ä¸å¡æ¶æï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéèå¥åè¿çéè´­ç®¡ççå¿µãè§èçéè´­æä½æµç¨ãææçéè´­çæ§åä¸°å¯çéè´­ä¿¡æ¯èµæºãæ¯æéè´­ä¼ä¸ãä¾åºåãææ ä»£çæºæåç©æµåå¼å±éè´­äº¤æãæ¥ä»·ææ ãçµå­ææ åç©æµè·è¸ªç­ä¸å¡æä½ã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>ä¸å¡æµç¨ï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéæ¶µçéè´­äº¤æçå¯»æºåå¤ãå¯»æºè¿ç¨ãå¯»æºç»æãååå½¢æåååæ§è¡äºä¸ªé¶æ®µã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>éè´­æ¹å¼ï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéæä¾æææ ãæ¡æ¶åè®®ãç«ä»·ãè¯¢æ¯ä»·ç­å¤ç§éè´­æ¹å¼ã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>éè´­å½¢å¼ï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéæ¯æâä¸åä¸ç­¾âçä¸è¬åååâéåæ¹éâçæ¡æ¶åè®®éè´­å½¢å¼ã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>éè´­ç±»åï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéæ¯æéä¸­éè´­ãå§æéè´­ãèåéè´­åèªè¡éè´­ç­å¤ç§éè´­ç±»åã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>ä¸å¡è§è²ï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéæä¾è®¡åãéè´­ãæ§è¡ãå®¡æ¹ãçæ§ç­å¤ç§éè´­è§è²åè½ã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>éè´­å±çº§ï¼\</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéæ¯æä¼ä¸ä¸çº§ãäºçº§ãä¸çº§â¦â¦å¤éè´­å±çº§ã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>å®å¨ç®¡çï¼\<br />\r\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¿åeéä»ä¸å¡æ°æ®å®å¨ãæ°æ®ç®¡çå®å¨ãç³»ç»è¿è¡å®å¨ä¸æ¹é¢ä¿è¯ä¼ä¸éè´­ä¸å¡çå®å¨æ§ã\\r\n</p>\r\n<p style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">\r\n	<strong>å¹³å°ç¹ç¹ï¼\<br />\r\n</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>å¤è§è²å¤å±çº§æµç¨åæä½ï¼</strong>æ»¡è¶³ä¼ä¸åæ®µç®¡çè¦æ±ãæ¯æå¤å±çº§çä¼ä¸è®¾ç½®ãæä¾æ åçéè´­ä¸å¡æµç¨ï¼å¯æ ¹æ®ä¼ä¸ç®¡çéæ±ï¼çµæ´»éç½®è§è²åå±çº§ã\<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>é³åéè´­å¨ç¨çæ§ï¼\</strong>æä½è¿ç¨å¬å¼ãç¯èåæ§ï¼ä¿¡æ¯å¨ç¨è®°å½ãæ°¸ä¹è¿½æº¯ã\<br />\r\n&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; ç®åå¿«æ·å¯è§æä½ï¼</strong>å¹³å°æä¾ä¸å¡å¾åãæµç¨å¼å¯¼åå¿«æ·å¾æ ç­åè½ï¼çé¢åå¥½ï¼æä½ä¾¿æ·ã\<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>çµæ´»è®¾ç½®åè½å¯éï¼\</strong>éè¿ä¸å¡åæ°ãå®¡æ¹æµç¨ãåè½åæ°æ®æéçéç½®ï¼æ»¡è¶³ä¸åä¼ä¸çä¸ªæ§åä¸å¡éæ±ã\<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>å¤ç³»ç»ææéæï¼</strong>æ¯æWebservisceåæ°æ®åºé¾æ¥ç­å¤ç§æ¥å£æ¹å¼ï¼ä¸ä¼ä¸éè´­ä¸å¡ç¸å³ç³»ç»ç´§å¯éæã\<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>é«ææä½è´¹ç¨éä½ï¼\</strong>æç ´éè´­è·ç¦»éå¶ãéè´­æä½ç¬é´å®æãæé«éè´­æçãéä½éè´­ææ¬ã\<br />\r\n&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp; é¶ææ¬å¤é¡¹ç®åºç¨ï¼\</strong>éè´­ä¼ä¸å¨åè´¹ä½¿ç¨æ ¸å¿äº¤æåè½ï¼åäº«ä¼è´¨ä¾åºåèµæºåä¼å¿ä¼ä¸éè´­ææï¼å±äº«éè´­äº¤æåææ°æ®ã\\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56ea1e77a2d90.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=53','44','1419390371','1458184077','','0');
INSERT INTO `yourphp_article` VALUES ('54','26','2','hello','é¿åeé\','','','','','é¿åçµåä¾æä¸­å½ç³å14å¹´çµå­åéè´­ææï¼æé é¢åå¨ç¤¾ä¼çãæ¥æå®å¨èªä¸»ç¥è¯äº§æçéè´­äº¤æçµå­åå¡å¹³å°âââé¿åeéâã\','<span style=\"color:#525252;font-family:\'Microsoft YaHei\';font-size:14px;background-color:#FAFAFA;\">é¿åçµåä¾æä¸­å½ç³å14å¹´çµå­åéè´­ææï¼æé é¢åå¨ç¤¾ä¼çãæ¥æå®å¨èªä¸»ç¥è¯äº§æçéè´­äº¤æçµå­åå¡å¹³å°âââé¿åeéâã\</span>','0','/Uploads/201603/56ea1ef80ac81.jpg','1','1','1','','0','0','/index.php?m=Article&a=show&id=54','0','1458270823','1458270949','','0');
INSERT INTO `yourphp_article` VALUES ('55','10','2','hello','å°æä¸é©¬äºé½å¨åVRï¼åä¸èå¦ä½é¿åæä¸ºç®ç°ï¼','','','','','æ\/çæ°åæ¥åï¼å°æå¨åäº¬é¾é¾ä¸­æ¨è·ä¹åï¼å¨åäº¬åå äºâä¸­å½åå±é«å±è®ºå\2016å¹´ä¼âãåä¼çåæ¬é©¬äºãé·åä»¥åUberåå§äººç¹æç»´æ¯Â·å¡å°å°¼åãä¼ä¸ï¼å°æä¸é©¬äºä¸èµ·èèµ·äºVRãæåä¼¯åè¡¨ç¤ºï¼ä»å¹´æ¯æ¶è´¹çº§VRå¹´ï¼O...','<div class=\"article-img-box\" style=\"text-align:center;color:#333333;font-family:Arial, \'Microsoft yahei\', \'Hiragino Sans GB\', \'å¬éé»ä½ç®ä½ä¸­æ\ w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'å¬éé»ä½ç®ä½ä¸­æ\ w3\', STXihei, åæç»é», å¾®è½¯éé», SimSun, å®ä½, Heiti, é»ä½, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<img src=\"http://images.huxiu.com/article/cover/201603/03/115102920074.jpg?imageView2/1/w/800/h/450/imageMogr2/strip/interlace/1/quality/85/format/jpg\" alt=\"å°æä¸é©¬äºé½å¨åVRï¼åä¸èå¦ä½é¿åæä¸ºç®ç°ï¼\" style=\"width:auto;\" /> \r\n</div>\r\n<div class=\"article-content-wrap\" style=\"font-size:16px;color:#333333;font-family:Arial, \'Microsoft yahei\', \'Hiragino Sans GB\', \'å¬éé»ä½ç®ä½ä¸­æ\ w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'å¬éé»ä½ç®ä½ä¸­æ\ w3\', STXihei, åæç»é», å¾®è½¯éé», SimSun, å®ä½, Heiti, é»ä½, sans-serif;background-color:#FFFFFF;\">\r\n	<p>\r\n		<span class=\"text-remarks\" style=\"color:#999999;\">æ\/çæ°å\</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æ¥åï¼å°æå¨åäº¬é¾é¾ä¸­æ¨è·ä¹åï¼å¨åäº¬åå äºâä¸­å½åå±é«å±è®ºå\2016å¹´ä¼âãåä¼çåæ¬é©¬äºãé·åä»¥åUberåå§äººç¹æç»´æ¯Â·å¡å°å°¼åãä¼ä¸ï¼å°æä¸é©¬äºä¸èµ·èèµ·äºVRãæåä¼¯åè¡¨ç¤ºï¼ä»å¹´æ¯æ¶è´¹çº§VRå¹´ï¼Oculus Riftä¹å°ä»å¹´ä¸å¸ï¼å¹¶é¢æµäºå°åå¹´ä¹åï¼VRææºä¹ä¼æä¸ºå¸åºä¸»æµãé©¬äºä¹è¡¨ç¤ºæ¿æå¸®å°æåOculusã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		Facebookä¹å¤ï¼ç´¢å°¼ãä¸æãHTCãç­ä¹æåèªçVRäº§åå¸å±ãHTCæ´æ¯å°å¤§èµæ³¨é½æ¼å¨äºVRï¼å¸æVRè½å¸®å©HTCç¿»çèµ¢å¾ä¸ä¸åºé£å£ãå¨å½åï¼é¿éæ¥åååå®£å¸æç«VRå®éªå®¤ï¼å¹¶é¦æ¬¡å¯¹å¤éé²éå¢VRæç¥ï¼å¹¶å¯å¨Buyï¼è®¡åå¼é¢æªæ¥è´­ç©ä½éªï¼æ­å»ºVRåä¸çæãçè³è§é¢ç½ç«ä¹å¨çº·çº·æVRçï¼æ¯å¦ç±å¥èºä¸çº¿VRé¢éï¼é¨ååå®¹å¯ä»¥ç¨VRè®¾å¤è§çãèæTVå¼å§å°è¯å°æä¸ç»¼èºèç®éè¿VRææ¯æ­æ¾ï¼å¹¶ä¸çº¿äºãææ¯æ­æãVRä¸åºãè®¸å¤å°æ¹æ¿åºä¹é¢å·åç»æ§ï¼æ¯å¦åæå¸é¿é­å®å¨åäºå±å¨å½äººå¤§åæ¬¡ä¼è®®æ±è¥¿å¢åªä½å¼æ¾æ¥ä¸è¡¨ç¤ºï¼åæå°å¯å¨å¨çé¦ä¸ªåå¸çº§èæç°å®äº§ä¸è§åï¼åææä¿¡å¿æé åäº¿VRäº§ä¸ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		VRçç«çè¶å¿ä¹å¨æ¨å¨æ´å¤åä¸èæ¶å¥ã\<span style=\"font-weight:700;\">åä¸èçæ³æ³ä¹å¾ç®åï¼æé çæ¬¾æèè¢«å·¨å¤´æ¶è´­</span>ãå¨å½åçèæç°å®å¸åºä¸ï¼å¨VRå¤´çæ¹é¢æé¶æ²³æ°å¨±ãå°é¸çãæ·±å³èæç°å®ç§æ<span class=\"text-remarks\" style=\"color:#999999;\">ï¼\3 Glassesï¼\</span>ç­å¬å¸ï¼ä¸ä½æºãVRç¼éäº§åé¢åæç¿æ¦ä¿¡æ¯Nibiruãç°ç«å·¥åç­ï¼å¨åå®¹é¢åï¼ææ´é£é­éAppãèµé£åº¦âæè¡VRâï¼å¨è¾¹è®¾å¤é¢åï¼ä¹åºç°äºVirtuixçOmni ä½æè·æ­¥æºãèè§ä½ææªãéæ¶äºå¨æå¿å¨ä½æææ§å¶å¨âå¾®å¨Vidooâç­å¬å¸ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ä½æä»¬çå°ï¼å½åVRçåä¸å´å¹¶æ²¡ææè³çäº§åï¼èæ´å¤çäº§ååå¸¦æ¥å»ä»·çç´è§å°è±¡ï¼æè®¸å¤ä»é30åå°±è½ç¨ééåç¡¬çº¸æ¿å°±ååºæ¥çç®æVRè®¾å¤äº§åãèæ´é£å°±ä¸ç´å°æä¸VRè®¾å¤é­éå®å¨99åçä»·ä½ï¼åååå¬å¸çæ¨åºçç¼éçå­çå®ä»·æ®éå¨300åä»¥ä¸ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ç¬èæ­¤åæ¾å\¨<a href=\"http://www.huxiu.com/article/137272/1.html?f=member_article\" target=\"_blank\">ãVRæ¯ä¸ªåï¼åä¸èæ¥çå¥å±ææå·¨å¤´ç®ç°ã\</a>ä¸ææåºï¼VRåä¸æè¯¸å¤é¾ç¹ï¼ææ¯å£åé«ï¼èµéæå¥ä¸æ¶é´ç åå¨æé¿ãèæç°å®ç¡¬ä»¶é¢åäº§ä¸é¾å¹¶æªå®åãç¡¬ä»¶äº§åææ¯ä¸æ²æµ¸å¼çä½éªç¼ºå¤±ãåå®¹ç¼ºä¹ãå¸åºéæ±ä¸çå©æ¨¡å¼å°å¾ææãæ»ä¹å°±æ¯åä¸æ¶æºå°ä¸æçã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æå¥è¯æ¯è¯´ï¼æ¶æºä¸å¯¹ï¼è¶åªåè¶å°´å°¬ã\<span style=\"font-weight:700;\">VRé¢ä¸´çè¡ä¸æ§é¾é¢é¦åæ¯VRåå®¹ç¼ºå¤±ã\</span>æ¯å¦è¯´ï¼VRèµ·æ­¥é¶æ®µæååå¥çé¢ååºè¯¥æ¯æ¸¸æåå½±è§åå®¹é¢åï¼èå¨æ¸¸æé¢åï¼Oculusãä¸æãHTCç­ç§æå·¨å¤´å¨åå®¹æ¹é¢çä½åäº§åºä¾ç¶ä¹åã\ å½å¤YouTubeï¼å½åç±å¥èºãèæTVï¼é½å¨è¯æ°´VRå½±è§åå®¹ï¼ç®åå¾é¾è¯´æä»ä¹é«è´¨éçVRè§é¢ãå³ä¾¿æ¯æ¥æå¼ºå¤§å¨±ä¹åå®¹äº§ä¸æ¯æåææ¯æ¯æçè¿ªæ¯å°¼ä¸ç´¢å°¼ç­ï¼ä¾ç¶ä¸è§æå æ¬¾VRæ¸¸æä½åé®ä¸ï¼ç´¢å°¼å¨Project Morpheusæ¨åº2å¹´æ¥ï¼ä¹ä»å¶ä½äº20æ¬¾Domeæ¸¸æä½åã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-weight:700;\">å¶æ¬¡æ¯è¡ä¸æ åæ²¡æç»ä¸ï¼ææ¯ä¸æçã\</span>æ¯å¦å½åä¸å°ææ¯å¨å¤ä¸è¶³çå¤§å¬å¸æ´å¾åäºéè¿èµæ¬ææ®µè¿å¥VRï¼å¨æ´ä½ææ¯æ¹é¢ï¼æ­£å¦æä¸åäººå£«è¯´çï¼æ´ä¸ªVRè¡ä¸å¨è¾åºè®¾å¤ç«¯çåè¾¨çãæ¾ç¤ºé¢çãè·è¸ªç²¾åº¦ãè§åºè§ãééç­æ¹é¢çææ¯ææ è¿ä¸å¤é«ãå¦å¤ï¼ç®ååæ¬å°ç±³è¾è®¯ä¹è§ç­å·¨å¤´è½ç¶å¨VRé½æå¸å±ï¼ä½å¨ç¡¬ä»¶ãåå®¹è¿æ¯åºå±é½å°æªç³»ç»åï¼è¿ä¹æºäºè¡ä¸æ åå°æªç¡®å®ï¼è½ç¶å¾®è½¯ãFacebookãç´¢å°¼ãä¸æç­ä¼ä¸å¨è¿ä¸é¢åå·²ç»èèè¾é¿æ¶é´ï¼ä½åºäºæ´ä¸ªVRäº§ä¸é¾çæ åçæ¨è¿ä¾ç¶ä¹åã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		è¿ä¹ç¼äºæ¯VRäº§ä¸ä¸ä¸æ¸¸çæé¾å°æªæåãæä»¬ç¥éï¼ä¸ä¸ªäº§ä¸çå½¢æï¼éè¦åæ£å¨äº§ä¸é¾åå¤çä¼ä¸å½¢æå®æ´ç»ä¸ççæç³»ç»ï¼æè½å¤æè¶³å¤çäº§è½æ¥æ¯æVRäº§ä¸åä¸çº§å«çåºè´§éãä½å¨ç®åèè¨ï¼åºäºVRäº§ä¸ççµå­åå¨ä»¶ãå±å¹ãéçãå¤çå¨ãè¯çï¼æ ¸å¿ä¼ æå¨ãé¶é¨ä»¶ç­ç­æ ¸å¿ç»ä»¶åå®¶çææ¯å¨å¤å°ææ¬ ç¼ºãåé¢æå°ï¼å½åå½éæåä¼ åªãçµå½±è§é¢ï¼æ¸¸æå¨±ä¹çåå®¹ç«¯äº§åºè½åä¾æ§æ¬ ç¼ºã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-weight:700;\">åæ£å¨åå°çå¹¶ä¸å®æ´çäº§ä¸é¾ä¹å¹¶ä¸è¶³ä»¥æ¯æè¿ä¸ªäº§ä¸çåæè¿éå°æ¥ã\</span>è¿ä¹æ¯ä¸ºä»ä¹å½åäº§åºçVRäº§åå¤èµ°ä½ç«¯è·¯å­çåå ï¼å ä¸ºææ¯ä¸äº§ä¸é¾çä¸æçï¼è¿ä¸è¶³ä»¥æ¯æVRäº§åè½å¤æèµæ¬åææ¯èµ°é«ç«¯è·¯çº¿ãæä»¥è¯´ï¼\<span style=\"font-weight:700;\">æ²¡äººä¼è´¨çVRè½éå¡ä¸ä¸ªåºå¤§çäº§ä¸ï¼èéè¦èèçæ¯ï¼ä»ä¹æ¶åè¿ä¸ªæ¶é´èç¹ä¼å°æ¥ã\</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		å¦æè¯´ï¼åä¸èç²ç®åå¥VRé¢åå¯è½ä¼æä¸ºå·¨å¤´ç®ç°ãé£ä¹ç¬èä»å¤©è¦è°çæ¯ï¼åä¸èè¥æ³ä¸æä¸ºç®ç°ï¼åºè¯¥æä¹åï¼\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		å¡åéæ±ç¨æ·ï¼å¨ææ¯ä¸åå®¹ç«¯å¯»æ±æ ¸å¿ææ§å\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		å¨å½åï¼å¤æ°åä¸èä»¥åææºçå¿æå¨åVRï¼ä½VRäº§ä¸é¾ä¸ææºäº§ä¸é¾è¿æ¯ææåºå«ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ææºæ¯ä¸ç§åéæ§äº§åï¼æ¯ä¸ªäººé½æ¯æ½å¨ç¨æ·ï¼å¯ä»¥å®¹çº³ä¸ä¸ªå·¨å¤§çå¸åºï¼ä½<span style=\"font-weight:700;\">VRæ´å¤çæ¯æ¶è´¹åçº§æ¶ä»£çå¨±ä¹äº§åï¼VRäº§åä¸»æå¤æ°ä¸é«ç«¯å¨±ä¹éæ±ç¸å\³</span>ãæä»¥å¨è¿ä¸ªéæ±åæä¸ï¼VRçç¨æ·å®ä½åæé¶æ®µåºè¯¥æ¯ä¸­äº§é¶å±æèç½é¢é¶å±ï¼èä¸æ¯ä¸ç§æ§ä»·æ¯æèä¾¿å®æ¶è´¹çµå­äº§åçå®ä½ãå ä¸ºå¨é«ç«¯åçä¸åçæ¶åï¼ç±»ä¼¼Oculusãä¸æç­ä¼ä¸é¢è·ä¼å¿ææ¾ï¼å¹¶ä¸å¶äº§åå®ä»·ä¹ä¸é«ï¼è¿ç±»å·¨å¤´åçä»·æ ¼ä¸åæ¶å¯¹åä¸èä¼æ¯ç¢¾åæ§çä¼å¿ãèVRå¦ææ¯æ¶è´¹åçº§æ¶ä»£çäº§åå®ä½ï¼é£ä¹å¸åºä¸æ´éè¦æè³çVRäº§åï¼äº§åæ¬èº«æ´éè¦è¿½æ±åè´¨åç¨æ·ä½éªä¸çæ²æµ¸æã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		å æ­¤ï¼VRäº§åå½åæ­£å¤äºææ¯çº¢å©ä¸åå®¹çº¢å©çåå¤ï¼ä¹å°±æ¯è¯´ï¼åVRï¼è¦ä¹æ¯ææ¯ä¸å·å¤ä¼å¿ï¼æ¯å¦è¯´æèªèº«çç¡¬ä»¶æ¹æ¡ï¼ä¿è¯å¨é¢çVRæ¸¸æä½éªï¼æèè¯´è½å¤ä»äº§åç«¯æé«æ§è½ï¼è§£å³åç­ãç©ææãç»­èªã\3Dæå¿äº¤äºãç§»å¨åºæ¯ç­è¯¸å¤é®é¢ãå¦å¤ï¼è¦ä¹æ¯åå®¹å·å¤ä¼å¿ï¼è½å¤åVRæä¸ç¹å®é¢åçåå®¹ä¾åºåï¼å¨è¡ä¸ä¸æçåå®¹ç¨ç¼ºæé´è¿éå»ºç«åçï¼å»ºç«æä¸ç¹å®é¢åçåå®¹èµæºä¼å¿ãè¦ä¹å¨ææ¯ä¸åå®¹é½æä¼å¿ï¼å¦æä»ä»æ¯å ä¸ºé£å£å°±å¨é£å¿ï¼æä»¥å¿é¡»è¦å»è¸©ï¼æ±çè¿å¿ççå¤åä¼æä¸ºå·¨å¤´æè½¦æ¨è¿åçç®ç°ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		ååVRçåºæ¯å®ä½ä¸çå©æ¨¡å¼\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ä¸è¬æ¥è¯´ï¼å¦æéè¦è¿éæ®åç±»çç§æäº§åï¼ç¦»ä¸å¼åºç¨åºæ¯ãVRçåºç¨åºæ¯æ¯å®¤ååºæ¯è¿æ¯å®¤å¤ç§»å¨åºæ¯ï¼æ¯å¦è¯´ï¼ææºä¹æä»¥è½ç§°ä¹ä¸ºåéåäº§åå°±å¨å¶ç§»å¨æ§ï¼å³æ æ¶æ å»éæ¶éå°é½å¯ä»¥ç¨ï¼èå¦ææ¶è´¹èä¹°äºä¸ªVRå¤´çç±»äº§åï¼å¡å¨èåéï¼ä¸è¡æ èå¶å°æ¿åºæ¥ä½éªä¸æï¼æ»æ¯ä¸å¤ªç°å®å§ãæ¯å¦è¯´å¤§ç­é¨çææºæ¸¸æãæ¤æçå°é¸ãæ¨åºVRçäºï¼VR ççè§è§è½¬ç§»å°äºå°é¸èº«åï¼ç©å®¶éä½©æ´ Samsung Gear VR å¤´çéè¿ç§»å¨å¤´é¨æ¥æ§å¶å°é¸é¡ºçååé£è¡å°ç»ç¹ï¼è¿ç§ç©æ³çæè§è¿äºå¼ºçï¼éè¦æ¸¸æèå¸¦ä¸VRå¤´çå¨ç¥è´¯æ³¨å°ææ§ï¼å æ­¤ä¸å·å¤éæ¶éå°ä½éªçæä½åºç¡ï¼é£ä¹è¿å³å®çVRæ¸¸æç±»äº§åå¯è½æ¯ä¸å·å¤ç§»å¨åºæ¯çå±æ§ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æ­£å¦æç¥ä¹ç¨æ·è¯´ï¼\<span style=\"font-weight:700;\">ä½ å¯ä»¥éåºæ¿çææºä½çå¤´ççä¸çï¼ä½ä½ å¯ä»¥æ¥åæ¯ä¸ªäººå¸¦ä¸ªå¤§é¦å¤´å¨å¤´ä¸çä¸çä¹ï¼</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æä»¥è¯´ï¼\<span style=\"font-weight:700;\">VRäº§åé¦åè¦è§£å³çé®é¢æ¯ç§»å¨åºæ¯å±æ§ä»¥åå¦ä½å®ä½\</span>ï¼ç¨æ·å¨ä»ä¹æ¶åéè¦è¿ä¸ªç©å·ï¼æä¹ä»ææ¯ä¸æ¨å¨æå¿äº¤äºææ¯æçï¼è®©VRè±ç¦»æ¸¸ææºçå®ä½èµ°å¥å¯»å¸¸ç¾å§å®¶ï¼ç¶åä»è¿ä¸ªè§åº¦æ¥å¼å§åäº§åï¼å¦ææ²¡æè§£å³åºæ¯é®é¢ï¼å®å°±æ¯ä¸ä¸ªå¨å¨±ä¹åºæéé¢çæ¸¸æç±»çç©å·ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style=\"font-weight:700;\">å¦å¤æ¯çå©æ¨¡å¼é®é¢ï¼VRç¡¬ä»¶åä¸èé¤äºåç¡¬ä»¶ï¼åå®¹å¶ä½èé¤äºååå®¹ï¼è¿ææ´å¥½çææ³åï¼</span>è³å°ç®åè¿æ²¡æãå¯¹äºåä¸èèè¨ï¼ä»ä¸å¼å§åå¥VRé¢åï¼å°±åºè¯¥æ³çé¿è¿å¸å±ï¼å¦ä½å¯»æ±çå©ãä¸è¬æ¥è¯´ï¼è¿ç§è¿éç«ççé¢åå¾å¾ä¹ä¼å¨è¿è¿çä¸å°äº§åºçåæ¶è¿éè¢«æèµäººæå¼ãæ¯å¦æ©å\¨2014å¹´ï¼æºè½ç¡¬ä»¶çæ¦å¿µå§å£å°ä¸ï¼èµæ¬å¸åºåçæºè½ç¡¬ä»¶çåå¹´æ¥äºï¼åå¤§äºèç½å¬å¸ä¸åä¸èå¨æºè½ç¡¬ä»¶ä¸é¢é¢å¸å±ï¼ä½æä»¬åç°å°å¦ä»ï¼å ä¹æ²¡æä¸ä»¶å¯ä»¥é£é¡ä¸æ¶è¢«äººæ´¥æ´¥ä¹éèè¢«ç§°ä¹ä¸ºçæ¬¾çäº§åãå½æ¶ç¯çæ¶å¥çæºè½ç¡¬ä»¶åä¸ç©å®¶ç®åè¿å©å¤å°ï¼æä»¥è¯´ï¼\<span style=\"font-weight:700;\">æè°çåå¹´ï¼åªæ¯èµæ¬å¸åºå¨ææ§éè¦çæ°æ¦å¿µã\</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		å´ç»VRäº§ä¸é¾ä¸ä¸æ¸¸å¶ä¸­çä¸ç¯åå¥ï¼å°æ ¸å¿ä¼å¿åæäº§ä¸é¾ä¸å¯æç¼ºçä¸ç\¯\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ç¸ä¿¡å¾å¤äººå¯¹å³äºç¹å¤ªäººä¸ä¸­å½äººåä¸çæäºè³çè½è¯¦ãä¸ä¸ªç¹å¤ªäººæ¥å°å°éä¸å¼äºä¸ªå æ²¹ç«ï¼ç¬¬äºä¸ªç¹å¤ªäººæ¥äºï¼æ³å°å æ²¹ç«çå®¢æ·éè¦åé¥­ï¼æä»¥å¼äºé¤é¦ï¼ç¬¬ä¸ä¸ªç¹å¤ªäººæ¥äºå¼äºä¸ªéåºï¼åé¢çæ¥çå¼äºè¶å¸ç­ç­ï¼äºæ¯äº§ä¸é¾åç«¯ååå½¢æäºè¡¥å±èµ¢çå³ç³»ï¼ä¸ä¸ªç»æµç¹è£æ¬£æ¬£åè£çå°éå°±è¿æ ·å½¢æäºãèä¸ä¸ªä¸­å½äººæ¥å°å°éä¸å¼äºä¸ªå æ²¹ç«ï¼çæå¾ç«ï¼ç¬¬äºä¸ªä¸­å½äººæ¥äºï¼åç°è¿ä¸ªäººçå æ²¹ç«çæç«çè®©äººç¾¡æå«å¦æ¨ï¼äºæ¯ä¹å¼äºä¸ä¸ªå æ²¹ç«ï¼ç¬¬ä¸ä¸ªãç¬¬åï¼ç¬¬äºä¸ªä¸­å½äººè¿æ¥é½å¹²åæ ·çäºï¼æåæ¶æ§ç«äºææä¿éäºç¸å¾è½§ï¼ç»æå æ²¹ç«çº·çº·åé­ï¼å°éè¿æ¯åæ¥çæ ·å­ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		VRåä¸é¢åç®åå°±å·®ä¸å¤æ¯è¿æ ·ï¼å¤§é¨åå¨åVRç¼éä¸å¤´çãæ¯å¦çµéCEOå»å¹´å°±è¡¨ç¤ºï¼ä¸å¹´åç¸å³åVRç¼éçå¬å¸ä¸å\°10å®¶ï¼å°å»å¹´å¹´åºï¼è¿ä¸ªæ°å­ç¿»äºè¿ä¹10åã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ç¬èå¨è¿éæ³è°çæ¯ï¼\<span style=\"font-weight:700;\">VRäº§ä¸æªæ¥è¥ä¼çåï¼é£ä¹å¿ç¶æå¹³å°åçå·¨å¤´å¬å¸åºç°</span>ï¼é£ä¹åæ£å¨äº§ä¸é¾åå¤çVRç¡¬ä»¶æèé¶é¨ä»¶ååæèåå®¹ååå¿ç¶ä¼äº«åè¿ä¸æ³¢çº¢å©ï¼æ¯å¦å¨æºè½ææºé¢åï¼è¹æå¸¦å¨äºå¯å£«åº·ä¸å°ç§¯çµç­ç»è£ååä¸è¯çååçç¹è£ãVRå¸å±åºè¯¥æ¯åæ ·çéçï¼åä¸èåºè¯¥æ³æ¸æ¥èªå·±çä¼å¿å¨åªï¼æéå¯¹æ§çå¨æ ¸å¿ä¼å¿ç¹å¡ä½å¸å±ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æ¯å¦è¯´æ¸¸æå¨æ¼«ç±»åå®¹å¶ä½å¬å¸å¯ä»¥èèåæ£ä¸é¨åäººåèµæºèç¦äºVRæ¸¸æä¸å¨æ¼«åå®¹çåæå¶ä½ï¼è¯çååå¯ä»¥èèå¦ä½æåèªèº«ææ¯æ¯å¦\4Kçè§£ç è½åæ¯æé«è§£æåº¦çæ¸¸æä¸è§é¢ï¼éæ­¥ä»åºå ä¼å¿ä¸ç§¯æ·èªèº«åºè´ç»§èè¾¾æå¨VRé¢åçç ´å±çè½åãåæå½±åå­¦ç³»ç»è®¾è®¡çï¼å¯ä»¥èèéå½å¢å ç åæå¥ï¼ä»¥ä¾¿äºå¨æªæ¥å¯ä»¥åå°éç¨äºVRçµå½±çæ£±éä¸çé¢éçåå­¦é¶é¨ä»¶ææ¯çé¢åä¼å¿ãVRçµå½±çæªæ¥å¯è½æ¯å¹å¸æ¯ç¯ç»å¨ç¨æ·å¤´ä¸ç\360Â°ç©ºé´ï¼å¦ä½ä»è¿ä¸ªææ¯ç¹åå¥æ¥ç»ç¨æ·å¸¦æ¥ç»ä½³çè§å¬æåä¹æ¯åä¸èéè¦èèçï¼ä¼ æå¨åååºè¯¥æè¯å°èªèº«å¨VRäº§ä¸ä¸­çæ ¸å¿ä»·å¼ï¼åºææè¯çå»ç åæ¨å¨æ´å¥½çäººæºäº¤äºçä½éªï¼è¿æ¯å®ç°æ·±åº¦ä¼ æçåºç¡ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ä»è¿ä¸ªæä¹ä¸è¯´ï¼<span style=\"font-weight:700;\">VRåä¸èåºè¯¥è¦å·æâäº§ä¸å¬å°âçæè·¯ï¼å¯»æ±å¨äººæ ææçäº§ä¸ç¯èåå¥ï¼è§£å³æä¸ä¸ªç¯èçé®é¢</span>ï¼å³å´ç»äº§ä¸é¾ä¸ä¸æ¸¸å¶ä¸­çä¸ç¯åå¥äº§åï¼æ¨å¨äº§ä¸é¾éç¾¤åå±ï¼èä¸æ¯ä¸çªèå»ååæ ·çäºæï¼ä¸ä¸æ¥å°±é½å»åä¸ªå¤´çæç¼éï¼è¿æ ·çç»æå¿ç¶æ¯ç®ç°ãæåä¼¯æ ¼æ­¤åä¸é©¬äºèå¤©è¯´å°ï¼æéå¸¸ä¼è¯´ï¼ä½ è¦æ³çè§£å³é®é¢ï¼èä¸æ¯æ³çå»å¼ä¸å®¶å¬å¸ï¼å¾å¤äººå¨æ²¡ææ³å°è§£å³ä»ä¹æ ·çé®é¢ä¹åå°±å¼äºå¬å¸ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		ä¹å°±æ¯è¯´ï¼VRåä¸èéè¦èèçæ¯æ´æ¡VRäº§ä¸é¾æ¯å¦ä½è¿ä½çï¼èªèº«çä¼å¿å¨åªéï¼æå¤å¨æ´æ¡äº§ä¸é¾çåªä¸ä¸ªç¯èï¼æªæ¥éçæ´ä¸ªVRäº§ä¸é¾çæçï¼æå¦ä½æå¯è½æä¸ºå½åç¯èä¸å¯æç¼ºçä¸é¨åã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p class=\"text-big-title\" style=\"font-size:20px;font-weight:700;color:#A41D1D;\">\r\n		åä¸èä¹åå¿å­¦å·¨å¤´çå¹³å°åçæç©æ³ï¼å­¦åå³é®èµæºä¾åºå\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æåå»ºè®®åä¸èä¹åå¿å­¦å·¨å¤´çå¹³å°åç©æ³ãå ä¸\º<span style=\"font-weight:700;\">å·¨å¤´åå¬å¸åVRçç®çä¸åä¸èçèµ·æ­¥å°±ä¸ä¸æ ·ï¼å·¨å¤´æ´å¸æåå©VRçæ¦å¿µè¯æ°´ä¸è½®ï¼çè½ä¸è½å¨èªæçå¹³å°ãçæä¸å ä¸ç¹æ°çæ¦å¿µä¸ç©æ³ï¼å°èªèº«çèµæºä¸å¹³å°ä¼å¿å¹³ç§»å°è¿ä¸ªé¢åã\</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æ¯å¦è¯´ï¼ç®åæ¥çï¼facebookæ³æé çæ¯VRå¨ç¡¬ä»\¶+åå®¹+åºç¨ååºåå+ç¤¾äº¤ççæåï¼è¾è®¯åVRæ³ä¾æèªèº«çç¨æ·ä¼å¿ï¼åVRåå®¹ä¸æ¸ éçååèå¤§ï¼æèè¯´è¿ä¸æ­¥å¼ææ¸¸æé¢åççå©å¸å±ãä¹è§ä¸å°ç±³æ¯æ³åVRåå®çæææ³ï¼åæ­¤å»¶ä¼¸èªèº«çäº§ä¸é¾å¸å±ï¼æ©å±æ´å¤çæ³è±¡ç©ºé´ãHTCåæ¥éæ°çä¸å¡æ¥å¸®å©èªå·±è½¬åæèæ¢ç´¢æ°ççå©ç¹ï¼è½¬ç§»æèµäººä¸ä¸ççè§çº¿ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		å¯¹å·¨å¤´èè¨ï¼VRæ¯è¾ä¸ï¼æåäºåºç¶éè¿æ°çä¸å¡ç»èµæ¬å¸åºå¸¦æ¥æ³è±¡ç©ºé´ï¼å³ä¾¿å¤±è´¥ï¼ä¹åªæ¯ä¸æ¬¡è¯éï¼æ ¸å¿ä¸å¡å¹¶æ æä¼¤ãä½å¯¹åä¸èèè¨ï¼VRæ¯ä¸»ä¸å¡ï¼æä»¥å¿é¡»å¨åä»¥èµ´ï¼ä»ä¸å¼å§ï¼å°±è¦ä»æç¥é«åº¦æèï¼ä»åç´é¢ååå¥ï¼ä»¥åç²¾åçæè·¯å¥æï¼å¹¶èèæ¸æ¥æªæ¥äº§åçè§åä¸åä¸æ¨¡å¼ã\\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		æ ¸å¿æè·¯æ¯å¨VRé¢åçæä¸ªæ ¸å¿ç¯èè½å¤è§£å³å³é®ææ¯ä»¥åç¨æ·ä½éªççç¹ä¸ç¹å®çåºç¨åºæ¯ï¼å¹¶è½å¨æ´ä¸ªäº§ä¸é¾ææ¯åå±ä¸éå¥è·è¿æ¶ï¼è½æä¾å³é®çåå®¹æææ¯ï¼é£ä¹ï¼å½ä½ å¨äº§ä¸åå±å¤äºä¸åçé£å£ä¹æ¶ï¼å¾å¾å°±è½æä¸ºåæ¹VRå·¨å¤´é½éè¦æ¢å çå³é®èµæºæææ¯åå®¹ä¾åºåï¼å¨è¿ä¸ªæ¶åï¼ä½ ä¾¿å¼å§ææ§è¯è¯­æï¼å¦æè½åå°è¿ä¸æ­¥ï¼VRçèç³å¿ç¶ä¼æä½ çä¸æ¯ç¾¹ã\\r\n	</p>\r\n</div>','0','/Uploads/201603/56ef978d60ae4.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=55','32','1458542485','1458542509','','0');
INSERT INTO `yourphp_article` VALUES ('56','10','2','hello','3Dè®¾è®¡è½¯ä»¶é¢åï¼è°å°ä¼æ¯ä¸ä¸ä¸ªAPPLE','','','','','å¦ä»å®¶è£ç±»çå¨çº¿è®¾è®¡è½¯ä»¶å±åºä¸ç©·ï¼å¤ä»\¥3Dä¸ºåç¹ãç¶èç»è¿äºä¸æ®µæ¶é´çè§éï¼è¿äºè½¯ä»¶ä¼¼ä¹å¹¶æªååºé«ä¸ï¼æ´æªèµ¢çæ¶è´¹èççç­ä¸éçãä¸ºä½åæ¬Autodeskè¿ç±»è½¯ä»¶å·¨å¤´é½æªæèµ·æ¶è´¹èçå´è¶£?è¿½å¶æºå¤´ç©¶ç«æ¯è½¯ä»¶æ¬èº\«...','<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	å¦ä»å®¶è£ç±»çå¨çº¿è®¾è®¡è½¯ä»¶å±åºä¸ç©·ï¼å¤ä»\¥3Dä¸ºåç¹ãç¶èç»è¿äºä¸æ®µæ¶é´çè§éï¼è¿äºè½¯ä»¶ä¼¼ä¹å¹¶æªååºé«ä¸ï¼æ´æªèµ¢çæ¶è´¹èççç­ä¸éçãä¸ºä½åæ¬Autodeskè¿ç±»è½¯ä»¶å·¨å¤´é½æªæèµ·æ¶è´¹èçå´è¶£?è¿½å¶æºå¤´ç©¶ç«æ¯è½¯ä»¶æ¬èº«åè½æ§ãæä½¿ç¨æ§æªè¾¾å°æ¶è´¹èææ\?æææ¹æ¡è½å°å¤ªé¾?æä½¿å¾\3Då¨çº¿è®¾è®¡è½¯ä»¶ä¼¼ä¹ä»åçå¨âææ¥å°è³ççæ´»æ¹å¼âã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããæ­£å¨æ¹åä¸ççæ³å½è¾¾ç´¢ç³»ç»èæBDHOMEï¼ä¹å°å¨å¤§ä¸­åå°åºæ¨åºå¨çº\¿3Då®¤åè®¾è®¡è½¯ä»¶ãå¨çè½¯ä»¶å·¨å¤´èæä¸ç½ç­å®¶çå®¶è£å·¨æï¼ç¡®æå®åæ­è½¬å½å\3Då®¶è£è®¾è®¡è½¯ä»¶çä¸æ¯å±é¢ãä¸å¹¶æä¸ºæå¤§èµ¢å®¶ãè¿ç§çæ³çä¿¡å¿æºäºå¤ä¸ªæ¹é¢ï¼ä¸å¤§ä¸»å ä¾¿æ¯è¾¾ç´\¢3Dè®¾è®¡è½¯ä»¶æ¬èº«çé«åº¦ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããæ¬æå°å¯¹æ¯æ¶ä¸\5æ¬¾ç¥åç3Dè®¾è®¡è½¯ä»¶ï¼HOMEBYME(è¾¾ç´¢ä»¥åBDHOME)ãç¾å®¶è¾¾äº\º(AutoDesk)ãé·å®¶ä¹ãä¸ç»´å®¶ãç±ç¦çªãä»8ä¸ªæ¹é¢è¿è¡æ¯è¾ä»¥ä¸è½¯ä»¶ï¼å¯ç«å³å¤å«å¶ä¸ºç3Dæä¼ª3Dãç©¶ç«å¥½ç¨ä¸å¦ï¼è¾¾ç´¢3Dè½¯ä»¶æ¬èº«çé«åº¦æ´æ¯æ¾èæè§ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ\ 3Dè§è§å\3Dæ¸¸è§ï¼\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããè½¯ä»¶è§è§å¯åä¸ºä¸¤ç±»ï¼720Â°ä¸ä¸å·¦å³åå¯è¿ç»­æ¥ççè§è§ä¸æ¯\45Â°ä¸ºä¸ä¸ªè§åº¦ç360Â°è§è§ãHOMEBYMEä¸ç¾å®¶è¾¾äººåä¸ºè´§çä»·å®ç3Dè§è§ï¼å¯720Â°è¿ç»­è½¬å¨;èä¸ç»´å®¶ãé·å®¶ä¹ä¸ç±ç¦çªåªè½éæ©æ¯ä¸ª45Â°è§åº¦æ¥çï¼å³æéç\8ä¸ªè§åº¦æ¥çã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã3Dæ¸¸è§ï¼å³å\¨3Dæ¨¡å¼ä¸æ¥çè®¾è®¡æ¯å¦ä¸º3Dãå®éä¸ï¼ç±ç¦çªç\3Dæ¸¸è§å¹¶é3Dï¼ä¸ç»´å®¶åªè½éä¸æ¿é´æ¥çã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/5Rz0-fxkhcis0372243.jpg\" width=\"530\" height=\"171\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããç»¼ä¸ï¼HOMEBYME(è¾¾ç´¢ä»¥åBDHOME)ä¸ç¾å®¶è¾¾äººå¨3Dè§è§ä¸\3Dæ¸¸è§ä¸¤é¡¹åæ ¼ï¼æ¯ç\3Dã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ¡èªå¨è°æ´å¸å±ï¼\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããæææ¾å®¶å·æ¶ï¼è½¯ä»¶æ¯å¦è½é¿åéå æç©¿è¶å¢å£å¹¶ä½¿å®¶å·å¸éå¢é¢ãHOMEBYMEãç±ç¦çªä¸¤æ¬¾è½¯ä»¶å·æèªå¨å¸å±çåè½ï¼ä½ç±ç¦çªç¼ºä¹æ­£ç¡®çè§åï¼ä¼åçç©¿è¶å°é¨å¤çæåµãå¶ä»ä¸æ¬¾è½¯ä»¶ä¸å·å¤èªå¨å¸å±ï¼éè¦æå¨ç»å¿è°æ´ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/veI1-fxkhcey3502805.jpg\" width=\"496\" height=\"369\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ¢åå¥½æ¾ç¤\º / å¤å±æ¥¼ï¼\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããææ¥çæ¹æ¡æ¶éèæ¡ä½è§çº¿çæ­£é¢å¢ï¼æå©äºçæ¸æ¹æ¡æ´æ¹ä¾¿è°æ´å¸å±ãHOMEBYMEãé·å®¶ä¹ä¸æ¾ç¤ºæ­£é¢å¢;ç¾å®¶è¾¾äººä¸ç±ç¦çªå°æ­£é¢å¢éæåï¼ä½ç¾å®¶è¾¾äººå¨3Dæ¨¡å¼ä¸å¯ææ¾å®¶å·;é·å®¶ä¹çé¨åå¢é¢ä¸ºç½è²æ éè§ï¼ééä¸ªæ¿é´æ¥çã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããå¤æ¥¼å±ï¼é¡¾åæä¹æ¯å¦å¯è®¾è®¡å¤æ¥¼å±çæ¹æ¡ãç®åä»HOMEBYME(è¾¾ç´¢ä»¥åBDHOME)ä¸ç¾å®¶è¾¾äººå¯ä»¥è®¾è®¡å¤æ¥¼å±æ¹æ¡ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/xaIU-fxkhckf7812374.jpg\" width=\"307\" height=\"263\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ£å®¶å·äº¤äºï¼\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããé¢æµäº§åçä½¿ç¨æ¯å¦ç¸äºå½±åï¼ä¾å¦å¯ä»¥æå¼çªæ·ææ©±æé¨ãäºæ¬¾è½¯ä»¶ä¸­åªæHOMEBYME(è¾¾ç´¢ä»¥åBDHOME)åå°äºå®¶å·çäº¤äºåè½ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/suau-fxkhcey3502807.jpg\" width=\"530\" height=\"223\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ¤å¯¹ç¹æ®æ¿é´ä¸ä¸å¸å±ï¼\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããå¨æ¿ãå«æµ´ãè¡£å¸½é´éå¸¸æ³¨éä¸ä¸çå¸å±æ¹æ¡ï¼äºæ¬¾è½¯ä»¶ä¸­åªæHOMEBYME(è¾¾ç´¢ä»¥åBDHOME)å·æåºç¨ä¸ä¸è§åãç©¶ç«ä»ä¹æ¯ä¸ä¸å¸å±?ä¸å¾ä»¥æåçå¨æ¿ä¸ºä¾ï¼éæ©æ¿é´åä¼çæåç±»å¸å±æ¹æ¡ï¼è½çå»èªè¡ææ¾çéº»ç¦ï¼ç®ä¾¿å°æ¥çåç±»ææ¾ææã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/_YFM-fxkhcki4589545.jpg\" width=\"530\" height=\"216\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ¥å¯åå®¶å·ï¼\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããå½æä»¬æè¶³å¤çç©ºé´ï¼å¯ä½¿ç¨æ´é¿çæ©±æï¼åªéæé¿å®¶å·å°ºå¯¸ï¼å®¶å·èªå¨å¢å æ½å±çæ°éæå°ºå¯¸ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/CLPa-fxkhckf7812376.jpg\" width=\"530\" height=\"217\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ¦æ¸²æ\ Ray Tracingï¼\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããå³çæè®¾è®¡æ¹æ¡ææå¾ï¼ä»»ä½ä¸æ¬\¾3Dè½¯ä»¶é½ä¼ææ¸²æåè½ï¼ä½å¶æ¸²æéåº¦ä¸ææåä¸ç¸åï¼èæ¸²æéåº¦ä¸ææè³å³éè¦ä¸å·®å«å·¨å¤§ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããâ§ç¨æ·ç«¯ï¼\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããç¨æ·ç«¯å¯åä¸ºï¼ç½é¡µç«¯ ãç§»å¨ç«¯ãProé¨åºä¸ç±»ï¼å¶ä¸­Proçæ¬ä¸»è¦å¯åä¸å®¶å¨é¨åºä¸èµ·è°æ´ä½¿ç¨ã\5æ¬¾è½¯ä»¶é½å·æç½é¡µç«¯ï¼å¶ä¸­HOMEBYME(è¾¾ç´¢ä»¥åBDHOME)ãç¾å®¶è¾¾äº\º (AutoDesk)ãé·å®¶ä¹ä¹æç§»å¨ç«\¯;Proé¨åºåªæ3DViaæä¾ã\\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ãã<img src=\"http://n.sinaimg.cn/translate/20151102/FTuj-fxkhckf7812378.jpg\" width=\"370\" height=\"258\" /> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;\">\r\n	ããç»¼åä»¥ä¸åè½ææ ï¼HOMEBYME(è¾¾ç´¢ä»¥åBDHOME)å\¨3Dè½¯ä»¶çéè¦åè½ä¸é½æææ¾ä¼å¿ï¼è¿æ¬¾æççè½¯ä»¶çèå¿å¾åï¼å¼å¾æè®¸ãæªæ¥æ©å·²åçï¼åªæ¯å°æªæ®åã\\r\n</p>','0','/Uploads/201603/56efbda672da1.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=56','36','1456296615','1458552238','','0');
INSERT INTO `yourphp_article` VALUES ('57','22','2','hello','3Dæè£è®¾è®¡','','','','','ä¸ºäºè§£å³æè£è¡ä¸ç¨æ·éè´§çå±é«ä¸ä¸ï¼ä¸åèº«ï¼åèº«äºç©¿ä¸å»ä¸å¥½çï¼è²å·®ï¼çé®é¢ï¼åå°å¹³å°æå¹³åãè®¾è®¡å½éåãçäº§æ¬å°åãæè£å®å¶ååä»·æ ¼å¹³æ°åçç®æ ãæ ¸å¿ç®æ \1ã\3Dè¯è¡£éåä¸ç»´äººä½æ«æè®¾å¤è§åÂ  &nbs...','ä¸ºäºè§£å³æè£è¡ä¸ç¨æ·éè´§çå±é«ä¸ä¸ï¼ä¸åèº«ï¼åèº«äºç©¿ä¸å»ä¸å¥½çï¼è²å·®ï¼çé®é¢ï¼åå°å¹³å°æå¹³åãè®¾è®¡å½éåãçäº§æ¬å°åãæè£å®å¶ååä»·æ ¼å¹³æ°åçç®æ ã\<br />\r\n<br />\r\næ ¸å¿ç®æ <br />\r\n1ã\3Dè¯è¡£éåä¸ç»´äººä½æ«æè®¾å¤è§å<br />\r\n&nbsp; &nbsp;å®æ¶çæ§ææè®¾å¤çè¿è¡ç¶æï¼å¹¶èªå¨é¢è­\¦<br />\r\n&nbsp; &nbsp;çº¿ä¸ä¸çº¿ä¸å¹³å°æ°æ®å±äº«ä¸å®æ¶ååº<br />\r\n2ãçº¿ä¸\3Dè¯è¡£å±ç¤ºè§å<br />\r\n&nbsp; &nbsp;æ ¹æ®çäººäººä½æ°æ®åèªéåºå¹é<br />\r\n&nbsp; &nbsp;360åº¦æ æ­»è§å±ç¤º<br />\r\n&nbsp; &nbsp;ç¨æ·å¯æ ¹æ®èªå·±çåå¥½ï¼éæ¶è°æ´ç¸å³è¡£æçå°ºå¯¸ãéé¥°ãå¸æç­æ°æ®<br />\r\n&nbsp; &nbsp;ç¨æ·éæ¶å¯è°æ´èªå·±çäººä½æ°æ®<br />\r\n&nbsp; &nbsp;ç¨æ·å¯éæ¶è¿è¡å¤´åè®¾å®ï¼å¿«ç§ï¼åäº«ï¼ä¸é®è¯ç©¿ç­åè½<br />\r\n3ãçµåå¹³å°æ­å»\º<br />\r\n&nbsp; &nbsp;æ¯ææ®éçµåè¯¥æçå¹³å°ååè½ï¼å¦ååä¸ä¼ ï¼ä¼æ è§åå¶å®ï¼æ°æ®ç»è®¡åæï¼è®¢åç®¡çç­ï¼<br />\r\n&nbsp; &nbsp;å¢å é£æ§æ ¸å¿åè½æ¨¡å<br />\r\n&nbsp; &nbsp;å¢å ä¾åºé¾åè½åå®¡æ ¸åè½æ¨¡å<br />\r\n<br />\r\næ ¸å¿åè½æ¨¡å<br />\r\n1ãååç®¡ç\<br />\r\n2ãä¹°å®¶ç§<br />\r\n3ãè®¢åç®¡ç\<br />\r\n4ãåå¸ç®¡ç\<br />\r\n5ãç¨æ·ç®¡ç\<br />\r\n6ãæ°æ®ç»è®\¡<br />\r\n7ã\3Dè®¾å¤ç®¡ç<br />\r\n8ãè¥éç®¡ç<br />\r\n9ãä¾åºé¾ç®¡ç<br />\r\n<div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<img src=\"/Uploads/201603/56efb82178612.jpg\" /> \r\n	</p>\r\n	<p>\r\n		<img src=\"/Uploads/201603/56efb82c05e15.png\" /> \r\n	</p>\r\n<br />\r\n</div>','0','/Uploads/201603/56efb7ad801d3.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=57','74','1456995707','1458551379','','0');
INSERT INTO `yourphp_article` VALUES ('58','10','2','hello','å¾®ä¿¡å¬ä¼å·å¼åçææ¯ä¹é\','','','','','Â  Â  Â  Â å¾çäº\4Gç½ç»çåå±ï¼ç§»å¨äºèç½æ¶ä»£çå³°å¼æ¥å¾æ´å å¶çäºãç®åï¼å¾®ä¿¡å¬ä¼è´¦å·æ»æ°è¿åä¸ï¼ä¸æ¯æ¥æ°å¢\1.5ä¸å¤ï¼æ¥å¥åºç¨æ»éå·²è¾¾67000å¤ï¼æ¥ååå»ºåºç¨è¾\¾400å¤ï¼å¾®ä¿¡èªå©ææ¾å¹³å°ä¸å·²æ\¥...','<p>\r\n	<span style=\"font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;å¾çäº\4Gç½ç»çåå±ï¼ç§»å¨äºèç½æ¶ä»£çå³°å¼æ¥å¾æ´å å¶çäºãç®åï¼å¾®ä¿¡å¬ä¼è´¦å·æ»æ°è¿åä¸ï¼ä¸æ¯æ¥æ°å¢\1.5ä¸å¤ï¼æ¥å¥åºç¨æ»éå·²è¾¾67000å¤ï¼æ¥ååå»ºåºç¨è¾\¾400å¤ï¼å¾®ä¿¡èªå©ææ¾å¹³å°ä¸å·²æ¥æè¶è¿10000å®¶å¹¿åä¸»ï¼è¶è¿\1000å®¶æµéä¸»ã\</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\"><span style=\"font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;å¯¹äºå¾®ä¿¡æ¥è¯´ï¼ææ ¸å¿çèµæºå°±æ¯ç¨æ·æ¬èº«ãå¨åºå¤§ç¨æ·çåºç¡ä¸ï¼å¾®ä¿¡ä¸ä»ä»æ¯æ¯æåéè¯­é³ç­ä¿¡ãè§é¢ãå¾çåæå­ï¼å¯ä»¥ç¾¤èï¼ä»èå°éæµéï¼æ¯éåå¤§é¨åæºè½ææºçåºç¨ï¼æ´æ¯å¾å¤è¡ä¸ä¸ç«å¼ãå¨æµç¨è§£å³æ¹æ¡çå·¥å·ãå¾®ä¿¡æä¾äºä¸°å¯çå¼æ¾æ¥å£ï¼è¿æä¾äºå¾®ä¿¡å°åºãå¾®ä¿¡æ¯ä»ãæºè½è¯å«ãè®¾å¤æ¥å¥ç­æå¡ã\</span><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\"> </span> \r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56f2052c10eb1.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;text-align:center;background-color:#FFFFFF;\">\r\n	å¾ä¸ºå¾®ä¿¡å¬ä¼å¹³å°å¼åæµç¨\\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;text-align:center;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\">å¨å¼æ¾å¹³å°ä¸ï¼å¾®ä¿¡ä¸ºå¼åèæä¾äºä¹å¤§æ¥å£ï¼è¿ä¹å¤§æ¥å£åå«ä¸ºï¼1.è¯­é³è¯å«æ¥å£ï¼\2.å®¢ææ¥å£ï¼\3. OAuth2.0ç½é¡µæææ¥å£ï¼\4.çæå¸¦åæ°çäºç»´ç æ¥å£ï¼5.è·åç¨æ·å°çä½ç½®æ¥å£ï¼\6.è·åç¨æ·åºæ¬ä¿¡æ¯æ¥å£ï¼\7.è·åå³æ³¨èåè¡¨æ¥å£ï¼8.ç¨æ·åç»æ¥å£ï¼\9.ä¸ä¼ ä¸è½½å¤åªä½æä»¶æ¥å£ã\</span> \r\n</p>\r\n<p style=\"text-align:left;font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;å¾®ä¿¡è¿å¼æ¾äºæ¯ä»æ¥å£ï¼ç¨æ·å¯åæ­¤è¿æ¥å¾®ä¿¡æ¯ä»ï¼å®ç°ä»çº¿ä¸å°çº¿ä¸çåä¸åé­ç¯ãè¿å¼æ¾äºä¸ç³»åçæ¥å£åè½ï¼ä¾å¦å¤å®¢æç³»ç»ãå¾®ä¿¡æ¨å¹¿ãæºè½å¹³å°ãå¾®ä¿¡å°åºï¼ä»¥åè¿æåå¸çè®¾å¤æ¥å¥æå¡åæ¨¡æ¿æ¶æ¯ç­ã\\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããå¾®ä¿¡å¬ä¼å·çå¼åææ¯ç®åï¼ç åå¨æç­ï¼å¾®ä¿¡ä¹å¯ä»¥å¸¦æ¥æµéåç¨æ·ãæ­¤å¤ï¼å¾®ä¿¡çè·¨å¹³å°ç¹æ§è¾å¥½ï¼ä¸ç¨èèç¨æ·ä½¿ç¨ä»ä¹ç³»ç»çææºï¼ç¨æ·ä½¿ç¨çå¹å»ææ¬ä½ï¼æ¶ææ§é«ãæä¼ æ­ãå¼åææ¬è¾ä½ã\\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããç¶èï¼å¦ä¸æ¹é¢å¾®ä¿¡å¬ä¼å·åè½å´åéï¼ä¸æ­¤åæ¶å¨é¿æè¿è¥è¿ç¨åå­å\¨2å¤§å¼ç«¯ï¼\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ãã1ãâææéåâï¼å¾®ä¿¡å¬ä¼å·çæ¨éåè½åºæ¬è¢«ç¨æ·ä¹ æ¯æ§å¿½ç¥ï¼èµ·ä¸å°æéä½ç¨ï¼åæ¶å å¾®ä¿¡å¬ä¼å·çæ³æ»¥ï¼è®©ç¨æ·æåååæâå¹¿ååâï¼å¤§é¨åå¾®ä¿¡å¬ä¼å·å\¨2015å¹´è¿è¡çå¾®ä¿¡æ¨å¹¿ææç¸æ¯2014å¹´å·²ç»åºç°éåæåºã\\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ãã2ãâå¥å£è¿æ·±âï¼å¾®ä¿¡å¬ä¼å·çå¥å£å¯»æ¾æ¯APPè¦å¤3å±æä½ï¼å æ­¤ç¨æ·éå¤ä½¿ç¨æåµç¸å¯¹èè¨ä¸å¤çæ³ï¼å¥å£å¨å¾®ä¿¡éæäºä¼å¿ä¹åæäºæå¤§çå¼±å¿ã\\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããéå¯¹å¾®ä¿¡æ¬èº«çä¼å£å¿ï¼æ´éåå¨å¾®ä¿¡å¹³å°è½å°çä¸å¡æ¯ï¼âä½é¢ä½¿ç¨ä¸å¡âåâåå¹¿åâãç¨æ·å¨å¾®ä¿¡ä¸­æ´å®¹æâè¢«å¨çè®¿é®å¬ä¼è´¦å·ä¿¡æ¯ï¼åæ¬HTML5é¡µé¢ï¼âï¼éæºæ§ççå°åäº«çå¹¿åç­é¾æ¥ï¼ç¨æ·å¯è½ä¼æå¼è®¿é®ã\\r\n</p>\r\n<p style=\"font-size:14px;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;ç®åï¼å¨å¾®ä¿¡å¹³å°ä¸ï¼æäºåºç¨å·²æä¸ºè¡ä¸çæ æï¼ç¨æ·çæç±ï¼ä½ä¹æçåªæ¯æè±ä¸ç°ï¼æèä¸ç´é»é»æ é»ãå¾å¤åºç¨è½å¤è±é¢èåºçæéè¦åå å°±æ¯éµä»äºèç½è¡ä¸çåºæ¬ååââå³å°éç¨æ·ä½éªãåé ç¨æ·ä»·å¼ãæ»¡è¶³ç¨æ·éæ±ã\</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56fce78a5f2d3.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=58','32','1458701958','1459414926','','0');
INSERT INTO `yourphp_article` VALUES ('59','10','2','hello','ä¼ä¸å¾®ä¿¡æå°ç»ç¨æ·ç¤¾äº¤åè´è¿ä¼æ¯ç¤¾äº¤ç¦èï¼\','','','','','Â  Â  Â  Â è¿æ¥ï¼è¾è®¯å¬å¸å°äºå³å°åå¸âä¼ä¸å¾®ä¿¡âAPPçæ¶æ¯ï¼å¹¶éè¯·äºé¨åä¼ä¸è¿è¡åæµãæ®æï¼ä¼ä¸å¾®ä¿¡çæ­£å¼çæå°å¨ä¸¤ä¸ªæååå¸ï¼ä»åæµæªå¾å¯ä»¥çå°ï¼ä¼ä¸å¾®ä¿¡æåå·¥âä¼æ¯âãé»è®¤ä¸å¸¦æ¶æ\¯...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;è¿æ¥ï¼è¾è®¯å¬å¸å°äºå³å°åå¸âä¼ä¸å¾®ä¿¡âAPPçæ¶æ¯ï¼å¹¶éè¯·äºé¨åä¼ä¸è¿è¡åæµãæ®æï¼ä¼ä¸å¾®ä¿¡çæ­£å¼çæå°å¨ä¸¤ä¸ªæååå¸ï¼ä»åæµæªå¾å¯ä»¥çå°ï¼ä¼ä¸å¾®ä¿¡æåå·¥âä¼æ¯âãé»è®¤ä¸å¸¦æ¶æ¯çå·²è¯»æªè¯»ç¶æï¼è¿æåæ§ãå¤äººéè¯ç­åè½ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¾®ä¿¡ä¹æä»¥æ¨åºä¼ä¸å¾®ä¿¡ï¼å¨å¾®ä¿¡å®æ¹çæ¥ï¼è¿ä¸å¾®ä¿¡çåå±æå³ãå ä¸ºéçå¾®ä¿¡çåºç¨æ¸å¥æ¯ä¸ªäººççæ´»ï¼çæ´»ä¸ç¤¾äº¤ä»¥åå·¥ä½äº¤æµé½å¨å¾®ä¿¡ä¸ï¼âç¹ å«æ¯éå·¥ä½æ¶é´ï¼åä¸äºå ä¸ºåäºä»¬é½å¨ç¾¤éè®¨è®ºå·¥ä½ï¼èåä¸è¿å»ãâå¾®ä¿¡è®¤ä¸ºï¼å¾®ä¿¡ä¼ä¸å·æä¾äºå¾å¥½çå¹³å°ï¼ç»äººä»¬ç§äººç©ºé´ï¼è®©å·¥ä½åçæ´»å¯ä»¥éå½åå¼ï¼\ é¿åå¸¦æ¥å¤ªå¤çè´æï¼è¿å°±æ¯ææ´å çº¯ç²¹çå·¥ä½æ²éç¯å¢çä¼ä¸å¾®ä¿¡çæ¨åºèæ¯ä¸åå ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä½ä¼ä¸å¾®ä¿¡æ¨åºçèæ¯æ¾ç¶è¿ä¸æ­¢è¿äºãå¹´åå¨âå¾®ä¿¡å¬å¼è¯\¾ Proâä¸ç°èº«çè¾è®¯å¾®ä¿¡äºä¸ç¾¤æ»è£å¼ å°é¾è¯´:âç¨æ·è±å¨å¾®ä¿¡ä¸çæ¶é´å¤ªå¤ï¼æå¾æå¿ãâè¡¨ç¤ºè¦ç»ä¸ºå¾®ä¿¡ç¨æ·åè´ãèä¼ä¸å¾®ä¿¡è¿æ¬¾äº§åçåè¡·ï¼å¾æ¾ç¶åæ¬ äºå¤ç§ç®çï¼ä¸æ¹é¢æ¯å¡ä½ç«äºå¯¹æï¼è½ç¶é¿éééç®åçä¼ä¸ç¨æ·æ°å°ä¸è¶³ä»¥ææ°åï¼ä½å¨åå±ä¹ä¸­ï¼ç¤¾äº¤æ¯ç«æ¯è¾è®¯çä¸»æåºï¼è¿ä¸å°çä¸å®¹ä»äººè§è§ãå¶æ¬¡æ¯ å¨å½å¤çSlackç®åçåå±å¿å¤´ä¹è¿ä¸éï¼ç®åä¼°å¼å·²è¾¾æ°åäº¿ç¾åï¼ç®åä¸çä¹ä¸æ­ä¼ åºå¾®è½¯æ³è¦ä»\¥ 80 äº¿ç¾åä»·æ ¼æ¶è´­çæ¶æ¯ãæ¾ç¶å¨å¾®ä¿¡çæ¥ï¼Slackçæåå¯ä»¥å¤å¶å°å½åï¼å ä¸ºå½åæ½å¨å¸åºå¤§ï¼ä¼ä¸çº§å¸åºæ¯ä¸ä¸ªè¢«ä¸çè®¤å®çâä¸äº¿çº§âçå¸åºï¼å¾®ä¿¡æ¹é¢è¡¨ç¤ºï¼ä¸­å½çæè§æ¨¡ä¼ä¸è³å°ææ°ç¾ä¸å®¶ï¼ä½çæ­£å®ç°åå¬ç§»å¨äºèç½åçå±æå¯æ°ï¼ä¸­å½ä¼ä¸éé¢è¿æ²¡ææé¿åºä¸ä¸ªå·¨äººåºæ¥ãææå·®ä¸å¤å°±æ¯è¯´ï¼ä¼ä¸å¾®ä¿¡æªæ¥å°±æ¯è¿ä¸ªå·¨äººã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">ä½æ¯å¨å¥½å®ç¨ç§æçæ¥ï¼å¨ç¨æ·ä½éªå±é¢ï¼ä¼ä¸å¾®ä¿¡å¯è½ä¼ç»ç¨æ·å¸¦æ¥æ´éçèåºç¤¾äº¤ç¦èã\</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¾ææ¾ï¼è¾è®¯ä¸æ¯é¿éï¼å¯¹äºè¾è®¯æ¥è¯´ï¼å¹è²ç¤¾äº¤é»æ§å¯è½æ¯å®æä¸ææç¤¾äº¤ç±»äº§åçä¸ä¸ªç»æç®æ ï¼èç¤¾äº¤é»æ§çäº§çå°±æ¯è®©è¶æ¥è¶å¤çäººåä¸è¿æ¥ï¼ å½¢æå¤§å¤§å°å°ççäººåå­ï¼ä½ å å¥ä¹åå°±ç¦»ä¸å¼å®ãä½ä¼ä¸å¾®ä¿¡ä¸å¾®ä¿¡çä¸åå¨äºï¼ä¼ä¸å¾®ä¿¡å®å¯è½æ¯ä¸ä¸ªè®©äººåæ»¡ç¦èçäº§åï¼å ä¸ºå®å³ä¹èåºä¸­çäººæ§ä¸å¿çã\ å ä¸ºä½ä¸ºèåºäººï¼å¿é¡»ç»å¸¸å³æ³¨å¬å¸çå¨æï¼åæ¶å³æ³¨ææ°è®¨è®ºä¸è°è¯ï¼å³æ³¨äºæææ°è¿å±ï¼ä¸æ¿æéè¿ä»»ä½æ¶æ¯ï¼è¿å³äºæ¯ä¸ªäººå¨èåºä¸­çåå±åéä¸ä½ç½®ï¼å¦æ\ ä½ æå¨çå¬å¸çåå·¥æ¶å»å¨ä¼ä¸å¾®ä¿¡ä¸è®¨è®ºï¼ä½ å°±å¿é¡»åä¸è¿å»ï¼å ä¸ºä½ ä¸å³æ³¨ï¼å°±å¯è½ä¼æç¤¾äº¤ååï¼è¿æ ·ä¸æ¥ï¼èåºäººä¼åæå¨å¤©å\24å°æ¶é½å³æ³¨ä¼ä¸å¾®ä¿¡ç æ¶æ¯ï¼\ å¦ææºæºä¸æ­çæ¶æ¯å¨ä¼ä¸å¾®ä¿¡äº§çï¼è¿ä¼è®©ä½ äº§çç¤¾äº¤ç¦èä¸ç²æ«ï¼å¦æä½ ä¸åä¸è¿å»ï¼è¿å¯è½ä¼é æä½ çèåºç¤¾äº¤çå­¤ç«ç¶æã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; è¿éæä»¬å¯ä»¥çå½å¤çSlackï¼æä¸ä½Slackç¨æ·åæ§½è¡¨ç¤ºï¼Slackæ­£å¨ææçæ³¨æååæ£æä¸åä¸ªå°ç¢çï¼å¨åæäºä¸ç§æ°¸å¨çåé¦å\ ç¯ï¼èå¤©è¶å¤ï¼æ³åä¸çäººå°±è¶å¤ãæ¯å¤©é½å¤äºå¼ä¼çç¶ææ¶èæçæ¶é´å®éä¸æ¯ä½ æ¿æçä¸çå¼ä¼æ¶é´è¿è¦å¤ãå¦æ­¤å¨èå¤å§ãåæ¶åºä»\ 10 å ä¸ªèå¤©å¯¹è¯ï¼ä½ ææçå·¥ä½æ¶é´ææäºä¸åºæ²¡å®æ²¡äºçä¼è®®ãæ¯å¤©é½å¤äºå¼ä¼çç¶ææ¶èæçæ¶é´å®éä¸æ¯ä½ æ¿æçä¸çå¼ä¼æ¶é´è¿è¦å¤ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; è¯´åä¼ä¸å¾®ä¿¡ï¼å¦æèåºä¸­äººéåº¦åä¸å°ä¼ä¸å¾®ä¿¡ä¹ä¸­ï¼è¿æ¾ç¶å°±å·²ç»åç¦»äºä¼ä¸å¾®ä¿¡çåè¡·ï¼å³è¿æ¬¾äº§åå¹¶æ²¡æå°å·¥ä½ä¸çæ´»åå¼ï¼èæ¯èµ°åäºåé¢ï¼ äººä»¬ä¸ºäºé¿åé­åèåºç¤¾äº¤å­¤ç«ï¼è¿èè¢«è¿«éåº¦åä¸å°å·¥ä½èåºçç¶ææ´æ°ï¼å½ä½ å³å®ä½¿ç¨ä¼ä¸å¾®ä¿¡çæ¶åï¼ä½ å°±è¦å¼å§åå¥½å¨å¤©å\24å°æ¶å³æ³¨ä¼ä¸å¾®ä¿¡çåå¤ã\ ä½ å¦æå¯¹èåºåä¸ç½®ä¹ä¸çï¼ä½ ä¼æåå°å·¨å¤§çèåºç¤¾äº¤ååã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¦å¤ï¼ä¼ä¸å¾®ä¿¡è¿éè¦æèï¼å¦ä½é¿åå ä¸ºèªèº«äº§åå·¦å³äºæèé æå¯¹ç¨æ·å¤éææ°çååï¼ä¸åè´ä¸é«æçåè¡·åè¾åè¾ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; æä»¬ç¥éï¼è¾è®¯æ¬èº«æä¼ä¸çº§ç¤¾äº¤äº§åï¼å°±æ¯2003 å¹´å°±å·²ç»æ¨åºçåå¬æ²éè½¯ä»\¶ RTX ãRTXè½ç¶ä¹æç§»å¨ç«¯APPï¼ä½å¶å±æ§ç¸å¯¹äºç¨å¾®ååäºPCç«¯ï¼å¨èåºä¹å¤çäººç¾¤ä¸­æ®ååº¦ä¸ç¥ååº¦ç¸å¯¹æéï¼èéè¿æ¨åºä¸æ¬¾ä»¥å¾®ä¿¡å½åçç§»å¨ç«¯è¿åçç åå¬äº§åï¼æ´å®¹æå¼åå¨æ°å³æ³¨çä¼ æ­æåºå¹¶å¿«éæåç¥ååº¦ãä½äºå®ä¸ï¼è¿æ ·ä¸æ¥ï¼è¾è®¯åæä¸æ¬¾äº§åå·¦å³äºåï¼å¾®ä¿¡ãä¼ä¸å¾®ä¿¡ä¸RTXãå½ç¶è¿æ¯è¾è®¯ä¸è´¯ç è¿è¥æè·¯ï¼å¯¹äºæé±æèµæºçè¾è®¯æ¥è¯´ï¼æè°è¿è¥çææ¬ä¸èµæºçåèåä¸å¨èèèå´ä¹åã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; è¾è®¯çæ³æ³æ¯å¥½çï¼æ¯å¦è¯´ï¼è®©èåºä¸çæ´»åå¼ï¼ä½äºå®ä¸ï¼å¯¹äºåå¬äººå£«æ¥è¯´ï¼ä¸è¬ä¸ä¼ææ¶æ¾å¼ä»»ä½ä¸ä¸ªèåºæ²éå·¥å·ãèå¯¹äºå¾®ä¿¡è¿æ¬¾æ¶æäºææ\ çäººç¤¾äº¤å³ç³»é¾çéåº¦ç¤¾äº¤äº§åèè¨ï¼ä½ è¦çæ­£åå¼èåºä¸å·¥ä½å¾é¾ï¼ä½ å³ä¾¿æä¼ä¸å¾®ä¿¡ï¼ä½å¨ä½ çå¾®ä¿¡ç¤¾äº¤éé¢ï¼ä½ çåäºå·¥ä½ç¾¤ä¸è®¨è®ºå°ç»ä¾ç¶ä¼ä¸æ­åºç°æªè¯\» æ¶æ¯ï¼ä½ ä¸å¯è½å ä¸ºä¼ä¸å¾®ä¿¡èè§£æ£ä½ çåäºå·¥ä½ç¾¤ä¸å é¤ä½ çå¾®ä¿¡åäºï¼çè³ä½ ä¹ä¼ä¿çRTXï¼å ä¸ºæ¯ä¸ç§ç¤¾äº¤æ¹å¼çèåï¼å®é½éè¦ä¸ä¸ªå¤ä»½ä¸å¤éçå·¥å·ã\ è¿æ ·ä¸æ¥ï¼åå¯¼è´å·¥ä½æ¶æ¯ä¼ä»RTXãå¾®ä¿¡ä¸ä¼ä¸å¾®ä¿¡åç§ç¤¾äº¤å¥å£æºæºä¸æ­åºç°ï¼ç»§èé ææç»­éå¤çéªæ°ãå¦å¤ä¼ä¸å¾®ä¿¡æ¨åºâä¼æ¯âçåè½ï¼å°±å¶åè¡·æ¯å\¯ ä»¥è®©åå·¥å¨ä¼æ¯æé´ä¸åææ°ï¼å¯ä»¥ä¸ç¨æ¥æ¶ä¿¡æ¯ï¼å¸®åå·¥åºåå·¥ä½åçæ´»ï¼ä½è¿å¯è½ä¸è®¨é¢å¯¼åæ¬¢ï¼é¢å¯¼æèæ¿åæ¬¢åå·¥éæ¶å¨çº¿ï¼æ æ¶æ å»ä¸ºå¬å¸åå¿§ï¼å¦æå¨ å³é®æ¶å»ï¼èæ¿æ¾ä¸å°åå·¥ï¼æ çåä¼éåå¾®ä¿¡æ¸ éå¤çå·¥ä½äºå¡ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å æ­¤ï¼ä»ç¨æ·ä½éªçå±é¢æ¥çï¼ä¼ä¸å¾®ä¿¡å¯è½ä¼ä½¿å¾ç¨æ·è¢«å¤ä¸ªç¤¾äº¤äº§åéªæ°ï¼å¤éææ°èå¯¼è´ç¨æ·ç²æ«ä¸å ªï¼ä¼ä¸å¾®ä¿¡çåè¡·æ¯ä¸ºç¨æ·ç¤¾äº¤åè´ï¼å¹²æ°æ´å°ï¼æçæ´é«ãä½å¯è½åºç°çæåµåæ¯èµ°ååé¢ï¼ææ°æ´å¤ï¼æçæ´ä½ï¼ç¨æ·æ´ç²æ«ï¼ä¹æ´ç¦èï¼å¾®ä¿¡éè¦èèå¦ä½é¿åè¿ç§ç¶åµã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¦å¤åæ¯ï¼ä¼ä¸å¾®ä¿¡ä¸æ¦åå¤§ï¼å¿ç¶ä¼åæµå¾®ä¿¡ä½¿ç¨æ¶é´ï¼éä½å¾®ä¿¡çæ´»è·åº¦ï¼æ¯ç«ä»KPIä¸å¤çç»äºçä¼°å¼æ¥çï¼å¾®ä¿¡çé«æ´»è·åº¦ãå ææ¶é¿ä¸æ·±åº¦ ç¨æ·æ²æ·åæ¯å¶æ³è±¡ç©ºé´ä¸é«ä¼°å¼ä¸åä¸ååæ¯çæ ¸å¿è¦ç´ ï¼å¼ å°é¾è®¤ä¸ºç¨æ·è±å¨å¾®ä¿¡ä¸çæ¶é´å¤ªå¤äºï¼æä»¥è¦åè´ãæä»¬çå°ï¼æ¯å¦å¾®ä¿¡ä¸çå°çº¢ç¹å¯è½ä¸åæ¯å·\¥ ä½äºå¡ä¸åæ¯ç§äººçæ´»ï¼å·¥ä½çæ´»ææå¨ä¸èµ·ï¼è¿æ¯å¾®ä¿¡çç¤¾äº¤å°å¢ãä½å¦æèåºç¨æ·è¿åº¦å³æ³¨ä¼ä¸å¾®ä¿¡çèåºç¤¾äº¤ï¼ å¯è½ä¼éä½å¾®ä¿¡æ´»è·åº¦ä¸ç¨æ·åä¸åº¦æ¶é¿ï¼è¿å¯è½å¯¼è´å¾®ä¿¡æ¬èº«çå¹¿åæ¶çåå°å½±åï¼åæ¬å¹¿ç¹éæ¥å¥å¾®ä¿¡å¬ä¼å·çå±ç¤ºå¹¿åä¸æåååå®¶å¹¿åãæä»¥è¯´ï¼ä»»ä½äºæ\ é½æ¯æå¾å¿æå¤±ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; äºå®ä¸ï¼ä¸ºäºè¦è§£å³æçæ´»ä¸å·¥ä½åå¼çè¿ç§ç¨æ·ç¤¾äº¤å°å¢ï¼ç®åFacebookä¹å¨ç»å°½èæ±ãæä»¬çfacebookçåæ³ï¼Facebook ä¸æ­¤åæ¨åºäº Work Chat for Androidï¼è®©ç¨æ·å¨âåº¦åæä¸æ³¨å·¥ä½æ¶ï¼å¯å³é­ä¸æ³ççæ¶æ¯éç¥âãèç¨æ·éè¦Facebookæä¾çä¼ä¸åä½å·¥å·Facebook at Workçå·¥ä½è´¦æ·æè½ä½¿ç¨è¿ä¸ªåºç¨ãè¿éå¯ä»¥æç´¢ä¸ä¸å¾®ä¿¡çè§£å³æ¹æ¡ï¼è½å¦ä¸ºå¾®ä¿¡å¼éä¸¤å¥è´¦å·ä½ç³»ï¼è¿ä¸¤å¥è´¦å·ä½ç³»åå«é¢åçæ´»ä¸å·¥ä½ï¼èªç±åæ¢ï¼ä¸æ\¦ åæ¢å°å·¥ä½è´¦å·ä½ç³»ï¼å³å±è½çæ´»ç±»æ¶æ¯çææ°ãå¾æ¾ç¶ï¼ç¤¾äº¤å°å¢èªç¶æå®çè§£å³åæ³ï¼æä»¥ä¼ä¸å¾®ä¿¡çæ¨åºï¼å¯è½å¶æ ¸å¿æç¥å¨äºä¼ä¸çº§å¸åºçè¥æ¶æ¹é¢ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; è®©ä¼ä¸åå·¥éç¨ä¸ä¸ªå¨æ°å¸å·ä½ç³»æ¥ç»äºä¼ä¸çº§åå·¥æä¾æ ååçæå¡ï¼åæµå¾®ä¿¡çç¨æ·ç¾¤ï¼é¢ä¸´æå¤§çé®é¢æ¯éè¦ç»å¤çä¸ä¸ªååççç±å³ä¸ºä»ä¹è¦æ\¾ å¼è½å¤ä¿è¯åå·¥å®æ¶å¨çº¿çå¾®ä¿¡ä¸QQèå»ä½¿ç¨ä¼ä¸å¾®ä¿¡ãç®åä¼ä¸å±é¢è½å¤ç¡®ä¿åå·¥å®æ¶å¨çº¿éå«éå°çæ çæ\¯ QQ åå¾®ä¿¡ï¼å¨å¾®ä¿¡ä¸å½¢æå·¥ä½æµå¹¶ç»´æ¤åå·¥ä¹é´ä¸å®¢æ·ä¹é´çå·¥ä½å³ç³»ï¼æ çä¹ç¸å¯¹ç¨³å¦¥é«æãå¾®ä¿¡éæ©ç¬ç«ä¸ä¸ªAPPåå¥èåºè¿ä¸ªåç´é¢åï¼å¯è½æ´å¤çæ¯è¾è®¯è¥ æ¶æè·¯çè½¬åï¼å³ä»é¿æä»¥æ¥é¢åç¨æ·æ¶è´¹çæè·¯è½¬åä¼ä¸çº§å¸åºä¸ç¬¬ä¸æ¹æå¡å¸åºè¥æ¶ãä½æ¯é¢åä¼ä¸æ¶è´¹ï¼éè¦è®¨å¥½ä¼ä¸ï¼ä½ç®åæ¥çï¼ä»åé¢âä¼æ¯âåè½æ¥ çï¼ä¼ä¸å¾®ä¿¡æ´å¤çè®¨å¥½åå·¥ï¼å¹¶æ²¡ææ³å¥½å¦ä½è®¨å¥½ä¼ä¸ä¸»ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¼ä¸å¾®ä¿¡çæ¨åºï¼ä»¥è¾è®¯å¼ºå¤§çæµéæ¸ éä¸åç§ç¨æ·ç¤¾äº¤å³ç³»é¾äºç¸å¯¼æµçæ¹å¼ï¼å¸¦å¨ç¨æ·å¢é¿å¯¹é¿éééçå²å»æ¯æ¯«æ çé®çãä½å¦ä½é¿åæªæ¥é æå¯\¹ ç¨æ·çå¤éææ°ï¼ç»ç¨æ·å¸¦æ¥æ´éçèåºç¤¾äº¤ç¦èï¼èµ°åä¼ä¸å¾®ä¿¡åè¡·çåé¢ï¼ä»¥åå¦ä½æå°ä¼ä¸çº§å¸åºççç¹ï¼å¾®ä¿¡è¿éè¦æèçæ´æ·±å¥ï¼å¦ä½ä¸ºç¨æ·æ­£ç¡®åè´ï¼ èµ°åºç¤¾äº¤å°å¢ï¼ä¼ä¸å¾®ä¿¡å¨äº§åè®¾è®¡ä¸æç¥æç»´ä¸ä¹è¿æå¾é¿çè·¯è¦èµ°ã\\r\n</p>','0','/Uploads/201603/56f20e599a931.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=59','27','1458703329','1458703965','','0');
INSERT INTO `yourphp_article` VALUES ('60','10','2','hello','å®¶è£O2Oèµ°è¿âèæç°å®\+åºæ¯åºç¨âï¼å¼å¯VRæ°æ¶ä»\£','','','','','Â  Â  Â Â 2015å¹´ä¸­å½å®¶è£çµåå¸åºè§æ¨¡é¢è®¡è¾¾å\°1660äº¿åï¼æ¯ä¸ä¸å¹´å¢é\¿38.7%ï¼æ´ä½æ¥çï¼å®¶è£è¡ä¸äºèç½æ¸éçç¸å¯¹è¾ä½ï¼ä½æ´ä½å¸åºä¿æè¾å¿«éçå¢é¿ï¼\ å¸åºå­å¨å¾å¤§çåå±ç©ºé´ãè¾çåæè®¤ä¸ºï¼éç...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp;&nbsp;2015å¹´ä¸­å½å®¶è£çµåå¸åºè§æ¨¡é¢è®¡è¾¾å\°1660äº¿åï¼æ¯ä¸ä¸å¹´å¢é\¿38.7%ï¼æ´ä½æ¥çï¼å®¶è£è¡ä¸äºèç½æ¸éçç¸å¯¹è¾ä½ï¼ä½æ´ä½å¸åºä¿æè¾å¿«éçå¢é¿ï¼\ å¸åºå­å¨å¾å¤§çåå±ç©ºé´ãè¾çåæè®¤ä¸ºï¼éçäºèç½å¯¹ä¼ ç»å®¶è£è¡ä¸çä¸æ­æ¸éï¼æªæ¥å®¶è£çµåå¸åºå°è·å¾å¿«éåå±ï¼å\°2018å¹´å¸åºè§æ¨¡é¢è®¡å°è¶è¿3600 äº¿åã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">âèæç°å®\+å®¶è£âèå¿å¾å\</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç®åï¼å®¶è£è¥éå¶èæ¶ä»£çè¡ä¸å³é®å·²è½¬è³ä»¥ç¨æ·ä½éªãåç«¯è®¾è®¡ä»¥åå£ç¢ä¸ºæ ¸å¿ï¼è¶³ä¸åºæ·çå¨çº¿å®¶è£è¿åäºç¨æ·çå®ééè¦ãéè¿åèº«ä½ä¼âçå®çè£ä¿®ç¯å¢ âï¼æè±äºç°å®ä¸çä¸­ç©ºé´åæ¶é´çéå¶ãèªä¸»è£ä¿®éææ¨¡å¼ç»åâèæç°å®âææ¯ï¼ç»ä½éªèå¸¦æ¥æå®ãè®¤ç¥ä»¥åçå¿µç­æ¹é¢çå²å»ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">ä»æ³è±¡å°æ²æµ¸ï¼éä½åå®¶åºå®è¿è¥ææ\¬</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VRææ¯ä¸æ¹é¢å¸®å©ç¨æ·å®ç°ä»æ³è±¡å°æ²æµ¸ï¼å¦ä¸æ¹é¢å¸®å©åå®¶èçä»åºé¢ç§éãå±åè£ä¿®ãäººåå·¥èµãå°æ ·åææ¬ç­çº¦50%çåºå®ææ¬ï¼å­åå®ç°ä»3Då°VRçä¸é®è½¬åï¼VRææ¯å¸®å©ç¨æ·æé èº«ä¸´å¶å¢æåå°æç»è£ä¿®ææï¼éä½å³ç­ææ¬ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">è¿åçå®æªæ¥å®¶å±åºæ¯ï¼å¨é¢æåæ¶è´¹èä½éª\</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VRå®¶è£äº§åéè¿ä¸ºæ¯ä¸ªè£ä¿®éæ±æé åºâè¿åçå®âçæªæ¥å®¶å±åºæ¯ï¼ä»è®¾è®¡æ¹æ¡å°å®¶å·ææ¾ï¼éè¿èæç°å®ææ¯ï¼å¨æ½å·¥å¼å§ä¹åå°±å¯ä»¥ä½éªå°åç§è®¾è®¡æ¹æ¡\ çå®éå¥ä½ææï¼å®ç°ç¡¬è£ãè½¯è£ãå®¶å·ãå®¶çµçä¸è£ä¿®ä½éªãæ­¤å¤ï¼è½¯è£è®¾è®¡å¸å¯éè¿äºç«¯æ¹æ¡ä¸­å¿ï¼ä¸ºç¨æ·æä¾èåå¼è®¾è®¡æ¹æ¡éæ©åä¸ªæ§åæå¯¼ï¼æ éçº¿ä¸è§é¢ï¼ä¸ææå·æ99%ççå®åº¦ï¼å¯ä»¥èçå¤§éæ¶é´ç²¾åææ¬ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¼´éèæç°å®ææ¯éæ¸æçï¼VRå®¶è£å°ä¼ç»ç¨æ·å¸¦æ¥çº¿ä¸å³ç­åçº¿ä¸æ§è¡çå¨æ°ä½éªï¼ç¨æ·å°å¨æ½å·¥åèº«ä¸´å¶å¢æåå°è£ä¿®æç»ææï¼æåå®¶è£æçã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">æªæ¥ï¼åå½ç¨æ·ä½éªæåï¼16å¹´å°æ¯VRåå¹´ï¼å®¶è£äº§ä¸æ­¥å¥VRé¢ è¦æ¶ä»£</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; è¾çåæè®¤ä¸ºï¼\2016å¹´æ¯VRçåå¹´ï¼VRææ¯å°éæ¸å¹¿æ³åºç¨äºåä¸ªé¢åï¼æåè¿è¥æçåéä½ææ¬æ¯VRææ¯è½å¦å¾å°å¸åºè®¤å¯çå³é®å ç´ ãå®¶è£O2Oçæªæ¥åå±éè¦æ´å æ·±åº¦å°æ´åçº¿ä¸èµæºï¼è¿ä¸æ­¥å°æåç¨æ·ä½éªï¼å±æ¶ï¼å®¶è£O2Oè¡ä¸å°è·å¾çªç ´å¼åå±ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VRç­æ°ææ¯åºç¨ä¿ä½¿å®¶è£è¡ä¸é¢ è¦æ¶ä»£å°æ\¥\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VRææ¯å¯å¹¿æ³åºç¨äºå®¶è£ãå»å­¦ãå¨±ä¹ãæ¸¸æãå·¥ä¸æ¹éãè´­ç©ç­é¢åï¼å½åï¼åå¤§å¬å¸åæ¨åºARäº§åï¼å¨èæç°å®é¢åå±å¼ç§¯ææ¢ç´¢ãéçVRæè´å«çäº¤ äºä½éªçè¿æ­¥ï¼é å°±è¡ä¸é¢ è¦çåéé¾ä»¥ä¼°éãæ¶è´¹èå¯è¶³ä¸åºæ·å®ç°æ²æµ¸å¼ã\3Dææä½éªï¼éè¿VRææ¯å®ç°æ¿é´é¢è£ä¿®ãæ­¤å¤ï¼åå¤§å®¶è£O2Oä¼ä¸å·²ç»å¼å§\ å¨ç§»å¨ç«¯ååãåå·´åçåç§ç§»å¨ç«¯å¸å±è´¡ç®äºå¤§éå¹³å°æµéï¼ç±ç©ºé´æ¨åºçç§»å¨ç´æ­ãç§»å¨ççä¹å¹¿åå¥½è¯ãæªæ¥ï¼ç§»å¨ç«¯å°æ·±å¥å®¶è£O2Oçä¿¡æ¯æç´¢ãççã\ æ¯ä»ãå®åãå®¢æãç¤¾åºç­åä¸ªç¯èï¼æä¸ºå®¶è£O2Oçä¸»è¦å¥å£ã\\r\n</p>','0','/Uploads/201603/56f20e39c4a87.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=60','26','1458703650','1458703937','','0');
INSERT INTO `yourphp_article` VALUES ('61','10','2','hello','ç¤¾åºO2Oçå©å°é·å¥æ­»è¡åï¼æ¢ç§æè·¯æ¯å¿ç¶ä¹è·\¯','','','','','Â  Â  Â  Â è¶å¤çäººåç¤¾åºO2Oå°±æè¶å¤çäººä¼é®ç©¶ç«ç¤¾åºO2Oè¯¥å¦ä½çå©çé®é¢ãå¤æ°äººè½ç¶çå¥½ç¤¾åºO2Oï¼ä½å§ç»ä¸ç¥éè¯¥å¦ä½è§£å³çå©é®é¢ï¼ä¸æ­ä¿®æ­£çå¸åºç­ç¥ä¹æ²¡è½å¸¦æ¥é¢æä¸­çé«é¢åæ¥ï¼é¾éç¤¾åºO2...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;è¶å¤çäººåç¤¾åºO2Oå°±æè¶å¤çäººä¼é®ç©¶ç«ç¤¾åºO2Oè¯¥å¦ä½çå©çé®é¢ãå¤æ°äººè½ç¶çå¥½ç¤¾åºO2Oï¼ä½å§ç»ä¸ç¥éè¯¥å¦ä½è§£å³çå©é®é¢ï¼ä¸æ­ä¿®æ­£çå¸åºç­ç¥ä¹æ²¡è½å¸¦æ¥é¢æä¸­çé«é¢åæ¥ï¼é¾éç¤¾åºO2Oçå©é®é¢æ¯ä¸çæ è§£çæ­»æ£ä¹ï¼\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56f210278fbbb.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç°æçç¤¾åºO2Oçå©æç»´å¤§ä½åä¸ºä¸¤ç§ï¼ä¸ç§æ¯ââï¼é­ç¯ï¼âæç»´ï¼å¦ä¸ç§æ¯ââï¼ç´çº¿ï¼âæç»´ãè¿éå¿é¡»åæéå¼ºè°ä¸ç¹ï¼ç¤¾åºO2Oæ¯çº¿ä¸åçº¿ä¸å¨ç¤¾ åºçæ´»åºæ¯åçç»åï¼æä»¥ä¸è½åªå³æ³¨äºèç½çââï¼é­ç¯ï¼âå¼åå±æ¹åï¼è¿éå¤èèä¼ ç»å¸åºâï¼ç´çº¿ï¼âå¼çåºæ¬è§å¾ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">å«è¢«äºèç½æèè½ï¼ä¸­å°ç¤¾åºO2Oåä¸å¬å¸ä¸éåâï¼é­ç¯ï¼å¼çå©æç»´</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; âï¼é­ç¯ï¼å¼çå©æç»´æå ä¸ªä¸»è¦ç¹ç¹ï¼æéå¿ä¸ºè§æ¨¡ä¸è¿½æ±ç­æåçå©ï¼åæ³åæ³åä½ç¨æ·ä»¥ä¾¿æ¥åä¸é±¼å¤åï¼èµéåè¶³ææèµæ¬éçå·ææç»­ç§é±è½åï¼äº§åææå¡å½¢æä»¥å¹³å°ä¸ºä¸»ï¼æ¶ç¼åå°èµæºè¯å¾æ´åè¡ä¸æäº§ä¸é¾ï¼ç¼ºå°åå®ææççå©æ¹å¼å¤æ°å¤äºæç»­ç§é±äºæç¶æã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¤¾åºO2Oé­ç¯å¼æç»´æ¯å¸åçäºèç½æç»´ç¹å¾ï¼ä½è¿ç§æç»´éè¦ææå¼ºçæåæ§åè¶å¼ºçèµéè¡¥ç»è½åï¼è½é¿æ¶é´æ¿åä¸çå©çå°´å°¬å¤å¢ï¼èä¸éè¦æå¼ºæ±çè¯´æåè½è¯´ææèµäººè®¤å¯è¿ç§é­ç¯æç»´å¨æªæ¥æéå¸¸å¤§çå¸åºæ½åã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç®åæè½åéåè¿ç§é­ç¯çå©æç»´çï¼ä¹å°±æ¯æåæ§å¼ºãèµéå¨å¤åè¶³ï¼ä¸å¯¹èµæ¬å¸åºæå¸å¼åçå¬å¸åªæé£ä¹å å®¶è¡ä¸å·¨å¤´åºèº«çå¬å¸ï¼ä¾å¦äº¬ä¸å°å®¶ã\58å\° å®¶ãå½©çæ´»ãé¡ºä¸°ãæµ·å°ãä¸æ³°çµå­ç­å±æå¯æ°çå å®¶å¬å¸ï¼é¤æ­¤ä¹å¤ï¼ç¤¾åºO2Oè¡ä¸å¹¶æ²¡æåºç°è·å¾èµæ¬æ ééçâèæ ¹éè¢­âå¼çæ°å´è¡ä¸å·¨å¤´ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¨ä»¥å¾çäºèç½å¸åºï¼æ¯ä¸ªæ°å´ç­é¨çç»åå¸åºå¨è¡ææç­æ¶æé½ä¼æ¶ç°åºå å®¶ï¼åç´ï¼å·¨å¤´çº§çæ°éå¬å¸ï¼èè¿å»ä¸¤å¹´ç¤¾åºO2Oå¸åºå·²ç»ç®æ¯éå¸¸ç­é¨äºï¼ä½\ è³ä»ä¹æ²¡æä¸å®¶å¯ä»¥ç§°å¾ä¸æ¯æ°éå·¨å¤´çç¤¾åºO2Oå¬å¸ï¼åèè¡°éè½¬åçè³æ¯æ­»æå³é¨çåä¸å¬å¸æ¥çå¢å¤ãç©¶å¶åå ï¼é­ç¯å¼ççå©æç»´è®©èµæ¬å¸åºçä¸æ¸ç¤¾åº O2Oæªæ¥çå¸åºæ½åç©¶ç«å¤å¤§ï¼æä»¥ä¸æ¿æåå¤ªå¤§çé£é©å¥éªä¸­å°åçç¤¾åºO2Oå¬å¸ä¸è·¯èµ°å°åºã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¦å¤ï¼å¨å¶ä»è¡ä¸å·¨å¤´å¥åºä¹åï¼å°±æ´æ¾ å¾ä¸­å°ç¤¾åºO2Oåä¸å¬å¸çç«äºåä¸è¶³ï¼æ©æçç¤¾åºO2Oåä¸å¬å¸è¦ä¹å·²ç»è½¬åï¼è¦ä¹åå¼ºç»´æãè¦ä¹å·²ç»å³é­äºï¼è¿éå°±ä¸å·ä½ç¹åæåªå å®¶å¬å¸äºãç»è¿å ä¸¤å¹´ä¸é¨O2Oåç¤¾åºO2Oçèèµæ³¡æ²«ä¹åï¼èµæ¬å¸åºæåè°¨æï¼ä»ä»¬æ¿æç»å·¨å¤´æ´å¤çé±å å°éè¡ä»½ï¼ä¹ä¸æ¿æç»ä¸­å°åä¸å¬å¸æ´å°çé±å æ´å¤çè¡ä»½ï¼å¦ä»ç\ ç¤¾åºO2Oåä¸å¨èèµå¸åºæ¹é¢çæåµæåçä¸ä¹è§ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é­ç¯çå©æç»´å¨åä¸¤å¹´éå¸¸çè¡ï¼éå¸¸å¤çåä¸å¬å¸é½å´å°è¿ç§âååå°åèµé±âçäºè ç½è¿è¥æè·¯ï¼æ­¤åå¸åºä¸æéå¸¸å¤çç»¼åå¹³å°å¼çé­ç¯çå©æç»´çäº§åï¼ä¾å¦ä¸äºç¤¾åºAPPï¼ä¹æå¾å¤åç´å¹³å°å¼çé­ç¯çå©æç»´ï¼ä¾å¦ä¸äºä¸é¨APPãå¦ä»å¾ å°æä¸ä¸çæèµæºææ¿æè·è¿ç§é­ç¯æç»´çå¹³å°å¼ç¤¾åºO2Oé¡¹ç®äº¤æµï¼çè³è¿è¡ä¸åäººå£«ååªä½é½å¯¹è¿ç±»åä¸é¡¹ç®å¤ä¹ä»¥é¼»ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å®éä¸ï¼é£äºæè°çæç¹å·¨å¤´èæ¯çå¬å¸çå©è½åæ´å·®ãäº¬ä¸Q4è´¢æ¥æ¾ç¤ºå»å¹´4å­£åº¦å·¨äºï¼å¶ä¸­æä¸é¨ååå å°±æ¯å å¨äº¬ä¸å°å®¶ä¸çå¤§æç¬æå¥ï¼58å°å®¶ä¹æ²¡æçå©ç¹ï¼ä½æé¿éå58åä¸ºä¸»è¦çèµæ¬è¾åºæ¹ï¼å½©çæ´»å¦è¥å»æä¼ ç»çç©ä¸æå¡è´¹æ¶å¥ä¹ä¸çå©ï¼é¡ºä¸°å¿å®¢ç§10äº¿ä¹°æ¥çæè®­å·²è¢«é»åºç¿ï¼æµ·å°æ¯åå¼å§è¿å¥æå¥æï¼è¿æ²¡æ¾ç°åºç§é±ççè¿¹ï¼ä¸æ³°çµå­çééæå·²ç»é·å¥ç§é±æ åºæ´ï¼å¹¶å¼æ¥æ æ°è´¨çã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¸è¿ï¼å·¨å¤´çä¼å¿å¨äºææç»­çç§é±è½åï¼è½æ¿æèµ·ä¸çå©çç­æä¸ç»©ååï¼ä½ä¸­å°åä¸å¬å¸å¹¶ä¸å·å¤è¿ç§è½åï¼èä¸ç°é¶æ®µèµæ¬å¸åºä¹ä¸åç²ç®ç¸ä¿¡ç¤¾åºO2Oçæ¦å¿µäºãä»¥ä¸ï¼æ¯å¨åä¸­å°ç¤¾åºO2Oåä¸å¬å¸å¼ºè°ä¸¤ç¹ï¼ç¬¬ä¸ï¼é­ç¯ççå©æç»´ä¸å¯åï¼ç¬¬äºï¼ç§é±çäºèç½è¿è¥æ¨¡å¼ä¸å¯åï¼åå¨ä¸èµ·å°±æ¯âé­ç¯ç§é±çäºèç½çå©æç»´çè¿è¥æ¨¡å¼ä¸å¯åâã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å ä¸ºç®åç¤¾åºO2Oå¹¶æ²¡æç¹å«åºä¼ççå©é¡¹ï¼èä¸èµæ¬å¸åºå·²ä¸ä¼å¯¹ä¸å®¶ä¸­å°å¬å¸æå¥å¤ªå¤ï¼æä»¥å¦æåæä¸­å°åä¸èæ³è¿å¥ç¤¾åºO2Oå¸åºï¼ä¸å®è¦ææ¶æ¾å¼é­ç¯ççå©æç»´ï¼éæ©å¯å°½å¿«çå©çç´çº¿æç»´ï¼å¾è½èªç»èªè¶³ç¨³å®ä¹åï¼åæ³ææ²¡ææä¸ºé­ç¯å¼äºèç½å¹³å°çæºä¼å§ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">âï¼ç´çº¿ï¼å¼çå©æç»´æ´å¯åï¼åæé±èµå°ææ»æ¯ä¿é©</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é£äºç§é±åå¹³å°åç¨æ·ï¼ç¶åå¯å¸æäºç±èµæ¬å¸åºæ¥åºé±ä¹°åçç¤¾åºO2Oé¡¹ç®å·²ç»æ²¡æä»»ä½æé¿ç©ºé´ï¼ç»å¤§å¤æ°çä¸ä¸æèµå¬å¸ç°å¨é½ä¸åæ¿ææ¥è§¦ä¸­å°åä¸èçå¹³å°å¼é¡¹ç®ï¼èµæ¬å·²ç»æ²¡æä»»ä½èå¿å»é©±å¨è¿ç±»é¡¹ç®ç§é±å¼åå±ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; âé­ç¯å¼çäºèç½çå©æç»´âä¸âç´çº¿å¼çä¼ ç»çå©æç»´âï¼ç°é¶æ®µåªä¸ªæ´å¯åï¼éä¿çè®²ï¼ç¤¾åºO2Oç©¶ç«æ¯è¯¥éæ©âæå¼¯æ¹è§çç­ä»¥åææºä¼èµå¤§é±âè¿æ¯âç´æ¥äºå½çæç°å¨è½èµçå°é±èµå°æâï¼\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç»è®ºä¸å°±æ¯åä¸é¨åæéè¿°çï¼å¸åºå·²ç»å°è¯äºï¼æ²¡æèµæ¬åéçé©±å¨ï¼ä¸­å°åä¸å¬å¸é­ç¯å¼çäºèç½çå©æç»´å¨ç¤¾åºO2Oå¸åºå¾é¾èµ°éã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç»è®ºäºæ¯å¨ç¤¾åºO2Oæ¬èº«æ²¡ææç¡®ççå©æ¨¡å¼çç¯å¢ä¸ï¼æ¾å¼ç°æçå©é¡¹ææ¯å¯çå©é¡¹å¹¶ä¸è½ç»æªæ¥å¸¦å»æ´ä¸ºå¯è§çå¢å¼è¥æ¶ç©ºé´ãç¤¾åºO2Oé¡¹ç®éè¦æ¾å°èªå·±ççå©ç¹ï¼å¹¶ä¸å§ç»å´ç»èµ¢å©ç¹è¿è¡æ·±åº¦å¯åç°è½åæåçæ¢ç´¢ï¼èä¸æ¯å¯å¸æäºæªæ¥ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¾å¦ï¼å¤§å®¶é½ç¥ééèå¾èµé±ï¼æä»¥é½å°ç¤¾åºéèä¸å¡ä½ä¸ºæªæ¥çéç¹è¥æ¶é¡¹ï¼ä¸è¿è½å¨éèä¸èµé±çæ¯éèå¬å¸ï¼æ¬èº«æ²¡æéèå®åçç¤¾åºO2Oå¬å¸æå¤åªæ¯æ¿ä¸ç¹ä½£éï¼ä¹å°±æ¯è¯´å¯è½ä¼èµé±çç¤¾åºéèä¸å¤§å¤æ°ï¼ééèèæ¯çï¼ç¤¾åºO2Oå¬å¸æ å³ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¾å¦ï¼ç¤¾åºå¹³å°ãç¤¾åºçµåãé¨ç¦å¼éç­é¡¹ç®ä¸ç¤¾åºéèå¹¶æ²¡æç´æ¥çå æå³ç³»ï¼ç¨æ·å¯ä»¥è½ä¼ç¨æäºç¤¾åºäº§åä½æªå¿ä¼å¨å¶ä¸ä¹°éèçè´¢ï¼ç¨æ·æèµéèçè´¢é¤äºçéä¿¡ä»»å³ç³»å¤æ´çéæèµæ¶çï¼èªèº«æ²¡æå¼ºå¿éèä¸å¡çç¤¾åºO2Oå¬å¸æå¤æ¯ä¸æ¡å¸®çå«å®¶å¬å¸åéèäº§åçæ¸ éï¼æ ¹æ¬èµä¸å°å¤å°é±ãç¤¾åºåä¸æ´éè¦ç´çº¿å¼çå©æç»´å°ç²¾åéä¸­å¨ä¸»è¥ä¸å¡çè¥æ¶è½åä¸ï¼èä¸è¯¥å¯¹æªæ¥æ±æè¿å¤çå¹»æ³ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¶èï¼è¿éå¿é¡»å¾å¼ºè°éå¸¸éè¦çä¸ç¹ï¼ç´çº¿å¼ççå©æç»´å¹¶ä¸å®å¨æ¯ä¼ ç»çä¸æäº¤é±ä¸æäº¤è´§çäº¤ææç»´ï¼ç¤¾åºO2Oä¸­çç´çº¿å¼çå©æç»´æ¯ä¸æå¡æç¥æ§äºææ¼æªæ¥çä¸ç§è¿è¥æç»´ï¼è¿ç§æç»´æ¢éè¦æ³¨éç¼åå©çï¼åæ¶ä¹éè¦éåºäºèç½çµæ´»å¤åçå¸åºç­ç¥ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¾å¦ç¤¾åºé¨ç¦ï¼ä¼ ç»æç»´åªæ¯å°ç¤¾åºé¨ç¦åç»ç©ä¸ï¼èç¤¾åºO2Oç´çº¿å¼çå©æç»´æ¯å¦æå¯ä»¥ç´æ¥åç»ç©ä¸æå¥½ï¼ä½å¨ç°ææºæ§ç¤¾åºåç¤¾åºO2Oèæ¯ä¸ä¹å¯ä»¥åè´¹éç»ç©ä¸ï¼ä½åææ¯è·å¾ç¤¾åºé¨ç¦çå¹¿åè¿è¥æï¼å¶å®ä¹å°±æ¯ç¾æ¯åºå¨çªèº«ä¸è®©çæ¥ä¹°åçäºèç½æç»´ï¼ä½æ­¤æ¶ççå©æç»´å°±æ¯âç¨æ·âå¹¿åâçç´çº¿èµé±æç»´ï¼èä¸æ¯âç¨æ·âéèâçé­ç¯æç»´ï¼è¿æ¯ç¤¾åºO2Oç´çº¿æç»´ä¸çº¯äºèç½æç»´ãçº¯ä¼ ç»æç»´çå·®å«æå¨ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç´çº¿å¼çå©æç»´æ¯å°äºèç½çµæ´»å¤åçè¿è¥ææ®µç¨äºä¼ ç»çç¤¾åºå¸åºä¹ä¸­ï¼è¿ç§æç»´æ´å®éæ´è´´è¿å¸åºï¼æ´éåä¸­å°ç¤¾åºO2Oåä¸å¬å¸ï¼ä½ä¸éåå·¨å¤´ç±»çç¤¾åºå¬å¸ï¼å ä¸ºå·¨å¤´ä»¬è¯å®æ ¹æ¬çä¸ä¸ç­æåçè¿ç¹å©æ¶¦ï¼ä»ä»¬æ´å³æ³¨çæ¯å¸åºè§æ¨¡åæªæ¥çé¿æä»·å¼ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç»è®ºä¸ï¼ç¤¾åºæ¯ä¸ç¨æ·ææ¥è¿ççæ´»åºæ¯ï¼èå½äººççæ´»ä¹ æ¯ç¹ç¹æ¯ï¼è¶æ¯ä¸ä»ä»¬æ¯æ¯ç¸å³çäºæï¼ä»ä»¬å°±è¶æåï¼æä»¥å¨ä¸­å½ï¼ç©ä¸ä¸å±æ°çå¯¹ç«æç»ªæä¼ä¸ç´ç¸æä¸ä¸ãè¥ç¤¾åºO2Oé¡¹ç®çæèµåæ¥å¨æè¶é¿ï¼ç¸åºæ¿æçè¿è¥é£é©å°±è¶å¤§ï¼å°¤å¶æ¯å¦æé¡¹ç®éè¦æç ´åæç¤¾åºç¯å¢ç»æï¼ä½åä¸è½çæ­£çæåç¤¾åºççæ´»è´¨éï¼è¿ç±»é¡¹ç®è¯´ä¸å®åªä¸ªç¯èåºäºé®é¢å°±ä¼å¼èµ·ä¼æï¼å³ä¾¿ä¸ç©ä¸åä¸å§ä¼æåä½åè®®ï¼å¯ä¸æ¦æ¿åçç¾ï¼æ¿åºåèè®ºåªä½é½ä¼åçç¤¾åºå±æ°è¯´è¯ï¼å ä¸ºæ¶åå°ç¤¾ä¼æ°çé®é¢ï¼èç¾å§å¤æ°æåµé½ä¼è¢«è§ä¸ºå¼±å¿ç¾¤ä½å¹¶è½å æ®èè®ºé«ç¹ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">ç¤¾åºO2Oéæ³¨éä¸¤ç§æç»´ç»åï¼ç¨âââåå±ï¼ç¨âââå­æ´\»</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¤¾åºO2Oçå©é®é¢æ¯ä¸æ¯ä¸çæ­»æ£ï¼è¿å¾çé¡¹ç®æ¹èªèº«çè§åï¼è¯´å°è¿éå·²ç»å¾æç½äºï¼åªæé£äºèµæ¬åè¶³å®åéåçå·¨å¤´çº§å¬å¸æéåé­ç¯å¼çäºèç½å¹³å°åå±æç»´ï¼å ä¸ºä»ä»¬äºçèµ·ï¼èä¸ä¹çä¸ä¸ç­æåçèå¤´å°å©ï¼èä¸­å°åä¸å¬å¸æ´éåéåç´çº¿å¼ççå©æç»´ï¼å°½å¯è½çä¸ä¾é èµæ¬é©±å¨åå­åèªèº«ä¸»è¥ä¸å¡è·å¾çå©ï¼å¨ä¸»è¥ä¸å¡ç¨³å®ä¹ååå»èèè½ä¸è½å¹³å°ååå±ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¶å®ï¼å¾å¤æ¶åé­ç¯å¼çå©æç»´ä¸ç´çº¿å¼çå©æç»´æ¯ç»åè¿ç¨çï¼å³ä¾¿æ¯å¤§å¬å¸çä¸ä¸èå¤´å°å©ä½å¶ä¹éè¦æ¾å°ç¨³å®çä¸»è¥æ¶å¥ç¹ï¼èä¸­å°å¬å¸ä¸æ¦æäºç¨³å®ççå©é¡¹ä¹åä¹ä¼å¼å§å°è¯æ´å¤çåå±å¯è½ï¼è¿èé¾åä¼ææ­å»ºæ´å¤§å¹³å°çéå¿ãç®åçæ¥è¯´ï¼âââæç»´çç®çæ¯âåå±âï¼èâââæç»´çæä¹æ¯âå­æ´»âï¼å¤§å¬å¸å¾å°ä¼æå­æ´»ååï¼æä»¥åªéå³æ³¨åå±ï¼èä¸­å°å¬å¸åªæåå­æ´»ä¸å»ï¼ææèµæ ¼å»è°åå±ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¤¾åºO2Oçå©é®é¢ç¡®å®æ¯ä¸ä¸ªéè¦è®¤çæèçé®é¢ï¼ä½å¹¶ä¸æ¯ä¸ä¸ªæ è§£çé¾é¢ï¼å¯¹äºä¸­å°åä¸å¬å¸èè¨ï¼åªè¦ä¸å¨å±éäºâââæç»´ï¼å¹¶è®¤æ¸âââæç»´ä»·å¼ï¼ç¤¾åºå¸åºè¿æ¯æå¾å¤æºä¼çã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¸¾ä¸¤ä¸ªä¾å­ï¼æåªä½å¬å¸åç¤¾äº¤å¹³å°æ­¤åå¾é¾èµå°é±ï¼ä½å¨å¹³å°ä¸çè¥éå·èµäºä¸å°é±ï¼æçµåå¾é¿ä¸æ®µæ¶é´èªå·±ä¸èµé±ï¼ä½å¾å¤å¨å¶ä¸åè´§çå´æé±èµèµ°äºï¼æèæ¯å¶äº§ä¸é¾ä¸çä»£è¿è¥ãä»å¨ç©æµãè¥éæ¨å¹¿ç­å¬å¸é½å¾èµé±ãæä»¥ï¼è®¤æ¸èªèº«çå®ä½ï¼æ²¡æå¹³å°æ½è´¨å°±é»é»çåä¸ºç¤¾åºO2Oäº§ä¸é¾ä¸ä¸å®¶èµé±çä¸­å°å¬å¸å°±å¤äºï¼ä¸è¦æ³å¤ªå¤ï¼ç»å¤§æ°ä¸­å°åä¸å¬å¸æ³¨å®äºæ¯æ®æ¼éªå¤ªå­è¯»ä¹¦çè§è²ã\\r\n</p>','0','/Uploads/201603/56f21011d6877.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=61','28','1458704431','1458704468','','0');
INSERT INTO `yourphp_article` VALUES ('62','10','2','hello','ä¸­å½ç¤¾åºO2Oå¸åºè§æ¨¡å°è¾¾3599äº¿ï¼ç¤¾åºçµåå¦ä½çªå´ï¼\','','','','','Â  Â  Â  Â ç¤¾åºçµåå°±å¨å²å»ççº¿ä¸å¤§è¶å¸åä¼ ç»çµåï¼ä½è³ä»åè¿æ²¡æåºç°å·¨å¤´ä¼ä¸ï¼ç¤¾åºçµåå°åºé¾å¨åª?åè¯¥å¦ä½è°æ´å§¿å¿åè¡?è¿æ¥éªçµè´­å¨ä¸æµ·å¬å¼åå®¶å¯å¨ä¼ï¼å¬è¯´ç°åºä¸åçåå®¶è¾¾95%ï¼ååæå¤\...','<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;ç¤¾åºçµåå°±å¨å²å»ççº¿ä¸å¤§è¶å¸åä¼ ç»çµåï¼ä½è³ä»åè¿æ²¡æåºç°å·¨å¤´ä¼ä¸ï¼ç¤¾åºçµåå°åºé¾å¨åª?åè¯¥å¦ä½è°æ´å§¿å¿åè¡?è¿æ¥éªçµè´­å¨ä¸æµ·å¬å¼åå®¶å¯å¨ä¼ï¼å¬è¯´ç°åºä¸åçåå®¶è¾¾95%ï¼ååæå¤ï¼è¿ä¸ç¦è®©åéè¿è´§æ³èèè¿ä¸ªæ½åå·¨å¤§çç¤¾åºçµåå¸åºãå ä¸ºè¿åºå«äºçº¿ä¸æ¯ä»\+å°åºæ¶è´¹çO2Oæ¨¡å¼ï¼ä¹ä¸æ¯çº¿ä¸æ¯ä»+ç\© æµééçååçµåæ¨¡å¼ï¼èæ¯å´ç»ç¤¾åºæµéåå¥å£ï¼éå¯¹ç¤¾åºå±æ°åéï¼åé«é¢ä½å¼çååäº¤æã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¦æè¯´æ·å®ç±»ä¼ ç»çµåå¹²æçæ¯çº¿ä¸ç¾è´§åºåè¿éåºï¼é£ç¤¾åºçµåå°±å¨å²å»ççº¿ä¸å¤§è¶å¸åä¼ ç»çµåãä½ç¤¾åºçµåè³ä»åè¿æ²¡æåºç°å·¨æ é¸ï¼è¿äºä¾¿å©åºåå¤«å¦»åºè½å¦åå©ç¤¾åºçµåå¹³å°æä¸ºå¨å¯æ­¦è£çèèéåµï¼åææ°¸è¿åªæ¯æ£åµæ¸¸åï¼ç¤¾åºçµåå°åºé¾å¨åª?åè¯¥å¦ä½è°æ´å§¿å¿åè¡?\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">&nbsp;ä¸ãæäººç»æµä¸çç¤¾åºçµåï¼æäººæ¬¢åæäººæ\</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; æ ¹æ®é¶æ²³è¯å¸çæ°æ®ï¼2016å¹´ä¸­å½ç¤¾åºO2Oå¸åºè§æ¨¡è¾¾å°3599äº¿åãç¤¾åºçµåä¾¿æ¯å¶ä¸­çç¤¾åºé¶å®ä¾¿å©O2Oæ¨¡å¼ï¼è¿ç§åºäºç§»å¨äºèç½å·¥å·å\ LBSä½ç½®ææ¯ï¼å°çº¿ä¸å®ä½é¨åºéè¿ç§»å¨ç«¯ä¸ç¤¾åºç¨æ·å®ç°é¶è·ç¦»è´­ç©ãæ¯ä»ä½éªçæ¶è´¹å½¢æä¹å¨çåçè¿\3500äº¿å¸åºãèèååå±çé»è¾é¤äºç§»å¨äºèç½æ æ¯çåå±ï¼æ´å¤çæ¯å¹´è½»äººæ¶è´¹æ¹å¼åæ¶è´¹éæ±çè½¬åä»¥åé¶å®è¡ä¸çéæã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">äºãæäººç»æµå¬ççç§»å¨æ¶è´¹</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é¦åå¨æ¶è´¹ç«¯ï¼å¿é¡»æ¿è®¤ï¼æä»¬æ­£é¢å¯¹çä¸ä¸ªæäººçä¸çï¼çæ´»åéçä¾¿å©åºå¯¹æäººä»¬æ¥è¯´æ¯ä¸ªé¥è¿çå­å¨ï¼å³ä¾¿è·ç¦»èªå·±åªæ\800ç±³çè\³500ç±³ï¼ä»ä»¬é\½ è½æä¹°å æ¤æ°´ææåæä¸æ¥¼âèµ°è¿å»âè¿åºâéååâæéä»è´¦âç¦»å¼âåå®¶ç­å¤ä¸ªæ­¥éª¤ä»èæç»ä¸æ¥¼ãæå¹¸ä»ä»¬æé¿ä½¿ç¨æºè½ææºï¼ä¹å»æäºéæ¶éå°ä¸åçä¹ æ\¯ ä¸å·å¤æ´å¼ºçæ¶è´¹è½åï¼æ¿æä¸ºæå¡ä»è´¹ãå¾ææ¾åæ¥ä»¥åºä¸ºä¸­å¿ãå°åºè´­ä¹°çç»è¥æ¨¡å¼å·²æ æ³æ»¡è¶³å½ä¸çæ¶è´¹éæ±ï¼æäººä»¬éè¦çæ¯ä¸ç§å¨æ°çå³æ¶æ§ãç¢çåã\ éæå¼çç§»å¨æ¶è´¹ä½éªã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">ä¸ãå±é«ä¸ä¸çåºé¢ææ¬é©±ä½¿</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¶æ¬¡å¨åæ·ç«¯ï¼ç®åç¤¾åºé¶å®ççµåæ¸éçä¸è¶³ 1%ãé¨åºææ¬å´é«è¾¾ 20%-30%ï¼å¨ç§éåäººåææ¬ä¸æ­ä¸åçæåµä¸ï¼åååæå¡åæ¶è´¹èæµå¨æä¸ºå¤§è¶å¿ãåæ·ä¸æ¹é¢éè¦èæè´§æ¶æ¥æ©å SKUï¼å¦ä¸æ¹é¢éè¦åå°åºé¢ä¸äººåææ¬ï¼å°¤å¶æ¯å¨é¨åºä½ç½®ä¸å¨é£ä¹éè¦çå½ä¸ãç¤¾åºçµåæ¨¡å¼è½å¨çº¿ä¸ç»åå®¶å¼è®¾ä¸ä¸ªèæè´§æ¶ï¼å½¢æå¯¹çº¿ä¸åºé¢çè¡¥åçè³ éæ­¥åä»£ï¼èªç¶ååæ·æ¬¢è¿ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">åãåæä¾¿å©ä½ç³»ï¼ååç»æè½å</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; åèï¼åæ¬æè°âç°ä»£æ¸ éâå¤§ååºå¨åçåæä¾¿å©ä½ç³»ï¼é½æ¯ä¼ ç»åçå·¨å¤´å¨åæ­å¹¿åå®£ä¼ åè´§æ¶ï¼ä¹å°±æ¯æ¶è´¹èå¹¶æ²¡æçæ­£å®ç°èªä¸»ç­éååï¼èæ¯å¨é¶å\® åååçåä¸èµ·æå»ºçç¸å¯¹å°é­çåºå®ç©ºé´éæéååãèä¸ä¼ ç»ä¾¿å©åºåªæ¯ååºç¨æ·çå³æ¶éæ±ï¼ååç»æçè°æ´ç¸å¯¹æ»åãä½æ¶è´¹èçèªä¸»æ§è¶æ¥è¶å¼ºï¼éæ±è¶æ¥è¶ä¸ªæ§åï¼æ¯å¦ç®åç«ç­çâç½çº¢ååâä¾¿æ¯ä¾¿å©ä½ç³»æ æ³æ»¡è¶³çï¼å½åçåæ æ³ç»§ç»­å®å¨ææ§å®£ä¼ å¥å£åæ»¡è¶³æ¶è´¹èéæ±ï¼è½æä¾ä¸°å¯çååæ°éçç¤¾åºçµåæ¨¡ å¼å°±å¸æ¾åºèªå·±çä¼å¿ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; æåç¤¾åºçµåæ¢ç»§æ¿äºåæä¾¿å©ä½ç³»é¶æ£ç½åºçä¾¿å©ä¼å¿ï¼ä¹çªç ´äºä¼ ç»çµååªè§£å³æ¨ªåè§æ¨¡åé®é¢åå®ç°äºçºµåçç¤¾åºåï¼æ¢çªç ´åºåéå¶å¯è§æ¨¡åï¼åææ \¹ äºåºåï¼å®ç°çº¿ä¸çº¿ä¸å¨æ¹ä½äºå¨ãæä»¥å¨å¤§å®¶é½è®¤ä¸ºç¤¾åºååè§æ¨¡åæ¯äºèç½åå¡çä¸¤ä¸ªåå±æ¹åæ¶ï¼ç¤¾åºçµåä½ä¸ºæå¯åæ°çåä¸æ¨¡å¼å°±éæ­¥è¢«å¬ä¼è®¤è¯ï¼ä¹ä½¿å¾å·¨å¤´ååä¸èäºåæåæè¿å»ï¼å¾å¤å¹³å°å¹¶è·å¾èµæ¬éçï¼å¦äº¬ä¸é¤äºä¸çº¿äºäº¬ä¸å°å®¶ï¼ ä¹å¨2015å¹\´5æé¢æäºå¤©å¤©æå­ï¼æ®è¯´è¿æ¬¡Cè½®èèµå°è¾\¾7000ä¸ç¾åè§æ¨¡ãåå¹\´12æï¼ä¹é³è¡ä»½å®£å¸åºèµ3000ä¸ç¾åå¢èµæ¬æ¥æ§è¡ãè¿æç±é¿éä¸å¸ åç¬¬ä¸æ¹ç¦»èåä¸çé«ç®¡çæ°¸æ£®åé¬å¼ºå¼ºç­å\¨2014å¹\´12æåç«çéªçµè´­ï¼2015å¹\´10æéªçµè´­è·å¾ç±H capitalãé¡ºä¸ºåºéé¢æï¼ç»çº¬ä¸­å½ãé¿éåå§äººå´æ³³é­çåçèµæ¬è·ææ°åä¸ç¾éBè½®èèµãè¿æå®å®¶éãäºå¨çµåãæ¥¼å£ãå³ä¹°éã\1å·åºçå°åºé·è´­ç­ ç­ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä½å¦ä¸é¢ä¹æå¾å¤å¹³å°âæ­»å¨äºè·¯ä¸âï¼æå³é­æå¡æè°é¾è½¬åï¼å¦æ¾è·å¾\1äº¿åå¤©ä½¿æèµä¸ç®èçº¢çå®åå°åºï¼èé æå¡æç¤¾åºçµåèº«è¾¹å°åºãçº¢æä¸æ¶çç¤¾åº001ãçè³é¡ºä¸°å¿å®¢ç­ç­ãæä»¬ååä¹æ¶ä¸ç¦è¦é®ï¼æ¯ä»ä¹é æäºå¦æ­¤å°ç«ä¸¤éå¤©çä¸åç»æ\?\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">äºãåå¤§å½èï¼âé±¼âåâçæâè¯¥å¦ä½å¼å¾</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¶å®ä½ä¸ºB2Cçµåçå»¶å±ååçº§ï¼ç¤¾åºçµåä¸ä»éè¦å¹³å°å¨æ¶è´¹èåä¾åºé¾é½ææå¼ºçå½±åååå·å¬åï¼ä¹éè¦å¹³å°å¨è§æ¨¡ç»æµãå¢å¼æå¡ç­é®é¢æå¾å¥½çå\ èãç®åçè¯´ç¤¾åºçµåèéªçå°±æ¯å¹³å°ç4ä¸ªè½åï¼ç¤¾åºè§æ¨¡ä¸åå¸æ©å¼ çè¿è¥è½å;ä¾åºé¾æ¡çéæ©åååè½å\;æåä¸å¬éééçç»¼åæå¡è½ååå¯æç»­ååå±\ çåä¸åç°è½åã\ è¿åé¡¹æ¢æ¯å³ç³»å°å¹³å°çæ­»çå½èï¼åæ¯âé±¼âåâçæâçåå¼ååèã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">&nbsp;å­ãç¤¾åºè§æ¨¡ä¸åå¸æ©å¼ </span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¤¾åºçµåæ¯å¸åçèµæ¬é©±å¨åå¸åºï¼é¢å¯¹çå¯¹æä¹æ¯å·æåºä½ä¼å¿çè¿éè¶å¸ãä¾¿å©åºåæ²¡æå°åéå¶çB2Cçµåï¼æä»¥ç¤¾åºçµåå¹³å°éè¦åºå¤§çå°é¢ç½ç¹è¦\ çãä¼å¤çå°æ¨ééäººåæ¯æåè¶³å¤éçº§ççº¿ä¸æµéå¥å£ãé£ä¹é®é¢æ¥äºï¼å·å¤çå©è½åçè§æ¨¡ä¼å¿çä¸´çç¹å¨å\ª?ä½æ¶éè¦å éæ©å¼\ ?å¦ä½æ§å¶èå¥?å¿«éæå±é¶ æ®µæå¡åè´¨å¦ä½ä¿è¯\?ç­æåå·¥å¤§æ©å®¹å¦ä½å¸¦é¢åç®¡æ§?å¦ä½ä¿æå¢éå¿æå¹³è¡\¡?ææ¡èµæ¬è½å¦æ¯æ\?\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç®åéªçµè´­è¦ççæ¯åäº¬ãä¸æµ·ãå¹¿å·ãæ·±å³ãæ­å·ãèå·ç­6ä¸ªåå¸ï¼1å¬éèå´åå®ç\°1å°æ¶éè¾¾ãäº¬ä¸å°å®¶åå·²è¦çåæ¬åäº¬ãä¸æµ·ãå¹¿å·ãæ·±å³ãåäº¬ãå¤©æ´¥ãæ­¦æ±ãå®æ³¢ãæé½ãè¥¿å®ãéåºç­ä¸äºçº¿åå¸ï¼å¹¶2å°æ¶åéè¾¾ï¼èåºäº«ååªå®æäºåäº¬ãæ¬å·çè¦çã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; åå¸æ©å¼ åç¤¾åºè§æ¨¡ä¸åªæ¯èéªç¤¾åºçµåçèµéå®åï¼è¿èéªèåä¸èå¯¹ç¤¾åºçµåæ¨¡å¼ççè§£åè¿è¥ç­ç¥ï¼æ¯å¦åºäº«éç¨çæ¯æéèªè¥çæ¨¡å¼ï¼æä»¥ä½¿å¾èµéå åå¤§ï¼æ©å¼ éåº¦ç¼æ¢ï¼èä¸äººåæµå¨ææ¬æé«ãè¿å°±è¦æ±åä¸èå¯¹è§æ¨¡åæ ¸å¿ä¼å¿çæé ï¼æ©å¼ éåº¦åç¨æ·è´¨éçåèè¦æä¸ä¸ªå¾å¥½çæè¡¡ï¼ç¨æä¸æï¼å°±å¯è½éè¿\ åå±è¯æºã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">&nbsp;ä¸ãä¾åºé¾æ¡çåååéæ©</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¤¾åºçµåå¹³å°ä¸è®ºæ¯ååç´ç»åäº§åå¦çé²çå®åè¿æ¯åçº¯çæµéååï¼é½å¨äº§ä¸é¾çä¸æ¸¸ââæååä¾åºååæå¡ä¾åºåå¯¹æ¥ç»ç¤¾åºçCç«¯ç¨æ·ï¼ä¸è½æé¾ä»\¥ ä¿è¯ä¾åºç«¯çåè´¨ï¼å æ­¤ï¼ç¤¾åºçµåå¹³å°éè¦å¾äº§ä¸é¾ä¸æ¸¸å»¶ä¼¸ãæ´ä¸ºå³é®çæ¯ç¤¾åºçµåå¹³å°è½å¦ååå¥½ä¾åºé¾ä¸ä½éè¦æä¾åç±»ç³»ç»å·¥å·æ¥å¸®å©ä¾åºç«¯æåæçã\ ä»èå¢å¼ºå¯¹å¹³å°çä¾èµåéè¦æ©å¤§èªèº«å®ä½é¨åºæ°éï¼æ©åéå®æ¸ éï¼å½¢æè¾å¼ºçéè´­è¯è¯­æï¼ä»èå å¼ºå¯¹ä¾åºç«¯çåè´¨ææ§ï¼æä»¥ç¤¾åºçµåå¹³å°è½ææ§å¥½ä¾åºé¾å°\± æ¯å¹³å°çæè´¥å³é®ä¹ä¸ãå·ä½æ¥è¯´ï¼éè¦å¤çå¥½2ä¸ªå³ç³»ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1ãä¾¿å©åºçéæ©ååä½æ¹å¼ï¼ç¤¾åºåä¸»è¦åå¸è¿éç´è¥åºãå çåºåå¤«å¦»æè´§åºä¸ç±»ä¸æãéªçµéæ©åå çåºåä½ï¼æ¥¼å£åæ¯æ§è¡âå¾®ä»ä¸»âæ¨¡å¼ï¼éè¿æå ä¸ªäººåºä¸»åå®ä½ä¾¿å©åºå çï¼ä»èåé¿äºä¾¿å©åºä¸æçéæ©ãä½è¦æéçæ¯ï¼è¿ä¸èææ¾æå·®å«ï¼æ¯å¦ç´è¥åºåºé¿çå³æ­æä¸å¤§ï¼ä¸æ¯âæå·¥âå¿æãå¤«å¦»åºåå¶äº\ äººåï¼ééåéèå¼±ï¼å çåºèæ¿æ¢æéè¿âè§¦ç½âæ¥æ¹åç»è¥çææ¿ï¼äººåä¹ç¸å¯¹åè¶³ãèä¸åªæéæ©å¥½åéçåä½æ¹æè½çæ­£è§£å³è´§ç©ä»å¨ãæ«ç«¯ééç­é¾é¢ï¼\ æä»¥è°¨æéæ©ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2ãéåéæååæ¶æåä¸çº¿ä¸åºé¢çåºéãä½ä¸ºé¶å®ï¼éåéè¦æ§ä¸è¨èå»ï¼èä¸æä¹æ¢è½å¸å¼æ¶è´¹èä»çº¿ä¸å°çº¿ä¸ä¸åï¼åè½ä¿è¯èªå·±çæ¯å©ï¼è¿ä¸ªå¾å³ é®ä½å¾å¾åå¶äºä¾åºé¾ãå°±å¦è½ç¶ææå°åºé½ç¥éæ°´æåç±»æ¢æé¢æ¬¡åææ¯å©ï¼ä½æ°´æå¯¹ä¾åºé¾è¦æ±æé«ï¼æ®éä¾¿å©åºä¸æ¢è½»æå°è¯ï¼èç¤¾åºçµåå¹³å°å°±å¯ä»¥åéªç\µ è´­ä¸æ ·éç¨âçé²åäº§å°ç´é+åçåâæç¥åä½çå½¢å¼å¨æ¯ä¸ä¸ªè¦ççåå¸å»ºç«ä¸­å¿ä»ï¼å¹¶æ­å»ºå¨ç¨å·é¾ï¼å°æ°´æç»è¿ç­éï¼å¹¶å¶ä½ææ åäº§ååè£ï¼ééå°åºï¼ å¹¶å¨çº¿ä¸æ¨å¹¿ï¼ä»èå®ç°æ¯ä¼ ç»æ°´æåºæ´ä¸ºé«æçæµè½¬ãæèéå®ç½çº¢ååç­å½¢æåç±»å£ååç«äºå·®å¼ï¼èè¿äºé½æ¯å­¦é®ãåæ æ°ç½ä¸æ ·æ´ååäº§ååäº§å°ãåçä¾ åºåãç¤¾åºè¶å¸ãç»ç«¯ç¨æ·ç­å¤æ¹èµæºï¼æé éäº§å°ç´éãåçç´éãåè¶ä¾è´§ãçº¿ä¸ååãä¾¿æ°ä¸å¡ãæ°æ®ææäºä¸ä½çå¨ä¾åºé¾ç¤¾åºçµåå¹³å°æ´æ¯ä¸é¡¹åå¤åç\ ä¿®ç¼ï¼ä½é¾åº¦ä¸å¯è¯´ä¸å¤§ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">å«ãä»éä½ç³»åæåä¸å¬éééçç»¼åæå¡</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ç¤¾åºçµåä¸»è¦ä»¥ä½åä»·ãå¿«æ¶èãä½é¢æ¬¡ãåæ¶æ§çåè¶ãæ°´æãå¤åç­ä¸ºç»è¥é¡¹ç®ï¼æä»¥èéªç¤¾åºçµåçé¦åæ¯ç»ç«¯ééè½åï¼ä¹å°±æ¯è·è¿è½åï¼å ä¸ºä»ä»¬å®éæ¯å¨å¹²ç­éç©æµçæ´»ãä½é¾ç¹å°±å¨äºè¿ä¸ªééä½ç³»åä»ä¿ä½ç³»æä¹æ­å»º?æäººè¯´è§£å³ç¤¾åºééé®é¢æå¥½æ¹å¼æ¯ä¼åä¸Uberç»åçå¼èæ¨¡å¼ï¼ä¹æäººè¯´ä¸ºä¿éæ åä¸å¬éçç»¼åæå¡ä½éªï¼å¾èªå»ºç©æµï¼è¿æäººè¯´å¾æ¯ä¸¤èçç»åï¼äºæ¯å°±åºç°äºåç±»æ¨¡å¼ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¶ä¸­åæå©å¼ï¼å¦èªå»ºç©æµçç¤¾å\º001ï¼æå¡ç¨³ä½è¦æ¿æé«é¢çææ¬åä¸å®çé£é©ã\ å©ç¨ç¤¾åºä¾¿å©åºé²ç½®èµæºæ¥å®æééçç±é²èï¼èµäº§è½»ä½è¾é¾ä¿éæå¡è´¨éï¼ä¸åè¡å¤å¶çé¨æ§æä½ãèäº¬ä¸å°å®¶åéªçµè´­åæ¯ä¸¤èç»åï¼åªä¸è¿äº¬ä¸å°å®¶æ¯ä»¥èªè\¥+ä¼åç©æµæ¥è§£å³æ«ç«¯ééï¼ä¾é äº¬ä¸åºå¤§ççº¿ä¸æµéåéåçèµéå®åï¼å¯¹æ¥çº¿ä¸å®ä½åºãèéªçµè´­éåçæ¯âèªå»ºç©æµ\+ä¼åâçæ¨¡å¼ï¼å¹¶æä¸åªéªçµä¾ çé éå¢éå¸®å©åå®¶å¨æ ¸å¿ååå®ç°1å°æ¶ééãèä¸éªçµè´­åå¸æ»ä»ä¸æ¯ä¸ä¸ªå°åºçå³ç³»æ¯ä¸­å¿ä»ä¸åä»çå³ç³»ï¼è¿æ¯åæ®µæ¶åä»éææ¬çè¿ç¨ãå¶å®ä»éä½ç³»æéè¦ çå ç´ æ¯ç¤¾åºæ¸ éçä¸æ²åæ¸éï¼æè®¸æ­£å¦éªçµè´­CEOçæ°¸æ£®æè¯´ï¼âéè¦çº¿ä¸åçº¿ä¸ç¸éåï¼å¨å©ç¨ç°æåå®¶è¿åçåæ¶ï¼å»ºç«å¼ºå¤§çç½ç»ï¼æä½éªåå¥½âãå  ä¸ºééä½éªæ¯ç¤¾åºçµåæ¨¡å¼çæ ¸å¿ç«äºåï¼é®é¢çå³é®ç¹ä¸å¨äºæ¨¡å¼è½»éï¼èæ¯ééä½éªãä½éªãåä½éªãå¹¶ä¸å¿é¡»æ¿è®¤åçº¯çä¼å Uberå½¢å¼è¡ä¸éï¼åèªå»ºä»å¨ä¸ç©æµçäººåææ¬ä¹å¯è½ææ­»åä¸èã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight:700;\">ä¹ãå¯æç»­çå©åç°æ¹å¼</span> \r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; æåè®²è®²çå©çé®é¢ï¼åéè¿è´§å§ç»è®¤ä¸ºä¸è®²æä¹èµé±çåä¸é½æ¯èæµæ°ãä½ç¤¾åºçµååæ¯ç¬é«äººåææ¬ãé«è¿ç»´ææ¬ãé«è¥éææ¬åä½å©æ¶¦åæ¥ççæãè\ ä¸ç¤¾åºçµåççå©åææ¯å»ºç«å¨æ ååå¿«æ¶åééä¸å¤§éä½é¢æ¶è´¹çéæ æå¡ä¸ãæä»¥éååçå©æ¨¡å¼çæå»ºå³å®çç¤¾åºçµåå¹³å°çâèµé±è½åâï¼åå¤§å¤æ°è¿éä½\ ç³»ä¸å³è¿½æ±åç±»æä½ä»·ä¸ä¸æ ·ï¼ä¸ä¸åç¤¾åºçµåå¹³å°çææ³åæå·®å«ï¼å¦äº¬ä¸å°å®¶ä¸»æå·æé«é¢è´­ä¹°éæ±çè¬èæ°´æï¼æä¾çæ¯çé²ãè¶å¸äº§åãé²è±ãå¤åéé¤ç­\ åç±»çæ´»æå¡é¡¹ç®ï¼èéªçµè´­éåçæ¯âå¨æéåï¼æ°æ®åä¸»âçéåæ¨¡å¼ï¼ä¸»è¦ä»¥äºèç½åçåçåè¿å£ååä¸ºä¸»ï¼å¦ä¼é²é¶é£ç±»ç®å·²æè¶è¿40ä¸ªå½å®¶åå°åºç\ è¿åä¸ªç½çº¢ååãä½éçç¨æ·æ°éçå¢å åç¨æ·åºåçå·®å«ï¼ç¤¾åºçµåé¢å¯¹çæ¯å¤ååï¼æ åºæ§ä¸ç¬¦åéå­åå­¦çä¸ç¡®å®åççç¨æ·ç¾¤ä½ï¼å¦ä½å¨ä¸»ä½ä¸å¡ç¬¦åäºå\« ååï¼ä¸ªä½éæ±ç¬¦åé¿å°¾çè®ºçæå¯¼ææ³ä¸èµå°è¶³å¤çé±åæ¯ä¸ªé¾ç¹ï¼å ä¸ºé¢å¯¹çå¤æ¯ååè¿·ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; èä¸é¤äºäº¤æå©å·®ï¼ç¤¾åºçµåè¿è½å¨åªéâæ¦¨åºæ²¹æ°´âå¢?åæ¬¡æéçæ¯ï¼ç¤¾åºééå®éä¸æ¯æ´ä¸ªç¤¾åºçµåçæ ¸å¿ä¹æ¯ç¤¾åºO2Oçå¥å£ï¼ä¸æ¦æäºç¨³å®å¯é ç ç¤¾åºééè½åï¼å°±å¯ä»¥å»¶ä¼¸åºæ´å¤çæ©å±æå¡ãå¦éæ°´ãå¹²æ´ãéè¯ç­çè³åå±æä¸ºå¹³å°ãé£å¨æ­¤åºç¡ä¸å»¶å±ççå©éå¾å¦å±ç¤ºå¹¿åæ¶å¥ãä¾éå·®ä»·æéå®åæãä¼åå¨å¼æ²æ·èµéåBç«¯åæ·éèæå¡ãåæ·æ°æ®å¢å¼æå¡åç³»ç»å¢å¼æå¡ç­ç­å°±åå¾æ¸æ°ï¼èä¸åéªçµä¾ è¿æ ·çæéééæå¡å°±ä¸åæ¯ææ¬åä½èåä¸ºäºçå©åä½ï¼\ ä½è¿ä¸åçåææ¯æä¸ä¸ªå¾å¥½çééä½ç³»ã\\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;font-family:\'Microsoft Yahei\';background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; èä¸è¿åé¡¹é½æ¯ç¸è¾ç¸æç´§å¯è¡æ¥å¨ä¸èµ·ï¼ç¸äºæ¯æåç¸äºå½±åï¼ä¸è¿äºè½åçæå»ºå¹¶éæå¤ä¹åï¼è¿æè®¸å°±è½è§£éä¸ºä»ä¹è¿ä¸ªè¡ä¸è¿æ²¡æå·¨æ é¸ï¼ä½é¢å¯¹çåäº¿çº§å¸åºï¼æ æ³æ»¡è¶³å¹´è½»äººæ°æ¶è´¹å½¢å¼çåä¸å½¢æéæ¸ä¼è¢«æ·æ±°ï¼ç§¯ææ¥æ±ç§»å¨æ¶è´¹æ¨¡å¼çæ°ä¸æå°æä¸ºä¸»æµã\\r\n</p>','0','/Uploads/201603/56f2162f07531.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=62','32','1458705868','1458705972','','0');
INSERT INTO `yourphp_article` VALUES ('63','22','2','hello','3Då®¶è£','','','','','3Dèæå®¶è£æ´åæ³å®¶å±åå®¶ï¼å°äº§å\3Dçå®å»ºæ¨¡å¥åºï¼éè¿å¨å½åå°å­å¬å¸ç´æ¥åæ¥¼çåä½ï¼å¯¼è´­æºè¿é©»æ¥¼çï¼æç»è®©æ¶è´¹èå¨æ¥¼çéè¿æºè½è®¾è®¡å¯¼è´­ç³»ç»ï¼å®ç°ä»æ¯å¯æ¿å°æåå¥ä½çä¸ç«å¼æå¡ãç¬¬ä¸æ¹æ¯ä»å¹³å°ï¼æä¾ç»ç®ã\...','<p class=\"MsoNormal\">\r\n	<b>3D</b><b>èæå®¶è£<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	æ´åæ³å®¶å±åå®¶ï¼å°äº§å\<span>3D</span>çå®å»ºæ¨¡å¥åºï¼éè¿å¨å½åå°å­å¬å¸ç´æ¥åæ¥¼çåä½ï¼å¯¼è´­æºè¿é©»æ¥¼çï¼æç»è®©æ¶è´¹èå¨æ¥¼çéè¿æºè½è®¾è®¡å¯¼è´­ç³»ç»ï¼å®ç°ä»æ¯å¯æ¿å°æåå¥ä½çä¸ç«å¼æå¡ãç¬¬ä¸æ¹æ¯ä»å¹³å°ï¼æä¾ç»ç®ãéèãæ¶è´¹ä¿¡è´·æ¯æãæç»å»ºç«æ³å®¶å±äº§åçå¬å¹³ãå¬æ­£ãä¾¿æ·çäº¤æç³»ç»ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿ç®æ <span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ä¸ã\<span class=\"apple-converted-space\">&nbsp;</span>3Dææ¯ï¼å¸¦æ¥å¨æ°é¼çä½éªã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	äºãå¤ç§åºæ¯é£æ ¼ä»»éæ©ï¼ç©ºé´åå®¶è£éåå¥½èªä¸»æ­éï¼è½»è½»ä¸ç¹å³å¯å®ç°åºæ¯åæ¢åå®¶è£æ¿æ¢ã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	ä¸ãèæçæ´»åºæ¯ï¼éä¸ªäººåå¥½DIYå®¤åè£é¥°ï¼ä¿è¿è´­ä¹°å´è¶£ï¼å¸®å©æ¶è´¹èç´è§ç²¾åçå®ä½éè¦è´­ä¹°çååã\<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>&nbsp;</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:28.0pt;text-indent:-28.0pt;\">\r\n	<b>æ ¸å¿æ¨¡å<span></span></b> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	(1)&nbsp;&nbsp; <span>Erp</span>ç³»ç»<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	(2)&nbsp;&nbsp; <span>3D</span>å¯¼è´­ç³»ç»<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	(3)&nbsp;&nbsp;\r\næ¯ä»ç®¡çç³»ç»<span></span> \r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoListParagraph\" style=\"margin-left:24.0pt;text-indent:-24.0pt;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56f3b67022899.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56e916bd1a43d.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=63','48','1458812555','1458812562','','0');
INSERT INTO `yourphp_article` VALUES ('64','10','2','hello','å¤åO2Oå¸åºå·²æçº¢æµ· åå¤§ç©å®¶æ­£å¨å¼è¾æ°æåº','','','','','æ¶è´¹èCç«¯ç¨æ·ä¸ç´é½æ¯å¤åO2Oå¹³å°çé¦é¥½é¥½ï¼âåªè¦ç¨æ·å¤ï¼è®¢åéå°±ä¸æé®é¢âå¨ä¸å®ç¨åº¦ä¸æä¸ºåä¸èä¿¡å¥çéç§çå¾ãèç°å¨ï¼å¤åO2Oå¸åºçé£åæ­£å¨åçè½¬åãå¨ç»åäºå è½®å¤§è§æ¨¡çç§é±äºå¤ºç¨æ·ä¹æåï¼å¤åå¸å\º...','æ¶è´¹èCç«¯ç¨æ·ä¸ç´é½æ¯å¤åO2Oå¹³å°çé¦é¥½é¥½ï¼âåªè¦ç¨æ·å¤ï¼è®¢åéå°±ä¸æé®é¢âå¨ä¸å®ç¨åº¦ä¸æä¸ºåä¸èä¿¡å¥çéç§çå¾ãèç°å¨ï¼å¤åO2Oå¸åºçé£åæ­£å¨åçè½¬åã\<br />\r\nå¨ç»åäºå è½®å¤§è§æ¨¡çç§é±äºå¤ºç¨æ·ä¹æåï¼å¤åå¸åºå·²ç»è¢«ç¾å¢å¤åãé¥¿äºä¹ãç¾åº¦å¤åç­å°å·¨å¤´åé£ãæ ¹æ®æè§\2015å¹\´12æçæ°æ®æ¾ç¤ºï¼ä¸­å½äºèç½é¤é¥®å¤åæ´ä½å¸åºå·²è¢«ä¸è¿°ä¸å®¶å¬å¸å æ®äºè¿86%çå¸åºä»½é¢ã\<br />\r\nå½é¢åCç«¯æ¶è´¹èçå¥å£å è¿é¥±ååï¼Bç«¯å¸åºè¿æ¥äºæ¥å¤©ãå¤åå¹³å°ä¸æ¹é¢åé¤é¥®äº§ä¸é¾çä¸æ¸¸å»¶ä¼¸ï¼ä¸ºä¸­å°ååå®¶æä¾æå¡ï¼å¦ä¸æ¹é¢åæ¯ç±ä¸ªäººè®¢åè½¬åä¸ºä¼ä¸æä¾è®¢åã\<br />\r\næ¶è´¹å¸åºå è¿é¥±å<br />\r\néçç¾åº¦å¤åå®æåæãç¾å¢ç¹è¯åå¹¶ãé¥¿äºä¹å®æå¤è½®èèµï¼é¢åä¸ªäººç¨æ·çå¤åå¸åºä»½é¢å·²ç»å ä¹è¢«è¿å å®¶åæ½ã\<br />\r\nææ°æ®æ¾ç¤ºï¼2015å¹´ç¾å¢å¤åä»¥32.3%çå¸åºä»½é¢ä½å±ç¬¬ä¸ï¼é¥¿äºä¹ç´§éå¶åï¼ä»¥27.1%ååç¬¬äºï¼ç¾åº¦å¤ååå£ç¢å¤ååå«ä»\¥12.6%å\8.1%ä½å±ç¬¬ä¸åç¬¬åï¼å°å®¶ç¾é£ä¼å 5.8%ã\<br />\r\nå¦å¤ï¼æåæäººå£«æåºï¼ä»èµæ¹èæ¯æ¥çå¤åO2Oå·²ç»æä¸ºBATççä¸­é¤ï¼ä¸å¤ªå¯è½åºç°è¿ä¹å¤çç¬¬åæ¯åéã\<br />\r\n2014å¹´åï¼è¾è®¯æç¥æèµäºå¤§ä¼ç¹è¯ï¼ä¸è§å¶ä¸ºO2Oé¢åçæ ¸å¿å¸å±ä¹ä¸ã\2015å¹\´10æå¤§ä¼ç¹è¯åç¾å¢å®£å¸åå¹¶åçä¸ä¸ªæï¼é¿éæå®äºè¿\10äº¿åç¾å¢ç¹è¯çè¡æï¼éå2016å¹\´1æï¼è¾è®¯ååå¹¶åçå®ä½åæ³¨å¥äº\10äº¿ç¾åã\<br />\r\nå¦ä¸è¾¹ï¼ç¾åº¦å\¨2014å¹´å°±å¼å§ä½è°å¸å±O2Oï¼è¿ä»å¶å\¨2014å¹´åå¨èµæ¶è´­ç³¯ç±³å¯çª¥è§ä¸æãå¹¶å\¨2014å¹\´5æä¸çº¿äºç¾åº¦å¤åï¼\2015å¹\´7æå®æåæãå¨æèµç­ç¥ä¸ï¼ç¾åº¦å³å®æªæ¥ä¸å¹´æèµ200äº¿ç°éæ¯æç¾åº¦ç³¯ç±³ï¼æä¸ºäºèç½å·¨å¤´å¨O2Oä¸å¡ä¸æå¤§çåç¬æèµã\<br />\r\né¥¿äºä¹æ¹é¢ï¼ç¥æäººå£«æ©åæ¾åè¾è®¯ç§æè¯å®ï¼é¥¿äºä¹è·å¾é¿éå·´å·´12.5äº¿ç¾åçæèµæåï¼ä¸è¿ï¼äº¤ææç»è¾¾æå¯è½ä¼å¨æ¥èä»¥åãèåä¸ä¹åæä¼ é»ç§°ï¼é¥¿äºä¹å°å¹¶å¥å£ç¢ï¼éåè¢«é¥¿äºä¹å®æ¹è¯å®åªæ¯ä¸å¡ä¸è¾¾æåä½ãè¥é¥¿äºä¹æç»å å¥ï¼æå°è¡¥é½é¿éå¨å¤åä¸å¡ä¸çç­æ¿ã\<br />\r\nå¤åå·¨å¤´å ç Bç«¯ä¸å\¡<br />\r\nå½ä¸ªäººç¨æ·è¢«è¡¥è´´ååè´¹æè²çå·®ä¸å¤çæ¶åï¼å¤åå¹³å°å¼å§å¯»æ¾æ°çæºä¼ãä¸»è¦æ¹å¼æä¸¤ç§ï¼ä¸ç§æ¯æä¾ååå³æ¶ç©æµééãé£æä¾åºç­æå¡ï¼å¦ä¸ç§æ¯æ­å»ºé¢åä¼ä¸åæ·çç³»ç»ã\<br />\r\nææ°æ®æ¾ç¤ºï¼é¤é¥®ä¸å¸åºé£æéè´­è§æ¨¡è¾¾8000äº¿åäººæ°å¸ï¼ä¸äºèç½é¤é¥®å¤åäº¤æç\457äº¿åäººæ°å¸ï¼2015å¹´ï¼ç¸æ¯ï¼é£æéè´­å¸åºæ¾å¾ä¸å¯å¿½è§ãå¨è¿ä¸é¢åï¼é¤äºå·²æçç¾èãé¾åè¿æ ·çè¿è¥å¹³å°ä¹å¤ï¼é¥¿äºä¹ãç¾å¢å¤åç­å¤åå¹³å°ä¹å¼å§ååã\<br />\r\nå»å¹´10æï¼é¥¿äºä¹æ¨åºè¿æ¥åæ·çé£æä¾åºå¹³å°âæèâãè¿ä¸ªå¹³å°çä½ç¨æ¯ï¼éè¿å¤åå¹³å°ä¸å¯¹é¤åçå¤§æ°æ®ç§¯ç´¯ï¼ä¸ºä¸­å°åé¤åæä¾æ°é²é£æï¼æ¶åä»é¤åå°æèååï¼å°æ¸ éæ¹ååï¼åå°ç©æµæå¡åçæ´ä¸ªé¾æ¡ãé¤äºé£æä¾åºä¹å¤ï¼é¥¿äºä¹è¿å¨ä½è°è¯æ°´é¢ååæ·çå¾®åä»å¨ç½åºâèå·¢âï¼2016å¹´å°è¦çä¸»è¦çä¸äºçº¿åå¸ã\<br />\r\né¥¿äºä¹CIOä¿¡æ¯æ³¢è¡¨ç¤ºï¼é£æä»çäº§ç«¯ãæ¸ éãæµéç¯èãåéå°æåèµ°ä¸é¤æ¡çæ´ä¸ªæµç¨éå¸¸å¤æï¼ç¸å¯¹äºä¼ ç»å¤§åé¤åæ¥è¯´ï¼ä¸­å°åçé¤åææ´å¤çç¹ï¼æ¯å¦åç±»å¤ä½éå°ï¼æèå¹³å°å¯ä»¥å¸®å©è¿é¨ååå®¶ç®åä¸­é´æ¸ éï¼ä»èä¿è¿åå®¶æ´å ä¸æ³¨å¤åçç¨æ·ä½éªåèåã\<br />\r\nå¦ä¸è¾¹ï¼ç¾å¢çto Bä¸å¡å·²ç»æç¶ä¸çº¿ãæ®äºè§£ï¼ç¾å¢æä¸åä¸ºâå¿«é©´âçåå®¶åå°ç³»ç»å¯ä¸ºç¾å¢å¤ååå®¶æä¾è´¢å¡å¯¹è´¦ãååç®¡çç­æå¡ï¼å¶ä¸­âå¿«é©´è¿è´§âä¸ºç¾å¢å¤åå¹³å°åå®¶æä¾é£æãä¸æ¬¡æ§ç¨åãéæ°´é¥®æç­è¿è´§æå¡ã\<br />\r\nå¶å®ï¼ç¾å¢ç¹è¯å¨åå¹¶ä¹åå°±å¼å§å»¶ä¼¸èªå·±çBç«¯ä¸å¡ãå»å¹´åºç¾å¢ç¹è¯æ¨åºåä¼éç¨äºæå±ä¼ä¸ç¨æ·å¸åºï¼å¸®å©ä¼ä¸è¿è¡åå¡é¤é¥®å¨±ä¹æ¶è´¹çé¢ç®ç®¡æ§ãææ¬æ§å¶ï¼å®ç°è´¢å¡éæåç®ååå·¥æ¥éæµç¨ç­ãæåæè®¤ä¸ºï¼å¤åå¹³å°ä¹é´çæç«ä¹å°èå»¶è³Bç«¯ã\<br />\r\nåä¸å¬å¸è½¬æä¼ä¸å¸åº<br />\r\nCç«¯å¸åºç½ç­åçç«äºï¼ä¹è®©ä¸äºæ åäºç»§ç»­è·è¿è¡¥è´´ãå¹¶ä¸çå°ä¼ä¸å¸åºæ½åçå¤åå¹³å°å¼å§ä¸æ³¨äºBç«¯å¸åºã\<br />\r\n2016å¹\´2æï¼å¤åO2Oå¹³å°çæ´»åå¾å¨å¶å¾®ä¿¡å¬ä¼å·å®£å¸å¨æ°å®ç½æ­£å¼ä¸çº¿ï¼åæto Cçå¤åè®¢åå¥å£å³é­ï¼å¨åto Bï¼æç¥èç¦äºç­è·ç¦»å³æ¶ééãâä¾æç´è¥æ¨¡å¼ï¼æä¾ä¸ä¸ç­è·ç¦»å³æ¶ééæå¡ãæ¨å¨å¸®å©æ¬å°åæ·ãè¡ä¸ä¼ä¼´å®æO2Oæå¡çé­ç¯ãâ\<br />\r\nå¦å¤ä¸ä¸ªå¸åæ¡ä¾æ¯2011å¹´æç«çç¾é¤ç½ãåºè¯¥è¯´ï¼ç¾é¤ç½æ¯ææ©è¿å¥å¤åé¢åçå¬å¸ä¹ä¸ï¼\2012å¹´å¼å§åå±ä¸ªäººè®¢é¤ä¸å¡ï¼å½æ¶å°±å·²ç»å°è¯å¼å§æ¿æ¥é¨é¨ä¼ä¸çå®¢æ·ãå½æ¶ï¼å°å¤ä¸­å½ä¼ åªå¤§å­¦éè¿çä¸å®¶å¬å¸æåºéé¤æå¡çéæ±ï¼å®ä»¬å¸æä¸ºåå·¥æä¾å·¥ä½æ¥åé¤ï¼å´ä¸ç´æ¾ä¸å°æ»¡æçéé¤å¬å¸ï¼è¿å®¶å¬å¸ä»£è¡¨äºå¤åå¸åºå¦ä¸é¨åå°æ²¡æè¢«æ»¡è¶³çéæ±ï¼äºæ¯æ¯é¤å¢éå¼å§è¿è¡æ¸ç´¢åå°è¯ã\<br />\r\nåå ä¸å½¼æ¶çå¤åå¸åºè¿å¥å°è¶ççè¡¥è´´å¤§æï¼è½ç¶Cç«¯å¸åºç¹ç¹æ¯é«é¢ååéï¼ä½ç¨æ·å¯¹äºåå¤§å¤åå¹³å°çæåº¦åºæ¬ä¸æ¯âåªå®¶ä¾¿å®ç¨åªå®¶âï¼ç¨æ·ç²æ§å¾é¾å½¢æãäºæ¯ç¾é¤ç½å°ä¼ä¸ä½ä¸ºèªå·±çç®æ åä¼ã\<br />\r\nç¾é¤ç½æ©ææèµèçå¸å¨æ¥åè¾è®¯ç§æéè®¿æ¶æ¾è¡¨ç¤ºï¼ç®åå¨ä¸­å½to Bçé¡¹ç®ä¸æ¯å¾å¤ãâå½åçæèµæºæå¾å¤åæ¬¢è·é£ï¼ä¾å¦ä¸æ¦åºç°O2Oç­å°±ä¼èæ¥èè³ãèä¸äºto Bçé¡¹ç®ä¸å¡å½¢æè¿ä¸éï¼ä½å ä¸ºå¸åºä¸æçï¼å¯¼è´å¾å¤äººä¸æ¿ææãâ\<br />\r\nä¸è¿å¨æªæ¥to Bçé¡¹ç®ä¼æ¢æ¢å¤èµ·æ¥ï¼ä¾å¦å¨ç¾å½to Bçé¡¹ç®å·²ç»å å°ä¸åä¹äºçæ¯ä¾ãèè¿ç§ç°è±¡å¨O2Oè¡ä¸å·²ç»ææä½ç°ã\<br />\r\nåæè®¤ä¸ºï¼ä¼ä¸æ¶è´¹å¸åºçæ³è±¡ç©ºé´æ­£å¨èå¿å¾åï¼æªæ¥ææå¯è½åºç°åæ°ç¾å¤§é£æ ·çç¾äº¿ç¾åå¸å¼è§æ¨¡çå¬å¸ãå ä¸ºå¨åä¸å¤§æ½®ä¸ï¼è¿æ ·çå¹³å°ä¹æ¯ææé¢åä¼ä¸ç¨æ·çäº§ååæå¡çéè¦å¥å£ï¼è¿æè®¸æ¯ç§»å¨äºèç½çä¸ä¸ä¸ªä¸äº¿çº§å«ççº¢å©å¸åºã\<br />','0','/Uploads/201603/56f49ef335468.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=64','37','1458872057','1458872066','','0');
INSERT INTO `yourphp_article` VALUES ('65','3','2','hello','ææºappå¼åå³é®ç¹ââç¨æ·ä½éªåº¦','','','','','å¨ç§»å¨äºèç½çæ¶åï¼å¦ä½æè½å¼åä¸æ¬¾å¥½çAPPå¢ï¼ä¸å¯å¦è®¤çæ¯ï¼ä»»ä½ä¸æ¬¾ç¨åºçå¼åé½æ¯ä»¥ç¨æ·ä¸ºä¸­å¿çï¼ç¨æ·ä½éªå¥½äºï¼èªç¶å°±æå°±äºä¸æ¬¾å¥½çAPPï¼è¯´æç½äºï¼å°±æ¯ç¨æ·ä½éªåº¦ãå·å¤å¥½çAPPæä»¥ä¸å ä¸ªæ¡ä»¶ï¼ä¸ãAPPå\³...','<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	å¨ç§»å¨äºèç½çæ¶åï¼å¦ä½æè½å¼åä¸æ¬¾å¥½ç\<a href=\"http://www.lanbaoapp.com/\" target=\"_blank\"><span style=\"color:#000000;\"><u>APP</u></span></a>å¢ï¼ä¸å¯å¦è®¤çæ¯ï¼ä»»ä½ä¸æ¬¾ç¨åºçå¼åé½æ¯ä»¥ç¨æ·ä¸ºä¸­å¿çï¼ç¨æ·ä½éªå¥½äºï¼èªç¶å°±æå°±äºä¸æ¬¾å¥½çAPPï¼è¯´æç½äºï¼å°±æ¯ç¨æ·ä½éªåº¦ã\\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	å·å¤å¥½çAPPæä»¥ä¸å ä¸ªæ¡ä»¶ï¼\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	ä¸ãAPPå³æ³¨ç¨æ·çæä½ä¹ æ¯ï¼APPå³æ³¨çä¸åªæ¯çé¢ä¸çç¾è§è®¾è®¡ï¼éç¹è¿æ¯ç¨æ·çæä½ä¹ æ¯ãä¾å¦ï¼ä¸äºå¤§å¤æ°ç¨æ·æ¿ææºæ¯åæï¼è¿æ¯åææä½ï¼åææ¯å³æè¿æ¯å·¦æï¼è¿äºæä½é½è½é¿åç¨æ·æææä½æ¶å¨APPä¸åºç°è§¦æ¸ç²ç¹ï¼\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	äºãAPPçä½¿ç¨ç¯å¢ï¼æ¯æ¬¾APPçç¨æ·å®ä½é½ä¸ä¸æ ·ï¼ç¨æ·å®ä½å¾å¾å³å®äºç¨æ·çç¯å¢ãæ¯å¦ï¼è¿æ¬¾APPçä½¿ç¨æ¶é´ãå°ç¹ãç¯å¢ï¼å¦æä½¿ç¨è¿æ¬¾APPæ¯å¨æ¯è¾åæçå°æ¹ï¼é£ä¹APPä¸æ¯å¦éè¦å®è£å®¢æè¿äºå·¥å·å¢ç­ï¼è¯¸å¤é®é¢ã\\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	ä¸ãAPPåè½è®¾è®¡è¦åæ¸ä¸»æ¬¡ï¼å\¨<a href=\"http://www.lanbaoapp.com/\" target=\"_blank\"><span style=\"color:#000000;\">å¼å\</span></a><a href=\"http://www.lanbaoapp.com/\" target=\"_blank\"><span style=\"color:#000000;\">APP</span></a>å¯ä»¥éç¨ç®¡çå­¦çäºå«å®å¾ï¼å°ä¸»æµç¨æ·æéè¦æå¸¸ä½¿ç¨çåè½ç´æ¥å±ç¤ºï¼å¶å®å¯ä»¥éå½éèã\\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	åãå°½éåå°APPçè®¿é®çº§å«ï¼å¨ç§»å¨ç«¯ä¸ï¼å¦ææå¤ªå¤çè®¿é®çº§å«ï¼ä¼è®©ç¨æ·å¤±å»èå¿ï¼èæç»æ¾å¼ä½¿ç¨ã\\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:0pt;color:#666666;font-family:\'Microsoft YaHei\';font-size:14px;text-indent:21pt;text-align:justify;background-color:#FFFFFF;\">\r\n	å¾å¤çå¬å¸é½ä¼é®å°æä»¬ï¼ææ ·å¼åä¸æ¬¾å¥½çAPPï¼å¶å®åªæä¸æ­ä»ç¨æ·çå®è·µä¸­ï¼ä»ç¨æ·çä¸è¨ä¸è¡å½ä¸­å»èèç¨æ·çä½éªï¼æè½è®¾è®¡åºç¨æ·ä½éªè¯å¥½çAPPã\\r\n</p>','0','/Uploads/201603/56f4addae350d.png','0','1','1','','0','0','/index.php?m=Article&a=show&id=65','37','1458875880','1458875900','','0');
INSERT INTO `yourphp_article` VALUES ('66','10','2','hello','ç¤¾åºO2Oåä¸çâä¸å¤§ææ´¾âãâä¹å¤§æµæ´¾â\','','','èåç½\','','ç¤¾åºO2Oåä¸çâä¸å¤§ææ´¾âãâä¹å¤§æµæ´¾â\','<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp;&nbsp;ç¤¾åºO2Oè½ç¶æºä¼å¾å¤ï¼ä½æ³åå¾æåå¯æ²¡çèµ·æ¥é£ä¹å®¹æï¼ä¸æ¯å¨æäºæ¹é¢æäºèµæºãæäºæ³æ³ãæäºææ¯å°±å¯ä»¥åçï¼ç¤¾åºå¸åºç¯å¢å¤æè¶ä¹æ³è±¡ï¼èä¸ç¨æ·éæ±å¤æ ·ï¼åç°é¾åº¦å¤§ï¼å¨å¯¹ç¤¾åºäºè§£ä¸åååæ²¡çæ¸åå±æè·¯ä¹åè´¸ç¶è¸å¥ç¤¾åºå¸åºçå¬å¸ï¼å¤æ°çé½å·²æåçç®ç°äºã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããç¤¾åºO2Oçå¸åºåå¥ç¹éå¸¸å¤ï¼åä¸èµ·ç¹ä¹æå¾å¤ï¼å¤§ä½ä¸å¯ä»¥ç¨âä¸æä¹æµâæ¥æ¦æ¬ãæ­¤ç¯æç« æ»ç»ä¸ä¸ç®åç¤¾åºå¸åºçåä¸æåµï¼å¨ç¤¾åºå¸åºæåä¸æ³æ³æèæ­£å¨ç¤¾åºå¸åºè¿·è«çäººå¯ä»¥å¯¹å·å¥åº§ï¼é¡ºå¸¦æèä¸ä¸å°åºè¿è¦ä¸è¦ç»§ç»­å¨ç¤¾åºå¸åºåæ´å¤çå°è¯ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>ç¤¾åºO2Oä¸å¤§âææ´¾â\</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä»è¡ä¸çè§åº¦çè§£ï¼ç¤¾åºO2Oå¯å¤§ä½åä¸ºä¸å¤§âææ´¾âï¼ITäºèç½âææ´¾âãæ¿äº§ç©ä¸âææ´¾âãé¶è¡å®¶çµâææ´¾âãé¡¾åæä¹ï¼ITäºèç½âææ´¾âï¼ä¸»è¦æ¯æä»ITæäºèç½è¡ä¸åå¥å°ç¤¾åºå¸åºï¼æ¿äº§ç©ä¸âææ´¾âï¼ä¹å°±æ¯å°äº§ååç©ä¸å¬å¸ä»äºç¤¾åºO2Oæå¡ï¼èé¶è¡å®¶çµâææ´¾âï¼ä»£æä¼ ç»è¡ä¸æ¢ç´¢ç¤¾åºO2Oå¸åºï¼å ä¸ºç®åæ¥çå¨ä¼ ç»è¡ä¸é¢åï¼é¶è¡åå®¶çµååå¯¹ç¤¾åºå¸åºçå´è¶£æ´æµåï¼å¶ä»è¡ä¸ä¸è¬è¬ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæå³è¿ä¸å¤§âææ´¾âä»äºç¤¾åºè¡ä¸å¸åºæåµï¼ä¸æ¯æ¬æçéç¹åå®¹ï¼æ¬æä¸»è¦æ¯ä¸ºé£äºå¨ç¤¾åºå¸åºææ³æ³å¹¶æç®åä¸çäººæä¾çåå¥åèï¼æä»¥ä¸»è¦åå®¹æ¯åé¢âä¹å¤§æµæ´¾âçåä¸èµ·ç¹ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>ææ¯æµæ´¾ï¼è½¯ä»¶ææ¯ãç¡¬ä»¶ææ\¯</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããææ¯æµæ´¾æ¯æä¸è¬æäºææ¯çå¢éæç®å¨ç¤¾åºå¸åºåç¹ä»ä¹ï¼èææ¯ä¸è¬åä¸ºè½¯ä»¶ææ¯åç¡¬ä»¶ææ¯ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä»¥è½¯ä»¶ææ¯ä¸ºèµ·ç¹çåä¸å¢éï¼æ©æçç­ç¥æ¯å¼åä¸æ¬¾ç¤¾åºAPPç¶åé¢åç¤¾åºå¸åºåæ¨å¹¿ï¼ç®æ æ¯åæç¤¾åºO2Oå¹³å°æèåç»ç©ä¸å¬å¸ä½¿ç¨ï¼å¦ä»æè¿ç§æ³æ³çå¢éå·²ç»éå¸¸å°äºï¼å¸åºå·²ç»è¯å®çº¯ç²¹çç¤¾åºAPPè½¯ä»¶æ¨¡å¼99.9%çé½ä¸ä¼æåï¼ç¨æ·ä¸ä¼ç¨ï¼ç©ä¸æ´ä¸ä¼ä¹°ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããç°å¨ï¼å¾å¤æ­¤åå¨å¹³å°æç»´ä¸åè¿æ«æçè½¯ä»¶ææ¯å¢éå·²ç»è½¬åæ¹åï¼å¼å§ä½ä¸ºç¤¾åºO2Oçææ¯è¾åºæ¹ï¼åé£äºéè¦è½¯ä»¶ç åè½åçå¬å¸åºå®ææ¯æèæ¯ææ¯å¥è¡ï¼è¿ç§å½¢å¼è¿ç¨å¾®å¯ä»¥ç«è¶³äºç¤¾åºå¸åºï¼ä¸è¿è¿ç§å½¢å¼éå¸¸ä¾èµå¸åºè°å¤è½åï¼å½ç¶å¨å¦ä»ç¤¾åºO2Oå¤§è¶å¿ä¸ï¼è¿ç§è½¯ä»¶ææ¯è¾åºæ¨¡å¼ççå­ç¶æè¿ä¸éã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä»¥ç¡¬ä»¶ææ¯ä¸ºèµ·ç¹çåä¸å¢éï¼ä¸»è¦åä¸¤ä¸ªæ¹åï¼ä¸ä¸ªæ¯æºæ§ç¤¾åºæ¹åï¼ä¸ä¸ªæ¯æºè½å®¶å±æ¹åï¼å¶ä¸­ä»¥æºæ§ç¤¾åºæ¹åä¸ºä¸»ãå¨æºæ§ç¤¾åºæ¹åéå¸¸ä»¥é¨ç¦ãåè½¦ä¸ºä¸»ï¼å¦å¤å¶æçæ§å®é²ï¼å½ç¶æä¾æ´ä¸ªæºæ§ç¤¾å\º+æºè½å®¶å±è§£å³æ¹æ¡çä¹æã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããèµ·åï¼æºæ§ç¤¾åºçææ¯ååä¸å¢éä¹æ³æèªå·±çç¡¬ä»¶ææ¯åç»ç©ä¸ï¼ä½ç©ä¸å¹¶ä¸ä¹°è´¦ãåæ¥å¸åºé£åçªåï¼ä¸ºäºè½è¿å¥ç¤¾åºå¸åºï¼æäºç¡¬ä»¶ææ¯æ§å¢éä¸æç»ç©ä¸é«é¢çå¥åºè´¹ï¼ä»¥æ±è½è·å¾é¨åæºæ§ç¤¾åºçè¿è¥æãç°å¨æ¥çï¼æ è®ºç¡¬ä»¶ææ¯è¾å¥åé±ï¼è¿æ¯ç ¸å¥èµéè¿ç¤¾åºï¼ææé½ä¸å¤ªææ¾ãä¹åå¨æºæ§ç¤¾åºæ¹åæè¿ç»éªæè®­çå¢éå¼å§å°è¯ä¸ä¸æ¸¸çå¼ååç´æ¥åä½ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¶å®ï¼å¾å¤æ¶åè½¯ä»¶ææ¯åç¡¬ä»¶ææ¯æ¯ä¸ä½çï¼æäºææ¯æµæ´¾çç¤¾åºåä¸é¡¹ç®æ¢æ¶åå°è½¯ä»¶ç¯å¢ä¹æç¡¬ä»¶é¨åï¼ä½è¿é½ä¸éè¦ï¼éè¦çæ¯åªæææ¯å¹¶ä¸è½å¨ç¤¾åºå¸åºè·å¾æåï¼é¤éæå¶ä»ä»»ä½å¬å¸é½æ²¡æçæ ¸å¿ææ¯ï¼ä¸ç¶ææ¯æµæ´¾å¨ç¤¾åºå¸åºåä¸å¹¶ä¸å ä¼å¿ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>èµæºæµæ´¾ï¼ç©ä¸èµæºãç©åèµæºãäººèèµæºãæ¿åºèµæºãåä½èµæº\</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããèµæºæµæ´¾çæ³å¨ç¤¾åºå¸åºåä¸çæ¯è¾æææï¼å ä¸ºèµæºæµæ´¾çç»å¤§é¨åé½æ¯å¨ç¤¾åºé¨å¤æ¾æºä¼ï¼ççå¦ä½å©ç¨æä¸­çèµæºåç°ãç»å¸¸ä¼æäººè·æè¯´ï¼ä»æä¸ææææèµæºï¼æ³å¨ç¤¾åºååç¹ä»ä¹ï¼é®æè¯¥æä¹åï¼æ³ä»¥æä¸èµæºä¸ºèµ·ç¹å¨ç¤¾åºå¸åºæ·éçæ¯è¾å°´å°¬ï¼å ä¸ºæè°çâèµæºâå¤æ°æåµä¸é½æ¯ä¸ç§ä¸å¯æ§çâå³ç³»âã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä¾å¦æåæææç©ä¸å³ç³»å¥½ï¼ä»ä»¬çèµæºæå¯ä»¥å©ç¨ï¼æå¨æ¿åºä¸»ç®¡é¨é¨æè®¤è¯äººï¼ä»ä»¬å»ºè®®æå¨ç¤¾åºåç¹ä»ä¹ï¼æè®¤è¯å¾å¤èæ¿æ³æèµç¤¾åºé¡¹ç®ï¼æä»¥æå¨æ¾åå¥æ¹åï¼ææä¸æä¸æ¹è´§æ³éè¿ç¤¾åºå¸åºçå½¢å¼å»åï¼æè·åªå®¶å¬å¸æåä½ï¼ä»ä»¬æ³è¿ç¤¾åºå¸åºï¼ææ³è·çä¸èµ·åâ¦â¦å¦ä»ï¼å¨ç¤¾åºå¸åºï¼æå¤ªå¤æè¿ç±»æ³æ³çäººäºï¼ä½è¯·æªå¿èªé®ä¸ä¸ï¼è¿äºæè°çâèµæºå³ç³»âç©¶ç«ç¢ä¸ç¢é ï¼å¦æç¢ä¸å¯ç ´é£å¯ä»¥è¿ä¸æ­¥åå¸åºå°è¯ï¼å¦æä»ä»æ¯ä¸ç§âå£å¤´åå®âå¼çå³ç³»ï¼è¿è¦æéææ©ï¼ä»¥åå°æ¶åé¡¹ç®å¼å§äºï¼ç»æèµæºæ¹ä¸éåäºï¼é£å°±å°´å°¬äºã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæéæç¤¾åºç±»èµæºæ¯å¥½äºï¼ä½ä¸è½ä»å­æè°çèµæºå»åä¸ï¼æèµæºå©ç¨å¨é¡¹ç®ä¸­å¯ä»¥äºåååï¼å¦æèªå·±æ²¡æè½ååç¬ç«çç¤¾åºé¡¹ç®ï¼é£å°±å¤ççææ²¡æå¯ä»¥äºæ äºå©çåä½é¡¹ç®ï¼èµæºå±äº«ååæéãäºå®è¯æï¼ä»å­èµæºåä¸å¾å°ææåçã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>è¥éæµæ´¾ï¼ç¤¾åºå¹¿åãç¤¾åºå°æ¨ãåå¸åªä½\</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããè¥éæµæ´¾çåä¸é¡¹ç®ä¸è¬é½è¿æ¯ç«é è°±ï¼å ä¸ºå¤æ°æ­¤ç±»é¡¹ç®é½å·²å¨ç¤¾åºæä¸å®çå¹¿åä½èµæºï¼æä»¥æ è®ºçè¿å¥ç¤¾åºè¿æ¯å¹¿åæåé½æ¯è¾å®¹æï¼æ¾å¨ç¤¾åºO2Oå¸åºçå¤§æ¡æ¶ä¹åï¼è¿ç±»é¡¹ç®å¤äºäºèç½ççµæ´»æ§å¹¶è½æé«è¿è¥æçã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããç¤¾åºåçå¹¿åä½å¶å®æå¾å¤ï¼å¤§é¨ãéé¸ãé¨ç¦ãå¹¿åºãåè½¦åºãå¿«éæãæ¥¼ä½ãæ¥¼é¡¶ç­é½å¯ä»¥æ¾ç½®å¹¿åä½ï¼å±ç¤ºå½¢å¼æLCDãLEDãæ»å¨ãéæãå®ç©ç­ãè¿ç±»ä¼ ç»çç¤¾åºå¹¿åå¬å¸å¨ç¤¾åºO2Oå¤§ç¯å¢ä¹ä¸çäºæ¬¡åä¸çæºä¼éå¸¸å¤§ï¼ç®åå·²æå¾å¤ä¼ ç»ç¤¾åºåªä½ååç¤¾åºO2Oå¸åºé æ¢ãä¸è¿ï¼å¯¹äºé£äºæ­¤åæ²¡æç»è¥è¿ç¤¾åºåªä½ä¸å¡çåä¸èèè¨ï¼è¿åå¸åºå°±æ¯è¾é¾ä»¥åå¥äºï¼ä¸æ¥ä¼ ç»ç¤¾åºå¹¿åèµæºå·²ç»è¢«æ¢å å·®ä¸å¤äºï¼äºæ¥å¹¿åæ³è¿å¥ç¤¾åºå¾éº»ç¦çï¼æçå°åºä¸å§ä¼å¾é¾æï¼æäºå°åºçè¡éä¹æè¦æ±ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä¸è¿ï¼ç°å¨çå¹´è½»äººå°±æ¯ç±å¨èå­ï¼æ¢ç¶ä¼ ç»çç¤¾åºå¹¿åå½¢å¼å¾é¾åï¼é£å°±æ¢ä¸ç§å½¢å¼ä¸åä¼ ç»å¹¿åæ¹åå°æ¨ï¼å°¤å¶å¨ç¤¾åºO2Oå¤§ç¯å¢ä¹ä¸ï¼æå¤ªå¤çç¤¾åºç±»åä¸å¬å¸æ¿æè¿å¥å°ç¤¾åºåè¿è¡å°æ¨æ´»å¨äºãç¤¾åºåçå°æ¨è½ç¶çèµ·æ¥æä¸äºè§æ¨¡ä¹åä¸æç¾äº¿å¸å¼çå¤§å¬å¸ï¼ä½å¥½å¨è¿åå°ä¸å¡åå¥½äºæé±èµï¼å¹¶ä¸æ¯ææäººé½æ³ä¸å¸ï¼ç¤¾åºå¸åºæå¤§çç¹ç¹å°±æ¯æå¾å¤èµå°é±çæºä¼ï¼å¦ææè½åå¤çå¥½åç©ä¸çå³ç³»ï¼ååç¤¾åºå°æ¨æ´»å¨ä¹æ¯ä¸éçæ¹åã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¨ç¤¾åºè¥éæ¹åä¸è¿æä¸ç±»æ¯è¾ç¹æ®çå¬å¸ï¼é£å°±æ¯åå¸åªä½ãå¨æ´ä¸ªåªä½åå±è¶å¿ä¸ï¼åå¸åªä½çè¯è¯­æåç°åå¼±çæå¿ï¼èåå¸åªä½éè¦æ¿æå®£ä¼ èè½ï¼ä»ä»¬æä¹å¡è¿å¥å°åä¸ªç¤¾åºååå¸å®£ä¼ åæåæ´»å¨å»ºè®¾ãæ è®ºä»åªä¸ªè§åº¦åå¸åªä½é½éè¦å¯»æ±è½¬åçæºä¼ï¼èç¤¾åºO2Oçåºç°å°±æ¯ä¸æ¬¡æºä¼ï¼èä¸ç¡®å®å·²ç»æä¸å°åªä½å¨åè¿ä¸åäºï¼æ®ææç¥ï¼åäº¬æãé»é¾æ±ä¹æã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>å¸åºæµæ´¾ï¼ä¸é¨æå¡ãå®½å¸¦æ¥å¥ãçµåé¶å\®</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¸åºæµæ´¾çç¹ç¹æ¯å¨æä¸åç»åå¸åºçåºç¡ä¸å¡ç¨³å®ä¹ååå¨é¢è½å®å°æ´ä¸ªç¤¾åºåºæ¯ä¹ä¸­ï¼ä¾å¦å¾å¤ä¸é¨æå¡çé¡¹ç®ï¼ä¼ ç»çå®½å¸¦æ¥å¥å¬å¸ï¼ä»¥åçµååé¶å®ç±»å¬å¸é½å±äºè¿ç§é£æ ¼ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããéæ¾çæ¯å»å¹´æ­»æäºéå¸¸å¤çä¸é¨O2Oå¬å¸ï¼æ´ä¸ªç¤¾åºçæ´»æå¡æ¶è´¹å¸åºè¿ä¸æçä¹åï¼ä¸é¨O2Oå¬å¸ä¸¥éçä¾å¤§äºæ±ï¼èä¸å½¼æ­¤ä¹é´åè´¨åçç§é±ç«äºä¸æ­»ä¼¤ä¸çæå¥æªãèé£äºä¾¥å¹¸æ´»è¿äºä¸é¨O2Oæ·æ±°èµçå¬å¸å¦ä»é½å¨éç»­çåæ´ä¸ªç¤¾åºO2Oå¸åºæ©å¼ ï¼ä¾å¦åæ´è¡£çæå¬å¸ï¼åçº¯æ´è¡£O2Oæ¦å¿µå·²ç»ä¸è¶³ä»¥æ¯æå¬å¸ç»§ç»­èµ°ä¸å»ï¼æä»¥æäºä¸ä¸ªç¤¾åºä¼åæå¡é¡¹ç®ï¼å¯ææå¹¶ä¸ææ¾ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä¹åä¹éç»­å¬å°ä¸å°äººæç®ä»å®½å¸¦æ¥å¥æ¹ååç¤¾åºé¡¹ç®ï¼ä¾å¦æä¾åè´¹å®½å¸¦æå¬å±WiFiï¼ç¨æ·å¯ä»¥ä¸è±é±ä¸ç½ï¼ä½å¿é¡»å¾ç¨å®½å¸¦æ¹çç½ç»å¹³å°ï¼å¦æ­¤ä¸æ¥ç½ç»å¹³å°å°±è½æä¸ºç¤¾åºO2Oå¹³å°ãè½ç¶å¤§ä½é»è¾ä¸æ¯éçï¼ä½å®éè¿è¥å±é¢å®å¨ä¸å¯è¡ï¼é¦åæä¹±äºè¿è¥åçå®½å¸¦ä»·æ ¼ä½ç³»æ¯è¯å®ä¸è¡çï¼å¶æ¬¡æ¾å¼æ¬æ¥èµé±çä¸å¡å»ç»ä¸ªå¤§å¼¯èµé±ï¼è¿ç§æ¹å¼å¹¶ä¸å¯åï¼å ä¸ºç¤¾åºå¸åºç©¶ç«æå¤å¤§çè¥æ¶ç©ºé´å°ä¸æ¸æ¥ï¼å¦æ­¤æ¿è¿èªåºæ­¦åçå½¢å¼å®å¨é²è½ï¼æ­¤å¤é£ç§æ¨¡å¼æå¤§çç¼ºç¹å¨äºç¨æ·ä½éªå¤ªå·®ï¼äº¤äºåéãåç»­é®é¢è¿å¤ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããçµåé¶å®è¿åå¯è½ä¸ç¨è¯´å¤ªå¤ï¼å¾å¤ä¾¿å©åºé½å¨åè¿æ¹é¢çå°è¯ï¼åæ¬äº¬ä¸ä»¥åä¸äºå¶ä»çå¤åãçé²ç­çµåãä¸ä¼ ç»çç¤¾åºä¾¿å©åºç¸æ¯ï¼ç¤¾åºçµåæ¯ä¸ç§æ°å½¢å¼é«æççé¶å®è¾åºæ¹å¼ï¼èä¸ä¼ ç»çµåç¸æ¯ï¼ç¤¾åºçµåçç¨æ·éä¸­æ§ç¹æ§æ´æä¼å¿ï¼å¤åãçé²ç­é½å¯¹åºååéå¯éç¨åº¦æè¦æ±ï¼æä»¥ç¤¾åºçµåå¯ä»¥çè§£ä¸ºå¦ä¸ç§ç»´åº¦ççµåæ¸ éã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>ååæµæ´¾ï¼äºèç½å¬å¸ãç©ä¸å¬å¸ãæ¿äº§å¬å¸ãçµå¨å¬å¸ãé¶è¡\</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããè¶æ¥è¶å¤çå¤§å¬å¸é½çå°äºç¤¾åºO2Oçæ½åï¼å¹¶ä¸çº·çº·å å¥å¶ä¸­ãåæ¬é¿éãè¾è®¯ãäº¬ä¸ã\58ãä¸ç§ãé¾æ¹ãä¿å©ãç»¿å°ãé¿åãæµ·å°ãé¿è¹ãå·¥è¡ãå»ºè¡ãä¸­è¡ãæ°çç­ç­è¯¸å¤å·¨å¤´çº§å¬å¸ï¼ä½è¿äºå¬å¸åç¤¾åºæä¸ä¸ªå±åç¹ï¼é½æ¯ååæµæ´¾ï¼ä¹å°±æ¯åé¨çå­é¡¹ç®ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããååæµæ´¾çå¥½å¤å¨äºå¬å¸çä½éå¤§ãèµæºå¤ãèµéè¶³ãåçå¼ºï¼åå¤å¨äºæåèï¼é¡¹ç®å¢éè¯è¯­æä¸è¶³ï¼å½ç¶å¦æå¬å¸é«å±æå¶éè§ç¤¾åºå¸åºï¼è¿äºå¤§å¬å¸çç¤¾åºé¡¹ç®ä¹é½è¿æä¸éçåå±ç©ºé´ï¼ä¾å¦äº¬ä¸ãä¸ç§ãé¾æ¹ãä¿å©ãæµ·å°ç­é½ç»ç¤¾åºé¡¹ç®æå¤§çéå¢æ¯æã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããè¿äºå¤§å¬å¸çååæµæ´¾æ¨å¨çæ´ä¸ªç¤¾åºO2Oåååå±ï¼å¸¦å¨äºèè®ºåªä½å¯¹ç¤¾åºå¸åºçå³æ³¨åº¦ï¼ä½ååæµæ´¾åçæ¯è¾çªåºçä¹å¾å°ï¼äº¬ä¸å°å®¶ã\58å°å®¶è¿ç®ä¸éçãæ¥ä¸æ¥ååæµæ´¾çå¸åºä½ç¨åå°ä¼ç»§ç»­å å¼ºï¼èæ´ä¸ªç¤¾åºO2Oå¸åºä¹éè¦è¿å¸®å·¨å¤´ä»¬æ¥å å¤§æå¥ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>æç¥æµæ´¾ï¼å¥é©»ç¤¾åºãå é¢ç¤¾åºãå¼å¹¶ç©ä¸ãåä½åè®\®</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæç¥æµæ´¾çåæ³ç¸å¯¹æ¯è¾å½ªæï¼å¤æ°æ¯é«ä¸¾é«æç§é±åè§æ¨¡çå¤§å¬å¸ï¼ä¾å¦é¡ºä¸°çå¿å®¢åä¸°å·¢ãä¸æ³°çµå­çééæãæµ·å°çæ¥æ¥é¡ºä¹å®¶ç­ï¼æç¥æµæ´¾å°±æ¯åç§é±æ¢å°çç¶ååæ¢æ¢æ³åæ³çå©ï¼ä¸è¿ï¼ç°å¨æ¥çè¿ç§ç§é±æ¨¡å¼å¹¶æ²¡æäº§çé¢æææï¼åèé·å¥äºç§é±çæ åºæ´ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããé¡ºä¸°å¿å®¢æä¸ºç¤¾åºå¸åºå¸åçå¤±è´¥æ¡ä¾ï¼ééæçèªææä¹é·å¥è¢«å¨ç§é±çå°´å°¬å¢å°ï¼åæ¶é¡ºä¸°åæµ·å°ç¸ç»§å ç èªææä¸å¡è®©è¿ä¸å¸åºé·å¥æ æ³é¢æµçæ¨çç«äºå½ä¸­ãèªæè´§çåæ³å°±æ¯è¿å¥ç¤¾åºï¼èå¿å®¢é¨åºçç©æ³æ¯æ³åå é¢ç¤¾åºï¼è¿ä¸¤ç§è¿ç¤¾åºçæ¹å¼åå¼æ¶è¢«ä¼å¤ç¤¾åºO2Oçåä¸èè®¤ä¸ºæ¯ç¼æ¥äºï¼ä½å¦ä»ä¼äººéæï¼åæ¥æ¥çä¸æ¯ç¼ï¼åªæ¯åå£«å¥åã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¼å¹¶ç©ä¸çå½¢å¼éå¸¸æ¯ç©ä¸å¬å¸çä½é£ï¼ä¸äºä¸­å¤§åç©ä¸å¨åå¹¶å¶ä»çä¸­å°ç©ä¸ï¼å¹¶é»ä¸ä½å£°çä½è°å°è¯åå¹¶æ©å¼ çå¯è¡æ§ï¼å¦ä»ä¸­å°ç©ä¸å¬å¸çåºå®æ¥ä»·å·²ç»è¶æ¥è¶é«äºãæ­¤å¤ï¼è¿æäºç©ä¸å¬å¸å¨å°è¯èçæ§è´¨çåä½ï¼ä¸è¿âèçâå¹¶ä¸æ¯å¯æ§çåä½å³ç³»ï¼åå®¶ç©ä¸é½åæé¬¼èã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæ­¤åï¼å¨ç¤¾åºO2Oæ©æåå±é¶æ®µï¼æä¸å°åä¸å¬å¸å°å¤è·ç©ä¸ç­¾åä½åè®®ï¼ç¶åå·ç§°è¦çäºå¤å°ä¸ªå°åºï¼ä¸è¿è¿ç§ææºçæ¹å¼ç°å¨å·²ç»è¢«æ·æ±°ï¼ä¸æ¥è¿ç§å½¢å¼ä¸»è¦æ¯ä¸ºèèµçåè£ï¼äºæ¥æ¯ä¸ºåçå®£ä¼ ï¼ä½ç°å¨æèµäººãåªä½é½ä¸å»ï¼ç°å¨å¤§å®¶ççé½æ¯é¡¹ç®æ¬èº«ï¼èä¸åçæè°çå°åºè¦çéã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>åé±æµæ´¾ï¼åæèµäººçé±ãåå çåçé±ãåæ¶è´¹èçé\±</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããä¸äºèç½ç¸å³çåä¸é¡¹ç®åä¸äºæäººæ³åæèµäººçé±ï¼è°è®©äºèç½æ¯æé³è¡ä¸ï¼èä¸æ½åé¾ä»¥ä¼°éå¢ï¼æä¸ä¸ªå¥½æäºèªç¶ä¼ææèµäººæ¿æç¸ä¿¡ï¼åä¸¤å¹´ç¤¾åºO2Oå¤§ç«çæ¶åï¼ä¸å°åä¸é¡¹ç®é½æ¿å°äºé±ï¼ä½å¦ä»åºæ¬çè¯¥å³çå³ï¼è¯¥è½¬åçè½¬åäºãä»å¤©çç¤¾åºå¸åºæèµç¯å¢å·²ç»æçäºï¼èµæ¬å¸åºä¸åç¸ä¿¡æ¦å¿µï¼èæ¯çå®éçé¡¹ç®ï¼æ­¤åé£äºä¸ä½çå¤©ä½¿æèµäººåè¿äºä¹åä¹åå¾ç²¾æäºã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæèµäººä¸åºé±ï¼èªèº«åä¸çå©ï¼é£ç¤¾åºç±»é¡¹ç®è¯¥å¦ä½çå­ï¼æä»£çåï¼ä»£çåä¹æ¯æäºç¤¾åºé¡¹ç®çè¥æ¶æ¹å¼ä¹ä¸ï¼èä¸æäºé¡¹ç®ç¹å«å®¹æå¸å¼ä»£çåï¼ä¾å¦æç¤¾åºä¾¿å©åºé¡¹ç®ï¼å çè´¹ä¸è²ï¼ä½å åè£çå¥½ï¼æåæç»©ä¸éï¼ä»é¡¹ç®çè¥æ¶æ¥æºæ¥çï¼è¿ç§å¥¶è¶åºå¼çæåæ¨¡å¼ï¼ä»å çåæä¸­èµé±è¿æ¯æ¯è¾å®¹æçï¼é¤äºèµå çè´¹å¤ï¼è¿åé¿æçäº§åä¾åºé¾ä¹å¯è·å¾è¥æ¶ãä¸è¿ï¼è¿ç§é¡¹ç®æ¬èº«ç©¶ç«æå¤å¤§çæ½åè¿ä¸å¥½è¯´ï¼ä»éè¿ä¸æ­¥è§å¯ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæäºé¡¹ç®åæèµäººçé±ï¼æäºé¡¹ç®åå çåçé±ï¼è¿æäºé¡¹ç®åæ¶è´¹èçé±ï¼ä¾å¦å»å¹´å´©ççæç¤¾åºæ°´æé¡¹ç®ï¼åå¤å°éå¤å°çæ¨¡å¼æä¸å¥½æ§è´¨å°±åæäºåé±ãé¶å®ä¸ä¸æ¯æå¡ä¸ï¼æ¯å©æ²¡æé£ä¹é«ï¼é£äºçååºå¯ä»¥ä»500é\500ï¼å ä¸ºä»ä»¬æ¯å©é«ãææ¬ä½ï¼æ­£å¸¸çé¶å®ä¸ï¼å\1000é\300å·²ç»æ¯æéäºï¼é£äºå1000é\1000çæ©æä¼åºé®é¢ï¼è¿ç§æ¨¡å¼ä¸è½å­¦ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>æ¿ææµæ´¾ï¼æ»¡èç­è¡ãç²ç®æ ç¥ãèªä»¥ä¸ºæ\¯</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããç¤¾åºO2Oè½ç¶æºä¼å¤ï¼ä½å¹¶ä¸æ¯é£ä¹å®¹æè½åæçï¼åä¸ä»æ¥ä¸ç¼ºå°æ»¡èç­è¡çäººãæ»¡èç­è¡å°ä¸å¯æï¼åä¸éè¦æ¿æï¼å¯å¦ææ»¡èç­è¡åç²ç®æ ç¥é£å°±ç³ç³äºï¼æ´å¯æçæ¯å¿èç­è¡+ç²ç®æ ç¥+èªä»¥ä¸ºæ¯ï¼é£å°±å¨å®äºã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããæ¿ææµæ´¾å¹¶ä¸å¯åï¼ä¹åè§è¿å¾å¤ä¸æ¶èç­è¿å¥ç¤¾åºO2Oå¸åºï¼ä½è¿å¥ä¹ååç°å°å¤é½æ¯åï¼é£ä¸ªæ¶åæ³åºæ¥ä¹å·²ç»åºä¸æ¥ï¼ä¸ç¶å°±æ¯äººè´¢ä¸¤ç©ºï¼æåçåºè·¯å°±æ¯ç»§ç»­èµ°ä¸å»å¯»æ¾è½¬åæåºå®çæºä¼ï¼è¿ç±»å¬å¸éå¸¸å¤ã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããç²ç®æ ç¥çå°±è´¸ç¶è¿å¥ç¤¾åºçæ¯è¾å°ï¼ä½ä¹æä¸äºï¼æçæ¯åä¸èï¼æçæ¯æèµäººï¼è¿äºå½ä¸­å¤åæ¯è¢«ä¸äºå«çå¬å¸ç»å¿½æ äºãè¿æçä¸äºæ¯æç¥å±±æèååèå±±è¡çï¼æç¥ä¸å¯ä¸ºèä¸ºä¹ï¼å«äººå¥åå¾å¤æ¬¡é½ä¸å¬ï¼ç»æå¼å·§ææã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¨æ¿ææµæ´¾çç¤¾åºO2Oåä¸å¤§åä¸­ï¼èªä»¥ä¸ºæ¯åçåä¸å¢éæä¸ºå¯æï¼ä¹åä¹è§è¯è¿ä¸å°ï¼ä»¥ä¸ºå¨å¤©ä¸å«äººçé¡¹ç®é½æ¯éçãæé®é¢çï¼åªæèªå·±çé¡¹ç®æå¯è¡ãå½ç¶ï¼åä¸èéè¦æè¿ç§èªæè®¤å¯çæè¯ï¼ä¸è½è½»æè¢«å¤çå£°é³å¨æï¼å¾å¤æ¶åè¯´çäººå¤å¹¶ä¸ä¸å®å¯¹ï¼ä½ä¹ä¸è½å®å¨å¦å®å«äººçåæ³ï¼å¼å¬åæã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ãã<strong>æ¿ç­æµæ´¾ï¼è·çæ¿ç­èµ\°</strong> \r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¨ç¤¾åºå¸åºåä¸ï¼è¿æä¸ç§æµæ´¾æ¯è·çæ¿ç­èµ°çï¼ä¸é¢ä¸»ç®¡é¨é¨æä»ä¹è¯æ±ãè¦æ±å°±æä¹åé¡¹ç®ï¼è¿å¨å¤©æå¸åºä¹ä¸ç®ä»ä¹å¥é»ï¼å°¤å¶å¨ç¤¾åºç¯å¢å½ä¸­ï¼ææ¶åè·çæ¿ç­èµ°ä¼æè®¸å¤ä¾¿å©ï¼ä¾å¦ç¤¾åºå¼å±é¡¹ç®æ´å®¹æï¼éåæ¿åºé¨é¨çåå¸å»ºè®¾å¯ä»¥æ¿å°ä¸å®è¡¥è´´ç­ãè·çæ¿ç­èµ°ä¹ç®æ¯ä¸ä¸ªä¸éçæ¹åå§ï¼åææ¯è½å¾å°æ¿åºçæ¯æã\\r\n</p>\r\n<p style=\"color:#3D3D3D;font-family:Simsun;font-size:14px;background-color:#FFFFFF;\">\r\n	ããå¨ç¤¾åºO2Oå¸åºåä¸ä¹åè¦æéï¼å¹²è¿è¿è¡çé½ç¥éç¤¾åºå¸åºæå¾å¤çä¸è§çæåï¼ä¸æ¦ä¸å°å¿é·å¥è¿å»å°±å¾é¾ç¬åºæ¥ï¼æä»¥åä¸ä¹åå¤ååå¸åºè°ç ï¼å¤ççå«äººé½æ¯æä¹åçãä»¥ä¸åºæ¬æ¶µçäºåç§ç¤¾åºåä¸ç±»åçé¡¹ç®ç¹ç¹ï¼æåæ¹ä¹æ åå åå§ã\\r\n</p>','0','/Uploads/201603/56f8aa5411ba0.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=66','24','1459137119','1459137137','','0');
INSERT INTO `yourphp_article` VALUES ('67','3','2','hello','appå¬å¸ææ­£è§çåé¨ææ\¶','','APP å¬å¸  æ¶æ ä¸ä¸','','','éçç¤¾ä¼ç§æçä¸æ­åå±è¿æ­¥ï¼ç§»å¨äºèç½é¢åå·²ç»æä¸ºäºäººä»¬æ¥å¸¸çæ´»çä¸é¨åï¼ç®åå¾å¤Appå¤åå¬å¸åé¨åæ¥ç¬è¬çæ¶ç°åºæ¥ï¼é£ä¹å¨è¿ä¸æ³¢appå¼åå¤åæµªæ½®ä¸­ï¼å¾å¤ä¸­å°åä¼ä¸åºè¯¥å¦ä½ååå©ç¨ç§»å¨å¹³å°æäºå½ä»çéè¦\...','<p>\r\n	<img src=\"/Uploads/201603/56fb8cb735a37.jpg\" /> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;text-indent:29px;background-color:#FFFFFF;\">\r\n	éçç¤¾ä¼ç§æçä¸æ­åå±è¿æ­¥ï¼ç§»å¨äºèç½é¢åå·²ç»æä¸ºäºäººä»¬æ¥å¸¸çæ´»çä¸é¨åï¼ç®åå¾å¤\<span style=\"font-family:Tahoma;\">App</span>å¤åå¬å¸åé¨åæ¥ç¬è¬çæ¶ç°åºæ¥ï¼é£ä¹å¨è¿ä¸æ³\¢<span style=\"font-family:Tahoma;\">app</span>å¼åå¤åæµªæ½®ä¸­ï¼å¾å¤ä¸­å°åä¼ä¸åºè¯¥å¦ä½ååå©ç¨ç§»å¨å¹³å°æäºå½ä»çéè¦ä»»å¡ï¼æè¿é«åä¸ä¸ç\<span style=\"font-family:Tahoma;\">app</span>å®å¶å¤åå¬å¸è¡¨ç¤ºï¼å¾å¤§ä¼ ç»ä¼ä¸ç±äºå¼åææ¯ä¸çéå¶ãè¡ä¸ä¸çå²çªãé»è¾ä¸çå²çªç­ç­ï¼åæ´å¾åäºéæ©<span style=\"font-family:Tahoma;\">APP</span>å¤åå¬å¸å¨ç¨ååï¼ä½æ¯å¦ä½éæ©é è°±ç\<span style=\"font-family:Tahoma;\">APP</span>å¤åå¬å¸å¢ï¼è¿æä¸ºäºä¼ ç»ä¼ä¸å¼å\<span style=\"font-family:Tahoma;\">APP</span>æ¶æå¤´ççäºæï¼ä¸ä»è¦ä¿è¯å¼åè´¨éï¼åè¦è½ä¿éå®åæå¡ï¼ä»å¤©å°ç¼å°±åä»ä¸å®¶æ­£è§ç<span style=\"font-family:Tahoma;\">app</span>å¤åå¬å¸ï¼åºè¯¥è®¾ç½®åªäºåé¨æå»ºå¢ï¼ä¹æ¹ä¾¿ä¸ºå¤§å®¶ä»¥åå¯»æ¾é è°±ç<span style=\"font-family:Tahoma;\">app</span>å¤åå¬å¸æä¾åèã\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	è´¢å¡é¨ï¼å¬å¸çæ¶å¥ï¼æ¯åºï¼åå·¥èµï¼è·é±æå³çï¼\<br />\r\näººäºé¨ï¼è´è´£å¬å¸äººåçæå¥ï¼è¿åºï¼äººåååé½è¦è¿ä¸ªé¨é¨æ¥åï¼<br />\r\nè¡æ¿é¨ï¼è´è´£å¬å¸æ´ä½çæç¥æ¹åï¼ç­åæ´»å¨ç­ç­ï¼\<br />\r\näº§åé¨ï¼è´è´£è°ç å¸åºéæ±ï¼äº§çéæ±ï¼ä»¥åäº§åå¯¹å¸åºçå²å»ç­ç­ï¼ååå¾çè®¾è®¡ãä¿çå¾ãå¸åºåæç­ï¼\<br />\r\nå¼åé¨ï¼å¼åé¨ååä¸\º<span style=\"font-family:Tahoma;\">ios</span>ç»ãå®åç»ã\<span style=\"font-family:Tahoma;\">php</span>ç»ãæµè¯ç»ï¼å®åå¼åé¨ï¼å¼åå®ååºç¨ï¼<span style=\"font-family:Tahoma;\">ios</span>å¼åé¨ï¼å¼åè¹æåºç¨ï¼æå¡å¨åç«¯å¼åé¨ï¼å¼å\<span style=\"font-family:Tahoma;\">app</span>æéè¦çæå¡å¨ç«¯æ°æ®æ¯æï¼ï¼è´è´£æäº§åå¸åºé¨çéæ±å¼åäº§åï¼<br />\r\næµè¯é¨ï¼è´è´£å¼åé¨ç¨åºçæµè¯ãè¿ä¸ªå·¥ä½ä¹æå¯è½ç´æ¥ç±å¼åé¨è´è´£ç¨åºæµè¯ï¼äº§åå¸åºé¨è´è´£åè½æ§æµè¯\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:Tahoma;\">&nbsp;</span>ææ¯å®åæ¯ä¸å®\¶<span style=\"font-family:Tahoma;\">APP</span>å¼åå¬å¸çæ ¸å¿ï¼å³å®çè¯¥å¬å¸ä»¥åçåå±é«åº¦ãç®åï¼å°±å¨å\½<span style=\"font-family:Tahoma;\">APP</span>å¼åç¯å¢èè¨ï¼æè¿è¸åèå­çå¬å¸ä¹ä¸å¨å°æ°ãèè¿äºå¬å¸å³ä¾¿æåä»¥å¤¸å¤§å®åçä¼ç§å¬å³æ¥ä¸äºåå­ï¼å°æåè¦ä¹ç¡¬çå¤´ç®æçï¼è¦ä¹èèåºä»äºäºï¼åä¸ç¶å°±å¤åç»å¶ä»å¢éï¼èªå·±ä»ä¸­æ½åä»ç»è´¹æåæã\<br />\r\næä»¥éæ©å·ææ ¸å¿å®åçå¬å¸æ¾å¾å°¤ä¸ºéè¦ã\\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56fb8c65684fc.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=67','47','1459326405','1459326451','','0');
INSERT INTO `yourphp_article` VALUES ('68','3','2','hello','Appå¤åå¼åéè¦ç¥éçå¿è¦ææ¬æåªäº\','','app å¼å\  ææ¬','','','Appå¤åå¼åçå¿è¦ææ¬ï¼æ ¹æ®ä½ å¬å¸çç®çä»¥åä½ æ³è¦Appåäºä»ä¹ï¼appçå¤åè´¹ç¨å¯ä»¥ä»å ä¸åå°é«è¾¾å åä¸çè³ä¸ç¾ä¸åãåä½çå®å¦ææ³æ´è¯¦ç»å°åç­è¿ä¸ªé®é¢ï¼æä»¬éè¦ççå¼åãè¥éåç»´æ¤ä¸ä¸ªAppæ¶åå°äºä»ä¹ãç®...','<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/Uploads/201603/56fce49da2edc.jpg\" /> \r\n</p>\r\nAppå¤åå¼åçå¿è¦ææ¬ï¼æ ¹æ®ä½ å¬å¸çç®çä»¥åä½ æ³è¦Appåäºä»ä¹ï¼appçå¤åè´¹ç¨å¯ä»¥ä»å ä¸åå°é«è¾¾å åä¸çè³ä¸ç¾ä¸åãåä½çå®å¦ææ³æ´è¯¦ç»å°åç­è¿ä¸ªé®é¢ï¼æä»¬éè¦ççå¼åãè¥éåç»´æ¤ä¸ä¸ªAppæ¶åå°äºä»ä¹ãç®åå¸åºæåç§åæ ·ç¨äºç»Appå¤åå¼åæå¡å®ä»·çæ¨¡åï¼æè¿é«åå¬å¸è®¤ä¸ºææ®éçæ¨¡ååæ¬ä»¥ä¸ä»ä¹ç»æé¨åï¼\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	ç±äºappåºç¨ç¨åºæ¯æçåºå®çå®ææ¶è´¹ã\<br />\r\n<br />\r\nâ¢å¯¹äºåºç¡æ°éçåºç¨æåå°æ¶æ°æå¾æ¶çåºå®è´¹ç¨ï¼éå¸¸ä½ä¸ºæ»åºå®è´¹ç¨æèåºç¨æ¯æè´¹ç¨çä¸é¨åï¼ï¼ä¼´éæç§æ¶é´åç¨ææå¢å çè´¹ç¨ã\<br />\r\n<br />\r\nâ¢æ¥ä»·éè¦çå¼åå·¥ä½çä¸ä¸ªæ¡æ¶ï¼åºäºé¡¹ç®åºå®è´¹ç¨æ¹å¼ï¼è®¡ç®å¶æ¶èçæ¶é´åèæï¼æèç´æ¥æç§æ¶é´åèææ¹å¼è¿ææµç®è´¹ç¨ã\<br />\r\n<br />\r\nä¸äºAppå¼ååæ³æå°æ¶æ¯ä»ï¼èæäºäººæ´åæ¬¢ææ¯ä¸ªé¡¹ç®æ¯ä»ãä½ åå¼ååæè¿°é¡¹ç®è¶åç¡®ï¼é£ä¹ä»å°±è½è¶åç¡®å°è¯ä¼°ä»·æ ¼ã\<br />\r\n<br />\r\nä¾å¦ï¼Bahndrï¼æ¯ä¸ä¸\ª30000ç¾åçç¤¾äº¤æ¸¸æï¼ç¨å®å¨çèªå®ä¹å¾æ ä»å¤´å¼å§å»ºç«ï¼å®æ¬æ¥å¯ä»¥è±è´¹ä¸¤åçææ¬ï¼å ä¸ºæé¡¹ç®è¢«èµäºæ´å¤§çååºã\<br />\r\n<br />\r\nå¨æ­¤ä¹ä¸ï¼æ ¹æ®ä¸åçAppï¼å¯ä»¥é¢è®¡è±è´\¹8,000- 30,000ç¾åå¨QAæµè¯ä¸ãä¸ºä½¿ä½ çé¡¹ç®æè±ä»»ä½éè¯¯å¹¶æé«å¯ç¨æ§ï¼ä½ éè¦åçæ´æ¹è¶å¤ï¼ä½ éè¦è±è´¹çææ¬å°±è¶å¤ã\<br />\r\n<br />\r\né¤Appå¤åå¼åææ¬ä¹å¤ï¼è¿æå³äºä½¿ä½ çAppè¿å¥ç¸å³å¨çº¿ååºåå¸åºçææ¬ï¼\<br />\r\n<br />\r\nåå¸Appï¼å¨åºç¨ååº99ç¾éï¼å¨è°·æ­ååºæ³¨å25ç¾åã\<br />\r\n<br />\r\nåºç¡è®¾æ½ï¼æå¡å¨ï¼åå¶ä»åç«¯æ¯æï¼\100-200ç¾å/æã\<br />\r\n<br />\r\nç¤¾äº¤åªä½æ´åï¼\500-1500ç¾åã\<br />\r\n<br />\r\nåºç¨ç¨åºåè´­ä¹°ï¼1000-4000ç¾åã\<br />\r\n<br />\r\næ¸¸æä¸­å¿ï¼\1,000ç¾åã\<br />\r\n<br />\r\nè¥éï¼åå§è¥éæ´»å¨1,000- 3,000ç¾åã\\r\n</p>','0','/Uploads/201603/56fce44589c3a.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=68','27','1459414181','1459414203','','0');
INSERT INTO `yourphp_article` VALUES ('69','10','2','hello','è±åäºç»ä½ çï¼ä¸ä¸\ª8å¹´appä»ä¸èçç¬å®¶çæ','','app å¼å\  çæ','','','Â  Â  Â Â ä¸ä¸\ª8å¹´appå¤åä»ä¸èçç¬å®¶çæï¼çæ´»å¨å½ä¸ä¸è¯´å°APPå¤§å®¶è¯å®ä¸ä¼éçï¼éçæºè½ææºåiPadç­ç§»å¨ç»ç«¯è®¾å¤çæ®åï¼äººä»¬çä¸ç½æ¹å¼ä¹æ¢æ¢çè¢«æ¹åï¼æ¾ç¼å½ååå¤§çµåï¼åæ¥æäºèªå·±çåº\...','<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">&nbsp; &nbsp; &nbsp;&nbsp;ä¸ä¸\ª8å¹´appå¤åä»ä¸èçç¬å®¶çæï¼çæ´»å¨å½ä¸ä¸è¯´å°APPå¤§å®¶è¯å®ä¸ä¼éçï¼éçæºè½ææºåiPadç­ç§»å¨ç»ç«¯è®¾å¤çæ®åï¼äººä»¬çä¸ç½æ¹å¼ä¹æ¢æ¢çè¢«æ¹åï¼æ¾ç¼å½ååå¤§çµåï¼åæ¥æäºèªå·±çåºç¨ç§»å¨å®¢æ·ç«¯ï¼å¹¶ä¸ç°å¨ä»¥éå®ä¸ºä¸»å¯¼çå¬å¸è¶è¿\50%ä»¥ä¸çéå®é¢é½æ¥èªç§»å¨ç«¯ãå¨ç§»å¨äºèç½æ¶ä»£ï¼ä¼ ç»çè¥éæ¹å¼å·²ç»ä¸éåºäºç°å¨çå¸åºååãææºä½ä¸ºæµéå¥å£ï¼å·²ç»éæ¸è¶è¿PCç«¯çæµéãè®¸å¤ä¼ ç»ä¼ä¸é¢ä¸´çè½¬åçå°å¢ï¼é½æ³èµ¶ä¸ç§»å¨äºèç½æ¶ä»£æ½®æµï¼éè¿å¼åèªå·±ä¼ä¸çä¸å±APPï¼é¢åç«äºå¯¹æï¼&nbsp;å®ç°ä¼ä¸è¥éçè·¨è¶å¼å¢é¿ï¼\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; é£ä¹ä½ä¸ºä¸ä¸ªæ¥æ\8å¹´å·¥ä½ç»éªçèé¸ï¼ä¸ºå¤§å®¶ä»ç»ä¸ä¸ï¼ä¼ä¸æ¥æèªå·±ææºAPPè½¯ä»¶çå¥½å¤\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	å¨è¿ä¸ªç§»å¨äºèç½å·²ç»å½»åºæè´¥PCäºèç½çæ¶ä»£ï¼æ®è°æ¥ç»è®¡åç°å½åå¤§éå¹³åæ¯ä¸ä¸ªäººçææºéå¤§çº¦æ\40ä¸ªAPPä¹å¤ï¼äºæ¯ä¹ï¼å¨å·¨å¤§çappåæºé¢åï¼å¾å¤ä¸é¨ä¸ºä¼ä¸å®å¶APPçå¤åå¬å¸åºè¿èçäºãæ¯åº¸ç½®çï¼ææºAPPå¤åè½¯ä»¶ä½ä¸ºä¼ä¸å¼è¾å¨æ°çè¥éæ¨å¹¿ææ®µå¶å¸¦æ¥çå¥½å¤ä¸»è¦æåä¸ªï¼\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	ä¸ãç¬¬ä¸æ¶é´æ¢å åæºï¼è¶è¶ç«äºå¯¹æï¼äºåæ´å¤çåä¸æºä¼\,è¾¾å°äº§ååæå¡å®£ä¼ ç®ç\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	äºãæé«å¿ è¯åº¦é«ï¼90%çç¨æ·é½ä¸ä¼ä¸»å¨å¸è½½è½¯ä»¶ï¼å®ä¸ºä¼ä¸åé æ´å¤ççå©æºä¼ã\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">ä¸ãå¢å¼ºä½éªæå¼ºï¼ä»¥å®¢æ·ä¸ºæ ¸å¿ï¼éè§å®¢æ·ä½éªï¼å¯æ ¹æ®ä¼ä¸èªèº«ç¹å¾ï¼å¶ä½åºæç¬¦åä¼ä¸èªèº«éæ±çå®¢æ·ç«¯ï¼ä»èå±å¼ç¸åºçç§»å¨è¥éæå¡ã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">åãéä½ææ¬ä½å»ï¼ç¸æ¯æ´¾åå®£ä¼ åä¸ä¼åå¡ï¼ç§»å¨åºç¨ç¨åºä¸ä»ææé«ï¼æä¼ä¸çç¸å³ä¿¡æ¯é½åå«å¨åï¼èä¸ç¨æ·ä¸è½½è¯¥ç¨åºæ¯åºäºä¸»å¨ä¿ççå¿çï¼ææé«ï¼ææ¬ä¸ä¼éçä¸è½½æ¬¡æ°å¢å èå¢å ã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">è¿æä¼å¤å¥½å¤å¨æ­¤ä¸åèµè¿°ãå¨appé¢åå·¥ä½8å¹´çæå¨ä¸é¢å°±æ¥è¯´è¯´ä½ä¸ºé¡¾å®¢åå®¶çä¸äºé¡¾èï¼</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">å¦ä½é²æ­¢èªå·±è¢«APPå¤åå¬å¸å¿½æ ï¼\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">æ®è¯´å¶ä½ä¸ä¸ªAPPéè¦æ°ä¸åï¼å¶ä½æååæ¯ææ¯å¹´çç»´æ¤è´¹ç¨è¿è¦æ¯æ¥æå¢è¿ç§å­¦ä¹ï¼æ¬èº«æ¯ITå°ç½åªä¼ç å­åå¤å¶ç²è´´ç¼ç¨ç¥é©¬é½ä¸æï¼å¨ææ¯æ¹é¢çå®¡æ ¸è¯¥ä½å»ä½ä»ï¼å¦ä½æè½ç¥éå¤åå¶ä½ä¸ä¸ªAPPçææ¬åæ¶é´ï¼\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">è¿\</span><span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">ä¸ä¸ªé®é¢æ³å¿é½æ¯åå®¶ä»¬æå³å¿çæ ¸å¿é®é¢ï¼å°¤å¶ç¬¬ä¸ä¸ªé®é¢å¯è°æ¯éä¸­ä¹éï¼å°ç¼å¨ç»è¿æ´çåéé¿åå¾åºäºä¸äºéªå­å¤åAPPå¬å¸çç¹å¾æç»ï¼å¶å·ä½ç¹å¾å¦ä¸ï¼</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">ä¸ãæ²¡æå¬å¸æ­£å¼å®ç½äº¦æç´¢ä¸å°äº§åç¸å³ä¿¡æ¯çã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	äºãæä¸é¨åè´­ä¹°æäºé¨æ·çææºç½ç«èªå·±ææè¯ä¹¦å¹¶æ¹æâXXé¨æ·âç­é«å¤§ä¸åå­åèåå®£ä¼ ã\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">ä¸ãå¸¸æ´¾ä¸å¡åæçµè¯ï¼è¯´æ¯è½¬è®©ï¼åè´¹æååæï¼åå æåä¼ï¼çµå­åå¡æ¯èµå¤§ä¼ç­ä¸ºå¹å­ãè¯±éªé¡¾å®¢å»ä»ä»¬å¬å¸ç­¾ååï¼å¹¶ä¸åºå£å°±æ¯å ä¸åå ä¸ã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">&nbsp;APPå¤åå¬å¸ä¸è¬ä¼å­å¨åªäºé®é¢</span>ï¼\\r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">&nbsp; &nbsp; &nbsp; &nbsp;APPå¤åæé¢å¯¹çé®é¢æ¯ï¼ä¸æ­æé«çç¨æ·ä½éªéæ±ä¸ä½é¨æ§é æçè¾å·®å®ç°è½åä¹é´çä¸å¹éæ§ãç®åï¼å¤åæå¡å¾å¤é½æ¯ä»·æ ¼ä¾¿å®ï¼ä½è´¨éä¸è¡ï¼è¾¾ä¸å°å®¢æ·é¢æï¼é¾ä»¥æç¨æ·ä½éªåå¥½ï¼éæ±æ¹èªç¶ä¼è®¤ä¸ºå¤åä¸é è°±ã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; å¤åæå¡æ¯ä¸ä¸ªæ¼ä»·æ ¼ï¼æ¼äººåçè¡å½ãå¨ç§»å¨äºèç½è¿ä¸ªéè¦åæ°çè¡ä¸ï¼å¤åæå¡æ¾ç¶ä¸å¯è½å¨äººåææ¬çº¢å©ä¹ä¸èµåå©æ¶¦ãèå½äººæä»·æ ¼æ¥çèµ°é«æ¶ï¼å©æ¶¦ä¹éæ¸éä½ã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;ç®åå·å¤ä¸å¹´IOSå¼åå¹³å°ç»éªçäººï¼èµ·æ­¥å°±è¦15000åï¼èä¸ä¸ªå¤åé¡¹ç®éå¸¸ä¼åå«é¡¹ç®ç»çï¼äº§åç»çï¼ä¸¤ä¸ªå¼åäººåãä¸ºä¿è¯è´¨éï¼\5ä¸ªäººåä¸ä¸ªé¡¹ç®ï¼ä»¥ä¸ä¸ªæä¸ºå¨æï¼ä½äº10ä¸åæ¯æçåï¼å¯¹äºå¬å¸æ¥è¯´å°±æ¯èµé±çãä½æ¯ï¼æäºå°åå·¥ä½å®¤ï¼ä¸¤ä¸ªäººæ5ä¸ªäººçæ´»é½å¼èåäºï¼åªéè¦å ä¸åãå æ­¤ï¼äººè´µå©èï¼å¾å®¹æå½¢æä»·æ ¼çæ¶æ§ç«äºã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé», \'Microsoft YaHei\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ä¼ ç»PCç«¯æå¡ååæ°å´çAPPå¤åä¼ä¸èµ°çæ¯æªç¶ä¸åçä¸¤æ¡è·¯ãä¼ ç»PCç«¯æå¡åéåçæ¯æ¨¡ååä½ä»·èµåè§æ¨¡åçå©ï¼èAPPå¤åä¼ä¸åéæ©äºå®å¶åèµåé«ä»·æå¡è´¹ãæ¨¡ååå°±æ¯æ ¹æ®äºä¸ªè¡ä¸éç¨åè½å¼ååºåªä½èµè®¯ãåä¸ä¼ä¸ãé¨æ·ãé¤é¥®ç­éç¨æ¨¡åï¼ç¶åæ ¹æ®å®¢æ·éæ±ä¸æ­ä¿®æ¹è¿å ä¸ªåºå®æ¨¡åå¹¶éå¢åè¿ä½ãç¨æ·å¯ä»¥åè´¹äº«åå°åçº§ï¼ææ¬åéè¿è§æ¨¡åéå®ä¸æ­æèã\</span> \r\n</p>\r\n<p style=\"color:#555555;font-family:\'Microsoft YaHei\', Lato, \'Helvetica Neue\', Helvetica, Arial, sans-serif;font-size:14px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>','0','/Uploads/201604/570c5b8a90ee0.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=69','11','1460427601','1460427664','','0');
INSERT INTO `yourphp_article` VALUES ('70','3','2','hello','ä¼ä¸ç®¡çAPPè½¯ä»¶å¼åè´åæé«å·¥ä½æç\','','','','','Â  Â  Â  Â ä¼ä¸ç®¡çAPPè½¯ä»¶å¼ååãæè¿é«åå¬å¸ãè¡¨ç¤ºï¼ç§»å¨APPå­å¨äºäººä»¬çæ´»çæ¹æ¹é¢é¢ï¼æ¹ä¾¿äººä»¬æ¥å¸¸çæ´»çåæ¶ï¼ä¹ä¸ºä¼ä¸ç®¡çå¸¦æ¥äºæ´å¤ä¾¿å©ï¼ä¼ä¸ç®¡çç±»APPæé«äºåå·¥çå·¥ä½æçãä¼ä¸ç®¡çAP...','<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp;ä¼ä¸ç®¡çAPPè½¯ä»¶å¼ååãæè¿é«åå¬å¸ãè¡¨ç¤ºï¼ç§»å¨APPå­å¨äºäººä»¬çæ´»çæ¹æ¹é¢é¢ï¼æ¹ä¾¿äººä»¬æ¥å¸¸çæ´»çåæ¶ï¼ä¹ä¸ºä¼ä¸ç®¡çå¸¦æ¥äºæ´å¤ä¾¿å©ï¼ä¼ä¸ç®¡çç±»APPæé«äºåå·¥çå·¥ä½æçã\<strong>ä¼ä¸ç®¡çAPPè½¯ä»¶</strong>ä¸ºç¨æ·æä¾ä¸ç«å¼çåå¬æå¡å¹³å°ï¼è®©æ¯ä¸ªåå·¥å¨å·¥ä½ä¸­è½å¤å®ç°å®æ¶äº¤æµäºå¨ï¼æ»¡è¶³ç¨æ·çåå¬éæ±ï¼é¤æ­¤ä¹å¤ï¼è¿å·å¤ååçç®¡çå±æ§ï¼ä¸ºç®¡çå±æä¾å®¢æ·ç®¡çãç§»å¨OAç®¡çç­åè½ï¼è´åäºæåä¼ä¸çç®¡çæçï¼ä»¥åæé\ 90ååå·¥æ´ä¹ææ¥åçç®¡çæ¨¡å¼ã\\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ãã<img src=\"http://img.mp.itc.cn/upload/20160411/f1305a596522446fb3f63e3d2ee2de9d_th.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããå¨ä¼ ç»çç®¡çæ¨¡å¼ä¸­ï¼å¾å¤ä¼ä¸ä¸ä½æ²¡ææé«å·¥ä½æçï¼ç¸åå°å¨åä¸ªç¯èå¢å äºå·¥ä½äººåååå®æé¡¹ç®ï¼è¿ç§æ¹å¼ä¸ä»ä¸å®ç¨åº¦ä¸éä½äºå·¥ä½æçï¼èä¸æåå¢å å¯ä¸å¿è¦çäººåææ¬æ¯åºï¼è¿ä¸æ­¥ä½¿å¾è¿è¥ææ¬ç¸å¯¹å¢é«ãä¸ºæ­¤ï¼å¨APPè®¾è®¡ä¸­ä¸»è¦æ¯ä»æåä¼ä¸ç®¡çæ§è¡åä»¥ååå·¥æ§è¡åç­æ¹é¢åºåã\\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããå¨æåç®¡çå±åå·¥æ§è¡åæ¹é¢ï¼ä¸ºç¨æ·å®ç°è½»æ¾åå¬æå¡ï¼éè¿æ°æ®å®æ¶åæ­¥ï¼ä¸ºç¨æ·å®ç°å³æ¶äºè§£ææ°çå·¥ä½å¨æãå·¥ä½åéä»¥åä»»å¡è¿åº¦ç­ä¿¡æ¯ï¼æç»å®ç°èçåå¬ãç®¡çæ¶é´ï¼è¿ä¸æ­¥æé«æçï¼å¢å¼ºæ§è¡åçä½ç¨ï¼ä½¿å¾ç»ç»åé¨çè¿è¡æ´å é¡ºçã\\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ãã<img src=\"http://img.mp.itc.cn/upload/20160411/593d9a4f0c5f4b14810bafec3f1aa9b4.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ãã<strong>ä¼ä¸ç®¡çç±»è½¯ä»¶çåè½ä»ç»</strong> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããå ä¸ºä¼ä¸ç®¡çç±»è½¯ä»¶æ¯é¢åæ´ä¸ªä¼ä¸çï¼æä»¥æåå«çåè½ä¸»è¦è¿æ¯ä»¥ä¼ä¸åé¨ç®¡çä¸ºä¸»ï¼åè½ç³»ç»åæ¬OAï¼åå¬èªå¨åï¼ãè´¢å¡ç®¡çè½¯ä»¶ç³»ç»ãè¿å­éãERPï¼ä¼ä¸èµæºè®¡åï¼ãCRMï¼å®¢æ·å³ç³»ç®¡çï¼ãHRï¼äººåèµæºï¼ãååç®¡çç³»ç»ç­å±åå½¢æä¸å¥ä¿¡æ¯åAPPåºç¨è½¯ä»¶ç³»ç»ãè¿æ¬¾ç®¡çç±»APPå¯ä»¥å¸®å©ä¼ä¸ç®¡çèä¼åå·¥ä½æµç¨ï¼è¿èæé«å·¥ä½æçã\\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããä¼ä¸ç®¡çç±»åºç¨è½¯ä»¶æ¥ææ¯è¾ä¸¥æ ¼çæéè®¾ç½®åè¾é«çå®å¨æ§ï¼åæ¶ç®¡çç±»APPä¹æ¥ææ¯è¾å¼ºçç³»ç»æ§åæ©å±æ§ï¼æä»¥æå¾å¤çå¤§åä¼ä¸é½ä¼å¼åä¸æ¬¾ç®¡çç±»APPè½¯ä»¶ï¼ä¸è¿å¯¹äºå°ä¼ä¸åä¸ªäººç»è¥èæ¥è¯´è¿æ ·çç®¡çç±»APPå´æ²¡æå¤ªå¤§çå®ç¨æ§ã\\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããä½æ¯éçå¸åºçè¿ä¸æ­¥ç»åï¼è¿æ¥å¸é¢ä¸ä¹åºç°äºä¸äºéå¯¹æ§æ¯è¾å¼ºçä¼ä¸ç®¡çç±»è½¯ä»¶ï¼è¿äºè½¯ä»¶ä¸è¬åªéå¯¹ä¼ä¸ç®¡ççæä¸ä¸ªé¢åï¼åå°å°ä¼ä¸åä¸ªäººåä¸èçæ¬¢è¿ãåæ¶ï¼éçäººåææ¬çå¤§å¹ä¸åï¼ä¼ä¸åå·¥ä¸ªæ§åçªåºï¼å èåå·¥å¯¹ä¼ä¸çå¿ è¯åº¦ç¸è¾ä»¥å¾ææä¸éï¼è¿ä¹ä½¿å¾ä¼ä¸çç¨äººææ¬å¤§å¹æé«ï¼ä¸ºæ­¤ä¼ä¸èæ¿ä»¬äºééä½ç¨äººææ¬ï¼è°å¨åå·¥çå·¥ä½ç§¯ææ§ï¼æé«ç®¡çæçã\\r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããæè¿é«å<span>æ¯ä¸ä¸ç§»å¨åºç¨ææ¯æä¾åï¼è´åäºç§»å¨æ´ä½è§£å³æ¹æ¡çç­åãè®¾è®¡ãå¼åãåå¸ãå¬å¸æä¾APPå¤åæå¡ï¼å¸®å©å®¢æ·é¨ç½²ç§»å¨åºç¨åå±ã\</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#333333;font-family:å¾®è½¯éé», å®ä½;background-color:#FFFFFF;\">\r\n	ããçµè¯ï¼\<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:14px;background-color:#FAFAFA;\">010-84764221</span> \r\n</p>','0','http://img.mp.itc.cn/upload/20160411/f1305a596522446fb3f63e3d2ee2de9d_th.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=70','27','1460428547','1460428569','','0');
INSERT INTO `yourphp_article` VALUES ('71','10','2','hello','ä¼ ç»æ¿å°äº§ä¼ä¸è½¬åçæåä¸æ ¹ç¨»èæ¯ä¸æ¯äºèç½APP?','','æ¿å°äº§APPå¼å\, æ¿å°äº§APP, æ¿å°äº§ç¤¾åºAPP','','','Â  Â  Â Â ä¼ ç»æ¿å°äº§ä¼ä¸çè½¬åæ©å·²ç»å¨90å¹´ä»£åå°±å¼å§æäºï¼æä»¥ä½ å¯ä»¥ææ¾çå°ï¼ä½ èº«è¾¹çæ¿å°äº§ä¼ä¸ç«ç¹åå°äºå¾å¤ï¼å ä¸ºå¤§é¨åè½¬å°çº¿ä¸å»åå±äºãåå¼å§å°è¯è½¬åçæ¶åï¼æ¿å°äº§APPå¼åå¹³å°çç\...','<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp;&nbsp;<strong>ä¼ ç»æ¿å°äº§ä¼ä¸\</strong>çè½¬åæ©å·²ç»å\¨90å¹´ä»£åå°±å¼å§æäºï¼æä»¥ä½ å¯ä»¥ææ¾çå°ï¼ä½ èº«è¾¹çæ¿å°äº§ä¼ä¸ç«ç¹åå°äºå¾å¤ï¼å ä¸ºå¤§é¨åè½¬å°çº¿ä¸å»åå±äºãåå¼å§å°è¯è½¬åçæ¶åï¼æ¿å°äº§APPå¼åå¹³å°ççå©æ¨¡å¼ä¹å¾æ¨¡ç³ï¼ä¸ææçæ¿åºãä¸æçµçé¶è¡ç¸å½äºå¼çâå°éæºâçä¼ ç»æ¿å°ä¼ä¸ä¸æ¯å¨æèå¦ä½å»åè¡äºèç½æ¿äº§ï¼èæ¯ç«å¨å²¸è¾¹å²ç¬äºèç½æ¿äº§ä¸ºâç§é±çæ åºæ´âã\</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"> </span>\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;&nbsp;ç´å°æè¿å å¹´ï¼<strong>äºèç½æ¿å°äº§APP</strong>å¼åè¡ä¸çåå±ææäºèµ·è²ãå½äºèç½æ¿å°äº§APPå¹³å°æ¾å°åä¸çå©æ¨¡å¼é«æ­çè¿æ¶ï¼ä¼ ç»æ¿å°äº§ä¼ä¸ä¹å¨äº¦æ­¥äº¦è¶ï¼ç½ç«ãåå¾®ï¼å¾®åãå¾®ä¿¡ï¼ä¸ç«¯ï¼APPå®¢æ·ç«¯ï¼ç­ææ®µå±åºä¸ç©·ï¼ä½æ¯«ä¸å®¢æ°å°æ¥è¯´ï¼ä»åä¸æ¨¡å¼ååä¸ä»·å¼ä¸æ¥è¯´åºæ¬æ¯ç¶å¹¶åµã\\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp;&nbsp;<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp;&nbsp; &nbsp;&nbsp;</span><span style=\"font-size:16px;color:#333333;font-family:\'Microsoft YaHei\', å¾®è½¯éé», \'Microsoft JhengHei\', åæç»é», STHeiti, MingLiu, serif;background-color:#FFFFFF;\">æ ¹æ®æ°æµªä¹å±ç§»å¨è¿è¥ä¸­å¿ã\2013å¹´åº¦ç§»å¨äºèç½æ¿äº§ç¨æ·è°ç åææ¥åãæ¾ç¤ºï¼79%çç§»å¨äºèç½æ¿äº§ç¨æ·æ¯å¤©è³å°æµè§ä¸æ¬¡æ¿äº§ç±»ä¿¡æ¯ï¼æµè§æ¶é´ä¹ç±ä¸ä¸ç­ãä¸åæçç¢çæ¶é´åç¡è§åãä¸­åä¼æ¯ç­è¿ç»­æ¶é´è½¬åï¼å¶ä¸­åä¸å¹¿æ·±çæ¿äº§ç¨æ·æ°ä½åå¨å½ååä½ãå°½ç®¡PCå¹³å°ä¾ç¶æ¯ç¨æ·è·åæ¿äº§ä¿¡æ¯æéè¦çæ¸ éï¼ä½ç§»å¨ç«¯çæ´»è·è¡¨ç°å·²ç»å¨æç¶æ¹åäººä»¬è·åä¿¡æ¯çæ¥æºã\</span><span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp;&nbsp;ç¹å«æ¯ç°å¨ï¼æä»2014å¹´æä¸ºæ¿å°äº§åæå¡ç¤¾åºAPPçåå¹´å¼å§ï¼å¤§å®¶é½è®¤å¯äºæ¿å°äº§ç¤¾åºAPPçæ¨¡å¼ãå¨å½åæ è®ºæ¯äºèç½åè¿æ¯å°äº§åï¼è¿ä¸¤å¹´é½å¨æ¾å¯»åå¼åæ ·çæºä¼åå\¥ O2Oï¼ç¤¾åºå¢å\¼/æå¡åçå¯æ¯ä¸è¬æ¥çä¸è¬ã\</span><a href=\"http://www.ewhale.cn/wp-content/uploads/2016/04/24.jpg\"></a> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"color:#333333;font-family:\'Microsoft YaHei\', å¾®è½¯éé», \'Microsoft JhengHei\', åæç»é», STHeiti, MingLiu, serif;font-size:16px;background-color:#FFFFFF;\">ç±äºä¸å¨äº§ä¹°åæ¶åå¤§é¢äº¤æï¼ä¿¡ä»»ææäºæ¿å°äº§APPå¨ç­æ¶é´åæ æ³åä»£äºææ¿é¨åºçéè¦åå ä¹ä¸ã\</span><span style=\"color:#333333;font-family:\'Microsoft YaHei\', å¾®è½¯éé», \'Microsoft JhengHei\', åæç»é», STHeiti, MingLiu, serif;font-size:16px;background-color:#FFFFFF;\">åæ¶æ¿äº§APPææä¾çæå¡åä¸ä¹ä¸ºäººæè¯çãä¸ä½ä¸æ¿éé²å§åçæ¿å°äº§ç½ç«é«ç®¡è¡¨ç¤ºï¼ç®åå¸åºä¸çæ¿äº§APPå¤§å¤ä¸å¶äºèç½ç«¯çä¸å¡é·åï¼æ¯äºèç½åå®¹çå¤å\¶</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#7A7A86;font-family:å°äº­çº¤é», å°äº­ä¸­é», å°äº­ç¹é», ææºé»ä½, SYHT, \'Microsoft Yahei\', å¾®è½¯éé», Arial, Helvetica, sans-serif;font-size:16px;background-color:#FFFFFF;\">&nbsp;</span><span>&nbsp; &nbsp; &nbsp; &nbsp;æ»çæ¥è¯´ï¼\<strong>æ¿å°äº§APP</strong></span><span>è¡ä¸å¼å§åç´ç»åååå±ï¼ç±æ¿å°äº§ä¸­é´å°ç©ä¸ç¤¾åºæå¡ç­ï¼ä¸ç´ä»¥æ¥ï¼äºèç½ä¼ä¸é½å¨æ·±æä¼ ç»æ¿å°äº§ä»»ä½å¯è½åå±çåå±ï¼æªæ¥çæ¿å°äº§APPè¡ä¸ï¼æ´å¼å¾æä»¬æå¾ï¼\</span><span></span> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201604/571448366399d.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=71','18','1460947007','1460947016','','0');
INSERT INTO `yourphp_article` VALUES ('72','3','2','hello','APPå¼åé¤äºçä»·æ ¼è¿è¦çä»ä¹ï¼','','','','','Â  Â  Â Â éçç§»å¨äºèç½çåå±ï¼æºè½ææºçæ®åï¼ææºAPPè¶æ¥è¶åå¤§ä¼çå³æ³¨ï¼æä»¥å¾å¤çä¼ä¸åä¸ªäººé½æ³å¼åèªå·±ä¸å±çAPPï¼å æè¿åå¸åºï¼ä½æ¯å¾å¤ä¼ä¸å¯¹APPå¼åçç¸å³æåµä¸æ¯å¾äºè§£ï¼å¤§é¨åç...','<p>\r\n	<span style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;\">&nbsp; &nbsp; &nbsp;&nbsp;éçç§»å¨äºèç½çåå±ï¼æºè½ææºçæ®åï¼\</span><span style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">ææºAPP</span><span style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;\">è¶æ¥è¶åå¤§ä¼çå³æ³¨ï¼æä»¥å¾å¤çä¼ä¸åä¸ªäººé½æ³å¼åèªå·±ä¸å±çAPPï¼å æè¿åå¸åºï¼ä½æ¯å¾å¤ä¼ä¸å¯¹APPå¼åçç¸å³æåµä¸æ¯å¾äºè§£ï¼å¤§é¨åçäººè¿æ¥è¯¢é®æä»¬ï¼å¼åAPPè¦å¤å°é±ï¼å¤§é¨åé½æ¯è¯¢é®ä»·æ ¼çï¼å¶å®å¼åAPPä»·æ ¼åªæ¯ä¸ä¸ªå ç´ ï¼</span><span style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">APPå¼å\</span><span style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;\">è¿æè®¸å¤çæ³¨æäºé¡\¹,ä¸é¢ä¸èµ·äºè§£APPå¼ååéè¦æ³¨æçé®é¢ï¼\</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:å¾®è½¯éé», å®ä½;font-size:14px;background-color:#FFFFFF;\">&nbsp; &nbsp; &nbsp; &nbsp;ä¸ãéè¦åAPPçéæ±å®¢æ·æå¾å¤ï¼ææ³åä¼ä¸APPè½¯ä»¶ï¼åä¸APPè½¯ä»¶ï¼ææ¸¸APPè½¯ä»¶ï¼çè´¢APPè½¯ä»¶ï¼é¤é¥®APPè½¯ä»¶ï¼æ±½è½¦APPè½¯ä»¶ï¼è´­ç©APPè½¯ä»¶ï¼æèç±»APPè½¯ä»¶ç­ç­ã\</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;\"> </span>\r\n</p>\r\n<p style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	ããäºãææºAPPå¼åéå¸¸æ¯AndroidåiOSä¸¤ä¸ªç³»ç»ï¼å ä¸ºç°å®çæ´»ä¸­ç¨çäººé½å¾å¤ï¼ä¸è¬å¶ä½APPæ¯è¿ä¸¤ä¸ªç³»ç»åæ¶å¼åãä¸¤ç§ç³»ç»å¶ä½å·¥æä¹å·®ä¸å¤ï¼ååç¸å·®æå¤ä¸è¶è¿5å¤©ã\\r\n</p>\r\n<p style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	ã &nbsp; ä¸ãå¶ä½APPçæ¥ä»·ä¸å¶ä½å·¥ææå¾å¤§å³ç³»ï¼å¶ä½é¡µé¢çå¤å°ä¸åè½è¦æ±çå¤æç¨åº¦ï¼å¾å¤§ç¨åº¦ä¸å³å®çæ¥ä»·çå¤å°ã\\r\n</p>\r\n<p style=\"font-family:å¾®è½¯éé», å®ä½;color:#333333;font-size:14px;background-color:#FFFFFF;\">\r\n	ããç¨æ·å¦ææ³æ¾APPå¼åå¬å¸å¶ä½å¼åAPPï¼éè¦å¯¹æ¥ä»·çå¬å¸åä¸äºäºè§£ï¼å¤§æ¦æ¯ä¸ä¸ªæ¹åãé¦åæ¯å¯¹æ¥ä»·å¬å¸çæåµåä¸ªèå¯ï¼æ¯å¦å¬å¸çèµè´¨ï¼è§æ¨¡ï¼åå·¥å¤å°ï¼æ ¸å¿ææ¯äººåæå ä¸ª?åªäºæ¹é¢çä¸å¡èå´æ¯è¾æé¿ãå¶æ¬¡æ¯åæå®æçæåæ¡ä¾æ¯åªäº?å¥½å¯¹èªèº«çAPPäº§åå¿ä¸­æä¸ªææé¢æãæåæ¯è·å¶ä½å¬å¸ç¡®å®\ æ¥ä»·å¤å°ä¸å®æå·¥æé¿ç­ï¼æ¯å¦åä¸ä¸ªé¡¹ç®Aå¬å¸æ¥ä»·30ä¸ï¼å¶ä½å¨æ3ä¸ªæãå¦ä¸å®¶å¬å¸æ¥ä»\·20ä¸ï¼å¶ä½å¨æ5ä¸ªæãè¿å°±éè¦éæ±å®¢æ·èªå·±å»ææ©ã\\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>','0','/Uploads/201603/56fce62a784e5.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=72','1','1461124451','1461124489','','0');
INSERT INTO `yourphp_article` VALUES ('73','3','2','hello','APPå¼åéä»è¿ä¸æ­¥ç¡®è®¤å®¢æ·éæ±\','','','','','ä¸ç®¡å¸åºè§æ¨¡æ¯å¦å¤å¤§ï¼ä¹ä¸ç®¡ææºAPPè½¯ä»¶çç­æ½®è½å¤æç»­å¤ä¹ææªæ¥ä¼èµ°åä½æ¹ï¼APPå·²ç»æä¸ºå½ä¸ä¸ç§æ°çæ¾å­¦äºï¼ä»¿ä½è°è®ºä»ä¹é½å¿é¡»è·APPåä¸ç­å·æè¡ï¼èå ä¸ºAPPåéäºææºæèå¹³æ¿å°ºå¯¸çéå¶ï¼ä¸æ¬èº«åæ¯ä¸ä¸ªè½¯ä»\¶...','<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">\r\n	<p>\r\n		<img src=\"/Uploads/201604/571702f7b0821.jpg\" />\r\n	</p>\r\nä¸ç®¡å¸åºè§æ¨¡æ¯å¦å¤å¤§ï¼ä¹ä¸ç®¡</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ææº</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">APPè½¯ä»¶</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">çç­æ½®è½å¤æç»­å¤ä¹ææªæ¥ä¼èµ°åä½æ¹ï¼APPå·²ç»æä¸ºå½ä¸ä¸ç§æ°çæ¾å­¦äºï¼ä»¿ä½è°è®ºä»ä¹é½å¿é¡»è·APPåä¸ç­å·æè¡ï¼èå ä¸ºAPPåéäºææºæèå¹³æ¿å°ºå¯¸çéå¶ï¼ä¸æ¬èº«åæ¯ä¸ä¸ªè½¯ä»¶çæ¦å¿µï¼å æ­¤å¤åæ¶åï¼åªè¦è°èµ·APPå ä¹å°±ç­åäºè°è®ºå°UIæèUXä¸æ ·ã\</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">æ³è¦ç¡®è®¤å®¢æ·éæ±å¿é¡»è¦åçä¸æ­¥éª\¤</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ææ¶åå¦ä½ç¡®å®ç¨æ·éæ±ï¼æ¯ç¡®å®å¸åºå®ä½æ´éè¦ï¼æèåç¡®å®ç¨æ·éæ±æè½ç¡®å®å¸åºå®ä½ãä½ä¸ºéè¦APPå¼åçå¬å¸ï¼èµæºåæ°æ®é½æ¯è¾æéï¼ä½æ¯ç¨æ·çéæ±æ¯æ éçãä»å¤©ï¼</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">APPå¼åå¬å\¸</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">-</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">èçªç½ç»</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">å°±ç®åè¯´ä¸ä¸å®¢æ·çéæ±åè§£ç»éªï¼æåªå æ­¥ã\</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ç¬¬ä¸</span></strong><strong><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">æ­\¥</span></strong><strong><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ãçæ¸éæ±\</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">æç¸ä¿¡æ¯ä¸ªå®¢æ·é½æ¯ä¸å¸åé çå¥è©ï¼è½æ³æ¢æ³ï¼å¸æå½±åä¸çï¼çè³æ¹åä¸çãä½ä¸ºä¸ä¸ªäº§åçï¼ææ·±æ·±æ»´ä½ä¼å°èæ´ä¹å¤§ç»èªå·±å¸¦æ¥çå°æ°ï¼å¿é¡»è¦æ æ¶æ å»æºå¸¦ææºï¼æ²¡æææºçæ¶åæè¾¹æ²¡æçº¸åç¬ç´æ¥è®©ææçï¼ï¼</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">çæ¸éæ±å°±æ¯ææä»¬æ³åçäºæï¼æèè¯´æä»¬è®¤ä¸ºç¨æ·å¯è½ä¼éè¦çåè½ææ¡ä¸ç´çç½ååºæ¥ï¼ç¨æå­OKï¼ä¸è¿ææ´å»ºè®®ä½¿ç¨èå¾ï¼ä¸ç®¡æ¯æç»ä¹å¥½ï¼Xmindä¹å¥½ï¼MindManagerä¹å¥½ï¼å·¥å·åªæ¯å½¢å¼ã\</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ç¬¬äºæ­¥ï¼æ´çæäº</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">è³äºæä¹æ ·è®²ä¸ä¸ªå¥½æäºï¼ç»å£°ç»è²å°è®²æ¯ä¸ç§æ¹å¼ï¼è§è§ææï¼ï¼åå¥äººå¿å°è®²æ¯ä¸ç§æ¹å¼ï¼ç¨æ·å¿çï¼ï¼æçéç¹è®²ï¼æ ¸å¿æµç¨ï¼ï¼å½ç¶è¿æå¾å¤å¶ä»çæ¹å¼ï¼å¦æè®²æäºçäººè½å¤çµæ´»å°æå¤ç§æ¹å¼æåå¨ä¸èµ·ï¼åè½å¤å°ä»ä»¬åæ¥å¾æ°å°å¥½å¤ï¼é£è®²åºæ¥çæäºä¸å®ä¼æ¯ä¸ä¸ªå¥½æäºã\</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<strong><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ç¬¬ä¸æ­¥ï¼åè§£æäº</span></strong> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">æä»¬å·²ç»æ¸æ¥å°è®²å®äºä¸ä¸ªæäºï¼åè§£ä¹åæä»¬åç°éé¢æ¶åå°çå³é®ç©å¶å®å°±åªæå ä¸ªï¼APPåç«¯ï¼é¦é¡µãåååè¡¨ãè®¢ååè¡¨ï¼ãæ¯ä»ç­ç­ãæä»¥å¨äº§åæ¶æä¸ï¼ä¸ºäºä¿è¯è¿äºä¸è¥¿é½å¾ä»¥å®ç°ï¼å¿é¡»è¦ä¿è¯æä¸ä¸ªAPPåç«¯ç³»ç»ï¼è¿ä¸ªç³»ç»ç±é¦é¡µï¼åååè¡¨ï¼è®¢ååè¡¨ç»æï¼é¤æ­¤ä¹å¤ï¼è¿éè¦æä¸ä¸ªç³»ç»æ¯ææ¯ä»ï¼ä¸ºäºæ¹ä¾¿ç®¡çï¼åå°è¿éè¦å°ç¨æ·çè®¢åè®°å½ä¿å­æèå±ç¤ºã\</span> \r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;text-indent:30px;background:#FFFFFF;\">\r\n	<span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">åäº¬APPå¼åå¬å\¸-æè¿é«å</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">è¡¨ç¤ºï¼å¼åä¸æ¬¾APPåºåç¹æ°¸è¿æ¯éæ±ãæä»¬ä¸è½æ³å½ç¶çè®¤ä¸ºæä¸ªAPPä¼å¾å¥½ï¼åªæçæ­£æ»¡è¶³ç¨æ·çéæ±å¹¶å¨åä¸ä¸è·å¾åæ¥çAPPæè½åå¾æåã\</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">APPå¼å\</span><span style=\"font-family:å¾®è½¯éé»;color:#444444;font-size:15px;\">ä¸­å®¹æç¯çæå¤§ä¸ä¸ªéè¯¯å°±æ¯å¨å®æåççAPPè§ååå¼å§æ§è¡ãæä»¥ï¼æä»¬éè¦ç»è§åç¯èè¶³å¤çéè§ã\</span> \r\n</p>','0','/Uploads/201604/571702b2ca20a.jpg','0','1','1','','0','0','/index.php?m=Article&a=show&id=73','2','1461125818','1461125892','','0');
INSERT INTO `yourphp_attachment` VALUES ('2','2','24','2','khjbSp2Yed.jpg','/www/PINGPHP/Uploads/201603/56df948626baa.jpg','43634','jpg','1','1','1','1457493126','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('3','2','25','3','solu-8.jpg','/www/PINGPHP/Uploads/201603/56df97a947b80.jpg','22650','jpg','1','1','1','1457493929','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('4','230','1','1','bannernew_03.jpg','/www/PINGPHP/Uploads/201603/56df9f7d87ad9.jpg','357680','jpg','1','0','1','1457495933','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('5','230','1','2','banner1.jpg','/www/PINGPHP/Uploads/201603/56dfb0bd61cac.jpg','79615','jpg','1','0','1','1457500349','0.0.0.0','1');
INSERT INTO `yourphp_attachment` VALUES ('7','230','1','1','56df9f7d87ad9.jpg','/Uploads/201603/56e27a33a1110.jpg','97950','jpg','1','0','2','1457682995','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('9','2','23','7','khjbSp2Yed.jpg','/Uploads/201603/56e27c599fcd5.jpg','43634','jpg','1','1','2','1457683545','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('10','2','23','3','solu-8.jpg','/Uploads/201603/56e27c7a87f10.jpg','22650','jpg','1','1','2','1457683578','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('11','2','22','4','æåå¼\º.jpg','/Uploads/201603/56e27c9532b0e.jpg','116907','jpg','1','1','2','1457683605','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('13','2','1','3','guanggao1.jpg','/Uploads/201603/56e28de98e099.jpg','544199','jpg','1','1','2','1457688041','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('14','4','1','1','ä¸ä¸.jpg','/Uploads/201603/56e290bc01928.jpg','327290','jpg','1','1','2','1457688764','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('15','4','1','1','ææº11156678985.png','/Uploads/201603/56e291b125c3a.png','211528','png','1','1','2','1457689009','221.220.251.112','1');
INSERT INTO `yourphp_attachment` VALUES ('16','2','26','8','å¥½é»ä¾¿å©1.png','/Uploads/201603/56e568cf4d940.png','207435','png','1','1','2','1457875151','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('17','2','0','0','éç¾ä¸\1.png','/Uploads/201603/56e568fa74e43.png','145307','png','1','1','2','1457875194','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('18','2','0','0','ç»çº±éå1.png','/Uploads/201603/56e5690b24d16.png','111604','png','1','1','2','1457875211','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('19','2','24','2','æ¥æ1.jpg','/Uploads/201603/56e5691c56624.jpg','51794','jpg','1','1','2','1457875228','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('20','2','0','0','ä¿åå\1.png','/Uploads/201603/56e5693834352.png','328751','png','1','1','2','1457875256','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('21','2','0','0','ååç©æµ1.png','/Uploads/201603/56e569470788b.png','92991','png','1','1','2','1457875271','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('22','2','0','0','ååç©æµ2.png','/Uploads/201603/56e5696ec76fb.png','68374','png','1','1','2','1457875310','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('23','2','22','10','ç§»å¨é¤é¥®1.png','/Uploads/201603/56e5697a660d8.png','87441','png','1','1','2','1457875322','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('24','2','22','9','ç§»å¨çµå1.png','/Uploads/201603/56e5698bbac10.png','172255','png','1','1','2','1457875339','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('25','2','0','0','ç§»å¨éè.png','/Uploads/201603/56e569e6c6fa1.png','211081','png','1','1','2','1457875430','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('26','2','23','11','äºå»1.png','/Uploads/201603/56e569f4514db.png','108578','png','1','1','2','1457875444','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('27','2','23','0','æä¸å»é¢1.jpg','/Uploads/201603/56e56a0b72465.jpg','46436','jpg','1','1','2','1457875467','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('28','2','0','0','æä¸­å®\1.png','/Uploads/201603/56e56a171e889.png','209666','png','1','1','2','1457875479','115.34.187.7','0');
INSERT INTO `yourphp_attachment` VALUES ('29','2','22','4','20150328115413799.jpg','/Uploads/201603/56e574be46aed.jpg','17749','jpg','1','1','2','1457878206','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('30','2','26','12','ä¿åå\2.png','/Uploads/201603/56e57719d3f5a.png','170364','png','1','1','2','1457878809','115.34.187.7','1');
INSERT INTO `yourphp_attachment` VALUES ('31','2','22','10','é¤é¥®app1.jpg','/Uploads/201603/56e6685249419.jpg','45634','jpg','1','0','2','1457940562','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('32','2','22','9','ååapp1.jpg','/Uploads/201603/56e66a345c69f.jpg','56162','jpg','1','0','2','1457941044','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('33','2','22','3','yy1.jpg','/Uploads/201603/56e66f2f30491.jpg','24795','jpg','1','0','2','1457942319','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('34','2','22','3','yy2.jpg','/Uploads/201603/56e66f89ec420.jpg','29251','jpg','1','0','2','1457942409','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('35','2','22','3','yy3.jpg','/Uploads/201603/56e66fdb8f80e.jpg','4779','jpg','1','0','2','1457942491','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('36','2','22','3','yy4.jpg','/Uploads/201603/56e66ff39ea4f.jpg','29701','jpg','1','0','2','1457942515','114.244.133.248','1');
INSERT INTO `yourphp_attachment` VALUES ('37','2','22','17','20160308042150310.jpg','/Uploads/201603/56e8d09838fda.jpg','19676','jpg','1','1','2','1458098328','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('38','2','10','18','5379962_073442099867_2.jpg','/Uploads/201603/56e8d34805a5b.jpg','134015','jpg','1','1','2','1458099016','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('39','2','10','19','8c832acb0163e525c587c75f0417f2f0.jpg','/Uploads/201603/56e8d4f219473.jpg','66343','jpg','1','1','2','1458099442','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('40','2','10','18','5379962_073442099867_2.jpg','/Uploads/201603/56e8d8ee89d3e.jpg','106240','jpg','1','1','2','1458100462','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('41','2','10','18','5379962_073442099867_2.jpg','/Uploads/201603/56e8d901b3118.jpg','106240','jpg','1','0','2','1458100481','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('42','2','22','31','3_fengkongqi_6996_20140329151104.jpg','/Uploads/201603/56e8dab7cb781.jpg','10388','jpg','1','1','2','1458100919','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('43','2','10','43','t01e3af85edde50d0c0.jpg','/Uploads/201603/56e8f7779a2e0.jpg','21230','jpg','1','1','2','1458108279','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('44','2','22','44','ç§»å¨éè.png','/Uploads/201603/56e8fc348a5ba.png','211081','png','1','0','2','1458109492','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('45','2','22','31','3_fengkongqi_6996_20140329151104.jpg','/Uploads/201603/56e8fd83ce8ca.jpg','10388','jpg','1','1','2','1458109827','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('46','2','0','0','2457331_164411003346_2.jpg','/Uploads/201603/56e8fe6c39ae8.jpg','113159','jpg','1','1','2','1458110060','221.221.233.24','0');
INSERT INTO `yourphp_attachment` VALUES ('47','2','22','31','2457331_164411003346_2.jpg','/Uploads/201603/56e8fe7f9bd4f.jpg','113159','jpg','1','1','2','1458110079','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('48','2','22','31','anli_wuliu1.jpg','/Uploads/201603/56e9056b6556a.jpg','33657','jpg','1','0','2','1458111851','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('49','2','22','31','wuliu2.jpg','/Uploads/201603/56e90593a2a09.jpg','37727','jpg','1','0','2','1458111891','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('50','2','22','45','QQå¾ç20160316155625.png','/Uploads/201603/56e9125b96ab7.png','131915','png','1','0','2','1458115163','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('51','2','22','45','59263608.jpg','/Uploads/201603/56e9138d13f7c.jpg','25770','jpg','1','1','2','1458115469','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('52','2','10','46','7414203_212959322105_2.jpg','/Uploads/201603/56e916bd1a43d.jpg','227253','jpg','1','0','2','1458116285','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('53','2','10','46','7414203_212959322105_2.jpg','/Uploads/201603/56e91736c7a1f.jpg','182123','jpg','1','0','2','1458116406','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('54','2','24','47','æä¸­å®\1.png','/Uploads/201603/56e9240cb3611.png','209666','png','1','1','2','1458119692','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('55','2','28','48','éç¾ä¸\1.png','/Uploads/201603/56e92ad81557b.png','145307','png','1','1','2','1458121432','221.221.233.24','1');
INSERT INTO `yourphp_attachment` VALUES ('56','2','3','49','mp60496559_1456372118639_1_th.jpeg','/Uploads/201603/56ea0fdb94270.jpeg','53629','jpeg','1','1','2','1458180059','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('57','2','3','50','20081241504499370.jpg','/Uploads/201603/56ea126879350.jpg','32223','jpg','1','1','2','1458180712','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('58','2','0','0','18025978734_830x285.jpg','/Uploads/201603/56ea14108ae53.jpg','101846','jpg','1','1','2','1458181136','221.221.254.106','0');
INSERT INTO `yourphp_attachment` VALUES ('59','2','3','51','18025978734_830x285.jpg','/Uploads/201603/56ea141cd2abe.jpg','101846','jpg','1','1','2','1458181148','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('60','2','3','51','062444_56977_c_pic.jpg','/Uploads/201603/56ea158880f90.jpg','49096','jpg','1','0','2','1458181512','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('61','2','3','52','20140217102618446.jpg','/Uploads/201603/56ea1750179ac.jpg','17686','jpg','1','1','2','1458181968','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('62','2','3','52','8_200706091931463.jpg','/Uploads/201603/56ea177c06c48.jpg','78372','jpg','1','0','2','1458182012','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('63','2','3','53','9FDCD89C695E4770973C9A3A8F5A4712.jpg','/Uploads/201603/56ea1e77a2d90.jpg','21951','jpg','1','1','2','1458183799','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('64','2','3','53','1536036185.jpg','/Uploads/201603/56ea1ef80ac81.jpg','70424','jpg','1','0','2','1458183928','221.221.254.106','1');
INSERT INTO `yourphp_attachment` VALUES ('65','2','10','55','123531smt8mplpnr8gmzyn.jpg','/Uploads/201603/56ef978d60ae4.jpg','27370','jpg','1','1','2','1458542477','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('66','230','1','2','banner1.jpg','/Uploads/201603/56efa013a7efa.jpg','132918','jpg','1','0','2','1458544659','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('67','2','22','57','maijiaxiu11.jpg','/Uploads/201603/56efb7ad801d3.jpg','126429','jpg','1','1','2','1458550701','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('68','2','22','57','zhifu33.jpg','/Uploads/201603/56efb7f6c0189.jpg','118759','jpg','1','0','2','1458550774','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('69','2','22','57','gouwu22.jpg','/Uploads/201603/56efb80570828.jpg','45102','jpg','1','0','2','1458550789','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('70','2','22','57','fenxiang11.jpg','/Uploads/201603/56efb82178612.jpg','43593','jpg','1','0','2','1458550817','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('71','2','22','57','shiyi11.png','/Uploads/201603/56efb82c05e15.png','108553','png','1','0','2','1458550828','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('72','230','1','1','56efb4b042b86.jpg','/Uploads/201603/56efbb92c7ee9.jpg','178758','jpg','1','0','2','1458551698','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('73','230','1','2','56efa1251dae7.jpg','/Uploads/201603/56efbbbbe6373.jpg','206868','jpg','1','0','2','1458551739','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('74','2','10','56','262501.jpg','/Uploads/201603/56efbda672da1.jpg','65966','jpg','1','1','2','1458552230','114.243.209.242','1');
INSERT INTO `yourphp_attachment` VALUES ('75','1','20','20','20141231113135625.png','/Uploads/201603/56f10819c3454.png','99402','png','1','0','2','1458636825','123.123.0.180','1');
INSERT INTO `yourphp_attachment` VALUES ('76','2','10','58','7cb02b04d543419f8fe66d6e28e624f7.jpg','/Uploads/201603/56f2052c10eb1.jpg','64154','jpg','1','0','2','1458701612','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('77','2','10','60','3572748995.jpg','/Uploads/201603/56f20e39c4a87.jpg','18018','jpg','1','1','2','1458703929','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('78','2','10','59','041328111269370.700x700.jpg','/Uploads/201603/56f20e599a931.jpg','110141','jpg','1','1','2','1458703961','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('79','2','10','61','get.jpg','/Uploads/201603/56f21011d6877.jpg','13047','jpg','1','1','2','1458704401','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('80','2','10','61','u=2198354506,4063054311&fm=21&gp=0.jpg','/Uploads/201603/56f210278fbbb.jpg','5686','jpg','1','0','2','1458704423','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('81','2','10','62','201501271700223603.jpg','/Uploads/201603/56f2162f07531.jpg','29653','jpg','1','1','2','1458705967','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('82','230','1','4','banner5.jpg','/Uploads/201603/56f26abbd43f0.jpg','157191','jpg','1','0','2','1458727611','61.48.43.220','1');
INSERT INTO `yourphp_attachment` VALUES ('83','1','20','20','iMobile.png','/Uploads/201603/56f38b52beddc.png','93336','png','1','0','2','1458801490','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('84','1','20','20','iMobile.png','/Uploads/201603/56f38c3910d1e.png','89578','png','1','0','2','1458801721','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('85','1','20','20','iMobile.png','/Uploads/201603/56f38f8019914.png','90641','png','1','0','2','1458802560','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('86','1','20','20','iMobile.png','/Uploads/201603/56f3904431cbd.png','88912','png','1','0','2','1458802756','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('87','2','22','63','5310995236.jpg','/Uploads/201603/56f3b67022899.jpg','31989','jpg','1','0','2','1458812528','61.48.59.166','1');
INSERT INTO `yourphp_attachment` VALUES ('88','2','10','64','u=194632033,3447876742&fm=11&gp=0.jpg','/Uploads/201603/56f49ef335468.jpg','217267','jpg','1','1','2','1458872051','221.217.179.121','1');
INSERT INTO `yourphp_attachment` VALUES ('89','2','3','65','upload_img_14238397214104.png','/Uploads/201603/56f4addae350d.png','82669','png','1','1','2','1458875866','221.217.179.121','1');
INSERT INTO `yourphp_attachment` VALUES ('90','2','10','66','10.jpg','/Uploads/201603/56f8aa5411ba0.jpg','22275','jpg','1','1','2','1459137108','221.221.255.121','1');
INSERT INTO `yourphp_attachment` VALUES ('91','2','3','67','2015012818320411411.jpg','/Uploads/201603/56fb8c65684fc.jpg','195447','jpg','1','1','2','1459326053','123.113.101.209','1');
INSERT INTO `yourphp_attachment` VALUES ('92','2','3','67','u=1559201635,1175104857&fm=21&gp=0.jpg','/Uploads/201603/56fb8cb735a37.jpg','19949','jpg','1','0','2','1459326135','123.113.101.209','1');
INSERT INTO `yourphp_attachment` VALUES ('93','2','3','68','20150328115413799.jpg','/Uploads/201603/56fce44589c3a.jpg','17749','jpg','1','1','2','1459414085','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('94','2','3','68','201472623171016366.jpg','/Uploads/201603/56fce49da2edc.jpg','92076','jpg','1','0','2','1459414173','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('95','2','10','58','041328111269370.700x700.jpg','/Uploads/201603/56fce52936916.jpg','110141','jpg','1','1','2','1459414313','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('96','2','10','58','Cg-4WlJbU6uIHU_sAAw9OUjawgcAAMgKAB63w0ADD1R863 (1)','/Uploads/201603/56fce62a784e5.jpg','802105','jpg','1','1','2','1459414570','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('97','2','10','58','t015e691ec0261c97ad.jpg','/Uploads/201603/56fce78a5f2d3.jpg','5811','jpg','1','1','2','1459414922','114.240.82.43','1');
INSERT INTO `yourphp_attachment` VALUES ('98','2','10','69','1419051639465623.jpg','/Uploads/201604/570c5b8a90ee0.jpg','35906','jpg','1','1','2','1460427658','61.48.71.73','1');
INSERT INTO `yourphp_attachment` VALUES ('99','2','10','71','20150328115413799.jpg','/Uploads/201604/571448366399d.jpg','17749','jpg','1','1','2','1460946998','114.243.220.170','1');
INSERT INTO `yourphp_attachment` VALUES ('100','2','10','43','640.webp.jpg','/Uploads/201604/5716f16a41e9a.jpg','55397','jpg','1','0','2','1461121386','123.113.101.74','1');
INSERT INTO `yourphp_attachment` VALUES ('101','2','3','73','20150328115413799.jpg','/Uploads/201604/571702b2ca20a.jpg','17749','jpg','1','1','2','1461125810','123.113.101.74','1');
INSERT INTO `yourphp_attachment` VALUES ('102','2','3','73','640.webp (1).jpg','/Uploads/201604/571702f7b0821.jpg','98183','jpg','1','0','2','1461125879','123.113.101.74','1');
INSERT INTO `yourphp_block` VALUES ('1','about','é¦é¡µå¬å¸ç®ä»\','1','');
INSERT INTO `yourphp_block` VALUES ('2','contact','å³ä¾§èç³»æä»¬','1','');
INSERT INTO `yourphp_block` VALUES ('3','footer','é¡µåº','1','<p>\r\n	<br />\r\n</p>');
INSERT INTO `yourphp_category` VALUES ('1','èµè®¯','news','','0','2','Article','0','1,3,10','0','èµè®¯','èµè®¯','èµè®¯','3','0','1','0','','1','/index.php?m=Article&a=index&id=1','list','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('3','å¬å¸èµè®¯','gongsi','news/','1','2','Article','0,1','3','0','å¬å¸æ°é»','å¬å¸æ°é»','å¬å¸æ°é»','0','0','1','0','','0','/index.php?m=Article&a=index&id=3','list','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('8','å³äº','about','','0','1','Page','0','8,11,27,12','0','','','','99','0','1','0','','1','/index.php?m=Page&a=index&id=8','','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('10','è¡ä¸èµè®¯','zixun','news/','1','2','Article','0,1','10','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=10','list','','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('11','å³äºæä»¬','info','about/','8','1','Page','0,8','11','0','','','','9901','0','1','0','','0','/index.php?m=Page&a=index&id=11','index','index','0','','0','1','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('12','èç³»æä»¬','contactus','about/','8','1','Page','0,8','12','0','èç³»æä»¬','èç³»æä»¬','èç³»æä»¬','9903','0','1','0','','0','/index.php?m=Page&a=index&id=12','','','0','','0','1','0','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('20','æå¡','services','','0','1','Page','0','20','0','','','','0','0','1','0','','0','/index.php?m=Page&a=index&id=20','','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('21','æ¡ä¾','case','','0','2','Article','0','21,23,24,26,28','0','','','','1','0','1','0','','1','/index.php?m=Article&a=index&id=21','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('22','æ¹æ¡','project','','0','2','Article','0','22','0','','','','2','0','1','0','','0','/index.php?m=Article&a=index&id=22','list_project','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('23','å»çå»è¯','health','case/','21','2','Article','0,21','23','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=23','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('24','éèç½è´·','p2p','case/','21','2','Article','0,21','24','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=24','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('26','çµå­åå¡','ydds','case/','21','2','Article','0,21','26','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=26','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('27','æèä¿¡æ¯','job','about/','8','1','Page','0,8','27','0','','','','9902','0','1','0','','0','/index.php?m=Page&a=index&id=27','','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_category` VALUES ('28','çæ´»æå¡','yidongcy','case/','21','2','Article','0,21','28','0','','','','0','0','1','0','','0','/index.php?m=Article&a=index&id=28','list_case','','0','','0','0','4','0','0','0','0','');
INSERT INTO `yourphp_config` VALUES ('site_name','ç½ç«åç§°','2','æè¿é«å:ç§»å¨çµåAPPå¼å|O2Oå¼å|å¨çº¿æè²APPå¼å|ç§»å¨å»çAPP|äºèç½éè\','1');
INSERT INTO `yourphp_config` VALUES ('site_url','ç½ç«ç½å','2','http://www.sygcsoft.com/','1');
INSERT INTO `yourphp_config` VALUES ('logo','ç½ç«LOGO','2','/Public/Images/logo.gif','1');
INSERT INTO `yourphp_config` VALUES ('site_email','ç«ç¹é®ç®±','2','admin@pingphp.com','1');
INSERT INTO `yourphp_config` VALUES ('seo_title','ç½ç«æ é¢','2','æè¿é«å:å¯è½æ¯æå¥½çAPPå¼åå¬å\¸','1');
INSERT INTO `yourphp_config` VALUES ('seo_keywords','å³é®è¯\','2','ç§»å¨çµåAPPå¼å|O2Oå¼å|å¨çº¿æè²APPå¼å|ç§»å¨å»çAPP|äºèç½éè|æ±½è½¦APPå¼å|éåºAPPå¼å|é¤é¥®APPå¼å|APPå¼å|Androidå®åå¼å|iOSå¼å|APPåºç¨å¼å|APPå¼åå¬å¸|APPå®å¶|APPè®¾è®¡','1');
INSERT INTO `yourphp_config` VALUES ('seo_description','ç½ç«ç®ä»\','2','æè¿é«å,ä¸æ³¨äºæ±½è½¦APPå¼å\,éåºAPPå¼å\,é¤é¥®APPå¼å\, ææºAPPå¼å\,å®åå¼å\,iOSå¼å\,ä¸æµçå¢é,æä¾å®ç¾çAPPè§£å³æ¹æ¡','1');
INSERT INTO `yourphp_config` VALUES ('mail_type','é®ä»¶åéæ¨¡å¼\','4','1','0');
INSERT INTO `yourphp_config` VALUES ('mail_server','é®ä»¶æå¡å\¨','4','smtp.qq.com','0');
INSERT INTO `yourphp_config` VALUES ('mail_port','é®ä»¶åéç«¯å\£','4','25','0');
INSERT INTO `yourphp_config` VALUES ('mail_from','åä»¶äººå°å','4','admin@yourphp.cn','0');
INSERT INTO `yourphp_config` VALUES ('mail_auth','AUTH LOGINéªè¯','4','1','0');
INSERT INTO `yourphp_config` VALUES ('mail_user','éªè¯ç¨æ·å\','4','admin@yourphp.cn','0');
INSERT INTO `yourphp_config` VALUES ('mail_password','éªè¯å¯ç ','4','','0');
INSERT INTO `yourphp_config` VALUES ('attach_maxsize','åè®¸ä¸ä¼ éä»¶å¤§å°','5','5200000','0');
INSERT INTO `yourphp_config` VALUES ('attach_allowext','åè®¸ä¸ä¼ éä»¶ç±»å','5','jpg,jpeg,gif,png,doc,docx,rar,zip,swf','0');
INSERT INTO `yourphp_config` VALUES ('watermark_enable','æ¯å¦å¼å¯å¾çæ°´å\°','5','0','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text','æ°´å°æå­åå®¹','5','','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text_size','æå­å¤§å°','5','18','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text_color','watemard_text_color','5','#FFFFFF','0');
INSERT INTO `yourphp_config` VALUES ('watemard_text_face','å­ä½','5','elephant.ttf','0');
INSERT INTO `yourphp_config` VALUES ('watermark_minwidth','å¾çæå°å®½åº\¦','5','300','0');
INSERT INTO `yourphp_config` VALUES ('watermark_minheight','æ°´å°æå°é«åº\¦','5','300','0');
INSERT INTO `yourphp_config` VALUES ('watermark_img','æ°´å°å¾çåç§°','5','mark.png','0');
INSERT INTO `yourphp_config` VALUES ('watermark_pct','æ°´å°éæåº\¦','5','80','0');
INSERT INTO `yourphp_config` VALUES ('watermark_quality','JPEG æ°´å°è´¨é','5','100','0');
INSERT INTO `yourphp_config` VALUES ('watermark_pospadding','æ°´å°è¾¹è·','5','10','0');
INSERT INTO `yourphp_config` VALUES ('watermark_pos','æ°´å°ä½ç½®','5','9','0');
INSERT INTO `yourphp_config` VALUES ('PAGE_LISTROWS','åè¡¨åé¡µæ\°','6','60','0');
INSERT INTO `yourphp_config` VALUES ('URL_MODEL','URLè®¿é®æ¨¡å¼','6','0','0');
INSERT INTO `yourphp_config` VALUES ('URL_PATHINFO_DEPR','åæ°åå²ç¬\¦','6','/','0');
INSERT INTO `yourphp_config` VALUES ('URL_HTML_SUFFIX','URLä¼ªéæåç¼','6','.html','0');
INSERT INTO `yourphp_config` VALUES ('TOKEN_ON','ä»¤çéªè¯','6','0','0');
INSERT INTO `yourphp_config` VALUES ('TOKEN_NAME','ä»¤çè¡¨åå­æ®µ','6','__hash__','0');
INSERT INTO `yourphp_config` VALUES ('TMPL_CACHE_ON','æ¨¡æ¿ç¼è¯ç¼å­','6','0','0');
INSERT INTO `yourphp_config` VALUES ('TMPL_CACHE_TIME','æ¨¡æ¿ç¼å­æææ\','6','-1','0');
INSERT INTO `yourphp_config` VALUES ('HTML_CACHE_ON','éæç¼å­\','6','0','0');
INSERT INTO `yourphp_config` VALUES ('HTML_CACHE_TIME','ç¼å­æææ\','6','60','0');
INSERT INTO `yourphp_config` VALUES ('HTML_READ_TYPE','ç¼å­è¯»åæ¹å¼','6','0','0');
INSERT INTO `yourphp_config` VALUES ('HTML_FILE_SUFFIX','éææä»¶åç¼','6','.html','0');
INSERT INTO `yourphp_config` VALUES ('ADMIN_ACCESS','ADMIN_ACCESS','6','361a383e7d0f28f22d9ce6f046cd9e00','0');
INSERT INTO `yourphp_config` VALUES ('DEFAULT_THEME','é»è®¤æ¨¡æ¿','6','Default','0');
INSERT INTO `yourphp_config` VALUES ('HOME_ISHTML','é¦é¡µçæhtml','6','1','0');
INSERT INTO `yourphp_config` VALUES ('URL_URLRULE','URL','6','{$catdir}/show/{$id}.html|{$catdir}/show/{$id}_{$page}.html:::{$catdir}/|{$catdir}/{$page}.html','0');
INSERT INTO `yourphp_config` VALUES ('DEFAULT_LANG','é»è®¤è¯­è¨','6','cn','0');
INSERT INTO `yourphp_config` VALUES ('member_register','åè®¸æ°ä¼åæ³¨å\','3','0','1');
INSERT INTO `yourphp_config` VALUES ('member_emailcheck','æ°ä¼åæ³¨åéè¦é®ä»¶éªè¯\','3','0','1');
INSERT INTO `yourphp_config` VALUES ('member_registecheck','æ°ä¼åæ³¨åéè¦å®¡æ \¸','3','1','1');
INSERT INTO `yourphp_config` VALUES ('member_login_verify','æ³¨åç»éå¼å¯éªè¯ç ','3','1','1');
INSERT INTO `yourphp_config` VALUES ('member_emailchecktpl','é®ä»¶è®¤è¯æ¨¡æ¿','3',' æ¬¢è¿æ¨æ³¨åæä¸ºyourphpç¨æ·ï¼æ¨çè´¦å·éè¦é®ç®±è®¤è¯ï¼ç¹å»ä¸é¢é¾æ¥è¿è¡è®¤è¯ï¼{click}\r\næèå°ç½åå¤å¶å°æµè§å¨ï¼{url}','1');
INSERT INTO `yourphp_config` VALUES ('member_getpwdemaitpl','å¯ç æ¾åé®ä»¶åå®¹','3','å°æ¬çç¨æ·{username}ï¼è¯·ç¹å»è¿å¥<a href=\"{url}\">éç½®å¯ç </a>,æèå°ç½åå¤å¶å°æµè§å¨ï¼{url}ï¼é¾æ\¥3å¤©åææï¼ã\<br>æè°¢æ¨å¯¹æ¬ç«çæ¯æã\<br>ãããããããããããããããããããããããããããããã{sitename}<br>æ­¤é®ä»¶ä¸ºç³»ç»èªå¨é®ä»¶ï¼æ éåå¤ã\','1');
INSERT INTO `yourphp_config` VALUES ('LAYOUT_ON','å¸å±æ¨¡æ¿','6','1','0');
INSERT INTO `yourphp_config` VALUES ('ADMIN_VERIFY','åå°ç»ééªè¯ç \','6','1','0');
INSERT INTO `yourphp_field` VALUES ('1','1','title','æ é¢','','1','3','80','','æ é¢å¿å¡«3-80ä¸ªå­','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('2','1','keywords','å³é®è¯\','','0','0','0','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('3','1','description','SEOç®ä»\','','0','0','0','','','','textarea','array (\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('4','1','content','åå®¹','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'jpg,jpeg,gif,doc,rar,zip,xls\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('5','2','catid','æ ç®','','1','1','6','digits','å¿é¡»éæ©ä¸ä¸ªæ ç\®','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('6','2','title','æ é¢','','1','0','0','','æ é¢å¿é¡»ä¸\º1-80ä¸ªå­ç¬\¦','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('7','2','keywords','å³é®è¯\','','0','0','0','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('8','2','description','SEOç®ä»\','','0','0','0','','','','textarea','array (\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('9','2','content','åå®¹','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'1\',\n  \'show_auto_thumb\' => \'1\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('10','2','createtime','åå¸æ¶é´','','1','0','0','','','','datetime','','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('11','2','copyfrom','æ¥æº','','0','0','0','0','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('12','2','fromlink','æ¥æºç½å','','0','0','0','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('13','2','readgroup','è®¿é®æé','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('14','2','posid','æ¨èä½\','','0','0','0','','','','posid','','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('15','2','template','æ¨¡æ¿','','0','0','0','','','','template','','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('16','2','status','ç¶æ\','','0','0','0','','','','radio','array (\n  \'options\' => \'åå¸|1\r\nå®æ¶åå¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','0','1','1');
INSERT INTO `yourphp_field` VALUES ('17','3','catid','æ ç®','','1','1','6','','å¿é¡»éæ©ä¸ä¸ªæ ç\®','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('18','3','title','æ é¢','','1','1','80','','æ é¢å¿é¡»ä¸\º1-80ä¸ªå­ç¬\¦','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('19','3','keywords','å³é®è¯\','','0','0','80','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('20','3','description','SEOç®ä»\','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('21','3','content','åå®¹','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','10','1','1');
INSERT INTO `yourphp_field` VALUES ('22','3','createtime','åå¸æ¶é´','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('25','3','readgroup','è®¿é®æé','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','96','0','1');
INSERT INTO `yourphp_field` VALUES ('26','3','posid','æ¨èä½\','','0','0','0','','','','posid','','1','3,4','97','1','1');
INSERT INTO `yourphp_field` VALUES ('27','3','template','æ¨¡æ¿','','0','0','0','','','','template','','1','3,4','98','1','1');
INSERT INTO `yourphp_field` VALUES ('28','3','status','ç¶æ\','','0','0','0','','','','radio','array (\n  \'options\' => \'åå¸|1\r\nå®æ¶åå¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('29','3','price','ä»·æ ¼','','0','0','0','','','','number','array (\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'2\',\n  \'default\' => \'0\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('30','3','xinghao','åå·','','0','0','30','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('31','2','recommend','åè®¸è¯è®º','','0','0','1','','','','radio','array (\n  \'options\' => \'åè®¸è¯è®º|1\r\nä¸åè®¸è¯è®º|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('32','2','readpoint','éè¯»æ¶è´¹','','0','0','3','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('33','2','hits','ç¹å»æ¬¡æ°','','0','0','8','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('34','3','recommend','åè®¸è¯è®º','','0','0','1','','','','radio','array (\n  \'options\' => \'åè®¸è¯è®º|1\r\nä¸åè®¸è¯è®º|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('35','3','readpoint','éè¯»æ¶è´¹','','0','0','5','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('36','3','hits','ç¹å»æ¬¡æ°','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('37','4','catid','æ ç®','','1','1','6','','å¿é¡»éæ©ä¸ä¸ªæ ç\®','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('38','4','title','æ é¢','','1','1','80','','æ é¢å¿é¡»ä¸\º1-80ä¸ªå­ç¬\¦','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('39','4','keywords','å³é®è¯\','','0','0','80','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('40','4','description','SEOç®ä»\','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('41','4','content','åå®¹','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','10','1','1');
INSERT INTO `yourphp_field` VALUES ('42','4','createtime','åå¸æ¶é´','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('43','4','recommend','åè®¸è¯è®º','','0','0','1','','','','radio','array (\n  \'options\' => \'åè®¸è¯è®º|1\r\nä¸åè®¸è¯è®º|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('44','4','readpoint','éè¯»æ¶è´¹','','0','0','5','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('45','4','hits','ç¹å»æ¬¡æ°','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('46','4','readgroup','è®¿é®æé','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','96','0','1');
INSERT INTO `yourphp_field` VALUES ('47','4','posid','æ¨èä½\','','0','0','0','','','','posid','','1','3,4','97','1','1');
INSERT INTO `yourphp_field` VALUES ('48','4','template','æ¨¡æ¿','','0','0','0','','','','template','','1','3,4','98','1','1');
INSERT INTO `yourphp_field` VALUES ('49','4','status','ç¶æ\','','0','0','0','','','','radio','array (\n  \'options\' => \'åå¸|1\r\nå®æ¶åå¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('50','5','catid','æ ç®','','1','1','6','','å¿é¡»éæ©ä¸ä¸ªæ ç\®','','catid','','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('51','5','title','æ é¢','','1','1','80','','æ é¢å¿é¡»ä¸\º1-80ä¸ªå­ç¬\¦','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('52','5','keywords','å³é®è¯\','','0','0','80','','','','text','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('53','5','description','SEOç®ä»\','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)','1','','0','1','1');
INSERT INTO `yourphp_field` VALUES ('54','5','content','åå®¹','','0','0','0','','','','editor','array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)','1','','10','1','1');
INSERT INTO `yourphp_field` VALUES ('55','5','createtime','åå¸æ¶é´','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('56','5','recommend','åè®¸è¯è®º','','0','0','1','','','','radio','array (\n  \'options\' => \'åè®¸è¯è®º|1\r\nä¸åè®¸è¯è®º|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('57','5','readpoint','éè¯»æ¶è´¹','','0','0','5','','','','number','array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','3,4','0','0','0');
INSERT INTO `yourphp_field` VALUES ('58','5','hits','ç¹å»æ¬¡æ°','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('59','5','readgroup','è®¿é®æé','','0','0','0','','','','groupid','array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)','1','3,4','96','0','1');
INSERT INTO `yourphp_field` VALUES ('60','5','posid','æ¨èä½\','','0','0','0','','','','posid','','1','3,4','97','1','1');
INSERT INTO `yourphp_field` VALUES ('61','5','template','æ¨¡æ¿','','0','0','0','','','','template','','1','3,4','98','1','1');
INSERT INTO `yourphp_field` VALUES ('62','5','status','ç¶æ\','','0','0','0','','','','radio','array (\n  \'options\' => \'åå¸|1\r\nå®æ¶åå¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('63','3','pics','å¾ç','','0','0','0','','','','images','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'10\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'jpeg,jpg,gif\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('64','4','pics','å¾ç»','','0','0','0','','','','images','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxnum\' => \'20\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'jpeg,jpg,png,gif\',\n  \'watermark\' => \'0\',\n  \'more\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('65','5','file','ä¸ä¼ æä»¶','','0','0','0','','','','file','array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'2\',\n  \'upload_allowext\' => \'zip,rar,doc,ppt\',\n  \'more\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('66','5','ext','ææ¡£ç±»å','','0','0','10','','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('67','5','size','ææ¡£å¤§å°','','0','0','10','','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('68','5','downs','ä¸è½½æ¬¡æ°','','0','0','0','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)','1','','0','0','0');
INSERT INTO `yourphp_field` VALUES ('69','6','username','å§å','','1','2','20','cn_username','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','2','1','0');
INSERT INTO `yourphp_field` VALUES ('70','6','telephone','çµè¯','','0','0','0','tel','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','4','1','0');
INSERT INTO `yourphp_field` VALUES ('71','6','email','é®ç®±','','1','0','50','email','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','2','1','0');
INSERT INTO `yourphp_field` VALUES ('72','6','content','åå®¹','','1','4','200','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'5\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)','1','','5','1','0');
INSERT INTO `yourphp_field` VALUES ('73','6','ip','æäº¤IP','','0','0','0','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','3,4','6','1','0');
INSERT INTO `yourphp_field` VALUES ('74','6','title','æ é¢','','1','4','50','','','','text','array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','3,4','1','1','0');
INSERT INTO `yourphp_field` VALUES ('76','6','createtime','æäº¤æ¶é´','','0','0','0','','','','datetime','','0','3,4','98','1','0');
INSERT INTO `yourphp_field` VALUES ('78','6','status','å®¡æ ¸ç¶æ\','','0','0','1','','','','radio','array (\n  \'options\' => \'å·±å®¡æ ¸|1\r\næªå®¡æ ¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'0\',\n)','0','3,4','99','1','0');
INSERT INTO `yourphp_field` VALUES ('79','6','typeid','åé¦ç±»å«','','0','0','0','','','','typeid','array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'4\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('80','35','createtime','åå¸æ¶é´','','1','0','0','','','','datetime','','1','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('81','7','status','ç¶æ\','','0','0','1','','','','radio','array (\n  \'options\' => \'å·²å®¡æ ¸|1\r\næªå®¡æ ¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('82','7','name','ç½ç«åç§°','','1','2','50','','','','text','array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','1','1','0');
INSERT INTO `yourphp_field` VALUES ('83','7','logo','ç½ç«LOGO','','0','0','0','','','','image','array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n)','1','','2','1','0');
INSERT INTO `yourphp_field` VALUES ('84','7','siteurl','ç½ç«å°å','','1','10','150','url','','','text','array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','3','1','0');
INSERT INTO `yourphp_field` VALUES ('85','7','typeid','åæé¾æ¥åç±»','','0','0','0','','','','typeid','array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('86','7','linktype','é¾æ¥ç±»å','','0','0','1','','','','radio','array (\n  \'options\' => \'æå­é¾æ¥|1\r\nLOGOé¾æ¥|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('87','7','siteinfo','ç«ç¹ç®ä»\','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'3\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)','1','','4','1','0');
INSERT INTO `yourphp_field` VALUES ('88','8','createtime','æäº¤æ¶é´','','1','0','0','','','','datetime','','0','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('89','8','status','ç¶æ\','','0','0','0','','','','radio','array (\n  \'options\' => \'å·²å®¡æ ¸|1\r\næªå®¡æ ¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'0\',\n)','0','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('90','8','title','æ é¢','','1','2','50','','','','text','array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('91','8','username','å§å','','1','2','20','','','','text','array (\n  \'size\' => \'10\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('92','8','telephone','çµè¯','','0','0','0','tel','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','1','1','0');
INSERT INTO `yourphp_field` VALUES ('93','8','email','é®ç®±','','1','0','40','email','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','1','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('94','8','content','åå®¹','','1','2','200','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)','1','','10','1','0');
INSERT INTO `yourphp_field` VALUES ('95','8','reply_content','åå¤','','0','0','0','','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)','0','3,4','10','1','0');
INSERT INTO `yourphp_field` VALUES ('96','8','ip','IP','','0','0','15','','','','text','array (\n  \'size\' => \'15\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','3,4','90','1','0');
INSERT INTO `yourphp_field` VALUES ('97','9','createtime','åå¸æ¶é´','','1','0','0','','','','datetime','','0','3,4','93','1','1');
INSERT INTO `yourphp_field` VALUES ('98','9','status','ç¶æ\','','0','0','0','','','','radio','array (\n  \'options\' => \'å·²å®¡æ ¸|1\r\næªå®¡æ ¸|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','0','3,4','99','1','1');
INSERT INTO `yourphp_field` VALUES ('99','9','name','å®¢æåç§°','','0','2','20','','','','text','array (\n  \'size\' => \'20\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('100','9','type','å®¢æç±»å','','1','1','2','0','','','select','array (\n  \'options\' => \'QQ|1\r\nMSN|2\r\næºæº|3\r\nè´¸æé|6\r\nçµè¯|4\r\nä»£ç |5\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)','0','','0','1','0');
INSERT INTO `yourphp_field` VALUES ('101','9','code','IDæä»£ç \','','0','2','0','0','','','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'50\',\n  \'default\' => \'\',\n)','0','','10','1','0');
INSERT INTO `yourphp_field` VALUES ('102','9','skin','é£æ ¼æ ·å¼','','0','0','3','0','','','select','array (\n  \'options\' => \'æ é£æ ¼å¾æ |0\r\nQQé£æ ¼1|q1\r\nQQé£æ ¼2|q2\r\nQQé£æ ¼3|q3\r\nQQé£æ ¼4|q4\r\nQQé£æ ¼5|q5\r\nQQé£æ ¼6|q6\r\nQQé£æ ¼7|q7\r\nMSNå°å¾|m1\r\nMSNå¤§å¾1|m2\r\nMSNå¤§å¾2|m3\r\nMSNå¤§å¾3|m4\r\næºæºå°å¾|w2\r\næºæºå¤§å¾|w1\r\nè´¸æé|al1\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)','0','','0','1','0');
INSERT INTO `yourphp_kefu` VALUES ('1','1','4','1306807701','å¨è¯¢çµè¯','4','0317-5022625','0','1');
INSERT INTO `yourphp_kefu` VALUES ('2','1','3','1306808886','QQå®¢æ','1','2579766780','q3','1');
INSERT INTO `yourphp_kefu` VALUES ('3','1','0','1306830001','æºæºå®¢æ','3','snliuxun','w1','1');
INSERT INTO `yourphp_lang` VALUES ('1','ä¸­æ','cn','cn.gif','1','','','1');
INSERT INTO `yourphp_lang` VALUES ('2','è±æ','en','en.gif','1','','','2');
INSERT INTO `yourphp_link` VALUES ('1','1','0','1306547518','Yourphpä¼ä¸ç½ç«ç®¡çç³»ç»','http://www.yourphp.cn/Public/Images/logo.gif','http://www.yourphp.cn','2','2','phpä¼ä¸ç½ç«ç®¡çç³»ç»','1');
INSERT INTO `yourphp_link` VALUES ('2','1','0','1306554684','ä¼ä¸ç½ç«ç®¡çç³»ç»','','http://www.yourphp.cn','2','1','','1');
INSERT INTO `yourphp_log` VALUES ('1','0','0','pingphp','ç»å½æå','0.0.0.0','1457417691');
INSERT INTO `yourphp_log` VALUES ('2','0','0','pingphp','ç»å½æå','0.0.0.0','1457418964');
INSERT INTO `yourphp_log` VALUES ('3','0','0','pingphp','ç»å½æå','0.0.0.0','1457419009');
INSERT INTO `yourphp_log` VALUES ('4','0','0','pingphp','ç»å½æå','0.0.0.0','1457419295');
INSERT INTO `yourphp_log` VALUES ('5','1','0','hello','å¯ç éè¯¯:hello','221.220.251.112','1457682199');
INSERT INTO `yourphp_log` VALUES ('6','0','0','pingphp','ç»å½æå','221.220.251.112','1457682228');
INSERT INTO `yourphp_log` VALUES ('7','0','0','hello','ç»å½æå','221.220.251.112','1457682334');
INSERT INTO `yourphp_log` VALUES ('8','0','0','hello','ç»å½æå','221.220.251.112','1457682806');
INSERT INTO `yourphp_log` VALUES ('9','1','0','hello','å¯ç éè¯¯::hello','221.220.251.112','1457687870');
INSERT INTO `yourphp_log` VALUES ('10','1','0','hello','å¯ç éè¯¯::hello','221.220.251.112','1457687872');
INSERT INTO `yourphp_log` VALUES ('11','1','0','hello','å¯ç éè¯¯::hello','221.220.251.112','1457687875');
INSERT INTO `yourphp_log` VALUES ('12','1','0','hello','å¯ç éè¯¯::hello','221.220.251.112','1457687877');
INSERT INTO `yourphp_log` VALUES ('13','0','0','hello','ç»å½æå','221.220.251.112','1457687885');
INSERT INTO `yourphp_log` VALUES ('14','0','0','hello','ç»å½æå','115.34.187.7','1457873077');
INSERT INTO `yourphp_log` VALUES ('15','0','0','hello','ç»å½æå','114.244.133.248','1457919971');
INSERT INTO `yourphp_log` VALUES ('16','0','0','hello','ç»å½æå','114.244.133.248','1457923625');
INSERT INTO `yourphp_log` VALUES ('17','0','0','hello','ç»å½æå','114.244.133.248','1457927396');
INSERT INTO `yourphp_log` VALUES ('18','0','0','hello','ç»å½æå','114.244.133.248','1457938905');
INSERT INTO `yourphp_log` VALUES ('19','0','0','hello','ç»å½æå','114.244.133.248','1457940240');
INSERT INTO `yourphp_log` VALUES ('20','0','0','hello','ç»å½æå','114.244.133.248','1457944782');
INSERT INTO `yourphp_log` VALUES ('21','0','0','hello','ç»å½æå','123.113.103.70','1458004596');
INSERT INTO `yourphp_log` VALUES ('22','0','0','hello','ç»å½æå','123.113.103.70','1458035819');
INSERT INTO `yourphp_log` VALUES ('23','1','0','hello','å¯ç éè¯¯:helo','221.221.233.24','1458096316');
INSERT INTO `yourphp_log` VALUES ('24','0','0','hello','ç»å½æå','221.221.233.24','1458096326');
INSERT INTO `yourphp_log` VALUES ('25','0','0','hello','ç»å½æå','221.221.233.24','1458098528');
INSERT INTO `yourphp_log` VALUES ('26','0','0','pingphp','ç»å½æå','221.221.233.24','1458107372');
INSERT INTO `yourphp_log` VALUES ('27','1','0','hello','å¯ç éè¯¯:heloo','221.221.233.24','1458107382');
INSERT INTO `yourphp_log` VALUES ('28','0','0','hello','ç»å½æå','221.221.233.24','1458107391');
INSERT INTO `yourphp_log` VALUES ('29','0','0','hello','ç»å½æå','221.221.233.24','1458107460');
INSERT INTO `yourphp_log` VALUES ('30','0','0','hello','ç»å½æå','221.221.254.106','1458178379');
INSERT INTO `yourphp_log` VALUES ('31','0','0','hello','ç»å½æå','221.221.254.106','1458182602');
INSERT INTO `yourphp_log` VALUES ('32','0','0','hello','ç»å½æå','221.221.254.106','1458206859');
INSERT INTO `yourphp_log` VALUES ('33','0','0','hello','ç»å½æå','221.221.254.106','1458270433');
INSERT INTO `yourphp_log` VALUES ('34','0','0','hello','ç»å½æå','221.221.254.106','1458274519');
INSERT INTO `yourphp_log` VALUES ('35','0','0','hello','ç»å½æå','221.221.254.106','1458293305');
INSERT INTO `yourphp_log` VALUES ('36','0','0','hello','ç»å½æå','114.243.209.242','1458542335');
INSERT INTO `yourphp_log` VALUES ('37','0','0','hello','ç»å½æå','114.243.209.242','1458544626');
INSERT INTO `yourphp_log` VALUES ('38','0','0','hello','ç»å½æå','114.243.209.242','1458551765');
INSERT INTO `yourphp_log` VALUES ('39','0','0','hello','ç»å½æå','123.123.0.180','1458611201');
INSERT INTO `yourphp_log` VALUES ('40','0','0','hello','ç»å½æå','123.123.0.180','1458636720');
INSERT INTO `yourphp_log` VALUES ('41','0','0','hello','ç»å½æå','61.48.43.220','1458700861');
INSERT INTO `yourphp_log` VALUES ('42','0','0','hello','ç»å½æå','61.48.43.220','1458727554');
INSERT INTO `yourphp_log` VALUES ('43','0','0','hello','ç»å½æå','61.48.59.166','1458782280');
INSERT INTO `yourphp_log` VALUES ('44','0','0','hello','ç»å½æå','61.48.59.166','1458782775');
INSERT INTO `yourphp_log` VALUES ('45','0','0','hello','ç»å½æå','61.48.59.166','1458806972');
INSERT INTO `yourphp_log` VALUES ('46','0','0','hello','ç»å½æå','221.217.179.121','1458871398');
INSERT INTO `yourphp_log` VALUES ('47','1','0','hello','å¯ç éè¯¯:heloo','221.221.255.121','1459136735');
INSERT INTO `yourphp_log` VALUES ('48','0','0','hello','ç»å½æå','221.221.255.121','1459136743');
INSERT INTO `yourphp_log` VALUES ('49','0','0','hello','ç»å½æå','221.221.255.121','1459145824');
INSERT INTO `yourphp_log` VALUES ('50','0','0','hello','ç»å½æå','123.113.101.209','1459304209');
INSERT INTO `yourphp_log` VALUES ('51','1','0','hello','å¯ç éè¯¯:helloo','123.113.101.209','1459325591');
INSERT INTO `yourphp_log` VALUES ('52','0','0','hello','ç»å½æå','123.113.101.209','1459325602');
INSERT INTO `yourphp_log` VALUES ('53','0','0','hello','ç»å½æå','114.240.82.43','1459413855');
INSERT INTO `yourphp_log` VALUES ('54','0','0','hello','ç»å½æå','61.48.71.73','1460426588');
INSERT INTO `yourphp_log` VALUES ('55','0','0','hello','ç»å½æå','61.48.71.73','1460427007');
INSERT INTO `yourphp_log` VALUES ('56','0','0','hello','ç»å½æå','221.217.177.113','1460540118');
INSERT INTO `yourphp_log` VALUES ('57','0','0','hello','ç»å½æå','114.243.223.137','1460601150');
INSERT INTO `yourphp_log` VALUES ('58','0','0','hello','ç»å½æå','114.243.220.170','1460945564');
INSERT INTO `yourphp_log` VALUES ('59','0','0','hello','ç»å½æå','123.113.101.74','1461120933');
INSERT INTO `yourphp_log` VALUES ('60','0','0','hello','ç»å½æå','123.113.101.74','1461123917');
INSERT INTO `yourphp_log` VALUES ('61','0','0','hello','ç»å½æå','114.240.83.56','1461228157');
INSERT INTO `yourphp_menu` VALUES ('1','0','Index','main','menuid=42','1','1','0','åå°é¦é¡µ','','0');
INSERT INTO `yourphp_menu` VALUES ('2','0','Config','','menuid=50','1','1','0','ç³»ç»è®¾ç½®','ç³»ç»è®¾ç½®','1');
INSERT INTO `yourphp_menu` VALUES ('3','0','Category','','menuid=17','1','1','0','åå®¹ç®¡ç','æ¨¡åç®¡ç','2');
INSERT INTO `yourphp_menu` VALUES ('4','0','Module','index','type=2&menuid=51','1','1','0','æ¨¡åç®¡ç','','4');
INSERT INTO `yourphp_menu` VALUES ('5','0','User','','menuid=9','1','1','0','ä¼åç®¡ç','','90');
INSERT INTO `yourphp_menu` VALUES ('6','0','Createhtml','','menuid=33','1','1','0','ç½ç«æ´æ°','','99');
INSERT INTO `yourphp_menu` VALUES ('7','0','Template','index','menuid=60','1','1','0','æ¨¡æ¿ç®¡ç','','99');
INSERT INTO `yourphp_menu` VALUES ('8','50','Config','sys','','1','1','0','ç³»ç»åæ°','','0');
INSERT INTO `yourphp_menu` VALUES ('9','5','User','','','1','1','0','ä¼åèµæç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('10','9','User','add','','1','1','0','æ·»å ä¼å','','0');
INSERT INTO `yourphp_menu` VALUES ('11','5','Role','','','1','1','0','ä¼åç»ç®¡ç\','','0');
INSERT INTO `yourphp_menu` VALUES ('12','11','Role','add','','1','1','0','æ·»å ä¼åç»\','','0');
INSERT INTO `yourphp_menu` VALUES ('13','5','Node','','','1','1','0','æéèç¹ç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('14','13','Node','add','','1','1','0','æ·»å æéèç¹','','0');
INSERT INTO `yourphp_menu` VALUES ('15','39','Menu','add','','1','1','0','æ·»å èå','','0');
INSERT INTO `yourphp_menu` VALUES ('16','3','Module','','','1','1','0','æ¨¡åç®¡ç','','99');
INSERT INTO `yourphp_menu` VALUES ('17','3','Category','','','1','1','0','æ ç®ç®¡ç','æ ç®ç®¡ç','1');
INSERT INTO `yourphp_menu` VALUES ('18','16','Module','add','','1','1','0','æ·»å æ¨¡å','','0');
INSERT INTO `yourphp_menu` VALUES ('19','17','Category','add','','1','1','0','æ·»å æ ç®','','0');
INSERT INTO `yourphp_menu` VALUES ('20','3','Article','','','1','1','0','æç« æ¨¡å','','2');
INSERT INTO `yourphp_menu` VALUES ('21','20','Article','add','','1','1','0','æ·»å æç« ','','0');
INSERT INTO `yourphp_menu` VALUES ('22','3','Product','','','1','1','0','äº§åæ¨¡å','','3');
INSERT INTO `yourphp_menu` VALUES ('23','2','Posid','','','1','1','0','æ¨èä½ç®¡ç\','','0');
INSERT INTO `yourphp_menu` VALUES ('24','23','Posid','add','','1','1','0','æ·»å æ¨èä½\','','0');
INSERT INTO `yourphp_menu` VALUES ('25','22','Product','add','','1','1','0','æ·»å äº§å','','0');
INSERT INTO `yourphp_menu` VALUES ('26','3','Picture','','','1','1','0','å¾çæ¨¡å','','4');
INSERT INTO `yourphp_menu` VALUES ('27','3','Download','','','1','1','0','ä¸è½½æ¨¡å','','5');
INSERT INTO `yourphp_menu` VALUES ('28','2','Type','','','1','1','0','ç±»å«ç®¡ç','','6');
INSERT INTO `yourphp_menu` VALUES ('29','50','Config','mail','','1','1','0','ç³»ç»é®ç®±','','0');
INSERT INTO `yourphp_menu` VALUES ('30','50','Config','attach','','1','1','0','éä»¶éç½®','','0');
INSERT INTO `yourphp_menu` VALUES ('31','17','Category','repair_cache','','1','1','0','æ¢å¤æ ç®æ°æ®','','0');
INSERT INTO `yourphp_menu` VALUES ('32','50','Config','member','','1','1','0','ç¨æ·ä¸­å¿è®¾ç½®','','0');
INSERT INTO `yourphp_menu` VALUES ('33','6','Createhtml','index','','1','1','0','æ´æ°é¦é¡µ','','0');
INSERT INTO `yourphp_menu` VALUES ('34','6','Createhtml','Createlist','','1','1','0','æ´æ°åè¡¨é¡\µ','','0');
INSERT INTO `yourphp_menu` VALUES ('35','6','Createhtml','Createshow','','1','1','0','æ´æ°åå®¹é¡\µ','','0');
INSERT INTO `yourphp_menu` VALUES ('36','6','Createhtml','Updateurl','','1','1','0','æ´æ°åå®¹é¡µurl','','0');
INSERT INTO `yourphp_menu` VALUES ('37','26','Picture','add','','1','1','0','æ·»å å¾ç','','0');
INSERT INTO `yourphp_menu` VALUES ('38','27','Download','add','','1','1','0','æ·»å æä»¶','','0');
INSERT INTO `yourphp_menu` VALUES ('39','2','Menu','','','1','1','0','åå°ç®¡çèå','åå°ç®¡çèå','11');
INSERT INTO `yourphp_menu` VALUES ('40','1','Index','password','','1','1','0','ä¿®æ¹å¯ç ','','2');
INSERT INTO `yourphp_menu` VALUES ('41','1','Index','profile','','1','1','0','ä¸ªäººèµæ','','3');
INSERT INTO `yourphp_menu` VALUES ('42','1','Index','main','','1','1','0','åå°é¦é¡µ','','1');
INSERT INTO `yourphp_menu` VALUES ('43','17','Category','add','&type=1','1','1','0','æ·»å å¤é¨é¾æ¥','','0');
INSERT INTO `yourphp_menu` VALUES ('44','2','Database','','','1','1','0','æ°æ®åºç®¡ç\','','0');
INSERT INTO `yourphp_menu` VALUES ('45','44','Database','query','','1','1','0','æ§è¡SQLè¯­å¥','','0');
INSERT INTO `yourphp_menu` VALUES ('46','44','Database','recover','','1','1','0','æ¢å¤æ°æ®åº\','','0');
INSERT INTO `yourphp_menu` VALUES ('47','1','Index','cache','menuid=47','1','1','0','æ´æ°ç¼å­','','4');
INSERT INTO `yourphp_menu` VALUES ('48','51','Module','add','type=2','1','1','0','åå»ºæ¨¡å','','0');
INSERT INTO `yourphp_menu` VALUES ('49','3','Feedback','index','','1','1','0','ä¿¡æ¯åé¦','ä¿¡æ¯åé¦','7');
INSERT INTO `yourphp_menu` VALUES ('50','2','Config','','','1','1','0','ç«ç¹éç½®','','0');
INSERT INTO `yourphp_menu` VALUES ('51','4','Module','index','type=2','1','1','0','æ¨¡åç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('52','28','Type','add','','1','1','0','æ·»å ç±»å«','','0');
INSERT INTO `yourphp_menu` VALUES ('53','4','Link','index','','1','1','0','åæé¾æ¥','','0');
INSERT INTO `yourphp_menu` VALUES ('54','53','Link','add','','1','1','0','æ·»å é¾æ¥','','0');
INSERT INTO `yourphp_menu` VALUES ('55','3','Guestbook','index','','1','1','0','å¨çº¿çè¨','','8');
INSERT INTO `yourphp_menu` VALUES ('56','4','Kefu','index','','1','1','0','å¨çº¿å®¢æ','','0');
INSERT INTO `yourphp_menu` VALUES ('57','56','Kefu','add','','1','1','0','æ·»å å®¢æ','','0');
INSERT INTO `yourphp_menu` VALUES ('58','4','Order','index','','1','1','0','è®¢åç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('59','50','Config','add','','1','1','0','æ·»å ç³»ç»åé','','99');
INSERT INTO `yourphp_menu` VALUES ('60','7','Template','index','','1','1','0','æ¨¡æ¿ç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('61','60','Template','add','','1','1','0','æ·»å æ¨¡æ¿','','0');
INSERT INTO `yourphp_menu` VALUES ('62','60','Template','index','type=css','1','1','0','CSSç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('63','60','Template','index','type=js','1','1','0','JSç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('64','60','Template','images','','1','1','0','åªä½æä»¶ç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('65','7','Theme','index','menuid=65','1','1','0','é£æ ¼ç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('66','65','Theme','upload','','1','1','0','ä¸ä¼ é£æ ¼','','0');
INSERT INTO `yourphp_menu` VALUES ('67','2','Urlrule','index','','1','1','0','URLè§å','','0');
INSERT INTO `yourphp_menu` VALUES ('68','67','Urlrule','add','','1','1','0','æ·»å è§å','','0');
INSERT INTO `yourphp_menu` VALUES ('69','2','Dbsource','index','','1','1','0','DBæ°æ®æº\','','0');
INSERT INTO `yourphp_menu` VALUES ('70','69','Dbsource','add','','1','1','0','æ·»å æ°æ®æº\','','0');
INSERT INTO `yourphp_menu` VALUES ('71','2','Lang','index','','1','0','0','å¤è¯­è¨ç®¡ç','è¯­è¨ç®¡ç','0');
INSERT INTO `yourphp_menu` VALUES ('72','71','Lang','add','','1','0','0','æ·»å è¯­è¨','','0');
INSERT INTO `yourphp_menu` VALUES ('73','71','Lang','param','','1','0','0','è®¾ç½®è¯­è¨å\','','0');
INSERT INTO `yourphp_menu` VALUES ('74','7','Block','index','','1','1','0','ç¢çç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('75','74','Block','add','','1','1','0','æ·»å ç¢ç','','0');
INSERT INTO `yourphp_menu` VALUES ('76','60','Template','config','','1','1','0','æ¨¡æ¿åæ°éç½®','','0');
INSERT INTO `yourphp_menu` VALUES ('77','7','Slide','index','','1','1','0','å¹»ç¯çç®¡ç\','','0');
INSERT INTO `yourphp_menu` VALUES ('78','77','Slide','add','','1','1','0','æ·»å å¹»ç¯ç\','','0');
INSERT INTO `yourphp_menu` VALUES ('79','4','Payment','index','','1','1','0','å¨çº¿æ¯ä»','','0');
INSERT INTO `yourphp_menu` VALUES ('80','79','Shipping','','','1','1','0','ééæ¹å¼\','','0');
INSERT INTO `yourphp_menu` VALUES ('81','79','Shipping','add','isajax=1','1','1','0','æ·»å ééæ¹å¼\','','0');
INSERT INTO `yourphp_menu` VALUES ('82','58','Order','orderlist','','1','1','0','åæ®ç®¡ç','','0');
INSERT INTO `yourphp_menu` VALUES ('83','1','Log','index','','1','1','0','åå°ç»éæ¥å¿','','83');
INSERT INTO `yourphp_module` VALUES ('1','åé¡µæ¨¡å','Page','åé¡µæ¨¡å','1','1','0','*','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('2','æç« æ¨¡å','Article','æ°é»æç« ','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('3','äº§åæ¨¡å','Product','äº§åå±ç¤º','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,xinghao,price,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('4','å¾çæ¨¡å','Picture','å¾çå±ç¤º','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('5','ä¸è½½æ¨¡å','Download','æä»¶ä¸è½½','1','1','1','id,catid,url,title,title_style,userid,username,hits,keywords,description,thumb,createtime,status,ext,size,listorder','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('6','ä¿¡æ¯åé¦','Feedback','ä¿¡æ¯åé¦','1','0','0','*','','0','1','1,2,3,4','0');
INSERT INTO `yourphp_module` VALUES ('7','åæé¾æ¥','Link','åæé¾æ¥','2','0','0','*','','0','1','','0');
INSERT INTO `yourphp_module` VALUES ('8','å¨çº¿çè¨','Guestbook','å¨çº¿çè¨','1','0','0','*','','0','1','1,2,3,4','0');
INSERT INTO `yourphp_module` VALUES ('9','å¨çº¿å®¢æ','Kefu','å¨çº¿å®¢æ','2','0','0','*','','0','1','','0');
INSERT INTO `yourphp_node` VALUES ('1','Admin','åå°ç®¡ç','1','åå°é¡¹ç®','0','0','1','0');
INSERT INTO `yourphp_node` VALUES ('2','Index','åå°é»è®¤','1','','0','1','2','1');
INSERT INTO `yourphp_node` VALUES ('3','Config','ç«ç¹éç½®','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('4','index','ç«ç¹éç½®','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('5','sys','ç³»ç»åæ°','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('6','member','ç¨æ·ä¸­å¿è®¾ç½®','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('7','add','æ·»å åé','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('8','Menu','èåç®¡ç','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('11','index','é»è®¤å¨ä½','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('12','Public','å¨å±æä½','1','','0','1','2','0');
INSERT INTO `yourphp_node` VALUES ('13','index','é»è®¤','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('14','add','æ·»å ','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('15','edit','ç¼è¾','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('16','insert','æå¥','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('17','attach','éä»¶è®¾ç½®','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('18','mail','ç³»ç»é®ç®±','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('19','Posid','æ¨èä½\','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('21','update','æ´æ°','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('22','status','ç¶æ\','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('23','deleteall','æ¹éå é¤','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('24','delete','å é¤','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('25','listorder','æåº','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('26','password','ä¿®æ¹å¯ç ','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('27','profile','ä¸ªäººèµæ','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('28','cache','æ´æ°ç¼å­','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('30','main','ç³»ç»ä¿¡æ¯','1','','0','2','3','1');
INSERT INTO `yourphp_node` VALUES ('40','Urlrule','URLè§å','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('48','Dbsource','DBæ°æ®æº\','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('55','Type','ç±»å«ç®¡ç','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('65','Lang','å¤è¯­è¨ç®¡ç','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('75','Database','æ°æ®åºç®¡ç\','1','','0','1','2','2');
INSERT INTO `yourphp_node` VALUES ('76','docommand','ä¼åæä½','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('77','backup','å¤ä»½','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('78','recover','æ¢å¤','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('79','query','sqlæ¥è¯¢','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('80','doquery','è¿è¡sql','1','','0','75','3','2');
INSERT INTO `yourphp_node` VALUES ('81','Category','æ ç®ç®¡ç','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('88','repair_cache','ä¿®å¤æ ç®æ°æ®','1','','0','81','3','3');
INSERT INTO `yourphp_node` VALUES ('90','Module','æ¨¡åç®¡ç','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('98','Field','æ¨¡åå­æ®µ','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('107','Page','åé¡µæ¨¡å','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('110','Article','æç« æ¨¡å','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('111','Product','äº§åæ¨¡å','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('112','Picture','å¾çæ¨¡å','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('113','Download','ä¸è½½æ¨¡å','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('114','Feedback','ä¿¡æ¯åé¦','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('115','Guestbook','å¨çº¿çè¨','1','','0','1','2','3');
INSERT INTO `yourphp_node` VALUES ('116','Link','åæé¾æ¥','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('117','Kefu','å¨çº¿å®¢æ','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('118','Order','è®¢åç®¡ç','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('119','Payment','å¨çº¿æ¯ä»','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('120','Shipping','ééæ¹å¼\','1','','0','1','2','4');
INSERT INTO `yourphp_node` VALUES ('121','User','ä¼åç®¡ç','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('122','Role','ä¼åç»ç®¡ç\','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('123','Node','èç¹ç®¡ç','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('124','Access','æææ¥è¯¢','1','','0','1','2','5');
INSERT INTO `yourphp_node` VALUES ('125','Createhtml','ç½ç«æ´æ°','1','','0','1','2','6');
INSERT INTO `yourphp_node` VALUES ('126','Template','æ¨¡æ¿ç®¡ç','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('127','Theme','æ¨¡æ¿ç®¡ç','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('128','Block','ç¢çç®¡ç','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('129','Slide','å¹»ç¯çç®¡ç\','1','','0','1','2','7');
INSERT INTO `yourphp_node` VALUES ('130','show','æ¥çè®¢å','1','','0','118','3','4');
INSERT INTO `yourphp_node` VALUES ('131','index','æ´æ°é¦é¡µ','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('132','docreateindex','çæé¦é¡µ','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('133','createlist','æ´æ°åè¡¨é¡\µ','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('134','createshow','æ´æ°åå®¹é¡\µ','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('135','updateurl','æ´æ°url','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('136','doCreatelist','çæåè¡¨é¡\µ','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('137','doCreateshow','çæåå®¹é¡\µ','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('138','doUpdateurl','çæurl','1','','0','125','3','6');
INSERT INTO `yourphp_node` VALUES ('139','statusallok','æ¹éå®¡æ ¸','1','','0','12','3','0');
INSERT INTO `yourphp_node` VALUES ('140','images','åªä½æä»¶','1','','0','126','3','7');
INSERT INTO `yourphp_node` VALUES ('141','config','æ¨¡æ¿åæ°','1','','0','126','3','7');
INSERT INTO `yourphp_node` VALUES ('142','index','åè¡¨','1','','0','127','3','7');
INSERT INTO `yourphp_node` VALUES ('143','chose','æ´æ¢','1','','0','127','3','7');
INSERT INTO `yourphp_node` VALUES ('144','upload','ä¸ä¼ é£æ ¼','1','','0','127','3','7');
INSERT INTO `yourphp_node` VALUES ('145','picmanage','å¾çç®¡ç','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('146','addpic','æ·»å å¾ç','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('147','editpic','ç¼è¾å¾ç','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('148','insertpic','æå¥å¾ç','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('149','updatepic','æ´æ°å¾ç','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('150','listorder','å¾çæåº','1','','0','129','3','7');
INSERT INTO `yourphp_node` VALUES ('151','Attachment','éä»¶ç®¡ç','1','','0','1','2','0');
INSERT INTO `yourphp_node` VALUES ('152','index','é»è®¤æä½','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('153','upload','ä¸ä¼ æä»¶','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('154','filelist','æµè§æä»¶','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('155','delfile','å é¤æä»¶','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('156','cleanfile','æ¸çæä»¶','1','','0','151','3','0');
INSERT INTO `yourphp_node` VALUES ('157','dosite','ä¿å­éç½®','1','','0','3','3','2');
INSERT INTO `yourphp_node` VALUES ('158','testmail','é®ä»¶æµè¯','1','','0','3','3','2');
INSERT INTO `yourphp_online` VALUES ('2d6b8a52c13155fb6ccb0b9030df1047','0','','114.240.83.56','1461228544','4');
INSERT INTO `yourphp_online` VALUES ('7bff5daa45c2d60b5505e8b8a67c5f5c','0','','114.240.83.56','1461228922','4');
INSERT INTO `yourphp_online` VALUES ('c0d12a9010c1769f223a4a4261743a74','0','','114.240.83.56','1461228178','4');
INSERT INTO `yourphp_online` VALUES ('8356ee7b00074f79fef041bd4948ceb9','0','','114.240.83.56','1461228806','4');
INSERT INTO `yourphp_online` VALUES ('d919df1a82a780a53f0ace2a4d689d75','0','','114.240.83.56','1461228342','4');
INSERT INTO `yourphp_online` VALUES ('5678231fa048fa90b535922cf59116d5','0','','121.42.0.88','1461227840','4');
INSERT INTO `yourphp_online` VALUES ('e52e4f301d80d09a2e687911c314a54c','0','','157.55.39.138','1461228717','4');
INSERT INTO `yourphp_page` VALUES ('8','å³äºæä»¬','','','','<p>\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp; &nbsp; &nbsp; åäº¬æè¿é«åä¿¡æ¯ææ¯æéå¬å\¸(Beijing sandstone info Technology Co., Ltd.) æ¯ä¸å®¶ä¸ä¸çè½¯ä»¶æå¡åè§£å³æ¹æ¡æä¾åï¼å¬å¸è´åäºITåºç¨ç³»ç»è§åãè®¾è®¡ãå¼åãç»´æ¤åææ¯äººåç°åºæå¡ç­ä¸ªæ§åITæå¡TMï¼ä¸ºå½åå¤ä¼ä¸æä¾ITå¤åæå¡ãæä»¬ä¸æ³¨äºæ¿åºãéèãçµä¿¡ãçµåãäºèç½ãå¶é ä¸ç­å å¤§è¡ä¸çä¿¡æ¯åå»ºè®¾ï¼æå¤§éåº¦å°ä¸ºå®¢æ·åé ä»·å¼ï¼ä¸å®¢æ·å±èµ¢å±è£ã\\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; éçç§»å¨äºèç½çå¿«éåå±ï¼å¬å¸æç«äºç§»å¨appäºä¸é¨ï¼æ¥æä¸æ¯ä¸åèµæ·±çäº§åç»çãUIè®¾è®¡ãwebåç«¯å¼åãandroidãIOSå¼åãæå¡ç«¯å¼åãæµè¯äººåä»¥åé«ç´ è´¨çå®åæå¡å¢éï¼å¢éè§æ¨¡è¿\60äººï¼å¬å¸ä¸»è¦ææ¯å¢éæååæä¸å¹´ä»¥ä¸çè¡ä¸å·¥ä½ç»éªï¼å­åèªèº«å¼ºå¤§çææ¯åéãä¸°å¯çé¡¹ç®ç­åç»éªãå®åçè¿è¥æ¨¡å¼ï¼è´åäºä¸ºä¼å¤çä¼ä¸ååå®¶æä¾ä¸ç«å¼APPåºç¨å¼åè§£å³æ¹æ¡ã\\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:14px;\"><strong>æè¿é«åä»·å¼è§:</strong></span> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>æ¿æ¯ï¼Visionï¼\&nbsp;</strong></span><br />\r\n<strong>æä¸ºè¡ä¸é¢åçITå¨è¯¢ãè§£å³æ¹æ¡åå¤åæå¡æä¾åã\</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>ä½¿å½ï¼Missionï¼\&nbsp;</strong></span><br />\r\n<strong>ä»¥åè¿ç»è¥çå¿µãåæ°çææ¯åç®¡çï¼æºæä¸çãæå¡ç¨æ·ãåé¦ç¤¾ä¼\</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>çå¿µï¼Conceptï¼\&nbsp;</strong></span><br />\r\n<strong>ç§æå¼é¢çæ´»</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<strong><span style=\"font-size:14px;\"><strong>æè¿é«åä¼ä¸æå:</strong></span><br />\r\n</strong> \r\n</p>\r\n<p align=\"left\">\r\n	å¢é: åèä¸åãåæè¯ä¿¡ãå¼æ¾å±èµ\¢<br />\r\næç¥: æå¡è³ä¸ï¼æ¸´æåé©ï¼å®¢æ·ç»è¥<br />\r\näº§å: åæ°ãä¸æ³¨ãè´¨é\<br />\r\næå¡: æå¨å®¢æ·ï¼ä¸å®¶æå\¡&nbsp;&nbsp;&nbsp;<br />\r\nä¿¡å¿µï¼å°éåå·¥ä¿¡å¿\µ&nbsp; å°éå®¢æ·ä¿¡å¿µ<br />\r\nç®¡ç: å¼æ¾ãç®æãåé ãå±äº\«\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('11','å³äºæä»¬','','','å³äºæä»¬  ','<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;åäº¬æè¿é«åä¿¡æ¯ææ¯æéå¬å\¸(Beijing sandstone info Technology Co., Ltd.) æ¯ä¸å®¶ä¸ä¸çè½¯ä»¶æå¡åè§£å³æ¹æ¡æä¾åï¼å¬å¸è´åäºITåºç¨ç³»ç»è§åãè®¾è®¡ãå¼åãç»´æ¤åææ¯äººåç°åºæå¡ç­ä¸ªæ§åITæå¡TMï¼ä¸ºå½åå¤ä¼ä¸æä¾ITå¤åæå¡ãæä»¬ä¸æ³¨äºæ¿åºãéèãçµä¿¡ãçµåãäºèç½ãå¶é ä¸ç­å å¤§è¡ä¸çä¿¡æ¯åå»ºè®¾ï¼æå¤§éåº¦å°ä¸ºå®¢æ·åé ä»·å¼ï¼ä¸å®¢æ·å±èµ¢å±è£ã\\r\n</p>\r\n<p align=\"left\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; éçç§»å¨äºèç½çå¿«éåå±ï¼å¬å¸æç«äºç§»å¨appäºä¸é¨ï¼æ¥æä¸æ¯ä¸åèµæ·±çäº§åç»çãUIè®¾è®¡ãwebåç«¯å¼åãandroidãIOSå¼åãæå¡ç«¯å¼åãæµè¯äººåä»¥åé«ç´ è´¨çå®åæå¡å¢éï¼å¢éè§æ¨¡è¿\60äººï¼å¬å¸ä¸»è¦ææ¯å¢éæååæä¸å¹´ä»¥ä¸çè¡ä¸å·¥ä½ç»éªï¼å­åèªèº«å¼ºå¤§çææ¯åéãä¸°å¯çé¡¹ç®ç­åç»éªãå®åçè¿è¥æ¨¡å¼ï¼è´åäºä¸ºä¼å¤çä¼ä¸ååå®¶æä¾ä¸ç«å¼APPåºç¨å¼åè§£å³æ¹æ¡ã\\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"font-size:14px;\"><strong>æè¿é«åä»·å¼è§:</strong></span> \r\n</p>\r\n<p align=\"left\">\r\n	<strong>æ¿æ¯ï¼Visionï¼\&nbsp;</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<strong>æä¸ºè¡ä¸é¢åçITå¨è¯¢ãè§£å³æ¹æ¡åå¤åæå¡æä¾åã\</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>ä½¿å½ï¼Missionï¼\ </strong></span><br />\r\n<strong>ä»¥åè¿ç»è¥çå¿µãåæ°çææ¯åç®¡çï¼æºæä¸çãæå¡ç¨æ·ãåé¦ç¤¾ä¼\</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<span style=\"color:#E53333;\"><strong>çå¿µï¼Conceptï¼\ </strong></span><br />\r\n<strong>ç§æå¼é¢çæ´»</strong> \r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>\r\n<p align=\"left\">\r\n	<strong><strong>æè¿é«åä¼ä¸æå:</strong><br />\r\n</strong> \r\n</p>\r\n<p align=\"left\">\r\n	å¢é: åèä¸åãåæè¯ä¿¡ãå¼æ¾å±èµ\¢<br />\r\næç¥: æå¡è³ä¸ï¼æ¸´æåé©ï¼å®¢æ·ç»è¥<br />\r\näº§å: åæ°ãä¸æ³¨ãè´¨é\<br />\r\næå¡: æå¨å®¢æ·ï¼ä¸å®¶æå\¡&nbsp;&nbsp; <br />\r\nä¿¡å¿µï¼å°éåå·¥ä¿¡å¿\µ&nbsp; å°éå®¢æ·ä¿¡å¿µ<br />\r\nç®¡ç: å¼æ¾ãç®æãåé ãå±äº\«\r\n</p>\r\n<p align=\"left\">\r\n	<br />\r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('12','èç³»æä»¬','','èç³»æä»¬','èç³»æä»¬','<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">åäº¬æè¿é«åä¿¡æ¯ææ¯æéå¬å\¸&nbsp;</span> \r\n</div>\r\n<span style=\"font-size:14px;\"> \r\n<div style=\"text-align:left;\">\r\n	<br />\r\n</div>\r\n</span>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">åäº¬äº¤ä»ä¸­å¿&nbsp;</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">å°åï¼\ åäº¬å¸æé³åºå¹¿é¡ºåå¤§è¡\16å·åç¾ä¸­å¿åå­æ¥¼1221å®\¤</span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">ä¸æµ·äº¤ä»ä¸­å¿&nbsp;</span>\r\n</p>\r\n<span style=\"font-size:14px;\"> \r\n<div style=\"text-align:left;\">\r\n	<span>å°åï¼\ ä¸æµ·å¸å¾æ±åºæ·®æµ·è¥¿è·¯55å\·3æ¥¼ï¼ç³éä¿¡æ¯å¹¿åºï¼&nbsp;</span> \r\n</div>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>\r\n<div style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">ç½åï¼\</span><a href=\"http://www.sygcsoft.com\"><span style=\"font-size:14px;\">http://www.sygcsoft.com</span></a><span> </span> \r\n</div>\r\n<span style=\"font-size:14px;\"> \r\n<p style=\"text-align:left;\">\r\n	é®ç®±ï¼\<span style=\"font-size:14px;\"><a href=\"mailto:zhaopin@sygcsoft.com\">zhaopin@sygcsoft.com</a></span> \r\n</p>\r\n<p style=\"text-align:left;\">\r\n	çµè¯ï¼\010-84764221\r\n</p>\r\n</span> \r\n<p>\r\n	<br />\r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('20','æå¡èå´åæµç¨\','','','','<p style=\"text-align:left;\">\r\n	<span style=\"color:inherit;font-family:inherit;font-size:24px;\">æå¡èå´</span> \r\n</p>\r\n<table width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"120\" height=\"140\">\r\n				<img align=\"left\" height=\"100\" width=\"100\" src=\"http://www.sygcsoft.com/Yourphp/Tpl/Home/Default/Public/images/icon1_1.png\" /> \r\n			</td>\r\n			<td>\r\n				<h3>\r\n					<span style=\"color:inherit;font-family:inherit;font-size:18px;font-weight:normal;\">ç§»å¨APPå®å¶å¼å\</span> \r\n				</h3>\r\n				<p>\r\n					<span style=\"font-size:14px;\">é¢åä¸­å¤§åä¼ä¸ï¼æ ¹æ®ä¼ä¸èªä¸»éæ±ï¼å¼åè¡ä¸æéçç§»å¨åºç¨åè½ï¼ä»¥é¡¹ç®å¶è¿ä½æ¹å¼å¨ç¨æä¾åä¸ç§»å¨åè§£å³æ¹æ¡ãå»ºç«ä»äº§åéæ±è°ç ãäº§ååè½è¯å«ãäº§åå®ä½å¨è¯¢ãäº§åååè®¾è®¡ãé¡¹ç®åè½ç­åãé¡¹ç®UIåæ°ãé¡¹ç®ææ¯å¼åãé¡¹ç®åå®¡åæµãé¡¹ç®ä¸çº¿åå¸çä¸ç«å¼ä¸ªæ§åæå¡ä½ç³»ã\</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\" height=\"140\">\r\n				<img align=\"left\" height=\"100\" width=\"100\" src=\"http://www.sygcsoft.com/Yourphp/Tpl/Home/Default/Public/images/icon2.png\" /> \r\n			</td>\r\n			<td>\r\n				<h3>\r\n					<span style=\"color:inherit;font-family:inherit;font-size:18px;font-weight:normal;\">3Dèæç°å®ç³»ç»å¼å\</span> \r\n				</h3>\r\n				<p>\r\n					<span class=\"service-icon\" style=\"font-size:14px;\">ä»äºèæç°å®è¡ä¸åºç¨äº§åç åãè®¾è®¡ãéå®åæå¡ï¼è´åäºä¸ºå®¢æ·æä¾åè¿ãæç¨ãä¸ä¸çèæç°å®åºç¨äº§ååå¶æ´ä½è§£å³æ¹æ¡ãåæ¬èæä»¿çå®éªå®¤ãæ°å­åå¸ãå±è§å±ç¤ºãåå¸è§åãæ°å­æ²çãåå¸åºç¨ãä¸ç»´å¨ç»ãæ¨¡åæ°æ®ä¸å¡ãç¯å¹ç«ä½ãå­ææ¯è§ãå»ºç­å®¤åè®¾è®¡ãå¤å»ºå¤åãå·¥ä¸æµç¨æ¨¡æãIpad3Då®æ¥¼ç³»ç»ãå·¥ä¸æ§å¶ãæ¯åºä¸ç»´å±ç¤ºãç½ç»ä¸ç»´å±é¦ãä¸ç»´å¹è®­è¯¾ä»¶ç­ä¸ä½åçæå¡ä»¥åå¨æ¹ä½çè§£å³æ¹æ¡ã\<br />\r\n</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\" height=\"140\">\r\n				<img align=\"left\" height=\"100\" width=\"100\" src=\"http://www.sygcsoft.com/Yourphp/Tpl/Home/Default/Public/images/icon3.png\" /> \r\n			</td>\r\n			<td>\r\n				<h3>\r\n					<span style=\"color:inherit;font-family:inherit;font-size:18px;font-weight:normal;\">WEBåºç¨å¼åç»´æ\¤</span> \r\n				</h3>\r\n				<p>\r\n					<span style=\"font-size:14px;\">ä¸ºä¸­å¤§åä¼ä¸æä¾åºäºB/Sç»æçITåºç¨ç³»ç»è§åãè®¾è®¡ãå¼åãç»´æ¤åææ¯äººåç°åºæå¡ç­ä¸ªæ§åITæå¡ãä¸æ³¨äºéèãçµä¿¡ãè½æºãé«ç§æãå¶é ä¸ç­å å¤§è¡ä¸çä¿¡æ¯åå»ºè®¾ï¼ä¸ºéèãçµä¿¡ãè½æºãå¶é ä¸ä»¥åå¶å®å®¢æ·é¿ææä¾è½¯ä»¶æå¡åè§£å³æ¹æ¡ï¼ç®åæå¡çå®¢æ·æå¤§åå½æä¼ä¸ï¼åä¸é¶è¡ï¼ä¸ç500ç¾å¼ºä¼ä¸ç­ã\</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:24px;\">æå¡æµç¨</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:24px;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;\">å¼åä¸ä¸ªå¥½çäº§åï¼æåç¾¤éæ¯å¶ä¸­ä¸ä¸ªå ç´ ï¼é¦å½å¶å²çï¼æ´æ¯å¯¹å¾äºæçæåº¦ãå¤çäºæçææ³ãå¨å¼åæ´ä¸ªè¿ç¨ä¸­ï¼æä»¬ä¼ä»¥ä¸ä¸ä¸èçç²¾ç¥ï¼è´¯ç©¿å¨æ²éãè®¾è®¡ãå¼åï¼å¸®å©æ¨è®¾è®¡åºæ´çå©çAPPã\</span><span style=\"font-size:16px;\"></span><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:\'Microsoft Yahei\', Arial, Simsun, sans-serif;font-size:24px;\"><span style=\"font-size:16px;\"> </span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201603/56f3904431cbd.png\" /> \r\n</p>','','0');
INSERT INTO `yourphp_page` VALUES ('27','æèä¿¡æ¯','','','','<p style=\"text-align:left;font-size:17px;font-family:\'Microsoft Yahei\';font-weight:500;color:#333333;> <span style=\" font-family:\'sans=\"\" serif\',=\"\" tahoma,=\"\" verdana,=\"\" helvetica;font-size:16px;\"=\"\"><strong><span style=\"font-size:16px;\">Appåå°å¼åå·¥ç¨å¸ï¼é«çº§JAVAå·¥ç¨å¸ï¼</span></strong> \r\n	</p>\r\n	<p>\r\n		<span>å²ä½èè´£ï¼\</span>\r\n	</p>\r\n	<div style=\"text-align:left;\">\r\n		<span>1ãè´è´£ç§»å¨åºç¨APPæå¡å¨ç«¯è½¯ä»¶çè®¾è®¡ãå¼ååç»´æ¤ï¼\ &nbsp; &nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2ãè´è´£APPæ°æ®åºãæ ç®ãç¨åºæ¨¡åçè®¾è®¡ä¸å¼åï¼ç»´æ¤åä¼åäº§åï¼è¿è¡æ§è½ä¼ååæ¶ææ¹è¿ï¼ &nbsp; &nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3ãåä¸éæ±è¯å®¡ãè®¾è®¡è¯å®¡ãä¸äº§åååç«¯è®¾è®¡å¼åäººåç´§å¯åä½ãä¸»å¨æ²éã\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>ä»»èè¦æ±ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1ãæ¬ç§åä»¥ä¸å­¦åï¼è®¡ç®æºç¸å³ä¸ä¸ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2ãè³å°ç²¾éä¸é¨å¼åè¯­è¨ï¼C++/java/Php/Pythonï¼ï¼3å¹´åä»¥ä¸å¼åç»éªï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3ãç²¾éJ2EEéå¶ä»çææ¯åºç¨ä¼å\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4ãçæMYSQLæ°æ®åºï¼æLINUXæä½ç³»ç»ç»éªä¼åï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>5ãçæTomcatãweblogicç­åºç¨æå¡å¨ï¼å¹¶çç»ææ¡è³å°ä¸ç§åºç¨æå¡å¨çé¨ç½²åä½¿ç¨</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>6ãç²¾éJspãJavaãServletç­è¯­è¨åSSH2,Struts, SpringMVC, MyBatis,WebService ç­å¸¸ç¨å¼åæ¡æ¶ä¸ææ¯ï¼å·æä¸°å¯çæ°æ®åºçå¼åç»éªï¼çç»ææ¡mysqlãORACLEæ°æ®åº\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>7ãè¯å¥½çå¢éåä½è½åï¼è½æ¿æè¾å¤§çå·¥ä½ååï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>8ãäºè§£ææºå®¢æ·ç«¯å¼åï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<br />\r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<br />\r\n	</div>\r\n<span style=\"font-size:16px;\"> \r\n	<div style=\"text-align:left;\">\r\n		<strong>å¾®ä¿¡å¼åå·¥ç¨å¸</strong> \r\n	</div>\r\n</span> \r\n	<div style=\"text-align:left;\">\r\n		<span>å²ä½èè´£ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1. è´è´£å¾®ä¿¡å¬ä¼å¹³å°æ¶æ¯æ¥å£å¼åï¼è´è´£ç³»ç»çææ¯æ¶æåæ¦è¦è®¾è®¡ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2. è½å¤ç¬ç«å®æè¯¦ç»è®¾è®¡åç¼ç ãè¿è¡ä»£ç å®¡æ¥ï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3. è´è´£å¾®ä¿¡å¬ä¼å¹³å°æéè¦çæ¥å£åæ°æ®ç®¡çï¼APIæ°æ®æ¥å£å¼åå·¥ä½ï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4. è´è´£å¬å¸å¾®ä¿¡å¬ä¼è®¢éå\·/æå¡å·çæ¥å£è®¾è®¡ãå¼åãæ°æ®ç®¡çãæ¥å¸¸ç»´æ¤åå¶å®åå°ç»´æ¤ç®¡çå·¥ä½ã\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>å²ä½è¦æ±ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1. æ¬ç§ä»¥ä¸å­¦åï¼çæå¾®ä¿¡å¬ä¼å¹³å°å¼åæµç¨ï¼è´è´£å¾®ä¿¡åç§æ¥å£è®¾è®¡ãå¼ååç»´æ¤ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2. å·æWebåç«¯å¼åç»éªï¼ææ¡HTMLï¼DIV+CSSï¼ãHtml5/CSS3ãJqueryç­ææ¯ï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3. çç»HTML5ãJavaå¼åè³å°å¶ä¸­ä¸ç§ï¼äºå¹´ä»¥ä¸å¼åç»éªï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4. çæMysqlæ°æ®åºç¼ç¨ï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>5. å·æè¯å¥½çç¼ç¨é£æ ¼ï¼æå¤å±ç»æçå¼åç»éªï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>6. å¯¹å¾®ä¿¡å¬ä¼å¹³å°ä¸å¾®ç½ç«ãå¾®åºç¨å¼åæè¾æ·±ççè§£ä¸åºç¨ï¼æå¥½æéèäº§åãå¾®ä¿¡ååç±»åºç¨å¼åç»éªï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>7. æå®éçéå¯¹å¾®ä¿¡æ¥å£ç¼ç¨ç»éªï¼è½ç¬ç«å®æéå¯¹å¾®ä¿¡å¬ä¼æå¡å·çé¡¹ç®å¼åè®¾è®¡ã\</span> \r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<div style=\"text-align:left;\">\r\n		<span style=\"font-size:16px;\"><strong>UIè®¾è®¡å¸\</strong></span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>å²ä½èè´£ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1ãè´è´£äº§åçæ´ä½è§è§é£æ ¼åUIè§èï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2ãæ ¹æ®äº§åå®ä½ææ¡ç¨æ·ä½éª\,ä¸ºäº§åæä¾åå®å¯è¡çè§è§è®¾è®¡æ¹æ¡;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3ãä¸æ­è·è¸ªæ¹è¿è§è§åç´\ ,ä¼åæé«ç¨æ·ä½éª;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4ãåäº«è®¾è®¡ç»éªï¼æ¨å¨å¢éçè®¾è®¡è½å\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>èä½è¦æ±ï¼\</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>1.æ\3å¹´å®¢æ·ç«¯äº§åè®¾è®¡ç»éª,å¯¹è§è§è®¾è®¡çæ¹æ³åçå¿µæç¬å°çè§è§\£;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>2.å¯¹äºèç½åå®¢æ·ç«¯äº§åçå¯ç¨æ§ææ·±å¥çè®¤è¯\,å¯¹ç¨æ·ä½éªæ¹é¢ççè®ºææ·±å»ççè§£,è½å¤ä¸ºäº§åæä¾åå®å¯è¡çè§è§æ¹è¿æ¹æ¡;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>3.æçå®½å¹¿çè®¾è®¡è§åæ·±åçç¾æ¯ååº,å¯¹è®¾è®¡æµè¡è¶å¿ææéçææ\¡;&nbsp;</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span>4.å·æè¾å¥½çåæè½åï¼å·å¤ä¸å®çææ¡è½ååæ²éæå·§ï¼</span> \r\n	</div>\r\n	<div style=\"text-align:left;\">\r\n		<span></span> \r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p style=\"text-align:left;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"text-align:left;\">\r\n		ç®ååéè³ &nbsp; zhaopin@sygcsoft.com\r\n	</p>','','0');
INSERT INTO `yourphp_posid` VALUES ('1','é¦é¡µæ¨è','0');
INSERT INTO `yourphp_posid` VALUES ('2','é¦é¡µå¹»ç¯ç\','0');
INSERT INTO `yourphp_role` VALUES ('1','è¶çº§ç®¡çå\','1','è¶çº§ç®¡çå\','0','0','1','1','1','1','1','1','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('2','æ®éç®¡çå','1','æ®éç®¡çå','0','0','1','1','1','1','1','1','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('3','æ³¨åç¨æ·','1','æ³¨åç¨æ·','0','0','1','0','1','1','1','0','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('4','æ¸¸å®¢','1','æ¸¸å®¢','0','0','1','0','0','1','0','0','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role` VALUES ('5','é®ä»¶è®¤è¯','1','é®ä»¶è®¤è¯','0','0','0','0','0','0','0','0','0','0','0.00','0.00','0.00');
INSERT INTO `yourphp_role_user` VALUES ('1','2');
INSERT INTO `yourphp_slide` VALUES ('1','é¦é¡µå¹»ç¯ç\','','','2','920','300','0','1','1');
INSERT INTO `yourphp_slide_data` VALUES ('1','1','å¾ç1','','/Uploads/201603/56efbb92c7ee9.jpg','','','','3','1','1');
INSERT INTO `yourphp_slide_data` VALUES ('2','1','å¾ç2','','/Uploads/201603/56efbbbbe6373.jpg','','','','1','1','1');
INSERT INTO `yourphp_slide_data` VALUES ('4','1','33','','/Uploads/201603/56f26abbd43f0.jpg','','','','4','1','0');
INSERT INTO `yourphp_tags` VALUES ('5','app å¼å\  ææ¬','appkaifachengben','2','Article','1','0');
INSERT INTO `yourphp_tags` VALUES ('3','å¤§æ°æ\®','dashuju','2','Article','1','0');
INSERT INTO `yourphp_tags` VALUES ('4','çæ´»','shenghuo','2','Article','1','0');
INSERT INTO `yourphp_tags_data` VALUES ('68','5','0');
INSERT INTO `yourphp_tags_data` VALUES ('67','0','0');
INSERT INTO `yourphp_tags_data` VALUES ('49','0','0');
INSERT INTO `yourphp_tags_data` VALUES ('7','3','0');
INSERT INTO `yourphp_tags_data` VALUES ('7','4','0');
INSERT INTO `yourphp_tags_data` VALUES ('69','0','0');
INSERT INTO `yourphp_tags_data` VALUES ('71','0','0');
INSERT INTO `yourphp_type` VALUES ('1','åæé¾æ¥','0','åæé¾æ¥åç±»','1','0','1');
INSERT INTO `yourphp_type` VALUES ('2','é»è®¤åç±»','1','é»è®¤åç±»','1','0','1');
INSERT INTO `yourphp_type` VALUES ('3','åä½ä¼ä¼´','1','åä½ä¼ä¼´','1','1','1');
INSERT INTO `yourphp_type` VALUES ('4','åé¦ç±»å«','0','ä¿¡æ¯åé¦ç±»å«','1','0','4');
INSERT INTO `yourphp_type` VALUES ('5','äº§åè´­ä¹°','4','äº§åè´­ä¹°','1','0','4');
INSERT INTO `yourphp_type` VALUES ('6','åå¡åä½','4','åå¡åä½','1','0','4');
INSERT INTO `yourphp_type` VALUES ('7','å¶ä»åé¦','4','å¶ä»åé¦','1','0','4');
INSERT INTO `yourphp_urlrule` VALUES ('1','0','{$catdir}/show/{$id}.html|{$catdir}/show/{$id}_{$page}.html','news/show/1.html|news/show/1_1.html','{$catdir}/|{$catdir}/{$page}.html','news/|news/1.html','0');
INSERT INTO `yourphp_urlrule` VALUES ('2','0','show-{$catid}-{$id}.html|show-{$catid}-{$id}-{$page}.html','show-1-1.html|show-1-1-1.html','list-{$catid}.html|list-{$catid}-{$page}.html','list-1.html|list-1-1.html','0');
INSERT INTO `yourphp_urlrule` VALUES ('3','0','{$module}/show/{$id}.html|{$module}/show/{$id}-{$page}.html','Article/show/1.html|Article/show/1-1.html','{$module}/list/{$catid}.html|{$module}/list/{$catid}-{$page}.html','Article/list/1.html|Article/list/1-1.html','0');
INSERT INTO `yourphp_urlrule` VALUES ('4','1','{$parentdir}{$catdir}/show_{$id}.html|{$parentdir}{$catdir}/show_{$id}_{$page}.html','news/show_1.html|news/show_1_1.html','{$parentdir}{$catdir}/|{$parentdir}{$catdir}/{$page}.html','news/|news/1.html','0');
INSERT INTO `yourphp_user` VALUES ('1','1','pingphp','b9639067d4534d9775ace7b0522f6c54d1de4281','admin@yourphp.cn','pingphp','','','0','','','','','','6','1457417673','1457417673','1458107372','0.0.0.0','221.221.233.24','1','0.00','0','');
INSERT INTO `yourphp_user` VALUES ('2','1','hello','e31a1d7245ae0b609dd79a66cef0b1c486f4c7b6','email201111@qq.com','','','','0','','','','','','46','1457682294','0','1461228157','221.220.251.112','114.240.83.56','1','0.00','0','');