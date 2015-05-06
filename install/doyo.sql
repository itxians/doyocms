CREATE TABLE IF NOT EXISTS `dy_account` (`id` int(10) unsigned NOT NULL auto_increment,`uid` mediumint(8) unsigned NOT NULL default '0',`orderid` char(30) NOT NULL default '0',`money` decimal(10,2) NOT NULL default '0.00',`type` tinyint(3) unsigned NOT NULL default '0',`custom` varchar(200) NOT NULL,`payment` char(50) NOT NULL,`paymenttype` tinyint(1) unsigned NOT NULL default '1',`paymentno` char(100) NOT NULL,`molds` char(30) NOT NULL,`aid` mediumint(8) unsigned NOT NULL default '0',`addtime` int(10) unsigned NOT NULL default '0',`auser` char(30) NOT NULL,PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;
CREATE TABLE IF NOT EXISTS `dy_admin_group` (`gid` smallint(5) unsigned NOT NULL auto_increment,`name` char(20) NOT NULL,`audit` tinyint(1) unsigned NOT NULL default '0',`oneself` tinyint(1) unsigned NOT NULL default '0',`paction` text NOT NULL,PRIMARY KEY  (`gid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
INSERT INTO `dy_admin_group` (`gid`, `name`, `audit`, `oneself`, `paction`) VALUES(1, '录入员', 0, 0, ',a_html,a_article_add,a_article_edit,a_product,a_product_add,a_product_edit,a_product_del,a_product_audit,a_message,a_message_edit,a_message_del,a_message_audit,a_article_index,a_classtypes_index,a_fields_info,a_adminuser_edituser,uploads,a_label,a_sys_ecache,a_product_index,a_goods_attribute_ajax,a_channel,channel_person_index,');
CREATE TABLE IF NOT EXISTS `dy_admin_per` (`pid` tinyint(5) unsigned NOT NULL auto_increment,`action` char(50) NOT NULL,`name` char(20) NOT NULL,`up` tinyint(5) NOT NULL default '0',`no` tinyint(1) unsigned NOT NULL default '0',`orders` int(10) unsigned NOT NULL default '0',`molds` char(30) NOT NULL,PRIMARY KEY  (`pid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=137 ;
INSERT INTO `dy_admin_per` (`pid`, `action`, `name`, `up`, `no`, `orders`, `molds`) VALUES(1, 'a_article', '管理', 0, 0, 20, 'article'),(2, 'a_classtypes', '栏目管理', 0, 0, 96, ''),(3, 'a_fields', '自定义字段管理', 37, 0, 29, ''),(4, 'a_article_index', '列表', 1, 1, 0, ''),(5, 'a_article_add', '添加', 1, 0, 0, ''),(6, 'a_article_edit', '编辑', 1, 0, 0, ''),(7, 'a_article_del', '删除', 1, 0, 0, ''),(8, 'a_article_audit', '审核', 1, 0, 0, ''),(9, 'a_classtypes_index', '栏目列表', 2, 1, 0, ''),(10, 'a_classtypes_add', '栏目添加', 2, 0, 0, ''),(11, 'a_classtypes_edit', '栏目编辑', 2, 0, 0, ''),(12, 'a_classtypes_del', '栏目删除', 2, 0, 0, ''),(13, 'a_molds', '频道设置', 37, 0, 30, ''),(17, 'a_adminuser', '管理员管理', 36, 0, 29, ''),(22, 'a_sys', '系统设置', 36, 0, 30, ''),(24, 'a_fields_info', '字段列表', 0, 1, 0, ''),(27, 'a_adminuser_edituser', '修改资料', 0, 1, 0, ''),(28, 'uploads', '上传', 0, 1, 0, ''),(29, 'a_traits', '推荐属性管理', 37, 0, 28, ''),(34, 'a_dbbak', '数据备份', 36, 0, 27, ''),(35, 'a_label', '模板调用生成器', 0, 1, 0, ''),(36, '', '系统', 0, 0, 99, ''),(37, '', '频道管理', 0, 0, 97, ''),(38, 'a_sys_ecache', '更新缓存', 0, 1, 0, ''),(40, 'a_labelcus', '自定义模板标签', 36, 0, 28, ''),(41, 'a_funs', '插件设置', 42, 0, 30, ''),(42, '', '其他管理', 0, 0, 98, ''),(43, 'a_files', '清理附件', 36, 0, 0, ''),(66, 'a_message', '管理', 0, 0, 0, 'message'),(67, 'a_message_edit', '编辑', 66, 0, 0, ''),(68, 'a_message_del', '删除', 66, 0, 0, ''),(69, 'a_message_audit', '审核', 66, 0, 0, ''),(71, 'a_comment', '评论管理', 42, 0, 0, ''),(72, 'a_links', '友情链接管理', 42, 0, 0, ''),(73, 'a_member', '会员管理', 42, 0, 0, ''),(74, 'a_special', '专题管理', 42, 0, 0, ''),(75, 'a_update', '在线升级', 36, 0, 0, ''),(76, 'a_html', '静态生成', 36, 0, 0, ''),(77, 'a_product', '管理', 0, 0, 20, 'product'),(78, 'a_product_index', '列表', 77, 1, 0, ''),(79, 'a_product_add', '添加', 77, 0, 0, ''),(80, 'a_product_edit', '编辑', 77, 0, 0, ''),(81, 'a_product_del', '删除', 77, 0, 0, ''),(82, 'a_product_audit', '审核', 77, 0, 0, ''),(84, 'a_ads', '广告管理', 42, 0, 0, ''),(85, 'a_pay', '支付系统', 42, 0, 0, ''),(86, 'a_goods', '购物系统', 42, 0, 0, ''),(87, 'a_goods_attribute_ajax', '规格属性', 0, 1, 0, ''),(104, 'a_channel', '自定义频道', 0, 1, 0, ''),(123, 'channel_person_index', '列表', 118, 1, 0, ''),(122, 'channel_person_audit', '审核', 118, 0, 0, ''),(121, 'channel_person_del', '删除', 118, 0, 0, ''),(120, 'channel_person_edit', '编辑', 118, 0, 0, ''),(119, 'channel_person_add', '添加', 118, 0, 0, ''),(118, 'channel_person', '管理', 0, 0, 0, 'person'),(117, 'a_template', '模板管理', 36, 0, 28, ''),(136, 'a_product_virtual', '虚拟货物', 77, 0, 0, '');
CREATE TABLE IF NOT EXISTS `dy_admin_user` (`auid` smallint(5) unsigned NOT NULL auto_increment,`auser` char(20) NOT NULL,`apass` char(32) NOT NULL,`aname` char(30) NOT NULL,`amail` char(100) NOT NULL,`atel` char(100) NOT NULL,`level` tinyint(1) unsigned NOT NULL default '0',`gid` smallint(5) unsigned NOT NULL default '0',`pclasstype` text NOT NULL,PRIMARY KEY  (`auid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;
INSERT INTO `dy_admin_user` (`auid`, `auser`, `apass`, `aname`, `amail`, `atel`, `level`, `gid`, `pclasstype`) VALUES(1, '|-auser-|', '|-apass-|', '真实姓名', '邮箱', '电话', 1, 1, '');
CREATE TABLE IF NOT EXISTS `dy_ads` (`id` mediumint(8) unsigned NOT NULL auto_increment,`taid` smallint(5) unsigned NOT NULL default '0',`orders` int(10) NOT NULL default '0',`name` char(100) NOT NULL,`type` tinyint(1) unsigned NOT NULL default '0',`adsw` smallint(5) unsigned NOT NULL default '0',`adsh` smallint(5) unsigned NOT NULL default '0',`adfile` char(200) NOT NULL,`body` text NOT NULL,`gourl` char(200) NOT NULL,`target` char(8) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;
INSERT INTO `dy_ads` (`id`, `taid`, `orders`, `name`, `type`, `adsw`, `adsh`, `adfile`, `body`, `gourl`, `target`, `isshow`) VALUES(1, 1, 0, 'banner1', 1, 980, 300, 'skin/images/banner.jpg', '<a href="#" target="_self"><img src="skin/images/banner.jpg" width="980" height="300" /></a>', '#', 'self', 1),(2, 1, 0, 'banner2', 1, 980, 300, 'skin/images/banner.jpg', '<a href="#" target="_self"><img src="skin/images/banner.jpg" width="980" height="300" /></a>', '#', 'self', 1),(3, 1, 0, 'banner3', 1, 980, 300, 'skin/images/banner.jpg', '<a href="#" target="_self"><img src="skin/images/banner.jpg" width="980" height="300" /></a>', '#', 'self', 1),(6, 2, 0, '自定义广告', 5, 0, 0, '', '', '', 'blank', 1);
CREATE TABLE IF NOT EXISTS `dy_adstype` (`taid` smallint(5) NOT NULL auto_increment,`name` char(100) NOT NULL,`adsw` smallint(5) unsigned NOT NULL default '0',`adsh` smallint(5) unsigned NOT NULL default '0',PRIMARY KEY  (`taid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
INSERT INTO `dy_adstype` (`taid`, `name`, `adsw`, `adsh`) VALUES(1, '头部通栏banner', 980, 300),(2, '自定义代码示例', 0, 0);
CREATE TABLE IF NOT EXISTS `dy_article` (`id` mediumint(8) unsigned NOT NULL auto_increment,`tid` smallint(5) unsigned NOT NULL default '0',`sid` smallint(5) unsigned NOT NULL default '0',`isshow` tinyint(1) unsigned NOT NULL default '0',`title` char(100) NOT NULL,`style` char(60) NOT NULL,`trait` char(50) NOT NULL,`gourl` char(255) NOT NULL,`htmlfile` char(100) NOT NULL,`htmlurl` char(255) NOT NULL,`addtime` int(10) unsigned NOT NULL default '0',`hits` int(10) unsigned NOT NULL default '0',`litpic` char(255) NOT NULL,`orders` int(10) NOT NULL default '0',`mrank` smallint(5) NOT NULL default '0',`mgold` decimal(10,2) unsigned NOT NULL default '0.00',`keywords` char(200) NOT NULL,`description` char(255) NOT NULL,`user` char(30) NOT NULL,`usertype` tinyint(2) unsigned NOT NULL default '0',PRIMARY KEY  (`id`),KEY `orbye` (`orders`,`addtime`),KEY `article` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;
INSERT INTO `dy_article` (`id`, `tid`, `sid`, `isshow`, `title`, `style`, `trait`, `gourl`, `htmlfile`, `htmlurl`, `addtime`, `hits`, `litpic`, `orders`, `mrank`, `mgold`, `keywords`, `description`, `user`, `usertype`) VALUES(1, 3, 0, 1, '网站制作', '', '', '', '', 'html/article/1.html', 1335405900, 24, 'uploads/2012/04/261006016221.jpg', 0, 0, '0.00', '', '内容完善中...', 'admin', 0),(2, 2, 0, 1, 'DOYO通用建站系统', '', '', '', '', 'html/article/2.html', 1335406140, 12, 'uploads/2012/04/261014486626.jpg', 0, 0, '0.00', '', '', 'admin', 0),(3, 4, 0, 1, '某某案例', '', '', '', '', 'html/article/3.html', 1335406440, 13, 'uploads/2012/04/261017573910.jpg', 0, 0, '0.00', '', '', 'admin', 0),(5, 10, 0, 1, '某某荣誉', '', '', '', '', 'html/article/5.html', 1335414060, 4, 'uploads/2012/04/261223037917.jpg', 0, 0, '0.00', '', '', 'admin', 0),(6, 8, 0, 1, '庆祝某某公司网站正式开通', '', '', '', '', 'html/article/6.html', 1335414300, 4, 'uploads/2012/04/261225443937.jpg', 0, 0, '0.00', '', '', 'admin', 0),(7, 2, 0, 1, '产品演示', '', '', '', '', 'html/article/7.html', 1337952300, 5, 'uploads/2012/04/261017573910.jpg', 0, 0, '0.00', '', '', 'admin', 0),(8, 8, 0, 1, '公司最新动态公司最新动态公司最新动态', '', '', '', '', 'html/article/8.html', 1337952360, 6, '', 0, 0, '0.00', '', '', 'admin', 0),(9, 3, 0, 1, '网站制作11', '', '', '', '', 'html/article/9.html', 1335405900, 4, 'uploads/2012/04/261006016221.jpg', 0, 0, '0.00', '', '内容完善中...', 'admin', 0),(10, 3, 0, 1, '网站制作22', '', '', '', '', 'html/article/10.html', 1335405900, 7, 'uploads/2012/04/261006016221.jpg', 0, 0, '0.00', '', '内容完善中...', 'admin', 0),(11, 3, 0, 1, '网站制作11', '', '', '', '', 'html/article/11.html', 1335405900, 8, 'uploads/2012/04/261006016221.jpg', 0, 0, '0.00', '', '内容完善中...', 'admin', 0),(12, 4, 0, 1, '网站制作22', '', '', '', '', 'html/article/12.html', 1335405900, 11, 'uploads/2012/04/261006016221.jpg', 0, 0, '0.00', '', '内容完善中...', 'admin', 0),(20, 8, 0, 1, '分页测试', '', '', '', 'sdfgsdfg', 'html/article/sdfgsdfg.html', 1339996020, 168, '', 0, 0, '0.00', '', 'ASDF', 'admin', 0);
CREATE TABLE IF NOT EXISTS `dy_article_field` (`aid` mediumint(8) unsigned NOT NULL default '0',`body` mediumtext NOT NULL,PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `dy_attribute` (`sid` mediumint(8) unsigned NOT NULL auto_increment,`tid` mediumint(8) unsigned NOT NULL,`name` char(100) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',`orders` int(10) unsigned NOT NULL default '0',PRIMARY KEY  (`sid`),KEY `attribute` (`tid`,`isshow`),KEY `attribute_orbye` (`orders`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;
INSERT INTO `dy_attribute` (`sid`, `tid`, `name`, `isshow`, `orders`) VALUES(4, 2, '红色', 1, 0),(5, 2, '蓝色', 1, 0),(6, 3, 'S', 1, 0),(7, 3, 'M', 1, 0),(8, 3, 'L', 1, 0);
CREATE TABLE IF NOT EXISTS `dy_attribute_type` (`tid` mediumint(8) unsigned NOT NULL auto_increment,`name` char(100) NOT NULL,`classtype` text NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',`orders` int(10) NOT NULL default '0',PRIMARY KEY  (`tid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;
INSERT INTO `dy_attribute_type` (`tid`, `name`, `classtype`, `isshow`, `orders`) VALUES(2, '颜色', '|18|', 1, 0),(3, '尺码', '|18|', 1, 0);
CREATE TABLE IF NOT EXISTS `dy_classtype` (`tid` smallint(5) unsigned NOT NULL auto_increment,`molds` char(20) NOT NULL,`pid` smallint(5) unsigned NOT NULL default '0',`classname` char(50) NOT NULL,`gourl` char(255) NOT NULL,`litpic` char(200) NOT NULL,`title` char(100) NOT NULL,`keywords` char(255) NOT NULL,`description` varchar(300) NOT NULL,`isindex` tinyint(1) unsigned NOT NULL default '1',`t_index` char(50) NOT NULL,`t_list` char(50) NOT NULL,`t_listimg` char(50) NOT NULL,`t_listb` char(50) NOT NULL,`t_content` char(50) NOT NULL,`listnum` mediumint(8) unsigned NOT NULL default '0',`htmldir` char(100) NOT NULL,`htmlfile` char(100) NOT NULL,`mrank` smallint(5) NOT NULL default '0',`msubmit` smallint(5) NOT NULL default '0',`orders` int(10) NOT NULL default '0',`body` mediumtext NOT NULL,`mshow` tinyint(1) unsigned NOT NULL default '1',`imgw` smallint(5) unsigned NOT NULL default '0',`imgh` smallint(5) unsigned NOT NULL default '0',`unit` char(20) NOT NULL,PRIMARY KEY  (`tid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;
INSERT INTO `dy_classtype` (`tid`, `molds`, `pid`, `classname`, `gourl`, `litpic`, `title`, `keywords`, `description`, `isindex`, `t_index`, `t_list`, `t_listimg`, `t_listb`, `t_content`, `listnum`, `htmldir`, `htmlfile`, `mrank`, `msubmit`, `orders`, `body`, `mshow`, `imgw`, `imgh`) VALUES(1, 'article', 0, '关于我们', '', 'uploads/2012/04/261014486626.jpg', '关于我们', '', '关于我们简介', 3, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '关于我们...内容建设中...', 1, 0, 0),(2, 'product', 0, '商品中心', '', '', '商品中心', '', '', 2, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', 20, '', '', 0, 0, 0, '', 1, 0, 0),(3, 'article', 0, '服务项目', '', '', '服务项目', '', '', 2, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '', 1, 0, 0),(4, 'article', 0, '服务案例', '', '', '服务案例', '', '', 2, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '', 1, 0, 0),(23, 'message', 22, '在线应聘', '', '', '在线应聘', '', '', 1, 'person_message.html', 'person_message.html', 'person_message.html', 'person_message.html', 'person_message.html', 20, '', '', 0, 1, 0, '', 0, 0, 0),(6, 'article', 0, '营销网络', '', '', '营销网络', '', '', 3, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '营销网络...内容建设中...', 1, 0, 0),(7, 'article', 0, '联系我们', '', '', '联系我们', '', '', 3, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '联系我们...内容建设中...', 0, 0, 0),(8, 'article', 0, '公司动态', '', '', '公司动态', '', '', 1, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 1, 0, '', 0, 200, 200),(9, 'article', 1, '公司介绍', '', '', '公司介绍', '', '', 3, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '公司介绍，内容完善中...', 1, 0, 0),(10, 'article', 1, '公司荣誉', '', '', '公司荣誉', '', '', 2, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 20, '', '', 0, 0, 0, '', 1, 0, 0),(11, 'message', 0, '在线留言', '', '', '在线留言', '', '', 1, 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', 10, '', '', 0, 1, 0, '', 1, 0, 0),(18, 'product', 2, '实物商品演示', '', '', 'DOYO通用建站系统', '', '', 2, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', 20, '', '', 0, 0, 0, '', 1, 0, 0),(19, 'product', 2, '虚拟商品演示', '', '', 'DOYO域名主机', '', '', 2, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', 20, '', '', 0, 0, 0, '', 1, 0, 0),(22, 'person', 0, '人才招聘', '', '', 'asdfasdfasdfasdf', '', '', 1, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', 20, '', '', 0, 0, 0, '', 1, 0, 0);
CREATE TABLE IF NOT EXISTS `dy_comment` (`cid` mediumint(8) unsigned NOT NULL auto_increment,`aid` mediumint(8) unsigned NOT NULL,`molds` char(20) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '0',`body` text NOT NULL,`reply` text NOT NULL,`addtime` int(10) unsigned NOT NULL default '0',`retime` int(10) unsigned NOT NULL default '0',`user` char(30) NOT NULL,`ruser` char(30) NOT NULL,PRIMARY KEY  (`cid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;
INSERT INTO `dy_comment` (`cid`, `aid`, `molds`, `isshow`, `body`, `reply`, `addtime`, `retime`, `user`, `ruser`) VALUES(54, 3, 'product', 0, 'asdf', '', 1340949850, 0, '游客', ''),(53, 1, 'product', 0, 'asdfasdf', '', 1340771473, 0, '游客', ''),(55, 3, 'article', 0, 'fhjdfghdfh', '', 1352975201, 0, '游客', ''),(58, 47, 'article', 1, '1111111111', 'asdf', 1353412302, 1353412308, '1', 'admin'),(57, 50, 'article', 0, 'asdfasdfasdf', 'asdf', 1353411949, 1353412281, '1', 'admin');
CREATE TABLE IF NOT EXISTS `dy_custom` (`id` smallint(8) unsigned NOT NULL auto_increment,`name` char(200) NOT NULL,`dir` char(100) NOT NULL,`template` char(100) NOT NULL,`file` char(200) NOT NULL,`html` tinyint(1) unsigned NOT NULL default '0',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;
INSERT INTO `dy_custom` (`id`, `name`, `dir`, `template`, `file`) VALUES(2, '测试', 'aa', 'index.html', '123');
CREATE TABLE IF NOT EXISTS `dy_fields` (`fid` mediumint(8) unsigned NOT NULL auto_increment,`molds` char(20) NOT NULL,`fieldsname` char(20) NOT NULL,`fields` char(20) NOT NULL,`fieldstype` char(20) NOT NULL,`fieldslong` smallint(5) unsigned NOT NULL default '0',`selects` text NOT NULL,`fieldorder` int(10) NOT NULL default '0',`issubmit` tinyint(1) unsigned NOT NULL default '1',`lists` tinyint(1) unsigned NOT NULL default '0',`fieldshow` tinyint(1) unsigned NOT NULL default '1',`types` text NOT NULL,`contingency` char(20) NOT NULL,`imgw` smallint(6) NOT NULL default '0',`imgh` smallint(6) NOT NULL default '0',PRIMARY KEY  (`fid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;
INSERT INTO `dy_fields` (`fid`, `molds`, `fieldsname`, `fields`, `fieldstype`, `fieldslong`, `selects`, `fieldorder`, `issubmit`, `lists`, `fieldshow`, `types`, `contingency`, `imgw`, `imgh`) VALUES(14, 'person', '招聘岗位', 'gangwei', 'varchar', 100, '', 0, 1, 1, 1, '|22|23|', '', 0, 0),(15, 'person', '学历要求', 'xueli', 'select', 0, '不限=1,小学及以上=2,初中及以上=3,高中(中专)及以上=4,大专及以上=5,本科及以上=6,硕士及以上=7,博士及以上=8', 0, 1, 1, 1, '|22|23|', '', 0, 0),(16, 'person', '年龄要求', 'nianlin', 'varchar', 50, '', 0, 1, 1, 1, '|22|23|', '', 0, 0),(17, 'person', '性别要求', 'xingbie', 'select', 0, '不限=不限,男=男,女=女', 0, 1, 1, 1, '|22|23|', '', 0, 0),(18, 'person', '工作经验', 'jingyan', 'select', 0, '不限=1,一年以上=2,二年以上=3,三年以上=4,五年以上=5,十年以上=6', 0, 1, 1, 1, '|22|23|', '', 0, 0),(19, 'person', '招聘介绍', 'jieshao', 'text', 0, '', 0, 1, 0, 1, '|22|23|', '', 670, 350),(24, 'message', '学历', 'u_xueli', 'varchar', 50, '', 0, 1, 0, 1, '|23|', '', 0, 0),(25, 'message', '年龄', 'u_nianlin', 'varchar', 50, '', 0, 1, 0, 1, '|23|', '', 0, 0);
CREATE TABLE IF NOT EXISTS `dy_funs` (`fid` smallint(5) unsigned NOT NULL auto_increment,`funs` char(20) NOT NULL,`fundb` char(255) NOT NULL,`name` char(20) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',`afiles` text NOT NULL,`version` char(20) NOT NULL,PRIMARY KEY  (`fid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;
INSERT INTO `dy_funs` (`fid`, `funs`, `fundb`, `name`, `isshow`, `afiles`, `version`) VALUES(31, 'ads', 'ads,adstype', '广告', 1, '', '1.0'),(32, 'comment', 'comment', '评论', 1, '', '1.0'),(33, 'links', 'links,linkstype', '友情链接', 1, '', '1.0'),(34, 'member', 'member,member_field,member_group,member_file', '会员', 1, '', '1.0'),(35, 'special', 'special', '专题', 1, '', '1.0'),(37, 'pay', 'account,order,payment', '支付系统', 1, '', '1.0'),(38, 'goods', 'product_attribute,attribute,attribute_type', '购物系统', 1, '', '1.0');
CREATE TABLE IF NOT EXISTS `dy_goodscart` (`id` int(10) unsigned NOT NULL auto_increment,`uid` mediumint(8) unsigned NOT NULL default '0',`aid` mediumint(8) unsigned NOT NULL default '0',`num` mediumint(8) unsigned NOT NULL default '1',`attribute` text NOT NULL,`addtime` int(10) unsigned NOT NULL default '0',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;
CREATE TABLE IF NOT EXISTS `dy_labelcus` (`id` smallint(5) NOT NULL auto_increment,`name` char(50) NOT NULL,`body` text NOT NULL,`type` tinyint(1) NOT NULL default '1',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;
CREATE TABLE IF NOT EXISTS `dy_links` (`id` mediumint(8) unsigned NOT NULL auto_increment,`taid` smallint(5) unsigned NOT NULL default '0',`orders` int(10) NOT NULL default '0',`name` char(100) NOT NULL,`image` char(200) NOT NULL,`gourl` char(200) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;
INSERT INTO `dy_links` (`id`, `taid`, `orders`, `name`, `image`, `gourl`, `isshow`) VALUES(1, 1, 0, 'DOYO建站', '', 'http://wdoyo.com', 1),(2, 1, 0, '新浪', '', 'http://www.sina.com.cn', 1);
CREATE TABLE IF NOT EXISTS `dy_linkstype` (`taid` smallint(5) NOT NULL auto_increment,`name` char(100) NOT NULL,PRIMARY KEY  (`taid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
INSERT INTO `dy_linkstype` (`taid`, `name`) VALUES(1, '门户导航');
CREATE TABLE IF NOT EXISTS `dy_member` (`id` mediumint(8) unsigned NOT NULL auto_increment,`user` char(20) NOT NULL,`pass` char(32) NOT NULL,`email` char(100) NOT NULL,`gid` smallint(5) NOT NULL default '1',`money` decimal(10,2) NOT NULL default '0.00',`regtime` int(10) unsigned NOT NULL default '0',`token` char(35) NOT NULL,`tokentime` int(11) NOT NULL default '0',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;
CREATE TABLE IF NOT EXISTS `dy_member_field` (`aid` mediumint(8) unsigned NOT NULL default '0',PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `dy_member_file` (`id` int(8) unsigned NOT NULL auto_increment,`uid` mediumint(8) unsigned NOT NULL default '0',`ip` char(30) NOT NULL default '0',`url` char(255) NOT NULL,`size` int(11) unsigned NOT NULL default '0',`fields` char(20) NOT NULL,`hand` int(11) unsigned NOT NULL default '0',`aid` mediumint(8) unsigned NOT NULL default '0',`molds` char(20) NOT NULL,PRIMARY KEY  (`id`),UNIQUE KEY `user` (`uid`,`url`,`size`,`fields`,`hand`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;
INSERT INTO `dy_member_file` (`id`, `uid`, `ip`, `url`, `size`, `fields`, `hand`, `aid`, `molds`) VALUES(73, 13, '', 'uploads/2012/12/131508249443.jpg', 16247, 'sdfg', 0, 16, 'message'),(57, 0, '192.168.1.8', 'uploads/2012/12/061735275121.jpg', 13824, 'sdfg', 1735256009, 0, ''),(55, 0, '192.168.1.8', 'uploads/2012/12/041558051712.jpg', 13824, 'sdfg', 0, 13, 'message'),(52, 0, '192.168.1.8', 'uploads/2012/12/041553486594.jpg', 13824, 'sdfg', 0, 12, 'message'),(51, 0, '192.168.1.8', 'uploads/2012/12/031244352468.jpg', 13824, 'asdf', 0, 11, 'message');
CREATE TABLE IF NOT EXISTS `dy_member_group` (`gid` smallint(5) unsigned NOT NULL auto_increment,`sys` smallint(5) unsigned NOT NULL default '0',`name` char(20) NOT NULL,`weight` int(11) NOT NULL default '0',`audit` tinyint(1) unsigned NOT NULL default '0',`submit` tinyint(1) unsigned NOT NULL default '0',`filetype` char(255) NOT NULL,`filesize` int(10) unsigned NOT NULL default '0',`fileallsize` int(10) unsigned NOT NULL default '0',`discount_type` tinyint(1) unsigned NOT NULL default '0',`discount` decimal(10,2) unsigned NOT NULL default '0.00',PRIMARY KEY  (`gid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;
INSERT INTO `dy_member_group` (`gid`, `sys`, `name`, `weight`, `audit`, `submit`, `filetype`, `filesize`, `fileallsize`) VALUES(1, 1, '游客', 0, 0, 0, 'jpg,gif,jpeg,png', 0, 0),(2, 1, '普通会员', 1, 0, 1, 'jpg,gif,jpeg,png', 200, 5000);
CREATE TABLE IF NOT EXISTS `dy_message` (`id` mediumint(8) unsigned NOT NULL auto_increment,`tid` smallint(5) unsigned NOT NULL default '0',`fmolds` char(20) NOT NULL,`faid` mediumint(8) NOT NULL default '0',`isshow` tinyint(1) unsigned NOT NULL default '0',`title` char(100) NOT NULL,`addtime` int(10) unsigned NOT NULL default '0',`retime` int(10) unsigned NOT NULL default '0',`orders` int(10) NOT NULL default '0',`user` char(30) NOT NULL,`body` text NOT NULL,`reply` text NOT NULL,PRIMARY KEY  (`id`),KEY `orbye` (`orders`,`addtime`),KEY `article` (`isshow`,`tid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;
INSERT INTO `dy_message` (`id`, `tid`, `fmolds`, `faid`, `isshow`, `title`, `addtime`, `retime`, `orders`, `user`, `body`, `reply`) VALUES(1, 11, '', 0, 1, 'asdfasdf', 1339824282, 0, 0, 'sydna', 'asdfasdf', ''),(2, 11, '', 0, 1, 'fasdfasdfasdf', 1339917303, 1339917300, 0, 'sydna', 'saasdfasd', 'asdfasdf'),(3, 11, '', 0, 1, 'asdf', 1340177705, 0, 0, 'sydna', 'asdfasdf', '');
CREATE TABLE IF NOT EXISTS `dy_message_field` (`aid` mediumint(8) unsigned NOT NULL default '0',`u_xueli` varchar(50) default NULL,`u_nianlin` varchar(50) default NULL,PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `dy_molds` (`mid` smallint(5) unsigned NOT NULL auto_increment,`molds` char(20) NOT NULL,`molddb` char(255) NOT NULL,`moldname` char(20) NOT NULL,`orders` int(10) NOT NULL default '0',`t_index` char(50) NOT NULL,`t_list` char(50) NOT NULL,`t_listimg` char(50) NOT NULL,`t_listb` char(50) NOT NULL,`t_content` char(50) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',`version` char(20) NOT NULL,`sys` tinyint(1) unsigned NOT NULL default '0',`config` text NOT NULL,PRIMARY KEY  (`mid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;
INSERT INTO `dy_molds` (`mid`, `molds`, `molddb`, `moldname`, `orders`, `t_index`, `t_list`, `t_listimg`, `t_listb`, `t_content`, `isshow`, `version`, `sys`, `config`) VALUES(1, 'article', 'article', '文章', 0, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', 1, '1.0', 1, ''),(6, 'message', 'message,message_field', '表单(留言)', 0, 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', 1, '1.0', 1, 'N;'),(2, 'product', 'product', '商品', 0, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', 1, '1.0', 1, 'a:2:{s:7:"photo_w";a:3:{i:0;s:15:"图集缩略宽";i:1;s:3:"201";i:2;s:67:"频道下内容图集的自动缩略宽，0表示继承系统设置";}s:7:"photo_h";a:3:{i:0;s:15:"图集缩略高";i:1;s:3:"201";i:2;s:67:"频道下内容图集的自动缩略高，0表示继承系统设置";}}'),(18, 'person', '', '人才招聘', 0, 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', 1, '', 0, 'N;');
CREATE TABLE IF NOT EXISTS `dy_order` (`id` int(10) unsigned NOT NULL auto_increment,`uid` mediumint(8) unsigned NOT NULL default '0',`orderid` char(25) NOT NULL,`favorable` decimal(10,2) unsigned NOT NULL default '0.00',`state` tinyint(1) unsigned NOT NULL default '0',`addtime` int(10) unsigned NOT NULL default '0',`payment` char(50) NOT NULL,`paymentno` char(100) NOT NULL,`paytime` int(10) unsigned NOT NULL default '0',`actualpay` decimal(10,2) unsigned NOT NULL default '0.00',`info` text NOT NULL,`unote` text NOT NULL,`rnote` text NOT NULL,`anote` text NOT NULL,`goods` text NOT NULL,`logistics` char(100) NOT NULL,`virtual` tinyint(1) unsigned NOT NULL default '0',`sendgoods` text NOT NULL,PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;
CREATE TABLE IF NOT EXISTS `dy_payment` (`id` smallint(5) unsigned NOT NULL auto_increment,`pay` char(30) NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '0',`name` char(100) NOT NULL,`body` text NOT NULL,`key` text NOT NULL,`keyv` text NOT NULL,`orders` int(11) NOT NULL default '0',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
INSERT INTO `dy_payment` (`id`, `pay`, `isshow`, `name`, `body`, `key`, `keyv`, `orders`) VALUES(3, 'alipay', 0, '支付宝', '国内最大的支付平台，支持多家银行在线支付。<a href="https://b.alipay.com" target="_blank">需要签约支付宝商家服务，点此进入</a>，强烈建议使用“即时到帐”接口，若无法申请“即时到帐”接口，可选择申请财付通“即时到帐”接口，相比支付宝容易审核。', 'a:4:{s:7:"service";s:12:"接口类型";s:4:"user";s:21:"签约支付宝账号";s:3:"pid";s:18:"合作者身份PID";s:3:"key";s:18:"安全校验码Key";}', 'a:4:{s:7:"service";s:1:"1";s:4:"user";s:0:"";s:3:"pid";s:0:"";s:3:"key";s:0:"";}', 99),(4, 'tenpay', 0, '财付通', '腾讯旗下支付平台，支持多家银行在线支付。<a href="https://www.tenpay.com/v2/mch/mch_intro.shtml" target="_blank">签约财付通商家服务，点此进入</a>，强烈建议使用“即时到帐”接口。', 'a:3:{s:7:"service";s:12:"接口类型";s:3:"pid";s:9:"商户号";s:3:"key";s:6:"密钥";}', 'a:3:{s:7:"service";s:1:"1";s:3:"pid";s:0:"";s:3:"key";s:0:"";}', 98),(2, 'cashbalance', 1, '余额支付', '使用会员账户余额支付。', '', 'N;', 1),(1, 'offline', 1, '线下付款', '线下收款，收款后需手工在后台修改订单状态。', '', 'N;', 0);
CREATE TABLE IF NOT EXISTS `dy_person` (`id` mediumint(8) unsigned NOT NULL auto_increment,`tid` smallint(5) unsigned NOT NULL default '0',`sid` smallint(5) unsigned NOT NULL default '0',`isshow` tinyint(1) unsigned NOT NULL default '0',`title` char(100) NOT NULL,`style` char(60) NOT NULL,`trait` char(50) NOT NULL,`gourl` char(255) NOT NULL,`htmlfile` char(100) NOT NULL,`htmlurl` char(255) NOT NULL,`addtime` int(10) unsigned NOT NULL default '0',`hits` int(10) unsigned NOT NULL default '0',`orders` int(10) NOT NULL default '0',`mrank` smallint(5) NOT NULL default '0',`mgold` int(10) unsigned NOT NULL default '0',`keywords` char(200) NOT NULL,`description` char(255) NOT NULL,`user` char(30) NOT NULL,`usertype` tinyint(2) unsigned NOT NULL default '0',PRIMARY KEY  (`id`),KEY `orbye` (`orders`,`addtime`),KEY `person` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
INSERT INTO `dy_person` (`id`, `tid`, `sid`, `isshow`, `title`, `style`, `trait`, `gourl`, `htmlfile`, `htmlurl`, `addtime`, `hits`, `orders`, `mrank`, `mgold`, `keywords`, `description`, `user`, `usertype`) VALUES(1, 22, 0, 1, '招聘网站前台美工三名', '', '', '', '', '', 1354510740, 36, 0, 0, 0, '', '', 'admin', 0);
CREATE TABLE IF NOT EXISTS `dy_person_field` (`aid` mediumint(8) unsigned NOT NULL default '0',`gangwei` varchar(100) default NULL,`xueli` char(30) default NULL,`nianlin` varchar(50) default NULL,`xingbie` char(30) default NULL,`jingyan` char(30) default NULL,`jieshao` text,PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `dy_person_field` (`aid`, `gangwei`, `xueli`, `nianlin`, `xingbie`, `jingyan`, `jieshao`) VALUES(1, '网站美工', '1', '18岁以上', '不限', '2', '<p>因发展需要，现急聘网站前台美工三名，要求如下：</p><p>1、精通至少一款图片设计软件<br />2、精通HTML、js、flash制作设计。<br />3、有良好的色彩搭配理念，能够准确把握用户、客户需求。<br />4、熟悉团队合作流程、有较强的解决问题能力。</p>');
CREATE TABLE IF NOT EXISTS `dy_product` (`id` mediumint(8) unsigned NOT NULL auto_increment,`tid` smallint(5) unsigned NOT NULL default '0',`sid` smallint(5) unsigned NOT NULL default '0',`isshow` tinyint(1) unsigned NOT NULL default '0',`title` char(100) NOT NULL,`style` char(60) NOT NULL,`trait` char(50) NOT NULL,`gourl` char(255) NOT NULL,`htmlfile` char(100) NOT NULL,`htmlurl` char(255) NOT NULL,`addtime` int(10) unsigned NOT NULL default '0',`record` int(10) unsigned NOT NULL default '0',`hits` int(10) unsigned NOT NULL default '0',`litpic` char(255) NOT NULL,`photo` text NOT NULL,`orders` int(10) NOT NULL default '0',`price` decimal(10,2) unsigned NOT NULL default '0.00',`virtual` tinyint(1) unsigned NOT NULL default '0',`logistics` text NOT NULL,`mrank` smallint(5) NOT NULL default '0',`mgold` decimal(10,2) unsigned NOT NULL default '0.00',`keywords` char(200) NOT NULL,`description` char(255) NOT NULL,`user` char(30) NOT NULL,`usertype` tinyint(2) unsigned NOT NULL default '0',PRIMARY KEY  (`id`),KEY `orbye` (`orders`,`addtime`),KEY `product` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;
INSERT INTO `dy_product` (`id`, `tid`, `sid`, `isshow`, `title`, `style`, `trait`, `gourl`, `htmlfile`, `htmlurl`, `addtime`, `record`, `hits`, `litpic`, `photo`, `orders`, `price`, `virtual`, `logistics`, `mrank`, `mgold`, `keywords`, `description`, `user`, `usertype`) VALUES(17, 19, 0, 1, '中国联通充值卡(30元)', '', '', '', '', '', 1355551140,0, 8, '/uploads/2012/12/151404433221.jpg', '/uploads/2012/12/151411263240.jpg|,|', 0, '29.80', 1, '0', 0, '0.00', '', '', 'admin', 0),(16, 18, 0, 1, '女士原创纯羊绒', '', '', '', '', '', 1355550240,0, 20, '/uploads/2012/12/151345131712.jpg', '/uploads/2012/12/151345172620.jpg|,||-|/uploads/2012/12/151345172972.jpg|,|', 0, '128.00', 0, 'a:2:{s:6:"快递";s:2:"10";s:3:"EMS";s:2:"20";}', 0, '0.00', '', '冬的厚重材质自然需要大气沉稳的色彩与之相得益彰，高贵神秘的熟果色便于这黑白灰之中跳脱出来。', 'admin', 0),(18, 18, 0, 1, '索力专柜正品男鞋', '', '', '', '', '', 1355559240,0, 71, '/uploads/2012/12/151614292462.jpg', '/uploads/2012/12/151614338370.jpg|,|', 0, '598.00', 0, '0', 0, '0.00', '', '', 'admin', 0),(19, 19, 0, 1, '穿越火线10元游戏点卡1000CF点卷', '', '', '', '', '', 1355559360,0, 15, '/uploads/2012/12/151618239080.jpg', '/uploads/2012/12/151618274594.jpg|,|', 0, '9.20', 1, '0', 0, '0.00', '', '', 'admin', 0);
CREATE TABLE IF NOT EXISTS `dy_product_attribute` (`aid` mediumint(8) unsigned NOT NULL,`tid` mediumint(8) unsigned NOT NULL,`sid` mediumint(8) unsigned NOT NULL,`price` decimal(10,2) NOT NULL default '0.00',KEY `product_attribute` (`aid`,`tid`,`sid`),KEY `aid` (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `dy_product_attribute` (`aid`, `tid`, `sid`, `price`) VALUES(16, 3, 6, '0.00'),(16, 3, 7, '0.00'),(16, 3, 8, '0.00'),(18, 3, 8, '0.00'),(18, 3, 7, '0.00'),(18, 3, 6, '0.00'),(16, 2, 4, '0.00'),(16, 2, 5, '0.00'),(18, 2, 5, '-5.00'),(18, 2, 4, '20.00');
CREATE TABLE IF NOT EXISTS `dy_product_field` (`aid` mediumint(8) unsigned NOT NULL default '0',`body` mediumtext NOT NULL,PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `dy_product_field` (`aid`, `body`) VALUES(17, '<strong>1.充值方式</strong>:<br />\r\n点击购买，在线支付，支付成功后系统将自动发送充值卡号密码到您的订单信息中<br />\r\n收到卡号密码后请在http://upay.10010.com/web/Recharge/rechargeInit输入手机号及卡密码进行充值<br />\r\n<br />\r\n<strong>2:充值查询</strong>:<br />\r\n充值成功后，会收到联通充值短信通知，如未收到短信，可在联通网上营业厅查询余额<br />'),(16, '不同于夏季的轻薄和飘逸<br />\r\n冬的厚重材质自然需要大气沉稳的色彩与之相得益彰<br />\r\n高贵神秘的熟果色便于这黑白灰之中跳脱出来<br />\r\n让人眼前为之一亮<br />\r\n这款羊绒衫很好运用到了酒红和暖卡其色<br />\r\n基本的轮廓加以口袋和袖口的设计小心思，撞色设计是亮点<br />\r\n即好搭配又不平庸<br />\r\n中长的衣长很好的修饰了身体曲线<br />\r\n无懈可击的款式<br />\r\n大加工厂生产的品质保障，<br />\r\n羊绒的材质真实是未禾的最基本要求，<br />\r\n经过国家认可的成分检测报告（假一赔一）<br />\r\n无需犹豫<br />\r\n肯定是上佳的造型必备单品，羊绒材质非常亲肤，建议亲贴身穿，您穿过羊绒就不会喜欢其他的材质哦！<br />'),(18, '福建省索力鞋业有限公司(福建省盛辉鞋材有限公司)创办于1995年，总建筑面积30000平方米，引进国内外先进的机台设备及生产流水线，系一家专业生产和开发EVA造粒、EVA、TPR、PU等鞋底，EVA组合拖鞋、沙滩凉鞋的外商独资企业。公司拥有一支高素质的员工队伍,员工2000多人。长期以来坚持拖凉鞋设计、生产和服务，推动企业不断发展与壮大。公司严格执行ISO9001：2000质量管理体系，同时根据市场需求与国际流行趋势不断创新，向行业提供规格齐全，品质优良，款式新颖的精品，赢得了多家中国著名企业的信赖与赞语，并先后荣获“福建省著名商标”、 “福建省名牌产品”、 “泉州市政府创名牌先进企业”、“泉州市文明单位”“中国驰名商标”等称号，并通过了“ISO9001质量管理体系认证”。。<br />\r\n公司本着“品质、创新、服务、人才”的企业精神，立足国内，面向世界，积极塑造良好的品牌形象，力争为行业树立典范。公司愿以更优质的服务，优质的产品、更高的要求与国内外鞋业界通力合作，共创双赢。<br />'),(19, '<p>\r\n	【商品介绍】 本商品为手机充值卡充CF点充值方式，方便快捷。无需联系24小时都能购买！全天侯系统自动<span>发货</span>。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n【使用方法】 点击购买，在线支付，支付成功后系统将自动发送充值卡号密码到您的订单信息中<br />\r\n收到卡号密码后请在<a href="http://cf.qq.com/comm-htdocs/pay/?t=cf#6">http://cf.qq.com/comm-htdocs/pay/?t=cf#6</a>输入手机号及卡密码进行充值<br />\r\n<br />\r\n【到账查询】 请登陆相关游戏官方网站查询“充值记录”。如有异议请提供未收到充值的有效凭证（官方网站充值记录截图等）并及时联系卖家，帮助提交核实。<br />\r\n<div>\r\n	<br />\r\n</div>\r\n<br />');
CREATE TABLE IF NOT EXISTS `dy_product_virtual` (`id` int(8) unsigned NOT NULL auto_increment,`aid` mediumint(8) unsigned NOT NULL default '0',`number` char(100) NOT NULL,`virtual` varchar(500) NOT NULL,`state` tinyint(1) unsigned NOT NULL default '0',`oid` int(10) unsigned NOT NULL default '0',PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;
INSERT INTO `dy_product_virtual` (`id`, `aid`, `number`, `virtual`, `state`, `oid`) VALUES(12, 17, '测试fhsdfgsdfgsdfg', 'c76e53gGuaLZm3IoQbsJ36mrH0OcZ3RBr7PhE1xWCjoX6JHFnyyE8D3V55Iaxcq1', 0, 0),(11, 17, '测试463vertc', '12333HwgRw6YZmRRcl8KNcHrI5oIxRovuPx7mr+WkNE2Vf1XrdobPrUil4SUCVQtqNDejMk', 0, 0),(10, 17, '测试4567456346', '9a19aBBEDunV3WW1Tfv2p/ZoAna5UjQ5BtVM90DbkrW9aVKt120wg6F8LSqVgz6ime/1WmcBm6Y', 0, 0),(9, 17, '测试6456456456456456', '25e0LYgVYcrXL96cj0Zs5pDK4Wpwq+arv1BAvY4ZWoQEJ0OEK+JlHjVKo7S41AMYj+slDhA', 0, 0),(8, 17, '测试123123123123', 'afcci5kt/SEwT14i4tw7RQqffsuj4rFYYB374HJ+pIY2b2FL4L4wwuvM1V2oxvb/yPs', 0, 0);
CREATE TABLE IF NOT EXISTS `dy_product_discount` (`aid` mediumint(8) unsigned NOT NULL default '0',`mgid` smallint(5) unsigned NOT NULL default '0',`type` tinyint(1) unsigned NOT NULL default '0',`discount` decimal(10,2) unsigned NOT NULL default '0.00',KEY `aid` (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `dy_sales_record` (`id` int(10) unsigned NOT NULL auto_increment,`aid` mediumint(8) unsigned NOT NULL default '0',`oid` int(10) unsigned NOT NULL default '0',`user` char(20) NOT NULL,`num` mediumint(6) unsigned NOT NULL default '0',`stime` int(10) unsigned NOT NULL default '0',PRIMARY KEY  (`id`,`aid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
CREATE TABLE IF NOT EXISTS `dy_special` (`sid` smallint(5) unsigned NOT NULL auto_increment,`molds` char(20) NOT NULL,`name` char(50) NOT NULL,`litpic` char(200) NOT NULL,`title` char(100) NOT NULL,`keywords` char(255) NOT NULL,`description` varchar(300) NOT NULL,`gourl` char(255) NOT NULL,`isindex` tinyint(1) unsigned NOT NULL default '1',`t_index` char(50) NOT NULL,`t_list` char(50) NOT NULL,`t_listb` char(50) NOT NULL,`listnum` mediumint(8) unsigned NOT NULL default '0',`htmldir` char(100) NOT NULL,`htmlfile` char(100) NOT NULL,`orders` int(10) NOT NULL default '0',`body` mediumtext NOT NULL,`isshow` tinyint(1) unsigned NOT NULL default '1',PRIMARY KEY  (`sid`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
INSERT INTO `dy_special` (`sid`, `molds`, `name`, `litpic`, `title`, `keywords`, `description`, `gourl`, `isindex`, `t_index`, `t_list`, `t_listb`, `listnum`, `htmldir`, `htmlfile`, `orders`, `body`, `isshow`) VALUES(1, 'article', '专题演示', '', 'asdfasdf', '', '', '', 1, 'specia.html', 'specia_list.html', 'specia_body.html', 20, '', '', 0, '', 1);
CREATE TABLE IF NOT EXISTS `dy_sysconfig` (`name` char(35) NOT NULL,`sets` varchar(500) NOT NULL,UNIQUE KEY `sysconfig` (`name`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `dy_sysconfig` (`name`, `sets`) VALUES('sendmail', 'a:4:{s:4:"smtp";s:0:"";s:4:"mail";s:0:"";s:4:"pass";s:0:"";s:4:"name";s:16:"DOYO建站系统";}');
CREATE TABLE IF NOT EXISTS `dy_traits` (`id` smallint(5) unsigned NOT NULL auto_increment,`name` char(50) NOT NULL,`molds` char(20) NOT NULL,PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;
INSERT INTO `dy_traits` (`id`, `name`, `molds`) VALUES(1, '头条', 'article'),(2, '推荐', 'article'),(3, '头条', 'product'),(4, '推荐', 'product');
CREATE TABLE IF NOT EXISTS `dy_update` (`id` int(11) NOT NULL auto_increment,`version` char(10) NOT NULL,`newupdate` char(15) NOT NULL,`uptime` int(10) unsigned NOT NULL,PRIMARY KEY  (`id`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;