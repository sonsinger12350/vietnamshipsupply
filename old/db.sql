-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: travel360
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nv4_authors`
--

DROP TABLE IF EXISTS `nv4_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) DEFAULT '',
  `position` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text,
  `check_num` varchar(40) NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) DEFAULT '',
  `last_agent` varchar(255) DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors`
--

LOCK TABLES `nv4_authors` WRITE;
/*!40000 ALTER TABLE `nv4_authors` DISABLE KEYS */;
INSERT INTO `nv4_authors` VALUES (1,'ckeditor',1,'adobe,archives,audio,documents,flash,images,real,video|1|1|1','Administrator',0,0,0,'','bb6ec6215afa5281448dd56e1a83715b',1442974557,'14.169.191.67','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36'),(2,'ckeditor',2,'adobe,archives,audio,documents,flash,images,real,video|1|1|1','hoangnhan',0,0,0,'','ca43b5047067a70067c8a7c152816f39',1442977589,'14.169.191.67','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36');
/*!40000 ALTER TABLE `nv4_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_authors_config`
--

DROP TABLE IF EXISTS `nv4_authors_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyname` (`keyname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors_config`
--

LOCK TABLES `nv4_authors_config` WRITE;
/*!40000 ALTER TABLE `nv4_authors_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_authors_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_authors_module`
--

DROP TABLE IF EXISTS `nv4_authors_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `module` varchar(55) NOT NULL,
  `lang_key` varchar(50) NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) DEFAULT '',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_authors_module`
--

LOCK TABLES `nv4_authors_module` WRITE;
/*!40000 ALTER TABLE `nv4_authors_module` DISABLE KEYS */;
INSERT INTO `nv4_authors_module` VALUES (1,'siteinfo','mod_siteinfo',1,1,1,1,'2f12e5771f7e1ee9cda34085bcb10cb2'),(2,'authors','mod_authors',2,1,1,1,'4198c44aa98bd4b0140d1e1ff3ad7536'),(3,'settings','mod_settings',3,1,1,0,'0b121b4c4f63188918cb9a8ec2323a14'),(4,'database','mod_database',4,1,0,0,'4e57e6c52c26a58c7ddbab81172a6fbf'),(5,'webtools','mod_webtools',5,1,0,0,'941c93bcf600ef4fcd268c712a8e7d29'),(6,'seotools','mod_seotools',6,1,0,0,'56141fdd4b80345388a1e33cb1b74a11'),(7,'language','mod_language',7,1,1,0,'64046b68c2973c6b74608aa74c9e49ed'),(8,'modules','mod_modules',8,1,1,0,'3c419668870054da617ffe96eb52a79c'),(9,'themes','mod_themes',9,1,1,0,'3ed03fb2d0fb80165728d2f74bac40a3'),(10,'extensions','mod_extensions',10,1,0,0,'58502a01e6b8c24e65a0b4e46a01b506'),(11,'upload','mod_upload',11,1,1,1,'79d4b952da5f8e4560eae29db34d58c4');
/*!40000 ALTER TABLE `nv4_authors_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banip`
--

DROP TABLE IF EXISTS `nv4_banip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banip` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banip`
--

LOCK TABLES `nv4_banip` WRITE;
/*!40000 ALTER TABLE `nv4_banip` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_banip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_click`
--

DROP TABLE IF EXISTS `nv4_banners_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) NOT NULL,
  `click_country` varchar(10) NOT NULL,
  `click_browse_key` varchar(100) NOT NULL,
  `click_browse_name` varchar(100) NOT NULL,
  `click_os_key` varchar(100) NOT NULL,
  `click_os_name` varchar(100) NOT NULL,
  `click_ref` varchar(255) NOT NULL,
  KEY `bid` (`bid`),
  KEY `click_day` (`click_day`),
  KEY `click_ip` (`click_ip`),
  KEY `click_country` (`click_country`),
  KEY `click_browse_key` (`click_browse_key`),
  KEY `click_os_key` (`click_os_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_click`
--

LOCK TABLES `nv4_banners_click` WRITE;
/*!40000 ALTER TABLE `nv4_banners_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_banners_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_clients`
--

DROP TABLE IF EXISTS `nv4_banners_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_clients` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(60) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `reg_time` int(11) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `yim` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_num` varchar(40) NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL,
  `last_agent` varchar(255) NOT NULL,
  `uploadtype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  KEY `full_name` (`full_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_clients`
--

LOCK TABLES `nv4_banners_clients` WRITE;
/*!40000 ALTER TABLE `nv4_banners_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_banners_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_plans`
--

DROP TABLE IF EXISTS `nv4_banners_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `blang` char(2) DEFAULT '',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `form` varchar(100) NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_plans`
--

LOCK TABLES `nv4_banners_plans` WRITE;
/*!40000 ALTER TABLE `nv4_banners_plans` DISABLE KEYS */;
INSERT INTO `nv4_banners_plans` VALUES (1,'','Quang cao giua trang','','sequential',510,100,1),(2,'','Quang cao trai','','sequential',190,500,1);
/*!40000 ALTER TABLE `nv4_banners_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_banners_rows`
--

DROP TABLE IF EXISTS `nv4_banners_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_ext` varchar(100) NOT NULL,
  `file_mime` varchar(100) NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) DEFAULT '',
  `imageforswf` varchar(255) DEFAULT '',
  `click_url` varchar(255) DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '_blank',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `clid` (`clid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_banners_rows`
--

LOCK TABLES `nv4_banners_rows` WRITE;
/*!40000 ALTER TABLE `nv4_banners_rows` DISABLE KEYS */;
INSERT INTO `nv4_banners_rows` VALUES (1,'Bo ngoai giao',2,0,'bongoaigiao.jpg','jpg','image/jpeg',160,54,'','','http://www.mofa.gov.vn','_blank',1439973638,1439973638,0,0,1,1),(2,'vinades',2,0,'vinades.jpg','jpg','image/jpeg',190,454,'','','http://vinades.vn','_blank',1439973638,1439973638,0,0,1,2),(3,'Quang cao giua trang',1,0,'webnhanh_vn.png','png','image/png',510,65,'','','http://webnhanh.vn','_blank',1439973638,1439973638,0,0,1,1);
/*!40000 ALTER TABLE `nv4_banners_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_config`
--

DROP TABLE IF EXISTS `nv4_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_config` (
  `lang` varchar(3) NOT NULL DEFAULT 'sys',
  `module` varchar(25) NOT NULL DEFAULT 'global',
  `config_name` varchar(30) NOT NULL DEFAULT '',
  `config_value` text,
  UNIQUE KEY `lang` (`lang`,`module`,`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_config`
--

LOCK TABLES `nv4_config` WRITE;
/*!40000 ALTER TABLE `nv4_config` DISABLE KEYS */;
INSERT INTO `nv4_config` VALUES ('sys','site','closed_site','0'),('sys','site','admin_theme','admin_default'),('sys','site','date_pattern','l, d/m/Y'),('sys','site','time_pattern','H:i'),('sys','site','online_upd','1'),('sys','site','statistic','1'),('sys','site','mailer_mode',''),('sys','site','smtp_host','smtp.gmail.com'),('sys','site','smtp_ssl','1'),('sys','site','smtp_port','465'),('sys','site','smtp_username','user@gmail.com'),('sys','site','smtp_password',''),('sys','site','googleAnalyticsID',''),('sys','site','googleAnalyticsSetDomainName','0'),('sys','site','googleAnalyticsMethod','classic'),('sys','site','searchEngineUniqueID',''),('sys','site','metaTagsOgp','1'),('sys','site','pageTitleMode','pagetitle'),('sys','site','description_length','170'),('sys','global','ssl_https','0'),('sys','global','notification_active','1'),('sys','global','notification_autodel','15'),('sys','global','site_keywords','NukeViet, portal, mysql, php'),('sys','global','site_phone',''),('sys','global','block_admin_ip','0'),('sys','global','admfirewall','0'),('sys','global','dump_autobackup','1'),('sys','global','dump_backup_ext','gz'),('sys','global','dump_backup_day','30'),('sys','global','gfx_chk','3'),('sys','global','file_allowed_ext','adobe,archives,audio,documents,flash,images,real,video'),('sys','global','forbid_extensions','php,php3,php4,php5,phtml,inc'),('sys','global','forbid_mimes',''),('sys','global','nv_max_size','8388608'),('sys','global','upload_checking_mode','mild'),('sys','global','upload_alt_require','1'),('sys','global','upload_auto_alt','1'),('sys','global','allowuserreg','1'),('sys','global','allowuserlogin','1'),('sys','global','allowuserloginmulti','0'),('sys','global','allowloginchange','0'),('sys','global','allowquestion','0'),('sys','global','allowuserpublic','1'),('sys','global','useactivate','2'),('sys','global','allowmailchange','1'),('sys','global','allow_sitelangs','en'),('sys','global','read_type','0'),('sys','global','rewrite_optional','1'),('sys','global','rewrite_endurl','/'),('sys','global','rewrite_exturl','.html'),('sys','global','rewrite_op_mod','supplies'),('sys','global','autocheckupdate','1'),('sys','global','autoupdatetime','24'),('sys','global','gzip_method','1'),('sys','global','is_user_forum','0'),('sys','global','authors_detail_main','0'),('sys','global','spadmin_add_admin','1'),('sys','global','openid_servers',''),('sys','global','timestamp','69'),('sys','global','openid_processing','0'),('sys','global','captcha_type','0'),('sys','global','version','4.0.23'),('sys','global','whoviewuser','2'),('sys','global','facebook_client_id',''),('sys','global','facebook_client_secret',''),('sys','global','google_client_id',''),('sys','global','google_client_secret',''),('sys','global','cookie_httponly','1'),('sys','global','admin_check_pass_time','1800'),('sys','global','user_check_pass_time','1800'),('sys','global','adminrelogin_max','3'),('sys','global','cookie_secure','0'),('sys','global','nv_unick_type','4'),('sys','global','nv_upass_type','0'),('sys','global','is_flood_blocker','1'),('sys','global','max_requests_60','40'),('sys','global','max_requests_300','150'),('sys','global','nv_display_errors_list','1'),('sys','global','display_errors_list','1'),('sys','global','nv_auto_resize','1'),('sys','global','dump_interval','1'),('sys','global','cdn_url',''),('sys','define','nv_unickmin','4'),('sys','define','nv_unickmax','20'),('sys','define','nv_upassmin','5'),('sys','define','nv_upassmax','20'),('sys','define','nv_gfx_num','6'),('sys','define','nv_gfx_width','120'),('sys','define','nv_gfx_height','25'),('sys','define','nv_max_width','1500'),('sys','define','nv_max_height','1500'),('sys','define','nv_live_cookie_time','31104000'),('sys','define','nv_live_session_time','0'),('sys','define','nv_anti_iframe','0'),('sys','define','nv_anti_agent','0'),('sys','define','nv_allowed_html_tags','embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),('sys','define','dir_forum',''),('en','global','site_domain',''),('en','global','site_name','Ship Supply'),('en','global','site_logo','uploads/logo_moi.png'),('en','global','site_description','Sharing success, connect passions'),('en','global','site_keywords','Ship Supply'),('en','global','site_theme','default'),('en','global','mobile_theme',''),('en','global','site_home_module','home'),('en','global','switch_mobi_des','0'),('en','global','upload_logo',''),('en','global','autologosize1','50'),('en','global','autologosize2','40'),('en','global','autologosize3','30'),('en','global','autologomod',''),('en','global','name_show','1'),('en','global','cronjobs_next_time','1442994346'),('en','global','disable_site_content','For technical reasons Web site temporary not available. we are very sorry for that inconvenience!'),('en','global','ssl_https_modules',''),('en','seotools','prcservice',''),('en','about','view_comm','6'),('en','about','auto_postcomm','1'),('en','about','allowed_comm','-1'),('en','page','activecomm','0'),('en','page','emailcomm','0'),('en','supplies','structure_upload','Ym'),('en','news','allowed_comm','-1'),('en','news','auto_postcomm','1'),('en','news','socialbutton','1'),('en','news','alias_lower','1'),('en','news','tags_alias','0'),('en','news','auto_tags','0'),('en','news','tags_remind','1'),('en','news','structure_upload','Ym'),('en','news','imgposition','2'),('en','news','allowed_rating_point','1'),('en','news','facebookappid',''),('en','news','show_no_image',''),('en','news','blockwidth','52'),('en','news','blockheight','75'),('en','news','imagefull','460'),('en','news','copyright',''),('en','news','showtooltip','1'),('en','news','tooltip_position','bottom'),('en','news','tooltip_length','150'),('en','news','showhometext','1'),('en','news','timecheckstatus','0'),('en','news','config_source','0'),('en','page','sortcomm','0'),('en','page','captcha','1'),('en','page','allowed_comm','-1'),('en','page','view_comm','6'),('en','page','setcomm','4'),('en','siteterms','auto_postcomm','1'),('en','siteterms','allowed_comm','-1'),('en','siteterms','view_comm','6'),('en','siteterms','setcomm','4'),('en','siteterms','activecomm','0'),('en','siteterms','emailcomm','0'),('en','siteterms','adminscomm',''),('en','siteterms','sortcomm','0'),('en','siteterms','captcha','1'),('en','freecontent','next_execute','0'),('vi','contact','bodytext','If you have any questions or comments, please contact us below and we will get back to you as soon as possible.'),('sys','site','statistics_timezone','Asia/Bangkok'),('sys','site','site_email','trungnghiack@gmail.com'),('sys','global','error_set_logs','1'),('sys','global','error_send_email','trungnghiack@gmail.com'),('sys','global','site_lang','en'),('sys','global','my_domains','travel360.vn,xalocongnghe.com.vn,www.xalocongnghe.com.vn'),('sys','global','cookie_prefix','nv4c_Lnbcj'),('sys','global','session_prefix','nv4s_Soiy51'),('sys','global','site_timezone','byCountry'),('sys','global','proxy_blocker','0'),('sys','global','str_referer_blocker','0'),('sys','global','lang_multi','0'),('sys','global','lang_geo','0'),('sys','global','ftp_server','localhost'),('sys','global','ftp_port','21'),('sys','global','ftp_user_name',''),('sys','global','ftp_user_pass','STsVVzsWA_csUY28JMec60k7FVc7FgP3LFGNvCTHnOs,'),('sys','global','ftp_path','/'),('sys','global','ftp_check_login','0'),('en','supplies','imgposition','2'),('en','supplies','tags_alias','0'),('en','supplies','blockwidth','52'),('en','supplies','blockheight','75'),('en','supplies','imagefull','460'),('en','news','view_comm','6'),('en','news','setcomm','4'),('en','news','activecomm','0'),('en','news','emailcomm','0'),('en','news','adminscomm',''),('en','news','sortcomm','0'),('en','news','captcha','1'),('en','supplies','tags_remind','1'),('en','supplies','auto_tags','0'),('en','supplies','timecheckstatus','0'),('en','supplies','config_source','0'),('en','supplies','show_no_image',''),('en','supplies','allowed_rating_point','1'),('en','news','indexfile','viewcat_main_right'),('en','news','per_page','20'),('en','news','st_links','10'),('en','news','homewidth','100'),('en','news','homeheight','150'),('en','slider','indexfile','viewcat_page_new'),('en','slider','homewidth','100'),('en','slider','homeheight','150'),('en','slider','blockwidth','52'),('en','slider','blockheight','75'),('en','slider','show_no_image',''),('en','slider','structure_upload','Ym'),('en','slider','timecheckstatus','0'),('en','page','adminscomm',''),('en','page','auto_postcomm','1'),('en','about','setcomm','4'),('en','about','activecomm','0'),('en','about','emailcomm','0'),('en','about','adminscomm',''),('en','about','sortcomm','0'),('en','about','captcha','1'),('en','supplies','socialbutton','1'),('en','supplies','alias_lower','1'),('en','supplies','facebookappid',''),('en','supplies','showhometext','1'),('en','supplies','copyright',''),('en','supplies','showtooltip','1'),('en','supplies','tooltip_position','bottom'),('en','supplies','tooltip_length','150'),('en','supplies','indexfile','viewcat_main_right'),('en','supplies','per_page','20'),('en','supplies','st_links','10'),('en','supplies','homewidth','100'),('en','supplies','homeheight','150'),('en','supplies','auto_postcomm','1'),('en','supplies','allowed_comm','-1'),('en','supplies','view_comm','6'),('en','supplies','setcomm','4'),('en','supplies','activecomm','0'),('en','supplies','emailcomm','0'),('en','supplies','adminscomm',''),('en','supplies','sortcomm','0'),('en','supplies','captcha','1'),('en','port-we-serv','adminscomm',''),('en','port-we-serv','emailcomm','0'),('en','port-we-serv','auto_postcomm','1'),('en','port-we-serv','allowed_comm','-1'),('en','port-we-serv','view_comm','6'),('en','port-we-serv','setcomm','4'),('en','port-we-serv','activecomm','0'),('en','port-we-serv','sortcomm','0'),('en','port-we-serv','captcha','1');
/*!40000 ALTER TABLE `nv4_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_cookies`
--

DROP TABLE IF EXISTS `nv4_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_cookies` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `domain` varchar(100) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_cookies`
--

LOCK TABLES `nv4_cookies` WRITE;
/*!40000 ALTER TABLE `nv4_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_counter`
--

DROP TABLE IF EXISTS `nv4_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) NOT NULL,
  `c_val` varchar(100) NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `en_count` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `c_type` (`c_type`,`c_val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_counter`
--

LOCK TABLES `nv4_counter` WRITE;
/*!40000 ALTER TABLE `nv4_counter` DISABLE KEYS */;
INSERT INTO `nv4_counter` VALUES ('c_time','start',0,0,0),('c_time','last',0,1442994046,0),('total','hits',1442994046,2544,2544),('year','2015',1442994046,2544,2544),('year','2016',0,0,0),('year','2017',0,0,0),('year','2018',0,0,0),('year','2019',0,0,0),('year','2020',0,0,0),('year','2021',0,0,0),('year','2022',0,0,0),('year','2023',0,0,0),('month','Jan',0,0,0),('month','Feb',0,0,0),('month','Mar',0,0,0),('month','Apr',0,0,0),('month','May',0,0,0),('month','Jun',0,0,0),('month','Jul',0,0,0),('month','Aug',1441018358,85,85),('month','Sep',1442994046,2459,2459),('month','Oct',0,0,0),('month','Nov',0,0,0),('month','Dec',0,0,0),('day','01',1441107635,32,32),('day','02',1441208859,27,27),('day','03',1441299473,34,34),('day','04',1441371657,26,26),('day','05',1441468675,59,59),('day','06',1441557218,71,71),('day','07',1441641656,211,211),('day','08',1441725684,164,164),('day','09',1441814083,128,128),('day','10',1441903613,80,80),('day','11',1441990664,134,134),('day','12',1442075668,84,84),('day','13',1442160723,167,167),('day','14',1442248212,97,97),('day','15',1442328948,134,134),('day','16',1442421450,100,100),('day','17',1442499651,77,77),('day','18',1442595083,192,192),('day','19',1442672293,163,163),('day','20',1442767603,115,115),('day','21',1442851260,166,166),('day','22',1442941099,138,138),('day','23',1442994046,60,60),('day','24',0,0,0),('day','25',0,0,0),('day','26',0,0,0),('day','27',0,0,0),('day','28',1440753764,0,0),('day','29',1440829391,0,0),('day','30',1440953225,0,0),('day','31',1441018358,0,0),('dayofweek','Sunday',1442767603,369,369),('dayofweek','Monday',1442851260,499,499),('dayofweek','Tuesday',1442941099,468,468),('dayofweek','Wednesday',1442994046,330,330),('dayofweek','Thursday',1442499651,205,205),('dayofweek','Friday',1442595083,356,356),('dayofweek','Saturday',1442672293,317,317),('hour','00',1442942633,2,2),('hour','01',1442946483,2,2),('hour','02',1442949022,1,1),('hour','03',1442955563,2,2),('hour','04',1442958973,16,16),('hour','05',1442875389,0,0),('hour','06',1442877959,0,0),('hour','07',1442882106,0,0),('hour','08',1442973543,5,5),('hour','09',1442977125,5,5),('hour','10',1442979914,5,5),('hour','11',1442897324,0,0),('hour','12',1442987825,5,5),('hour','13',1442991369,9,9),('hour','14',1442994046,8,8),('hour','15',1442911778,0,0),('hour','16',1442912861,0,0),('hour','17',1442919241,0,0),('hour','18',1442923197,0,0),('hour','19',1442926628,0,0),('hour','20',1442929595,0,0),('hour','21',1442932598,0,0),('hour','22',1442936465,0,0),('hour','23',1442941099,0,0),('bot','googlebot',1442977125,300,300),('bot','msnbot',0,0,0),('bot','bingbot',0,0,0),('bot','yahooslurp',0,0,0),('bot','w3cvalidator',0,0,0),('browser','opera',0,0,0),('browser','operamini',0,0,0),('browser','webtv',0,0,0),('browser','explorer',1442987825,50,50),('browser','edge',0,0,0),('browser','pocket',0,0,0),('browser','konqueror',0,0,0),('browser','icab',0,0,0),('browser','omniweb',0,0,0),('browser','firebird',0,0,0),('browser','firefox',1442992219,122,122),('browser','iceweasel',0,0,0),('browser','shiretoko',0,0,0),('browser','mozilla',1442991369,1111,1111),('browser','amaya',0,0,0),('browser','lynx',0,0,0),('browser','safari',1442197631,3,3),('browser','iphone',1442881913,72,72),('browser','ipod',0,0,0),('browser','ipad',1441591677,1,1),('browser','chrome',1442994046,381,381),('browser','android',0,0,0),('browser','googlebot',1442977125,300,300),('browser','yahooslurp',1442908575,139,139),('browser','w3cvalidator',0,0,0),('browser','blackberry',1442528578,2,2),('browser','icecat',0,0,0),('browser','nokias60',0,0,0),('browser','nokia',0,0,0),('browser','msn',0,0,0),('browser','msnbot',0,0,0),('browser','bingbot',1442863986,6,6),('browser','netscape',0,0,0),('browser','galeon',0,0,0),('browser','netpositive',0,0,0),('browser','phoenix',0,0,0),('browser','Mobile',0,0,0),('browser','bots',0,0,0),('browser','Unknown',1442989988,357,357),('browser','Unspecified',0,0,0),('os','unknown',1442989988,1895,1895),('os','win',1442992219,23,23),('os','win10',0,0,0),('os','win8',1442991257,307,307),('os','win7',1442991369,160,160),('os','win2003',0,0,0),('os','winvista',1441926085,16,16),('os','wince',0,0,0),('os','winxp',0,0,0),('os','win2000',0,0,0),('os','apple',1442994046,35,35),('os','linux',1442942633,31,31),('os','os2',0,0,0),('os','beos',0,0,0),('os','iphone',1442881913,72,72),('os','ipod',0,0,0),('os','ipad',1441591677,1,1),('os','blackberry',1442528578,2,2),('os','nokia',0,0,0),('os','freebsd',0,0,0),('os','openbsd',0,0,0),('os','netbsd',0,0,0),('os','sunos',0,0,0),('os','opensolaris',0,0,0),('os','android',1442257100,2,2),('os','irix',0,0,0),('os','palm',0,0,0),('os','Unspecified',0,0,0),('country','AD',0,0,0),('country','AE',0,0,0),('country','AF',0,0,0),('country','AG',0,0,0),('country','AI',0,0,0),('country','AL',0,0,0),('country','AM',0,0,0),('country','AN',0,0,0),('country','AO',1442029359,1,1),('country','AQ',0,0,0),('country','AR',0,0,0),('country','AS',0,0,0),('country','AT',0,0,0),('country','AU',0,0,0),('country','AW',0,0,0),('country','AZ',0,0,0),('country','BA',0,0,0),('country','BB',0,0,0),('country','BD',0,0,0),('country','BE',0,0,0),('country','BF',0,0,0),('country','BG',0,0,0),('country','BH',0,0,0),('country','BI',0,0,0),('country','BJ',0,0,0),('country','BM',0,0,0),('country','BN',0,0,0),('country','BO',0,0,0),('country','BR',1442936465,25,25),('country','BS',0,0,0),('country','BT',0,0,0),('country','BW',0,0,0),('country','BY',0,0,0),('country','BZ',0,0,0),('country','CA',1442973543,128,128),('country','CD',0,0,0),('country','CF',0,0,0),('country','CG',0,0,0),('country','CH',1442942633,1,1),('country','CI',0,0,0),('country','CK',0,0,0),('country','CL',0,0,0),('country','CM',0,0,0),('country','CN',1442956463,83,83),('country','CO',0,0,0),('country','CR',0,0,0),('country','CS',0,0,0),('country','CU',0,0,0),('country','CV',0,0,0),('country','CY',0,0,0),('country','CZ',0,0,0),('country','DE',1442958973,311,311),('country','DJ',0,0,0),('country','DK',0,0,0),('country','DM',0,0,0),('country','DO',0,0,0),('country','DZ',1441926744,1,1),('country','EC',0,0,0),('country','EE',0,0,0),('country','EG',0,0,0),('country','ER',0,0,0),('country','ES',1441838166,23,23),('country','ET',0,0,0),('country','EU',0,0,0),('country','FI',1442929595,12,12),('country','FJ',0,0,0),('country','FK',0,0,0),('country','FM',0,0,0),('country','FO',0,0,0),('country','FR',1442932598,156,156),('country','GA',0,0,0),('country','GB',1442260360,1,1),('country','GD',0,0,0),('country','GE',0,0,0),('country','GF',0,0,0),('country','GH',0,0,0),('country','GI',0,0,0),('country','GL',0,0,0),('country','GM',0,0,0),('country','GN',0,0,0),('country','GP',0,0,0),('country','GQ',0,0,0),('country','GR',0,0,0),('country','GS',0,0,0),('country','GT',0,0,0),('country','GU',0,0,0),('country','GW',0,0,0),('country','GY',0,0,0),('country','HK',1442987280,1,1),('country','HN',0,0,0),('country','HR',0,0,0),('country','HT',0,0,0),('country','HU',0,0,0),('country','ID',1442037566,1,1),('country','IE',1442992219,5,5),('country','IL',0,0,0),('country','IN',1442991334,2,2),('country','IO',0,0,0),('country','IQ',0,0,0),('country','IR',0,0,0),('country','IS',0,0,0),('country','IT',1442695489,23,23),('country','JM',0,0,0),('country','JO',0,0,0),('country','JP',0,0,0),('country','KE',0,0,0),('country','KG',0,0,0),('country','KH',0,0,0),('country','KI',0,0,0),('country','KM',0,0,0),('country','KN',0,0,0),('country','KR',0,0,0),('country','KW',0,0,0),('country','KY',0,0,0),('country','KZ',0,0,0),('country','LA',0,0,0),('country','LB',0,0,0),('country','LC',0,0,0),('country','LI',0,0,0),('country','LK',0,0,0),('country','LR',0,0,0),('country','LS',0,0,0),('country','LT',0,0,0),('country','LU',0,0,0),('country','LV',0,0,0),('country','LY',0,0,0),('country','MA',0,0,0),('country','MC',0,0,0),('country','MD',0,0,0),('country','MG',0,0,0),('country','MH',0,0,0),('country','MK',0,0,0),('country','ML',0,0,0),('country','MM',0,0,0),('country','MN',0,0,0),('country','MO',0,0,0),('country','MP',0,0,0),('country','MQ',0,0,0),('country','MR',0,0,0),('country','MT',0,0,0),('country','MU',0,0,0),('country','MV',0,0,0),('country','MW',0,0,0),('country','MX',0,0,0),('country','MY',0,0,0),('country','MZ',0,0,0),('country','NA',0,0,0),('country','NC',0,0,0),('country','NE',0,0,0),('country','NF',0,0,0),('country','NG',0,0,0),('country','NI',0,0,0),('country','NL',1442886383,48,48),('country','NO',1442804571,31,31),('country','NP',0,0,0),('country','NR',0,0,0),('country','NU',0,0,0),('country','NZ',0,0,0),('country','OM',0,0,0),('country','PA',1442926628,1,1),('country','PE',1442550967,1,1),('country','PF',0,0,0),('country','PG',0,0,0),('country','PH',0,0,0),('country','PK',0,0,0),('country','PL',0,0,0),('country','PR',1442946483,1,1),('country','PS',0,0,0),('country','PT',1442438381,2,2),('country','PW',0,0,0),('country','PY',0,0,0),('country','QA',1441975981,1,1),('country','RE',0,0,0),('country','RO',1441675883,1,1),('country','RU',1442866348,19,19),('country','RW',0,0,0),('country','SA',0,0,0),('country','SB',0,0,0),('country','SC',0,0,0),('country','SD',0,0,0),('country','SE',0,0,0),('country','SG',1442634766,2,2),('country','SI',0,0,0),('country','SK',0,0,0),('country','SL',0,0,0),('country','SM',0,0,0),('country','SN',0,0,0),('country','SO',0,0,0),('country','SR',0,0,0),('country','ST',0,0,0),('country','SV',0,0,0),('country','SY',0,0,0),('country','SZ',0,0,0),('country','TD',0,0,0),('country','TF',0,0,0),('country','TG',0,0,0),('country','TH',0,0,0),('country','TJ',0,0,0),('country','TK',0,0,0),('country','TL',0,0,0),('country','TM',0,0,0),('country','TN',0,0,0),('country','TO',0,0,0),('country','TR',0,0,0),('country','TT',0,0,0),('country','TV',0,0,0),('country','TW',0,0,0),('country','TZ',0,0,0),('country','UA',1442470483,6,6),('country','UG',0,0,0),('country','US',1442989156,805,805),('country','UY',1442838534,1,1),('country','UZ',0,0,0),('country','VA',0,0,0),('country','VC',0,0,0),('country','VE',0,0,0),('country','VG',0,0,0),('country','VI',0,0,0),('country','VN',1442994046,795,795),('country','VU',0,0,0),('country','WS',0,0,0),('country','YE',0,0,0),('country','YT',0,0,0),('country','YU',0,0,0),('country','ZA',0,0,0),('country','ZM',0,0,0),('country','ZW',0,0,0),('country','ZZ',1442991369,56,56),('country','unkown',0,0,0);
/*!40000 ALTER TABLE `nv4_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_cronjobs`
--

DROP TABLE IF EXISTS `nv4_cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `run_file` varchar(255) NOT NULL,
  `run_func` varchar(255) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `en_cron_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `is_sys` (`is_sys`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_cronjobs`
--

LOCK TABLES `nv4_cronjobs` WRITE;
/*!40000 ALTER TABLE `nv4_cronjobs` DISABLE KEYS */;
INSERT INTO `nv4_cronjobs` VALUES (1,1439973638,5,'online_expired_del.php','cron_online_expired_del','',0,1,1,1442994046,1,'Delete expired online status'),(2,1439973638,1440,'dump_autobackup.php','cron_dump_autobackup','',0,1,1,1442992180,1,'Automatic backup database'),(3,1439973638,60,'temp_download_destroy.php','cron_auto_del_temp_download','',0,1,1,1442992180,1,'Empty temporary files'),(4,1439973638,30,'ip_logs_destroy.php','cron_del_ip_logs','',0,1,1,1442994046,1,'Delete IP log files'),(5,1439973638,1440,'error_log_destroy.php','cron_auto_del_error_log','',0,1,1,1442992180,1,'Delete expired error_log log files'),(6,1439973638,360,'error_log_sendmail.php','cron_auto_sendmail_error_log','',0,1,0,0,0,'Send error logs to admin'),(7,1439973638,60,'ref_expired_del.php','cron_ref_expired_del','',0,1,1,1442992180,1,'Delete expired referer'),(8,1439973638,1440,'siteDiagnostic_update.php','cron_siteDiagnostic_update','',0,0,1,1442992180,1,'Update site diagnostic'),(9,1439973638,60,'check_version.php','cron_auto_check_version','',0,1,1,1442992180,1,'Check NukeViet version'),(10,1439973638,1440,'notification_autodel.php','cron_notification_autodel','',0,1,1,1442992180,1,'Delete old notification');
/*!40000 ALTER TABLE `nv4_cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_about`
--

DROP TABLE IF EXISTS `nv4_en_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_about` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_about`
--

LOCK TABLES `nv4_en_about` WRITE;
/*!40000 ALTER TABLE `nv4_en_about` DISABLE KEYS */;
INSERT INTO `nv4_en_about` VALUES (1,'WELCOME','ABOUT-US','','','Welcome to VIETNAM SHIP SUPPLY CO., LTD<br /><br />Vietnam Ship Supply Co., Ltd  is a young, experienced and talented company that is located  in Ho Chi Minh city , Vietnam<br />As a member of IMPA , ISSA  & ShipServ, we have been serving (7/24) and providing a high quality services to all types of vessels which calling at all Vietnam Ports , Anchorages  and Shipyards.','<div style=\"text-align:center; margin-top:10px\"><img alt=\"blue ocean about 1\" src=\"/uploads/about/blue-ocean-about-1.jpg\" style=\"width:50%\" /></div>\r\n\r\n<div style=\"text-align: justify; margin-bottom:10px; margin-top:15px\">Our team almost 45 skillful professionals are working on full time basis and 24 hours a day to encounter the demands of our clients.</div>\r\n\r\n<div style=\"text-align: justify; margin-bottom:10px\">We provide fast &amp; high quality services that are really reliable at reasonable prices.</div>\r\n\r\n<div style=\"text-align: justify; margin-bottom:10px\">It would be our honor and pleasure to work with your good company in Vietnam as your official supplier &amp; solution partner.</div>','welcome to,blue ocean,marine service,co,.ltd',1,'4','',0,1,1,1441004637,1442812561,1);
/*!40000 ALTER TABLE `nv4_en_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_about_config`
--

DROP TABLE IF EXISTS `nv4_en_about_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_about_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_about_config`
--

LOCK TABLES `nv4_en_about_config` WRITE;
/*!40000 ALTER TABLE `nv4_en_about_config` DISABLE KEYS */;
INSERT INTO `nv4_en_about_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','5'),('related_articles','5');
/*!40000 ALTER TABLE `nv4_en_about_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_blocks_groups`
--

DROP TABLE IF EXISTS `nv4_en_blocks_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(55) NOT NULL,
  `module` varchar(55) NOT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `template` varchar(55) DEFAULT NULL,
  `position` varchar(55) DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) DEFAULT '1',
  `groups_view` varchar(255) DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text,
  PRIMARY KEY (`bid`),
  KEY `theme` (`theme`),
  KEY `module` (`module`),
  KEY `position` (`position`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_blocks_groups`
--

LOCK TABLES `nv4_en_blocks_groups` WRITE;
/*!40000 ALTER TABLE `nv4_en_blocks_groups` DISABLE KEYS */;
INSERT INTO `nv4_en_blocks_groups` VALUES (3,'default','slider','global.block_slider_cat.php','Banner','','no_title','[HEADER]',0,'1','6',0,1,'a:5:{s:5:\"catid\";a:1:{i:0;s:1:\"1\";}s:6:\"numrow\";i:7;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:1:\"0\";s:14:\"tooltip_length\";s:1:\"0\";}'),(39,'default','news','global.block_groups.php','News','/Ship_supply/news/groups/new/','','[OUR_BUSINESS]',0,'1','6',0,2,'a:5:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:4;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";}'),(8,'default','page','global.html.php','Copyright','','no_title','[FOOTER_SITE]',0,'1','6',1,1,'a:1:{s:11:\"htmlcontent\";s:525:\"<div>Copyright © by <span style=\"color:rgb(78, 142, 204);\">Blue Ocean Marine Service Co., Ltd</span><span style=\"line-height: 20.7999992370605px; text-align: center;\">. All rights reserved.&nbsp;</span><a href=\"http://web24.vn/thiet-ke-website/thiet-ke-web-gia-re.html\" target=\"_blank\" title=\"Thiết kế web giá rẻ\"><span style=\"color:rgb(78, 142, 204);\">Design</span></a> by <a href=\"http://web24.vn\" ref=\"dofollow\" target=\"_blank\" title=\"Thiết kế web\"><span style=\"color:rgb(78, 142, 204);\">Web24</span></a></div>\";}'),(9,'default','contact','global.contact_form.php','Feedback','','no_title','[FOOTER_SITE]',0,'1','6',1,2,''),(31,'default','about','global.about.php','Welcom','','no_title','[TOP]',0,'1','6',0,2,''),(28,'default','slider','global.block_doitac.php','We are the Distributor of the following brands','','doi_tac','[BOTTOM]',0,'1','6',1,1,'a:5:{s:5:\"catid\";a:1:{i:0;s:1:\"2\";}s:6:\"numrow\";i:25;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:1:\"0\";s:14:\"tooltip_length\";s:1:\"0\";}'),(12,'default','users','global.user_button.php','Login site','','no_title','[PERSONALAREA]',0,'1','6',1,1,''),(13,'default','page','global.html.php','BLUE OCEAN MARINE SERVICE CO., LTD','','simple','[COMPANY_INFO]',0,'1','6',1,1,'a:1:{s:11:\"htmlcontent\";s:3101:\"<div style=\"margin-bottom:10px\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">	<tbody>		<tr>			<td style=\"width:5%\">			<div style=\"text-align:center\"><img alt=\"home173\" height=\"20\" src=\"/uploads/home173.png\" width=\"20\" /></div>			</td>			<td colspan=\"3\" rowspan=\"1\"><strong>&nbsp; Head Office</strong>: 1979/5 Huynh Tan Phat St., 6 Quater , Nha Be Town,</td>		</tr>		<tr>			<td>&nbsp;</td>			<td colspan=\"3\" rowspan=\"1\">&nbsp; Nha Be Dist.,&nbsp;Ho Chi Minh City, Vietnam</td>		</tr>	</tbody></table></div><div style=\"margin-bottom:10px\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">	<tbody>		<tr>			<td style=\"width:5%\">			<div style=\"text-align:center\"><img alt=\"pin66\" height=\"20\" src=\"/uploads/pin66.png\" width=\"20\" /></div>			</td>			<td colspan=\"3\" rowspan=\"1\"><strong>&nbsp; Workshop/Warehouse</strong>: 1350/3 Nguyen Binh St., Hiep Phuoc Ward,</td>		</tr>		<tr>			<td>&nbsp;</td>			<td colspan=\"3\" rowspan=\"1\">&nbsp; Nha Be Dist.,&nbsp;Ho Chi Minh City, Vietnam</td>		</tr>	</tbody></table></div><div style=\"margin-bottom:10px\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">	<tbody>		<tr>			<td style=\"width:5%\">			<div style=\"text-align:center\"><img alt=\"call60\" height=\"20\" src=\"/uploads/call60.png\" width=\"20\" /></div>			</td>			<td style=\"width:50%\"><strong>&nbsp; Tell</strong>: +84 8 6278 3977 - 6262 5055</td>			<td style=\"width:5%\">			<div style=\"text-align:center\"><img alt=\"paper6\" height=\"20\" src=\"/uploads/paper6.png\" width=\"20\" /></div>			</td>			<td><strong>&nbsp; Fax</strong>: +84 8 6262 5025</td>		</tr>	</tbody></table></div><div style=\"margin-bottom:10px\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">	<tbody>		<tr>			<td style=\"width:5%\">			<div style=\"text-align:center\"><img alt=\"iphone26\" height=\"20\" src=\"/uploads/iphone26.png\" width=\"20\" /></div>			</td>			<td colspan=\"3\" rowspan=\"1\"><strong>&nbsp; Mobile</strong>:&nbsp;+84 903 764 467 - +84 917 449 010</td>		</tr>	</tbody></table></div><div style=\"margin-bottom:10px\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">	<tbody>		<tr>			<td style=\"width: 5%; text-align: center;\"><img alt=\"email103\" height=\"20\" src=\"/uploads/email103.png\" width=\"20\" /></td>			<td style=\"width: 11%\"><strong>&nbsp; Email</strong></td>			<td>&nbsp; General Info:&nbsp;info@blueoceanmarineco.com</td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp; Technical Dept<em>.</em>:&nbsp;technical@blueoceanmarineco.com&nbsp;</td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp; Supply Dept.:&nbsp;purchasing@blueoceanmarineco.com</td>		</tr>	</tbody></table></div><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">	<tbody>		<tr>			<td style=\"width:5%\">			<div style=\"text-align:center\"><img alt=\"web58\" height=\"20\" src=\"/uploads/web58.png\" width=\"20\" /></div>			</td>			<td colspan=\"2\" rowspan=\"1\"><strong>&nbsp; Website</strong>: <a href=\"http://blueoceanmarineco.com/\" target=\"_blank\">wwwblueoceanmarineco.com</a> &nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table>\";}'),(41,'default','statistics','global.counter.php','Statistics','','simple','[STATIS]',0,'1','6',1,1,''),(14,'default','menu','global.site_mods.php','Menu Site','','no_title','[MENU_SITE]',0,'1','6',1,1,'a:2:{s:12:\"title_length\";i:20;s:14:\"module_in_menu\";a:5:{i:0;s:5:\"about\";i:1;s:8:\"supplies\";i:2;s:12:\"port-we-serv\";i:3;s:4:\"news\";i:4;s:7:\"contact\";}}'),(15,'default','contact','global.contact_default.php','Contact Default','','no_title','[CONTACT_DEFAULT]',0,'1','6',1,1,''),(16,'default','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1','6',1,1,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(17,'default','theme','global.menu_footer.php','INFORMATION','','simple','[MENU_FOOTER]',0,'1','6',1,1,'a:1:{s:14:\"module_in_menu\";a:5:{i:0;s:4:\"home\";i:1;s:5:\"about\";i:2;s:12:\"our-business\";i:3;s:4:\"news\";i:4;s:7:\"contact\";}}'),(18,'default','menu','global.slimmenu.php','Supplies','/supplies/','simple','[FEATURED_PRODUCT]',0,'1','6',1,1,'a:2:{s:6:\"menuid\";i:3;s:12:\"title_length\";i:20;}'),(19,'mobile_default','menu','global.metismenu.php','Menu Site','','no_title','[MENU_SITE]',0,'1','6',1,1,'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),(20,'mobile_default','users','global.user_button.php','Sign In','','no_title','[MENU_SITE]',0,'1','6',1,2,''),(21,'mobile_default','contact','global.contact_default.php','Contact Default','','no_title','[SOCIAL_ICONS]',0,'1','6',1,1,''),(22,'mobile_default','contact','global.contact_form.php','Feedback','','no_title','[SOCIAL_ICONS]',0,'1','6',1,2,''),(23,'mobile_default','theme','global.social.php','Social icon','','no_title','[SOCIAL_ICONS]',0,'1','6',1,3,'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),(24,'mobile_default','theme','global.QR_code.php','QR code','','no_title','[SOCIAL_ICONS]',0,'1','6',1,4,'a:3:{s:5:\"level\";s:1:\"L\";s:15:\"pixel_per_point\";i:4;s:11:\"outer_frame\";i:1;}'),(25,'mobile_default','theme','global.copyright.php','Copyright','','no_title','[FOOTER_SITE]',0,'1','6',1,1,'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:35:\"/index.php?language=en&nv=siteterms\";}'),(26,'mobile_default','theme','global.menu_footer.php','Categories','','primary','[MENU_FOOTER]',0,'1','6',1,1,'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),(27,'mobile_default','theme','global.company_info.php','Company Info','','primary','[COMPANY_INFO]',0,'1','6',1,1,'a:11:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:72:\"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:13:\"company_phone\";s:14:\"+84-4-85872007\";s:11:\"company_fax\";s:14:\"+84-4-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),(29,'default','support','global.support_fixed_right.php','Support Online','','no_title','[FIX_BANNER_RIGHT]',0,'1','6',1,1,''),(38,'default','supplies','global.block_news_cat.php','Supplies','','','[OUR_BUSINESS]',0,'1','6',0,1,'a:5:{s:5:\"catid\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"7\";i:2;s:1:\"5\";i:3;s:1:\"6\";}s:6:\"numrow\";i:5;s:11:\"showtooltip\";i:0;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";}'),(32,'default','page','global.html.php','Support','','no_title','[SUPPORT]',0,'1','6',0,1,'a:1:{s:11:\"htmlcontent\";s:210:\"<strong>BLUE OCEAN PLEASED TO SUPPORT YOU</strong><br  />You can contact us from this website by filling the contact imfomation on the form below<br  />We will contact you as soon as possible Sincerely thanks .\";}'),(33,'default','page','global.html.php','Address contact','','no_title','[ADDRES_CONTACT]',0,'1','6',0,1,'a:1:{s:11:\"htmlcontent\";s:262:\"<strong>ORTHER INFOMATION&nbsp;</strong><br  /><strong>Add</strong> : 1979/5 Huỳnh Tấn Phát Str ., 6 Quater Nha Be Town, Nha Be District, Ho Chi Minh City, Viet Nam<br  /><strong>Phone</strong> : +84 8 6278 3977 -&nbsp;<strong>Fax</strong> : +84 8 6262 5055\";}'),(37,'default','page','global.html.php','Contact Header','','no_title','[CONTACT]',0,'1','6',1,1,'a:1:{s:11:\"htmlcontent\";s:171:\"Mobi : <strong>+ 84 903 764 467 - + 84 917 449 010</strong> &nbsp;<br  />Email : <span style=\"color:rgb(255, 255, 255);\"><strong>info@blueoceanmarineco.com</strong></span>\";}'),(40,'default','supplies','global.block_category_o.php','Menu Supplies','','no_title','[LEFT]',0,'1','6',0,1,'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:22;}'),(42,'default','page','global.html.php','Support contact','','no_title','[DEPARTMENT]',0,'1','6',0,1,'a:1:{s:11:\"htmlcontent\";s:3119:\"<div class=\"col-xs-24 col-sm-12 col-md-12\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"max-width:400px; width:100%\">	<tbody>		<tr>			<td colspan=\"2\"><span style=\"color:rgb(255, 0, 0);\"><em>Managing Director</em></span></td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"font-size:16px;\"><span style=\"color:rgb(1, 142, 200);\"><strong>Le Thi Ngoc Trinh</strong></span></span></td>		</tr>		<tr>			<td>Tel</td>			<td>: +84 8 6667 9502</td>		</tr>		<tr>			<td>Fax</td>			<td>: +84 8 6667 9502</td>		</tr>		<tr>			<td>Email</td>			<td>:&nbsp;<a href=\"mailto:info@vietnamshipsupply.com\">info@vietnamshipsupply.com</a></td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"color:rgb(255, 0, 0);\"><em>Deputy Manager</em></span></td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"font-size:16px;\"><span style=\"color:rgb(1, 142, 200);\"><strong>Huynh Thanh The</strong></span></span></td>		</tr>		<tr>			<td>Tel</td>			<td>: +84 8 6667 9502</td>		</tr>		<tr>			<td>Fax</td>			<td>:&nbsp;+84 8 6667 9502</td>		</tr>		<tr>			<td>HP</td>			<td>: +84 901 366 626</td>		</tr>		<tr>			<td>Email</td>			<td>:&nbsp;<a href=\"mailto:info@vietnamshipsupply.com\">info@vietnamshipsupply.com</a></td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>		<tr>			<td colspan=\"2\"><em><span style=\"color:rgb(255, 0, 0);\">Purchasing Manager</span></em></td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"font-size:16px;\"><span style=\"color:rgb(1, 142, 200);\"><strong>Simone Thien An</strong></span></span></td>		</tr>		<tr>			<td>Tel</td>			<td>:&nbsp;+84 8 6667 9502</td>		</tr>		<tr>			<td>Fax</td>			<td>:&nbsp;+84 8 6667 9502</td>		</tr>		<tr>			<td>Email</td>			<td>:&nbsp;<a href=\"mailto:supply@vietnamshipsupply.com\">supply@vietnamshipsupply.com</a></td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table></div><div class=\"col-xs-24 col-sm-12 col-md-12\"><table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"max-width:400px; width:100%\">	<tbody>		<tr>			<td colspan=\"2\"><em><span style=\"color:rgb(255, 0, 0);\">Technical Manager</span></em></td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"font-size:16px;\"><span style=\"color:rgb(1, 142, 200);\"><strong>Philip Huynh</strong></span></span></td>		</tr>		<tr>			<td>Tel</td>			<td>: +84 8 6667 9502</td>		</tr>		<tr>			<td>Fax</td>			<td>:&nbsp;+84 8 6667 9502</td>		</tr>		<tr>			<td>Email</td>			<td>:&nbsp;<a href=\"mailto:Email.tech@vietnamshipsupply.com\">tech@vietnamshipsupply.co</a></td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"color:rgb(255, 0, 0);\"><em>Chief Account</em></span></td>		</tr>		<tr>			<td colspan=\"2\"><span style=\"font-size:18px;\"><span style=\"color:rgb(1, 142, 200);\"><strong>Lucia Th. An</strong></span></span></td>		</tr>		<tr>			<td>Tel</td>			<td>:&nbsp;+84 8 6667 9502</td>		</tr>		<tr>			<td>Fax</td>			<td>:&nbsp;+84 8 6667 9502</td>		</tr>		<tr>			<td>Email</td>			<td>:&nbsp;<a href=\"mailto:acct@vietnamshipsupply.com\">acct@vietnamshipsupply.co</a></td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table></div>\";}');
/*!40000 ALTER TABLE `nv4_en_blocks_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_blocks_weight`
--

DROP TABLE IF EXISTS `nv4_en_blocks_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  UNIQUE KEY `bid` (`bid`,`func_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_blocks_weight`
--

LOCK TABLES `nv4_en_blocks_weight` WRITE;
/*!40000 ALTER TABLE `nv4_en_blocks_weight` DISABLE KEYS */;
INSERT INTO `nv4_en_blocks_weight` VALUES (13,36,1),(13,37,1),(13,38,1),(13,39,1),(13,45,1),(13,46,1),(13,47,1),(13,48,1),(13,55,1),(13,58,1),(13,4,1),(13,5,1),(13,6,1),(13,7,1),(13,8,1),(13,9,1),(13,10,1),(13,11,1),(13,12,1),(13,49,1),(13,57,1),(13,52,1),(13,53,1),(13,29,1),(13,30,1),(13,31,1),(13,32,1),(13,33,1),(13,34,1),(13,35,1),(13,18,1),(13,19,1),(13,20,1),(13,21,1),(13,22,1),(13,23,1),(13,24,1),(13,25,1),(13,26,1),(13,27,1),(13,56,1),(15,1,1),(15,36,1),(15,37,1),(15,38,1),(15,39,1),(15,45,1),(15,46,1),(15,47,1),(15,48,1),(15,55,1),(15,58,1),(15,4,1),(15,5,1),(15,6,1),(15,7,1),(15,8,1),(15,9,1),(15,10,1),(15,11,1),(15,12,1),(15,49,1),(15,57,1),(15,52,1),(15,53,1),(15,29,1),(15,30,1),(15,31,1),(15,32,1),(15,33,1),(15,34,1),(15,35,1),(15,18,1),(15,19,1),(15,20,1),(15,21,1),(15,22,1),(15,23,1),(15,24,1),(15,25,1),(15,26,1),(15,27,1),(15,56,1),(18,36,1),(18,37,1),(18,38,1),(18,39,1),(18,45,1),(18,46,1),(18,47,1),(18,48,1),(18,55,1),(18,58,1),(18,4,1),(18,5,1),(18,6,1),(18,7,1),(18,8,1),(18,9,1),(18,10,1),(18,11,1),(18,12,1),(18,49,1),(18,57,1),(18,52,1),(18,53,1),(18,29,1),(18,30,1),(18,31,1),(18,32,1),(18,33,1),(18,34,1),(18,35,1),(18,18,1),(18,19,1),(18,20,1),(18,21,1),(18,22,1),(18,23,1),(18,24,1),(18,25,1),(18,26,1),(18,27,1),(18,56,1),(8,36,1),(8,37,1),(8,38,1),(8,39,1),(8,45,1),(8,46,1),(8,47,1),(8,48,1),(8,55,1),(8,58,1),(8,4,1),(8,5,1),(8,6,1),(8,7,1),(8,8,1),(8,9,1),(8,10,1),(8,11,1),(8,12,1),(8,49,1),(8,57,1),(8,52,1),(8,53,1),(8,29,1),(8,30,1),(8,31,1),(8,32,1),(8,33,1),(8,34,1),(8,35,1),(8,18,1),(8,19,1),(8,20,1),(8,21,1),(8,22,1),(8,23,1),(8,24,1),(8,25,1),(8,26,1),(8,27,1),(8,56,1),(9,1,2),(9,36,2),(9,37,2),(9,38,2),(9,39,2),(9,45,2),(9,46,2),(9,47,2),(9,48,2),(9,55,2),(9,58,2),(9,4,2),(9,5,2),(9,6,2),(9,7,2),(9,8,2),(9,9,2),(9,10,2),(9,11,2),(9,12,2),(9,49,2),(9,57,2),(9,52,2),(9,53,2),(9,29,2),(9,30,2),(9,31,2),(9,32,2),(9,33,2),(9,34,2),(9,35,2),(9,18,2),(9,19,2),(9,20,2),(9,21,2),(9,22,2),(9,23,2),(9,24,2),(9,25,2),(9,26,2),(9,27,2),(9,56,2),(23,92,3),(23,85,3),(23,90,3),(23,96,3),(23,97,3),(23,84,3),(23,95,3),(23,87,3),(23,86,3),(28,75,1),(25,92,1),(12,92,1),(12,85,1),(12,86,1),(12,96,1),(12,97,1),(12,87,1),(25,85,1),(25,86,1),(25,96,1),(25,97,1),(25,87,1),(27,90,1),(27,95,1),(27,84,1),(27,92,1),(38,73,1),(16,86,1),(16,96,1),(16,97,1),(16,87,1),(12,90,1),(12,95,1),(12,84,1),(27,85,1),(27,86,1),(27,96,1),(27,97,1),(27,87,1),(16,90,1),(16,95,1),(16,84,1),(16,92,1),(16,85,1),(39,73,2),(17,36,1),(17,37,1),(17,38,1),(17,39,1),(17,45,1),(17,46,1),(17,47,1),(17,48,1),(17,55,1),(17,58,1),(17,4,1),(17,5,1),(17,6,1),(17,7,1),(17,8,1),(17,9,1),(17,10,1),(17,11,1),(17,12,1),(17,49,1),(17,57,1),(17,52,1),(17,53,1),(17,29,1),(17,30,1),(17,31,1),(17,32,1),(17,33,1),(17,34,1),(17,35,1),(17,18,1),(17,19,1),(17,20,1),(17,21,1),(17,22,1),(17,23,1),(17,24,1),(17,25,1),(17,26,1),(17,27,1),(17,56,1),(28,82,1),(14,36,1),(14,37,1),(14,38,1),(14,39,1),(14,45,1),(14,46,1),(14,47,1),(14,48,1),(14,55,1),(14,58,1),(14,4,1),(14,5,1),(14,6,1),(14,7,1),(14,8,1),(14,9,1),(14,10,1),(14,11,1),(14,12,1),(14,49,1),(14,57,1),(14,52,1),(14,53,1),(14,29,1),(14,30,1),(14,31,1),(14,32,1),(14,33,1),(14,34,1),(14,35,1),(14,18,1),(14,19,1),(14,20,1),(14,21,1),(14,22,1),(14,23,1),(14,24,1),(14,25,1),(14,26,1),(14,27,1),(14,56,1),(12,1,1),(12,36,1),(12,37,1),(12,38,1),(12,39,1),(12,45,1),(12,46,1),(12,47,1),(12,48,1),(12,55,1),(12,58,1),(12,4,1),(12,5,1),(12,6,1),(12,7,1),(12,8,1),(12,9,1),(12,10,1),(12,11,1),(12,12,1),(12,49,1),(12,57,1),(12,52,1),(12,53,1),(12,29,1),(12,30,1),(12,31,1),(12,32,1),(12,33,1),(12,34,1),(12,35,1),(12,18,1),(12,19,1),(12,20,1),(12,21,1),(12,22,1),(12,23,1),(12,24,1),(12,25,1),(12,26,1),(12,27,1),(12,56,1),(28,74,1),(28,22,1),(28,21,1),(28,20,1),(28,19,1),(28,18,1),(28,55,1),(28,12,1),(28,11,1),(28,7,1),(28,4,1),(28,53,1),(28,52,1),(28,48,1),(28,47,1),(28,46,1),(28,45,1),(28,49,1),(28,58,1),(28,57,1),(28,10,1),(28,5,1),(28,9,1),(28,8,1),(28,30,1),(28,29,1),(28,27,1),(28,26,1),(28,25,1),(28,24,1),(28,23,1),(28,39,1),(28,38,1),(28,37,1),(28,36,1),(28,56,1),(28,35,1),(28,34,1),(28,33,1),(28,32,1),(28,31,1),(28,6,1),(16,1,1),(16,36,1),(16,37,1),(16,38,1),(16,39,1),(16,45,1),(16,46,1),(16,47,1),(16,48,1),(16,55,1),(16,58,1),(16,4,1),(16,5,1),(16,6,1),(16,7,1),(16,8,1),(16,9,1),(16,10,1),(16,11,1),(16,12,1),(16,49,1),(16,57,1),(16,52,1),(16,53,1),(16,29,1),(16,30,1),(16,31,1),(16,32,1),(16,33,1),(16,34,1),(16,35,1),(16,18,1),(16,19,1),(16,20,1),(16,21,1),(16,22,1),(16,23,1),(16,24,1),(16,25,1),(16,26,1),(16,27,1),(16,56,1),(27,1,1),(27,36,1),(27,37,1),(27,38,1),(27,39,1),(27,45,1),(27,46,1),(27,47,1),(27,48,1),(27,55,1),(27,58,1),(27,4,1),(27,5,1),(27,6,1),(27,7,1),(27,8,1),(27,9,1),(27,10,1),(27,11,1),(27,12,1),(27,49,1),(27,57,1),(27,52,1),(27,53,1),(27,29,1),(27,30,1),(27,31,1),(27,32,1),(27,33,1),(27,34,1),(27,35,1),(27,18,1),(27,19,1),(27,20,1),(27,21,1),(27,22,1),(27,23,1),(27,24,1),(27,25,1),(27,26,1),(27,27,1),(27,56,1),(25,1,1),(25,36,1),(25,37,1),(25,38,1),(25,39,1),(25,45,1),(25,46,1),(25,47,1),(25,48,1),(25,55,1),(25,58,1),(25,4,1),(25,5,1),(25,6,1),(25,7,1),(25,8,1),(25,9,1),(25,10,1),(25,11,1),(25,12,1),(25,49,1),(25,57,1),(25,52,1),(25,53,1),(25,29,1),(25,30,1),(25,31,1),(25,32,1),(25,33,1),(25,34,1),(25,35,1),(25,18,1),(25,19,1),(25,20,1),(25,21,1),(25,22,1),(25,23,1),(25,24,1),(25,25,1),(25,26,1),(25,27,1),(25,56,1),(26,1,1),(26,36,1),(26,37,1),(26,38,1),(26,39,1),(26,45,1),(26,46,1),(26,47,1),(26,48,1),(26,55,1),(26,58,1),(26,4,1),(26,5,1),(26,6,1),(26,7,1),(26,8,1),(26,9,1),(26,10,1),(26,11,1),(26,12,1),(26,49,1),(26,57,1),(26,52,1),(26,53,1),(26,29,1),(26,30,1),(26,31,1),(26,32,1),(26,33,1),(26,34,1),(26,35,1),(26,18,1),(26,19,1),(26,20,1),(26,21,1),(26,22,1),(26,23,1),(26,24,1),(26,25,1),(26,26,1),(26,27,1),(26,56,1),(19,1,1),(19,36,1),(19,37,1),(19,38,1),(19,39,1),(19,45,1),(19,46,1),(19,47,1),(19,48,1),(19,55,1),(19,58,1),(19,4,1),(19,5,1),(19,6,1),(19,7,1),(19,8,1),(19,9,1),(19,10,1),(19,11,1),(19,12,1),(19,49,1),(19,57,1),(19,52,1),(19,53,1),(19,29,1),(19,30,1),(19,31,1),(19,32,1),(19,33,1),(19,34,1),(19,35,1),(19,18,1),(19,19,1),(19,20,1),(19,21,1),(19,22,1),(19,23,1),(19,24,1),(19,25,1),(19,26,1),(19,27,1),(19,56,1),(20,1,2),(20,36,2),(20,37,2),(20,38,2),(20,39,2),(20,45,2),(20,46,2),(20,47,2),(20,48,2),(20,55,2),(20,58,2),(20,4,2),(20,5,2),(20,6,2),(20,7,2),(20,8,2),(20,9,2),(20,10,2),(20,11,2),(20,12,2),(20,49,2),(20,57,2),(20,52,2),(20,53,2),(20,29,2),(20,30,2),(20,31,2),(20,32,2),(20,33,2),(20,34,2),(20,35,2),(20,18,2),(20,19,2),(20,20,2),(20,21,2),(20,22,2),(20,23,2),(20,24,2),(20,25,2),(20,26,2),(20,27,2),(20,56,2),(21,1,1),(21,36,1),(21,37,1),(21,38,1),(21,39,1),(21,45,1),(21,46,1),(21,47,1),(21,48,1),(21,55,1),(21,58,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(21,9,1),(21,10,1),(21,11,1),(21,12,1),(21,49,1),(21,57,1),(21,52,1),(21,53,1),(21,29,1),(21,30,1),(21,31,1),(21,32,1),(21,33,1),(21,34,1),(21,35,1),(21,18,1),(21,19,1),(21,20,1),(21,21,1),(21,22,1),(21,23,1),(21,24,1),(21,25,1),(21,26,1),(21,27,1),(21,56,1),(22,1,2),(22,36,2),(22,37,2),(22,38,2),(22,39,2),(22,45,2),(22,46,2),(22,47,2),(22,48,2),(22,55,2),(22,58,2),(22,4,2),(22,5,2),(22,6,2),(22,7,2),(22,8,2),(22,9,2),(22,10,2),(22,11,2),(22,12,2),(22,49,2),(22,57,2),(22,52,2),(22,53,2),(22,29,2),(22,30,2),(22,31,2),(22,32,2),(22,33,2),(22,34,2),(22,35,2),(22,18,2),(22,19,2),(22,20,2),(22,21,2),(22,22,2),(22,23,2),(22,24,2),(22,25,2),(22,26,2),(22,27,2),(22,56,2),(23,1,3),(23,36,3),(23,37,3),(23,38,3),(23,39,3),(23,45,3),(23,46,3),(23,47,3),(23,48,3),(23,55,3),(23,58,3),(23,4,3),(23,5,3),(23,6,3),(23,7,3),(23,8,3),(23,9,3),(23,10,3),(23,11,3),(23,12,3),(23,49,3),(23,57,3),(23,52,3),(23,53,3),(23,29,3),(23,30,3),(23,31,3),(23,32,3),(23,33,3),(23,34,3),(23,35,3),(23,18,3),(23,19,3),(23,20,3),(23,21,3),(23,22,3),(23,23,3),(23,24,3),(23,25,3),(23,26,3),(23,27,3),(23,56,3),(24,1,4),(24,36,4),(24,37,4),(24,38,4),(24,39,4),(24,45,4),(24,46,4),(24,47,4),(24,48,4),(24,55,4),(24,58,4),(24,4,4),(24,5,4),(24,6,4),(24,7,4),(24,8,4),(24,9,4),(24,10,4),(24,11,4),(24,12,4),(24,49,4),(24,57,4),(24,52,4),(24,53,4),(24,29,4),(24,30,4),(24,31,4),(24,32,4),(24,33,4),(24,34,4),(24,35,4),(24,18,4),(24,19,4),(24,20,4),(24,21,4),(24,22,4),(24,23,4),(24,24,4),(24,25,4),(24,26,4),(24,27,4),(24,56,4),(15,62,1),(15,72,1),(15,71,1),(15,61,1),(15,60,1),(15,67,1),(15,59,1),(15,70,1),(15,65,1),(9,62,2),(9,72,2),(9,71,2),(9,61,2),(9,60,2),(9,67,2),(9,59,2),(9,70,2),(9,65,2),(17,92,1),(17,87,1),(17,97,1),(17,84,1),(17,95,1),(17,86,1),(17,90,1),(17,96,1),(17,85,1),(12,62,1),(12,72,1),(12,71,1),(12,61,1),(12,60,1),(12,67,1),(12,59,1),(12,70,1),(12,65,1),(28,67,1),(28,62,1),(28,72,1),(28,59,1),(28,70,1),(28,61,1),(28,65,1),(28,71,1),(28,60,1),(16,62,1),(16,72,1),(16,71,1),(16,61,1),(16,60,1),(16,67,1),(16,59,1),(16,70,1),(16,65,1),(27,62,1),(27,72,1),(27,71,1),(27,61,1),(27,60,1),(27,67,1),(27,59,1),(27,70,1),(27,65,1),(25,62,1),(25,72,1),(25,71,1),(25,61,1),(25,60,1),(25,67,1),(25,59,1),(25,70,1),(25,65,1),(26,62,1),(26,72,1),(26,71,1),(26,61,1),(26,60,1),(26,67,1),(26,59,1),(26,70,1),(26,65,1),(19,62,1),(19,72,1),(19,71,1),(19,61,1),(19,60,1),(19,67,1),(19,59,1),(19,70,1),(19,65,1),(20,62,2),(20,72,2),(20,71,2),(20,61,2),(20,60,2),(20,67,2),(20,59,2),(20,70,2),(20,65,2),(21,62,1),(21,72,1),(21,71,1),(21,61,1),(21,60,1),(21,67,1),(21,59,1),(21,70,1),(21,65,1),(22,62,2),(22,72,2),(22,71,2),(22,61,2),(22,60,2),(22,67,2),(22,59,2),(22,70,2),(22,65,2),(23,62,3),(23,72,3),(23,71,3),(23,61,3),(23,60,3),(23,67,3),(23,59,3),(23,70,3),(23,65,3),(24,62,4),(24,72,4),(24,71,4),(24,61,4),(24,60,4),(24,67,4),(24,59,4),(24,70,4),(24,65,4),(13,73,1),(15,73,1),(18,73,1),(8,73,1),(9,73,2),(17,73,1),(14,73,1),(12,73,1),(28,78,1),(29,73,1),(9,86,2),(16,73,1),(27,73,1),(25,73,1),(26,73,1),(19,73,1),(20,73,2),(21,73,1),(22,73,2),(23,73,3),(24,73,4),(13,74,1),(13,75,1),(15,74,1),(15,75,1),(18,74,1),(18,75,1),(8,74,1),(8,75,1),(9,74,2),(9,75,2),(9,90,2),(9,95,2),(17,74,1),(17,75,1),(14,74,1),(14,75,1),(12,74,1),(12,75,1),(28,1,1),(28,73,1),(16,74,1),(16,75,1),(27,74,1),(27,75,1),(25,74,1),(25,75,1),(26,74,1),(26,75,1),(19,74,1),(19,75,1),(20,74,2),(20,75,2),(21,74,1),(21,75,1),(22,74,2),(22,75,2),(23,74,3),(23,75,3),(24,74,4),(24,75,4),(3,73,1),(24,87,4),(19,87,1),(26,85,1),(26,92,1),(19,97,1),(19,96,1),(26,95,1),(19,86,1),(26,84,1),(26,90,1),(19,95,1),(22,90,2),(22,95,2),(22,84,2),(22,92,2),(22,85,2),(22,86,2),(22,96,2),(22,97,2),(22,87,2),(21,90,1),(21,95,1),(21,84,1),(21,92,1),(21,85,1),(21,86,1),(21,96,1),(21,97,1),(19,84,1),(21,87,1),(20,90,2),(20,95,2),(20,84,2),(19,92,1),(19,85,1),(20,97,2),(20,92,2),(20,85,2),(20,86,2),(20,96,2),(20,87,2),(19,90,1),(26,86,1),(26,96,1),(28,77,1),(13,77,1),(15,77,1),(18,77,1),(8,77,1),(9,77,2),(26,97,1),(17,77,1),(14,77,1),(12,77,1),(16,77,1),(9,84,2),(27,77,1),(25,77,1),(26,77,1),(19,77,1),(20,77,2),(21,77,1),(22,77,2),(23,77,3),(24,77,4),(29,1,1),(29,62,1),(29,72,1),(29,71,1),(29,61,1),(29,60,1),(29,67,1),(29,59,1),(29,70,1),(29,65,1),(29,4,1),(29,5,1),(29,6,1),(29,7,1),(29,8,1),(29,9,1),(29,10,1),(29,11,1),(29,12,1),(29,55,1),(29,18,1),(29,19,1),(29,20,1),(29,21,1),(29,22,1),(29,23,1),(29,24,1),(29,25,1),(29,26,1),(29,27,1),(29,29,1),(29,30,1),(29,31,1),(29,32,1),(29,33,1),(29,34,1),(29,35,1),(29,56,1),(29,36,1),(29,37,1),(29,38,1),(29,39,1),(29,57,1),(29,58,1),(29,49,1),(29,45,1),(29,46,1),(29,47,1),(29,48,1),(29,52,1),(29,53,1),(29,74,1),(29,75,1),(29,77,1),(9,96,2),(9,97,2),(9,87,2),(8,90,1),(8,95,1),(8,84,1),(8,92,1),(8,85,1),(8,86,1),(28,79,1),(15,78,1),(15,79,1),(29,78,1),(29,79,1),(9,78,2),(9,79,2),(26,87,1),(25,90,1),(28,81,1),(14,51,1),(12,78,1),(12,79,1),(16,78,1),(16,79,1),(9,92,2),(9,85,2),(27,78,1),(27,79,1),(25,78,1),(25,79,1),(26,78,1),(26,79,1),(19,78,1),(19,79,1),(20,78,2),(20,79,2),(21,78,1),(21,79,1),(22,78,2),(22,79,2),(23,78,3),(23,79,3),(24,78,4),(24,79,4),(13,81,1),(13,82,1),(15,81,1),(15,82,1),(18,81,1),(18,82,1),(29,81,1),(29,82,1),(8,81,1),(8,82,1),(9,81,2),(9,82,2),(25,95,1),(25,84,1),(17,81,1),(17,82,1),(14,81,1),(14,82,1),(12,81,1),(12,82,1),(16,81,1),(16,82,1),(33,55,1),(32,55,1),(27,81,1),(27,82,1),(25,81,1),(25,82,1),(26,81,1),(26,82,1),(19,81,1),(19,82,1),(20,81,2),(20,82,2),(21,81,1),(21,82,1),(22,81,2),(22,82,2),(23,81,3),(23,82,3),(24,81,4),(24,82,4),(31,73,2),(8,96,1),(8,97,1),(8,87,1),(29,90,1),(29,95,1),(29,84,1),(29,92,1),(29,85,1),(29,86,1),(29,96,1),(29,97,1),(29,87,1),(15,90,1),(15,95,1),(15,84,1),(15,92,1),(15,85,1),(15,86,1),(15,96,1),(15,97,1),(15,87,1),(41,111,1),(41,82,1),(41,106,1),(41,101,1),(41,99,1),(41,100,1),(41,81,1),(41,73,1),(41,110,1),(28,90,1),(28,95,1),(28,84,1),(28,92,1),(28,85,1),(28,86,1),(28,96,1),(28,97,1),(28,87,1),(24,97,4),(24,96,4),(24,86,4),(24,85,4),(24,92,4),(24,84,4),(24,95,4),(24,90,4),(8,100,1),(8,110,1),(8,111,1),(8,101,1),(29,104,1),(29,109,1),(29,98,1),(29,106,1),(29,99,1),(29,100,1),(29,110,1),(29,111,1),(29,101,1),(18,104,1),(18,109,1),(18,98,1),(18,106,1),(18,99,1),(18,100,1),(18,110,1),(18,111,1),(18,101,1),(15,104,1),(15,109,1),(15,98,1),(15,106,1),(15,99,1),(15,100,1),(15,110,1),(15,111,1),(15,101,1),(37,104,1),(37,109,1),(37,98,1),(37,106,1),(37,99,1),(37,100,1),(37,110,1),(37,111,1),(37,101,1),(13,104,1),(13,109,1),(13,98,1),(13,106,1),(13,99,1),(13,100,1),(13,110,1),(13,111,1),(13,101,1),(28,104,1),(28,109,1),(28,98,1),(28,106,1),(28,99,1),(28,100,1),(28,110,1),(28,111,1),(28,101,1),(8,51,1),(9,51,2),(28,51,1),(12,51,1),(13,51,1),(15,51,1),(16,51,1),(17,51,1),(18,51,1),(29,51,1),(37,73,1),(37,81,1),(37,82,1),(37,4,1),(37,5,1),(37,6,1),(37,12,1),(37,8,1),(37,11,1),(37,7,1),(37,9,1),(37,10,1),(37,55,1),(37,18,1),(37,19,1),(37,20,1),(37,21,1),(37,22,1),(37,23,1),(37,24,1),(37,25,1),(37,26,1),(37,27,1),(37,29,1),(37,30,1),(37,31,1),(37,32,1),(37,33,1),(37,34,1),(37,35,1),(37,56,1),(37,36,1),(37,37,1),(37,38,1),(37,39,1),(37,57,1),(37,58,1),(37,49,1),(37,51,1),(37,45,1),(37,46,1),(37,47,1),(37,48,1),(37,52,1),(37,53,1),(37,74,1),(37,75,1),(37,77,1),(8,99,1),(8,106,1),(8,98,1),(8,109,1),(8,104,1),(9,101,2),(9,111,2),(9,110,2),(9,100,2),(9,99,2),(9,106,2),(9,98,2),(9,109,2),(9,104,2),(17,101,1),(17,111,1),(17,110,1),(17,100,1),(17,99,1),(17,106,1),(17,98,1),(17,109,1),(17,104,1),(14,101,1),(14,111,1),(14,110,1),(14,100,1),(14,99,1),(14,106,1),(14,98,1),(14,109,1),(14,104,1),(12,101,1),(12,111,1),(12,110,1),(12,100,1),(12,99,1),(12,106,1),(12,98,1),(12,109,1),(12,104,1),(16,101,1),(16,111,1),(16,110,1),(16,100,1),(16,99,1),(16,106,1),(16,98,1),(16,109,1),(16,104,1),(27,101,1),(27,111,1),(27,110,1),(27,100,1),(27,99,1),(27,106,1),(27,98,1),(27,109,1),(27,104,1),(25,101,1),(25,111,1),(25,110,1),(25,100,1),(25,99,1),(25,106,1),(25,98,1),(25,109,1),(25,104,1),(26,101,1),(26,111,1),(26,110,1),(26,100,1),(26,99,1),(26,106,1),(26,98,1),(26,109,1),(26,104,1),(19,101,1),(19,111,1),(19,110,1),(19,100,1),(19,99,1),(19,106,1),(19,98,1),(19,109,1),(19,104,1),(20,101,2),(20,111,2),(20,110,2),(20,100,2),(20,99,2),(20,106,2),(20,98,2),(20,109,2),(20,104,2),(21,101,1),(21,111,1),(21,110,1),(21,100,1),(21,99,1),(21,106,1),(21,98,1),(21,109,1),(21,104,1),(22,101,2),(22,111,2),(22,110,2),(22,100,2),(22,99,2),(22,106,2),(22,98,2),(22,109,2),(22,104,2),(23,101,3),(23,111,3),(23,110,3),(23,100,3),(23,99,3),(23,106,3),(23,98,3),(23,109,3),(23,104,3),(24,101,4),(24,111,4),(24,110,4),(24,100,4),(24,99,4),(24,106,4),(24,98,4),(24,109,4),(24,104,4),(40,101,1),(40,111,1),(40,110,1),(40,100,1),(40,99,1),(40,106,1),(40,98,1),(40,109,1),(40,104,1),(41,98,1),(41,109,1),(41,104,1),(41,4,1),(41,5,1),(41,6,1),(41,12,1),(41,8,1),(41,11,1),(41,7,1),(41,9,1),(41,10,1),(41,55,1),(41,18,1),(41,19,1),(41,20,1),(41,21,1),(41,22,1),(41,23,1),(41,24,1),(41,25,1),(41,26,1),(41,27,1),(41,29,1),(41,30,1),(41,31,1),(41,32,1),(41,33,1),(41,34,1),(41,35,1),(41,56,1),(41,36,1),(41,37,1),(41,38,1),(41,39,1),(41,57,1),(41,58,1),(41,49,1),(41,51,1),(41,45,1),(41,46,1),(41,47,1),(41,48,1),(41,52,1),(41,53,1),(41,74,1),(41,75,1),(41,77,1),(42,55,1),(28,112,1),(28,113,1),(15,112,1),(15,113,1),(29,112,1),(29,113,1),(8,112,1),(8,113,1),(9,112,2),(9,113,2),(17,112,1),(17,113,1),(12,112,1),(12,113,1),(16,112,1),(16,113,1),(41,112,1),(41,113,1),(27,112,1),(27,113,1),(25,112,1),(25,113,1),(26,112,1),(26,113,1),(19,112,1),(19,113,1),(20,112,2),(20,113,2),(21,112,1),(21,113,1),(22,112,2),(22,113,2),(23,112,3),(23,113,3),(24,112,4),(24,113,4),(28,115,1),(28,116,1),(13,115,1),(13,116,1),(37,115,1),(37,116,1),(15,115,1),(15,116,1),(18,115,1),(18,116,1),(29,115,1),(29,116,1),(8,115,1),(8,116,1),(9,115,2),(9,116,2),(17,115,1),(17,116,1),(14,115,1),(14,116,1),(12,115,1),(12,116,1),(16,115,1),(16,116,1),(41,115,1),(41,116,1),(27,115,1),(27,116,1),(25,115,1),(25,116,1),(26,115,1),(26,116,1),(19,115,1),(19,116,1),(20,115,2),(20,116,2),(21,115,1),(21,116,1),(22,115,2),(22,116,2),(23,115,3),(23,116,3),(24,115,4),(24,116,4);
/*!40000 ALTER TABLE `nv4_en_blocks_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_comment`
--

DROP TABLE IF EXISTS `nv4_en_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(55) NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) NOT NULL,
  `post_email` varchar(100) NOT NULL,
  `post_ip` varchar(15) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `mod_id` (`module`,`area`,`id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_comment`
--

LOCK TABLES `nv4_en_comment` WRITE;
/*!40000 ALTER TABLE `nv4_en_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_contact_department`
--

DROP TABLE IF EXISTS `nv4_en_contact_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_contact_department` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `others` text NOT NULL,
  `cats` text NOT NULL,
  `admins` text NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `full_name` (`full_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_contact_department`
--

LOCK TABLES `nv4_en_contact_department` WRITE;
/*!40000 ALTER TABLE `nv4_en_contact_department` DISABLE KEYS */;
INSERT INTO `nv4_en_contact_department` VALUES (1,'Consumer Care Division','Consumer-Care','&#40;08&#41; 38.000.000&#91;+84838000000&#93;','08 38.000.001','customer@mysite.com','Receive requests, suggestions, comments relating','{\"viber\":\"myViber\",\"skype\":\"mySkype\",\"yahoo\":\"myYahoo\",\"Full Name\":\"L\\u00ea Trung Ngh\\u0129a\"}','Consulting|Complaints|Cooperation','1/1/1/0',1,1,1),(2,'Technical Department','Technical','&#40;08&#41; 38.000.002&#91;+84838000002&#93;','08 38.000.003','technical@mysite.com','Resolve technical issues','{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\",\"Full Name\":\"Nguy\\u1ec5n H\\u1ed3ng \\u0110o\\u00e0n\"}','Bug Reports|Recommendations to improve','1/1/1/0',1,2,0);
/*!40000 ALTER TABLE `nv4_en_contact_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_contact_reply`
--

DROP TABLE IF EXISTS `nv4_en_contact_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_contact_reply`
--

LOCK TABLES `nv4_en_contact_reply` WRITE;
/*!40000 ALTER TABLE `nv4_en_contact_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_contact_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_contact_send`
--

DROP TABLE IF EXISTS `nv4_en_contact_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_contact_send` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `sender_phone` varchar(20) DEFAULT '',
  `sender_ip` varchar(15) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sender_name` (`sender_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_contact_send`
--

LOCK TABLES `nv4_en_contact_send` WRITE;
/*!40000 ALTER TABLE `nv4_en_contact_send` DISABLE KEYS */;
INSERT INTO `nv4_en_contact_send` VALUES (1,1,'Consulting','chào bạn','tôi muốn hỏi bạn vài vấn đề',1439974210,1,'admin','trungnghiack@gmail.com','0988491256','::1',1,0),(2,1,'Consulting','trung nghia','hello',1441370810,1,'admin','trungnghiack@gmail.com','0933085076','::1',1,0);
/*!40000 ALTER TABLE `nv4_en_contact_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_freecontent_blocks`
--

DROP TABLE IF EXISTS `nv4_en_freecontent_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_freecontent_blocks`
--

LOCK TABLES `nv4_en_freecontent_blocks` WRITE;
/*!40000 ALTER TABLE `nv4_en_freecontent_blocks` DISABLE KEYS */;
INSERT INTO `nv4_en_freecontent_blocks` VALUES (1,'Sản phẩm','Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');
/*!40000 ALTER TABLE `nv4_en_freecontent_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_freecontent_rows`
--

DROP TABLE IF EXISTS `nv4_en_freecontent_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_freecontent_rows`
--

LOCK TABLES `nv4_en_freecontent_rows` WRITE;
/*!40000 ALTER TABLE `nv4_en_freecontent_rows` DISABLE KEYS */;
INSERT INTO `nv4_en_freecontent_rows` VALUES (1,1,'Hệ quản trị nội dung NukeViet','<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>','http://vinades.vn/vi/san-pham/nukeviet/','_blank','nukeviet.jpg',1439973638,0,1),(2,1,'Cổng thông tin doanh nghiệp','<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>','http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/','_blank','nukeviet-portal.jpg',1439973638,0,1),(3,1,'Cổng thông tin Phòng giáo dục, Sở giáo dục','<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>','http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/','_blank','nukeviet-edu.jpg',1439973638,0,1),(4,1,'Tòa soạn báo điện tử chuyên nghiệp','<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>','http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/','_blank','nukeviet-toasoan.jpg',1439973638,0,1);
/*!40000 ALTER TABLE `nv4_en_freecontent_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_menu`
--

DROP TABLE IF EXISTS `nv4_en_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_menu`
--

LOCK TABLES `nv4_en_menu` WRITE;
/*!40000 ALTER TABLE `nv4_en_menu` DISABLE KEYS */;
INSERT INTO `nv4_en_menu` VALUES (1,'Top Menu'),(2,'Menu_Besiness_footer'),(3,'menu_footer');
/*!40000 ALTER TABLE `nv4_en_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_menu_rows`
--

DROP TABLE IF EXISTS `nv4_en_menu_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_menu_rows` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(255) DEFAULT '',
  `note` varchar(255) DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text,
  `groups_view` varchar(255) DEFAULT '',
  `module_name` varchar(255) DEFAULT '',
  `op` varchar(255) DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_menu_rows`
--

LOCK TABLES `nv4_en_menu_rows` WRITE;
/*!40000 ALTER TABLE `nv4_en_menu_rows` DISABLE KEYS */;
INSERT INTO `nv4_en_menu_rows` VALUES (1,0,1,'About','/index.php?language=en&nv=about','','',1,1,0,'','6','about','',1,'',1,1),(2,0,1,'News','/index.php?language=en&nv=news','','',3,7,0,'','6','news','',1,'',1,1),(16,14,1,'General repairs','/index.php?language=en&nv=supplies&op=general-repairs','','',3,5,1,'','6','supplies','',1,'',0,1),(15,14,1,'Supplies','/index.php?language=en&nv=supplies&op=supplies','','',2,4,1,'','6','supplies','',1,'',0,1),(14,0,1,'Supplies','/index.php?language=en&nv=supplies','','',2,2,0,'16,15,17,19','6','supplies','',1,'',0,1),(7,0,1,'Contact','/index.php?language=en&nv=contact','','',4,8,0,'','6','contact','',1,'',1,1),(8,0,2,'Ship supply','/Blue_Ocean/index.php?language=en&nv=our-business&amp;op=ship-supply','','',1,1,0,'','6','our-business','ship-supply',1,'',1,1),(9,0,2,'Ship repair','/Blue_Ocean/index.php?language=en&nv=our-business&amp;op=ship-repair','','',2,2,0,'','6','our-business','ship-repair',1,'',1,1),(10,0,2,'Ship service','/Blue_Ocean/index.php?language=en&nv=our-business&amp;op=ship-service','','',3,3,0,'','6','our-business','ship-service',1,'',1,1),(17,14,1,'Other services','/index.php?language=en&nv=supplies&op=other-services','','',4,6,1,'','6','supplies','',1,'',0,1),(20,0,3,'Supplies','/index.php?language=en&nv=supplies&op=supplies-1','','',1,1,0,'','6','supplies','',1,'',0,1),(19,14,1,'Port We Serv','/index.php?language=en&nv=port-we-serv','','',1,3,1,'','6','','',1,'',0,1),(21,0,3,'General repairs','/index.php?language=en&nv=supplies&op=general-repairs','','',2,2,0,'','6','supplies','',1,'',0,1),(22,0,3,'Other services','/index.php?language=en&nv=supplies&op=other-services','','',3,3,0,'','6','supplies','',1,'',0,1);
/*!40000 ALTER TABLE `nv4_en_menu_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_modfuncs`
--

DROP TABLE IF EXISTS `nv4_en_modfuncs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `func_name` varchar(55) NOT NULL,
  `alias` varchar(55) NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) NOT NULL,
  `in_module` varchar(55) NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`func_id`),
  UNIQUE KEY `func_name` (`func_name`,`in_module`),
  UNIQUE KEY `alias` (`alias`,`in_module`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_modfuncs`
--

LOCK TABLES `nv4_en_modfuncs` WRITE;
/*!40000 ALTER TABLE `nv4_en_modfuncs` DISABLE KEYS */;
INSERT INTO `nv4_en_modfuncs` VALUES (83,'sitemap','sitemap','Sitemap','about',0,0,0,''),(82,'rss','rss','Rss','about',1,0,2,''),(4,'main','main','Main','news',1,0,1,''),(5,'viewcat','viewcat','Viewcat','news',1,0,2,''),(6,'topic','topic','Topic','news',1,0,3,''),(7,'content','content','Content','news',1,1,7,''),(8,'detail','detail','Detail','news',1,0,5,''),(9,'tag','tag','Tag','news',1,0,8,''),(10,'rss','rss','Rss','news',1,1,9,''),(11,'search','search','Search','news',1,1,6,''),(12,'groups','groups','Groups','news',1,0,4,''),(13,'sitemap','sitemap','Sitemap','news',0,0,0,''),(14,'print','print','Print','news',0,0,0,''),(15,'rating','rating','Rating','news',0,0,0,''),(16,'savefile','savefile','Savefile','news',0,0,0,''),(17,'sendmail','sendmail','Sendmail','news',0,0,0,''),(18,'main','main','Main','users',1,0,1,''),(19,'login','login','Login','users',1,1,2,''),(20,'register','register','Register','users',1,1,3,''),(21,'lostpass','lostpass','Lostpass','users',1,1,4,''),(22,'active','active','Active','users',1,0,5,''),(23,'lostactivelink','lostactivelink','Lostactivelink','users',1,0,6,''),(24,'editinfo','editinfo','Edit User Info','users',1,1,7,''),(25,'memberlist','memberlist','Memberlist','users',1,1,8,''),(26,'avatar','avatar','Avatar','users',1,0,9,''),(27,'logout','logout','Logout','users',1,1,10,''),(28,'oauth','oauth','Oauth','users',0,0,0,''),(29,'main','main','Main','statistics',1,0,1,''),(30,'allreferers','allreferers','All Referers','statistics',1,1,2,''),(31,'allcountries','allcountries','Countries','statistics',1,1,3,''),(32,'allbrowsers','allbrowsers','Browsers','statistics',1,1,4,''),(33,'allos','allos','OS','statistics',1,1,5,''),(34,'allbots','allbots','Bots','statistics',1,1,6,''),(35,'referer','referer','refererg','statistics',1,0,7,''),(36,'main','main','Main','banners',1,0,1,''),(37,'addads','addads','Addads','banners',1,0,2,''),(38,'clientinfo','clientinfo','Clientinfo','banners',1,0,3,''),(39,'stats','stats','Stats','banners',1,0,4,''),(40,'cledit','cledit','Cledit','banners',0,0,0,''),(41,'click','click','Click','banners',0,0,0,''),(42,'clinfo','clinfo','Clinfo','banners',0,0,0,''),(43,'logininfo','logininfo','Logininfo','banners',0,0,0,''),(44,'viewmap','viewmap','Viewmap','banners',0,0,0,''),(45,'main','main','main','comment',1,0,1,''),(46,'post','post','post','comment',1,0,2,''),(47,'like','like','Like','comment',1,0,3,''),(48,'delete','delete','Delete','comment',1,0,4,''),(49,'main','main','Main','page',1,0,1,''),(50,'sitemap','sitemap','Sitemap','page',0,0,0,''),(51,'rss','rss','Rss','page',1,0,2,''),(52,'main','main','Main','siteterms',1,0,1,''),(53,'rss','rss','Rss','siteterms',1,0,2,''),(54,'sitemap','sitemap','Sitemap','siteterms',0,0,0,''),(55,'main','main','Main','contact',1,0,1,''),(56,'main','main','Main','voting',1,0,1,''),(57,'main','main','Main','seek',1,0,1,''),(58,'main','main','Main','feeds',1,0,1,''),(110,'topic','topic','Topic','supplies',1,0,3,''),(109,'tag','tag','Tag','supplies',1,0,8,''),(108,'sitemap','sitemap','Sitemap','supplies',0,0,0,''),(107,'sendmail','sendmail','Sendmail','supplies',0,0,0,''),(106,'search','search','Search','supplies',1,1,6,''),(105,'savefile','savefile','Savefile','supplies',0,0,0,''),(104,'rss','rss','Rss','supplies',1,1,9,''),(103,'rating','rating','Rating','supplies',0,0,0,''),(102,'print','print','Print','supplies',0,0,0,''),(101,'main','main','Main','supplies',1,0,1,''),(73,'main','main','Main','home',1,0,1,''),(74,'main','main','Main','slider',1,0,1,''),(75,'rss','rss','Rss','slider',1,0,2,''),(76,'sitemap','sitemap','Sitemap','slider',0,0,0,''),(77,'main','main','Main','support',1,0,1,''),(81,'main','main','Main','about',1,0,1,''),(100,'groups','groups','Groups','supplies',1,0,4,''),(99,'detail','detail','Detail','supplies',1,0,5,''),(98,'content','content','Content','supplies',1,1,7,''),(111,'viewcat','viewcat','Viewcat','supplies',1,0,2,''),(117,'sitemap','sitemap','Sitemap','port-we-serv',0,0,0,''),(116,'rss','rss','Rss','port-we-serv',1,0,2,''),(115,'main','main','Main','port-we-serv',1,0,1,'');
/*!40000 ALTER TABLE `nv4_en_modfuncs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_modthemes`
--

DROP TABLE IF EXISTS `nv4_en_modthemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_modthemes`
--

LOCK TABLES `nv4_en_modthemes` WRITE;
/*!40000 ALTER TABLE `nv4_en_modthemes` DISABLE KEYS */;
INSERT INTO `nv4_en_modthemes` VALUES (0,'body','mobile_default'),(0,'left-body-right','default'),(4,'body','mobile_default'),(4,'body1','default'),(5,'body','mobile_default'),(5,'body1','default'),(6,'body','mobile_default'),(6,'body1','default'),(7,'body','mobile_default'),(7,'body1','default'),(8,'body','mobile_default'),(8,'body1','default'),(9,'body','mobile_default'),(9,'body1','default'),(10,'body1','default'),(11,'body','mobile_default'),(11,'body1','default'),(12,'body','mobile_default'),(12,'body1','default'),(18,'body','mobile_default'),(18,'body1','default'),(19,'body','mobile_default'),(19,'body1','default'),(20,'body','mobile_default'),(20,'body1','default'),(21,'body','mobile_default'),(21,'body1','default'),(22,'body','mobile_default'),(22,'body1','default'),(23,'body','mobile_default'),(23,'body1','default'),(24,'body','mobile_default'),(24,'body1','default'),(25,'body','mobile_default'),(25,'body1','default'),(26,'body1','default'),(27,'body','mobile_default'),(27,'body1','default'),(29,'body','mobile_default'),(29,'body1','default'),(30,'body','mobile_default'),(30,'body1','default'),(31,'body','mobile_default'),(31,'body1','default'),(32,'body','mobile_default'),(32,'body1','default'),(33,'body','mobile_default'),(33,'body1','default'),(34,'body','mobile_default'),(34,'body1','default'),(35,'body','mobile_default'),(35,'body1','default'),(36,'body','mobile_default'),(36,'body1','default'),(37,'body','mobile_default'),(37,'body1','default'),(38,'body','mobile_default'),(38,'body1','default'),(39,'body','mobile_default'),(39,'body1','default'),(45,'body','mobile_default'),(45,'body1','default'),(46,'body','mobile_default'),(46,'body1','default'),(47,'body','mobile_default'),(47,'body1','default'),(48,'body','mobile_default'),(48,'body1','default'),(49,'body','mobile_default'),(49,'body1','default'),(51,'body1','default'),(52,'body','mobile_default'),(52,'body1','default'),(53,'body','mobile_default'),(53,'body1','default'),(55,'body','mobile_default'),(55,'body1','default'),(56,'body','mobile_default'),(56,'body1','default'),(57,'body','mobile_default'),(57,'body1','default'),(58,'body','mobile_default'),(58,'body1','default'),(73,'body','default'),(73,'body','mobile_default'),(74,'body','mobile_default'),(74,'body1','default'),(75,'body','mobile_default'),(75,'body1','default'),(76,'left-body-right','default'),(77,'body','mobile_default'),(77,'body1','default'),(81,'body','mobile_default'),(81,'body1','default'),(82,'body','mobile_default'),(82,'body1','default'),(83,'left-body-right','default'),(98,'body','mobile_default'),(98,'left-body','default'),(99,'body','mobile_default'),(99,'left-body','default'),(100,'body','mobile_default'),(100,'left-body','default'),(101,'body','mobile_default'),(101,'left-body','default'),(102,'left-body-right','default'),(103,'left-body-right','default'),(104,'body','mobile_default'),(104,'left-body','default'),(105,'left-body-right','default'),(106,'body','mobile_default'),(106,'left-body','default'),(107,'left-body-right','default'),(108,'left-body-right','default'),(109,'body','mobile_default'),(109,'left-body','default'),(110,'body','mobile_default'),(110,'left-body','default'),(111,'body','mobile_default'),(111,'left-body','default'),(115,'body','mobile_default'),(115,'body1','default'),(116,'body','mobile_default'),(116,'body1','default'),(117,'left-body-right','default');
/*!40000 ALTER TABLE `nv4_en_modthemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_modules`
--

DROP TABLE IF EXISTS `nv4_en_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_modules` (
  `title` varchar(55) NOT NULL,
  `module_file` varchar(55) NOT NULL DEFAULT '',
  `module_data` varchar(55) NOT NULL DEFAULT '',
  `module_upload` varchar(55) NOT NULL DEFAULT '',
  `custom_title` varchar(255) NOT NULL,
  `admin_title` varchar(255) DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) DEFAULT '',
  `mobile` varchar(100) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `keywords` text,
  `groups_view` varchar(255) NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_modules`
--

LOCK TABLES `nv4_en_modules` WRITE;
/*!40000 ALTER TABLE `nv4_en_modules` DISABLE KEYS */;
INSERT INTO `nv4_en_modules` VALUES ('news','news','news','news','News','',1439973638,1,1,'','','','','6',5,1,'',1,0),('users','users','users','users','users','Users',1439973638,1,1,'','','','','6',7,1,'',0,0),('contact','contact','contact','contact','Contact','',1439973638,1,1,'','','','','6',6,1,'',0,0),('statistics','statistics','statistics','statistics','Statistics','',1439973638,1,1,'','','','online, statistics','2',8,1,'',0,0),('voting','voting','voting','voting','Voting','',1439973638,1,1,'','','','','6',9,1,'',1,0),('banners','banners','banners','banners','Banners','',1439973638,1,1,'','','','','6',10,1,'',0,0),('seek','seek','seek','seek','Search','',1439973638,1,0,'','','','','6',11,1,'',0,0),('menu','menu','menu','menu','Menu Site','',1439973638,0,1,'','','','','6',12,1,'',0,0),('feeds','feeds','feeds','feeds','Rss Feeds','',1439973638,1,1,'','','','','6',13,1,'',0,0),('page','page','page','page','Page','',1439973638,1,1,'','','','','6',14,1,'',1,0),('comment','comment','comment','comment','Comment','',1439973638,0,1,'','','','','6',15,1,'',0,0),('siteterms','page','siteterms','siteterms','Terms & Conditions','',1439973638,1,1,'','','','','6',16,1,'',1,0),('freecontent','freecontent','freecontent','freecontent','Freecontent','',1439973638,0,1,'','','','','6',17,1,'',0,0),('supplies','news','supplies','supplies','Supplies','Supplies',1441323656,1,1,'','','Supplies','Supplies','6',3,1,'',1,0),('home','home','home','home','Home','Home',1439977336,1,0,'','','Home','Home','6',1,1,'',0,0),('slider','slider','slider','slider','Banner','Banner',1439987546,1,1,'','','Banner','Banner','6',18,1,'',1,0),('support','support','support','support','Support','Support',1440001506,1,1,'','','Support','Support','6',19,1,'',0,0),('about','page','about','about','About','About',1441004509,1,1,'','','About','About','6',2,1,'',1,0),('port-we-serv','page','port_we_serv','port-we-serv','Port We Serv','Port We Serv',1442638842,1,1,'','','Port We Serv','Port We Serv','6',4,1,'',1,0);
/*!40000 ALTER TABLE `nv4_en_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_4`
--

DROP TABLE IF EXISTS `nv4_en_news_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_4`
--

LOCK TABLES `nv4_en_news_4` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_4` DISABLE KEYS */;
INSERT INTO `nv4_en_news_4` VALUES (3,4,'4',0,2,'',0,1441209833,1441335197,1,1441209780,0,2,'VIKING Moves to Expand Australasian Activities','viking-moves-to-expand-australasian-activities','','2015_09/viking-pic-300x199.jpg','VIKING PIC 300x199',1,'',1,'4',1,28,0,0,0),(4,4,'4',0,2,'',0,1441209938,1441335153,1,1441209840,0,2,'Viking acquires hook retrofit leader','viking-acquires-hook-retrofit-leader','','2015_09/viking-300x200.jpg','VIKING 300x200',1,'',1,'4',1,23,0,0,0),(5,4,'4',0,2,'',0,1441210036,1441335186,1,1441209900,0,2,'Nautilus comments on research that says people who work longer hours are at risk of stroke','nautilus-comments-on-research-that-says-people-who-work-longer-hours-are-at-risk-of-stroke','','2015_09/paper-ships-300x199.jpg','',1,'',1,'4',1,29,0,0,0),(6,4,'4',0,1,'',0,1441335327,1441335327,1,1441335180,0,2,'Hungary migrant stand-off continues','hungary-migrant-stand-off-continues','On Thursday, police let the migrants board the train in Budapest but then tried to force them off at a refugee camp to the west of the capital.','2015_09/viking-pic-300x199.jpg','VIKING PIC 300x199',1,'',1,'4',1,30,0,0,0);
/*!40000 ALTER TABLE `nv4_en_news_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_5`
--

DROP TABLE IF EXISTS `nv4_en_news_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_5`
--

LOCK TABLES `nv4_en_news_5` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_news_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_admins`
--

DROP TABLE IF EXISTS `nv4_en_news_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_admins`
--

LOCK TABLES `nv4_en_news_admins` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_news_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_block`
--

DROP TABLE IF EXISTS `nv4_en_news_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_block`
--

LOCK TABLES `nv4_en_news_block` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_block` DISABLE KEYS */;
INSERT INTO `nv4_en_news_block` VALUES (1,4,4),(1,5,3),(1,3,2),(1,6,1);
/*!40000 ALTER TABLE `nv4_en_news_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_block_cat`
--

DROP TABLE IF EXISTS `nv4_en_news_block_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_block_cat`
--

LOCK TABLES `nv4_en_news_block_cat` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_block_cat` DISABLE KEYS */;
INSERT INTO `nv4_en_news_block_cat` VALUES (1,0,4,'New','new','','New',1,'New',1441335074,1441335074);
/*!40000 ALTER TABLE `nv4_en_news_block_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_bodyhtml_1`
--

DROP TABLE IF EXISTS `nv4_en_news_bodyhtml_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_bodyhtml_1` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `sourcetext` varchar(255) DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_bodyhtml_1`
--

LOCK TABLES `nv4_en_news_bodyhtml_1` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_bodyhtml_1` DISABLE KEYS */;
INSERT INTO `nv4_en_news_bodyhtml_1` VALUES (3,'<p>VIKING Life-Saving Equipment has acquired a part of Australia-based Wiltrading’s maritime safety equipment activities, the firm has announced.</p>\r\n\r\n<p>The move strengthens VIKING’s offering in Australasia, adding&nbsp;four locations to the company’s global network of wholly-owned servicing stations, as well as several products and services, bringing new advantages for shipowners and offshore operators in the region.</p>\r\n\r\n<p>A subsidiary of Wilh. Wilhelmsen Investments (WWI), Wiltrading offers integrated activities in marine safety, fire fighting and protection, equipment and servicing, serving the offshore, oil and gas, shipping, military and cruise industries.</p>\r\n\r\n<p>The company is an authorised representative and service partner for a wide variety of maritime and offshore equipment producers. Under the new agreement, selected safety equipment and servicing activities previously managed by Wiltrading will be seamlessly integrated into the global VIKING organisation, offered and serviced locally, whereas remaining activities will be carried out in close cooperation between the two.</p>\r\n\r\n<p>VIKING’s CEO Henrik Uhd Christensen welcomed the new addition to his company, saying: “We’ve worked in close partnership with Wiltrading for several years. They are a professional organisation with a strong, service-minded approach to customers –&nbsp;something that makes these activities and the people who operate them an excellent fit for VIKING. We strive to be close to our customers, so we can support their competitiveness with fixed prices, flexibility and fast delivery no matter where they operate.”</p>\r\n\r\n<p>At the same time General Manager of Wiltrading, Michael Connolly is pleased that VIKING and Wiltrading can continue their respective growth activities.</p>\r\n\r\n<p>He said: &nbsp;“With the VIKING Shipowner Agreement rapidly winning favour in the market, and plans for even more capabilities in the future, VIKING has much to offer Wiltrading’s customers and staff. We have always had a great deal of respect for the company, and are really looking forward to leveraging VIKING’s global network resources.”</p>\r\n\r\n<p>Brian Jacobsen has been appointed Country Manager for VIKING Australia. He is a former VIKING sales and marketing director, and started the company’s Singapore office several years ago. He has recently returned to VIKING.</p>','',2,0,1,1,1,0),(4,'<p>Marine and fire safety provider VIKING Life Saving Equipment has&nbsp;joined forces with&nbsp;Nadiro, manufacturers of high-quality lifeboat and rescue systems.</p>\r\n\r\n<p>VIKING this week&nbsp;announced the&nbsp;“strategic move”&nbsp;in the&nbsp;acquisition of Nadiro, a company owned by maritime and energy conglomerate Maersk Group and SH Group.</p>\r\n\r\n<p>Nadiro, &nbsp;based&nbsp;in&nbsp;Svendborg, Denmark,&nbsp;manufactures lifeboat and rescue craft systems, developing and promoting its Drop-in-Ball technology to help ensure crew safety.</p>\r\n\r\n<p>VIKING has had the status of preferred distributor and service provider, supplying the company’s lifeboat release and retrieval systems to enable the world’s shipowners to comply with new SOLAS regulations by or before 2019. Hook retrofitting is necessary to prevent serious accidents resulting from unsafe lifeboat deployment systems.</p>\r\n\r\n<p>Nadiro enables VIKING to provide high-quality, extremely reliable solutions that ensure safety levels beyond basic compliance.</p>\r\n\r\n<p>VIKING CEO Henrik Uhd Christensen explained the acquisition of Nadiro as a strategic move that enables his company to better address this key safety issue for its customers, and as part of the continued expansion of VIKING’s already extensive product portfolio.</p>\r\n\r\n<p>He said:&nbsp;“For more than a decade, on-load release hooks were&nbsp;installed to enable lifeboats to be lowered into and retrieved from the water have themselves been the cause of numerous accidents.</p>\r\n\r\n<p>“Some have involved fatalities. With our stated mission to protect and save human lives all over the world, and our global leadership within maritime safety equipment, doing everything we can to rectify the problem has been a natural focal point for VIKING over the past few years.”</p>\r\n\r\n<p>Henrik Uhd Christensen sees Nadiro, which will be integrated into the VIKING organization, as a perfect fit for the company: “Nadiro has performed well, and its products have been instrumental in ensuring the safety of crew on board many vessels. Now the time has come to add further power to Nadiro’s expansion via a focused, global safety platform. And VIKING is the right company to provide that platform.”</p>\r\n\r\n<p>With VIKING’s global network and resources supporting its work, VIKING Nadiro, as the brand will be renamed, enables &nbsp;VIKING to provide a solution that goes beyond basic compliance.</p>\r\n\r\n<p>Mr Christensen added: “The VIKING Nadiro brand will give shipowners a complete and high-quality answer to the LRRS compliance challenge.”</p>','',2,0,1,1,1,0),(5,'<p>Seafarers working a 91/98-hour working week is “unacceptable” – according to&nbsp;the union for maritime professionals&nbsp;Nautilus&nbsp;who made the comments following&nbsp;research published that said people who work longer hours are more likely to have a stroke.</p>\r\n\r\n<p>International senior national secretary Allan Graveson from Nautilus said that stroke, heart disease, diabetes and cancer have all&nbsp;been identified as long-term risks for people who work longer&nbsp;hours with not enough rest.</p>\r\n\r\n<p>He said: “In addition to “acute” and “chronic” fatigue that pose an immediate risk to the individual, the traveling public and the environment, this research rightly identifies one of the long term effects of working long hours. In addition to stroke, heart disease, diabetes and cancer have been identified as long term increased risks to health as a consequence of working long hours especially, at night with inadequate rest.</p>\r\n\r\n<p>‘In shipping, where there is the potential for the greatest loss of life in a single incident, regulations provide for working a 91/98 hour working week. Independent research Project Horizon&nbsp;has confirmed that human performance seriously degrades when working long hours, especially at night. This causes tiredness and places all marine users at risk.</p>\r\n\r\n<p>‘The long term risk to health is considerable and was recognised with the European Working Time Directive in 1993. Unlike asbestos, ignored for decades, employers now need to take responsibility. A 91/98 hour working week is unacceptable.’</p>','',2,0,1,1,1,0),(6,'<p>On Thursday, police let the migrants board the train in Budapest but then tried to force them off at a refugee camp to the west of the capital.</p>\r\n\r\n<p>Hungarian MPs face a key vote later on whether to tighten border controls as migrants try to pass through to their preferred destination, Germany.</p>\r\n\r\n<p>Three other European meetings on Friday will discuss the migrant crisis.</p>\r\n\r\n<p>Members of the European Commission are also flying to the Greek island of Kos to examine the difficulties caused by the large numbers of refugees and migrants landing there.</p>\r\n\r\n<p>The UN has meanwhile urged the EU to admit up to 200,000 refugees as part of &quot;a mass relocation programme&quot; that had the &quot;mandatory participation&quot; of all member states.</p>\r\n\r\n<p>A statement from Antonio Guterres, the UN High Commissioner of Refugees, said Europe needed to build &quot;adequate reception capacities&quot;, especially in Greece, replacing a &quot;piecemeal&quot; approach with a &quot;common strategy&quot;.</p>\r\n\r\n<h2>&#039;Ashamed&#039;</h2>\r\n\r\n<p>The Hungarian MPs will also vote on creating new holding camps for migrants, and on whether the situation constitutes a state of emergency.</p>\r\n\r\n<p>Prime Minister Viktor Orban on Thursday described the situation as a &quot;German problem&quot; as Germany was where those arriving in the EU &quot;would like to go&quot;.</p>\r\n\r\n<figure><a href=\"http://www.bbc.com/news/world-europe-34148891\" id=\"media-85345413jumpMediaPlayerLink\">Jump media player</a><br  />\r\n<a href=\"http://www.bbc.co.uk/faqs/online/mp_accessibility_help\" id=\"media-85345413beforeFlashLink\">Media player help</a><br  />\r\n<object data=\"http://emp.bbci.co.uk/emp/SMPf/1.13.11/StandardMediaPlayerChromelessFlash.swf\" height=\"100%\" id=\"smp-flashSWFmedia-85345413\" type=\"application/x-shockwave-flash\" width=\"100%\"></object><br  />\r\n<a href=\"http://www.bbc.com/news/world-europe-34148891#afterFlash\" id=\"media-85345413returnToMediaPlayerLink\">Out of media player. Press enter to return or tab to continue.</a>\r\n\r\n<figcaption>Media captionHungary&#039;s prime minister says the migrant crisis is &quot;a not a European problem, it is a German problem&quot;</figcaption>\r\n</figure>\r\n\r\n<p>However, Luxembourg&#039;s Foreign Minister Jean Asselborn - who is heading the EU meetings on the crisis - criticised Hungary&#039;s conservative leader on German television on Thursday night, saying: &quot;One sometimes has to be ashamed for Viktor Orban.&quot;</p>\r\n\r\n<p>European Council President Donald Tusk said at least 100,000 refugees should be distributed across EU states - a sharp increase on a previous European Commission target of 40,000.</p>\r\n\r\n<p>German Chancellor Angela Merkel and French President Francois Hollande said they would present plans for the redistribution of refugees within the EU.</p>\r\n\r\n<p>The British government, in particular, is coming under growing pressure to take in more migrants.</p>\r\n\r\n<p>British Prime Minister David Cameron is expected to announce&nbsp;<a href=\"http://www.bbc.co.uk/news/uk-34148913\">plans to allow more Syrian refugees into the country</a>, to help ease a crisis brought to the fore this week by&nbsp;<a href=\"http://www.bbc.co.uk/news/world-europe-34143445\">images of a three-year-old Syrian boy found drowned in Turkey</a>.</p>\r\n\r\n<p>Mr Cameron is heading to Spain and Portugal for talks on Friday that are sure to include the migrant crisis.</p>\r\n\r\n<p>The crisis is also due to be discussed at a series of high-level talks across Europe on Friday:</p>\r\n\r\n<ul>\r\n	<li>The leaders of Poland, the Czech Republic, Slovakia and Hungary will hold an extraordinary summit in Prague</li>\r\n	<li>European Commission officials will arrive on the island of Kos, in Greece, where thousands of migrants have arrived by boat</li>\r\n	<li>EU foreign ministers will meet in Brussels</li>\r\n</ul>\r\n\r\n<hr  />\r\n<h2>Migrant crisis: coverage in detail</h2>\r\n\r\n<figure><img alt=\"Migrants are seen at a makeshift camp in an underground station in front of the Keleti railway station in Budapest, Hungary, September 3, 2015.\" datasrc=\"http://ichef.bbci.co.uk/news/1180/cpsprodpb/CEF9/production/_85358925_af91ca72-e6f7-4e6a-bd7c-765410fce2cf.jpg\" height=\"549\" src=\"http://ichef.bbci.co.uk/news/624/cpsprodpb/CEF9/production/_85358925_af91ca72-e6f7-4e6a-bd7c-765410fce2cf.jpg\" width=\"1180\" />Image copyrightReuters</figure>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/magazine-34137358\">Ten powerful photos</a></p>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/blogs-eu-34144554\">Hungary lays bare EU East-West split</a></p>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/blogs-trending-34142804\">Will one image change our views?</a></p>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/world-europe-34131911\">Migrant crisis in graphics</a></p>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/world-europe-34130639\">Volunteers step up</a></p>\r\n\r\n<hr  />\r\n<h2>Analysis: Jenny Hill, BBC News, Berlin</h2>\r\n\r\n<figure><img alt=\"A girl from Syria, who has just arrived by train, waits to travel onto a reception centre, at the central railway station in Munich, Germany, 03 September 2015.\" datasrc=\"http://ichef-1.bbci.co.uk/news/976/cpsprodpb/1742B/production/_85357259_85357258.jpg\" height=\"549\" src=\"http://ichef-1.bbci.co.uk/news/624/cpsprodpb/1742B/production/_85357259_85357258.jpg\" width=\"976\" />Image copyrightEPA\r\n<figcaption>Image captionMany of those travelling through Hungary - like this girl from Syria - have moved on to Germany</figcaption>\r\n</figure>\r\n\r\n<p>Last week, the German government indicated it would grant asylum to Syrian refugees regardless of how they&#039;d entered Europe.</p>\r\n\r\n<p>That attitude has enraged the Hungarian leader, Viktor Orban, who blames Germany&#039;s welcoming reputation for the high number of refugees crossing his country.</p>\r\n\r\n<p>Angela Merkel disagrees. Germany, she said, is simply fulfilling its &quot;moral and legal&quot; obligations. This is a situation which, she argues, &quot;affects all of us in Europe&quot;.</p>\r\n\r\n<p>But it&#039;s a situation that creates a huge domestic challenge too. Up to 800,000 people are expected to seek asylum in Germany this year alone.</p>\r\n\r\n<figure><img alt=\"Map\" datasrc=\"http://ichef.bbci.co.uk/news/624/cpsprodpb/6B16/production/_85341472_migrant_journeys_turkey_to_germany_624_v2.png\" height=\"570\" src=\"http://ichef.bbci.co.uk/news/624/cpsprodpb/6B16/production/_85341472_migrant_journeys_turkey_to_germany_624_v2.png\" width=\"624\" /></figure>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/world-europe-34148159\">Germany seizes its chance to help</a></p>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/news/world-europe-34139348\">How could EU solve the crisis?</a></p>\r\n\r\n<hr  />\r\n<p>International services had been suspended at Budapest&#039;s Keleti railway station but hundreds crammed on to the first train on Thursday, hoping it would take them to the Austrian border.</p>\r\n\r\n<p>Instead, the train stopped at the Hungarian town of Bicske about 40km (25 miles) west of Budapest, which hosts a major refugee camp. Police then lined the platforms.</p>','',2,0,1,1,1,0);
/*!40000 ALTER TABLE `nv4_en_news_bodyhtml_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_bodytext`
--

DROP TABLE IF EXISTS `nv4_en_news_bodytext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_bodytext` (
  `id` int(11) unsigned NOT NULL,
  `bodytext` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_bodytext`
--

LOCK TABLES `nv4_en_news_bodytext` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_bodytext` DISABLE KEYS */;
INSERT INTO `nv4_en_news_bodytext` VALUES (3,'VIKING Life-Saving Equipment has acquired a part of Australia-based Wiltrading’s maritime safety equipment activities, the firm has announced.\r\n\r\nThe move strengthens VIKING’s offering in Australasia, adding four locations to the company’s global network of wholly-owned servicing stations, as well as several products and services, bringing new advantages for shipowners and offshore operators in the region.\r\n\r\nA subsidiary of Wilh. Wilhelmsen Investments (WWI), Wiltrading offers integrated activities in marine safety, fire fighting and protection, equipment and servicing, serving the offshore, oil and gas, shipping, military and cruise industries.\r\n\r\nThe company is an authorised representative and service partner for a wide variety of maritime and offshore equipment producers. Under the new agreement, selected safety equipment and servicing activities previously managed by Wiltrading will be seamlessly integrated into the global VIKING organisation, offered and serviced locally, whereas remaining activities will be carried out in close cooperation between the two.\r\n\r\nVIKING’s CEO Henrik Uhd Christensen welcomed the new addition to his company, saying: “We’ve worked in close partnership with Wiltrading for several years. They are a professional organisation with a strong, service-minded approach to customers – something that makes these activities and the people who operate them an excellent fit for VIKING. We strive to be close to our customers, so we can support their competitiveness with fixed prices, flexibility and fast delivery no matter where they operate.”\r\n\r\nAt the same time General Manager of Wiltrading, Michael Connolly is pleased that VIKING and Wiltrading can continue their respective growth activities.\r\n\r\nHe said: “With the VIKING Shipowner Agreement rapidly winning favour in the market, and plans for even more capabilities in the future, VIKING has much to offer Wiltrading’s customers and staff. We have always had a great deal of respect for the company, and are really looking forward to leveraging VIKING’s global network resources.”\r\n\r\nBrian Jacobsen has been appointed Country Manager for VIKING Australia. He is a former VIKING sales and marketing director, and started the company’s Singapore office several years ago. He has recently returned to VIKING.'),(4,'Marine and fire safety provider VIKING Life Saving Equipment has joined forces with Nadiro, manufacturers of high-quality lifeboat and rescue systems.\r\n\r\nVIKING this week announced the “strategic move” in the acquisition of Nadiro, a company owned by maritime and energy conglomerate Maersk Group and SH Group.\r\n\r\nNadiro, based in Svendborg, Denmark, manufactures lifeboat and rescue craft systems, developing and promoting its Drop-in-Ball technology to help ensure crew safety.\r\n\r\nVIKING has had the status of preferred distributor and service provider, supplying the company’s lifeboat release and retrieval systems to enable the world’s shipowners to comply with new SOLAS regulations by or before 2019. Hook retrofitting is necessary to prevent serious accidents resulting from unsafe lifeboat deployment systems.\r\n\r\nNadiro enables VIKING to provide high-quality, extremely reliable solutions that ensure safety levels beyond basic compliance.\r\n\r\nVIKING CEO Henrik Uhd Christensen explained the acquisition of Nadiro as a strategic move that enables his company to better address this key safety issue for its customers, and as part of the continued expansion of VIKING’s already extensive product portfolio.\r\n\r\nHe said: “For more than a decade, on-load release hooks were installed to enable lifeboats to be lowered into and retrieved from the water have themselves been the cause of numerous accidents.\r\n\r\n“Some have involved fatalities. With our stated mission to protect and save human lives all over the world, and our global leadership within maritime safety equipment, doing everything we can to rectify the problem has been a natural focal point for VIKING over the past few years.”\r\n\r\nHenrik Uhd Christensen sees Nadiro, which will be integrated into the VIKING organization, as a perfect fit for the company: “Nadiro has performed well, and its products have been instrumental in ensuring the safety of crew on board many vessels. Now the time has come to add further power to Nadiro’s expansion via a focused, global safety platform. And VIKING is the right company to provide that platform.”\r\n\r\nWith VIKING’s global network and resources supporting its work, VIKING Nadiro, as the brand will be renamed, enables VIKING to provide a solution that goes beyond basic compliance.\r\n\r\nMr Christensen added: “The VIKING Nadiro brand will give shipowners a complete and high-quality answer to the LRRS compliance challenge.”'),(5,'Seafarers working a 91/98-hour working week is “unacceptable” – according to the union for maritime professionals Nautilus who made the comments following research published that said people who work longer hours are more likely to have a stroke.\r\n\r\nInternational senior national secretary Allan Graveson from Nautilus said that stroke, heart disease, diabetes and cancer have all been identified as long-term risks for people who work longer hours with not enough rest.\r\n\r\nHe said: “In addition to “acute” and “chronic” fatigue that pose an immediate risk to the individual, the traveling public and the environment, this research rightly identifies one of the long term effects of working long hours. In addition to stroke, heart disease, diabetes and cancer have been identified as long term increased risks to health as a consequence of working long hours especially, at night with inadequate rest.\r\n\r\n‘In shipping, where there is the potential for the greatest loss of life in a single incident, regulations provide for working a 91/98 hour working week. Independent research Project Horizon has confirmed that human performance seriously degrades when working long hours, especially at night. This causes tiredness and places all marine users at risk.\r\n\r\n‘The long term risk to health is considerable and was recognised with the European Working Time Directive in 1993. Unlike asbestos, ignored for decades, employers now need to take responsibility. A 91/98 hour working week is unacceptable.’'),(6,'On Thursday, police let the migrants board the train in Budapest but then tried to force them off at a refugee camp to the west of the capital.\r\n\r\nHungarian MPs face a key vote later on whether to tighten border controls as migrants try to pass through to their preferred destination, Germany.\r\n\r\nThree other European meetings on Friday will discuss the migrant crisis.\r\n\r\nMembers of the European Commission are also flying to the Greek island of Kos to examine the difficulties caused by the large numbers of refugees and migrants landing there.\r\n\r\nThe UN has meanwhile urged the EU to admit up to 200,000 refugees as part of &quot;a mass relocation programme&quot; that had the &quot;mandatory participation&quot; of all member states.\r\n\r\nA statement from Antonio Guterres, the UN High Commissioner of Refugees, said Europe needed to build &quot;adequate reception capacities&quot;, especially in Greece, replacing a &quot;piecemeal&quot; approach with a &quot;common strategy&quot;.\r\n\r\n&#039;Ashamed&#039;\r\n\r\nThe Hungarian MPs will also vote on creating new holding camps for migrants, and on whether the situation constitutes a state of emergency.\r\n\r\nPrime Minister Viktor Orban on Thursday described the situation as a &quot;German problem&quot; as Germany was where those arriving in the EU &quot;would like to go&quot;.\r\n\r\nhttp://www.bbc.com/news/world-europe-34148891 Jump media player\r\nhttp://www.bbc.co.uk/faqs/online/mp_accessibility_help Media player help\r\n\r\nhttp://www.bbc.com/news/world-europe-34148891#afterFlash Out of media player. Press enter to return or tab to continue.\r\n\r\nMedia captionHungary&#039;s prime minister says the migrant crisis is &quot;a not a European problem, it is a German problem&quot;\r\n\r\n\r\nHowever, Luxembourg&#039;s Foreign Minister Jean Asselborn - who is heading the EU meetings on the crisis - criticised Hungary&#039;s conservative leader on German television on Thursday night, saying: &quot;One sometimes has to be ashamed for Viktor Orban.&quot;\r\n\r\nEuropean Council President Donald Tusk said at least 100,000 refugees should be distributed across EU states - a sharp increase on a previous European Commission target of 40,000.\r\n\r\nGerman Chancellor Angela Merkel and French President Francois Hollande said they would present plans for the redistribution of refugees within the EU.\r\n\r\nThe British government, in particular, is coming under growing pressure to take in more migrants.\r\n\r\nBritish Prime Minister David Cameron is expected to announce http://www.bbc.co.uk/news/uk-34148913 plans to allow more Syrian refugees into the country, to help ease a crisis brought to the fore this week by http://www.bbc.co.uk/news/world-europe-34143445 images of a three-year-old Syrian boy found drowned in Turkey.\r\n\r\nMr Cameron is heading to Spain and Portugal for talks on Friday that are sure to include the migrant crisis.\r\n\r\nThe crisis is also due to be discussed at a series of high-level talks across Europe on Friday:\r\n\r\n\r\n	The leaders of Poland, the Czech Republic, Slovakia and Hungary will hold an extraordinary summit in Prague\r\n	European Commission officials will arrive on the island of Kos, in Greece, where thousands of migrants have arrived by boat\r\n	EU foreign ministers will meet in Brussels\r\n\r\n\r\n\r\nMigrant crisis: coverage in detail\r\n\r\n http://ichef.bbci.co.uk/news/624/cpsprodpb/CEF9/production/_85358925_af91ca72-e6f7-4e6a-bd7c-765410fce2cf.jpg Migrants are seen at a makeshift camp in an underground station in front of the Keleti railway station in Budapest, Hungary, September 3, 2015.Image copyrightReuters\r\n\r\nhttp://www.bbc.co.uk/news/magazine-34137358 Ten powerful photos\r\n\r\nhttp://www.bbc.co.uk/news/blogs-eu-34144554 Hungary lays bare EU East-West split\r\n\r\nhttp://www.bbc.co.uk/news/blogs-trending-34142804 Will one image change our views?\r\n\r\nhttp://www.bbc.co.uk/news/world-europe-34131911 Migrant crisis in graphics\r\n\r\nhttp://www.bbc.co.uk/news/world-europe-34130639 Volunteers step up\r\n\r\n\r\nAnalysis: Jenny Hill, BBC News, Berlin\r\n\r\n http://ichef-1.bbci.co.uk/news/624/cpsprodpb/1742B/production/_85357259_85357258.jpg A girl from Syria, who has just arrived by train, waits to travel onto a reception centre, at the central railway station in Munich, Germany, 03 September 2015.Image copyrightEPA\r\nImage captionMany of those travelling through Hungary - like this girl from Syria - have moved on to Germany\r\n\r\n\r\nLast week, the German government indicated it would grant asylum to Syrian refugees regardless of how they&#039;d entered Europe.\r\n\r\nThat attitude has enraged the Hungarian leader, Viktor Orban, who blames Germany&#039;s welcoming reputation for the high number of refugees crossing his country.\r\n\r\nAngela Merkel disagrees. Germany, she said, is simply fulfilling its &quot;moral and legal&quot; obligations. This is a situation which, she argues, &quot;affects all of us in Europe&quot;.\r\n\r\nBut it&#039;s a situation that creates a huge domestic challenge too. Up to 800,000 people are expected to seek asylum in Germany this year alone.\r\n\r\n http://ichef.bbci.co.uk/news/624/cpsprodpb/6B16/production/_85341472_migrant_journeys_turkey_to_germany_624_v2.png Map\r\n\r\nhttp://www.bbc.co.uk/news/world-europe-34148159 Germany seizes its chance to help\r\n\r\nhttp://www.bbc.co.uk/news/world-europe-34139348 How could EU solve the crisis?\r\n\r\n\r\nInternational services had been suspended at Budapest&#039;s Keleti railway station but hundreds crammed on to the first train on Thursday, hoping it would take them to the Austrian border.\r\n\r\nInstead, the train stopped at the Hungarian town of Bicske about 40km (25 miles) west of Budapest, which hosts a major refugee camp. Police then lined the platforms.');
/*!40000 ALTER TABLE `nv4_en_news_bodytext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_cat`
--

DROP TABLE IF EXISTS `nv4_en_news_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `titlesite` varchar(255) DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `descriptionhtml` text,
  `image` varchar(255) DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `keywords` text,
  `admins` text,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_cat`
--

LOCK TABLES `nv4_en_news_cat` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_cat` DISABLE KEYS */;
INSERT INTO `nv4_en_news_cat` VALUES (5,0,'Events','','events','','','',0,2,2,0,'viewcat_page_new',0,'',1,3,2,0,'','',1441208947,1441208947,'6'),(4,0,'News','','news','','','',0,1,1,0,'viewcat_page_new',0,'',1,3,0,0,'','',1441207346,1441207346,'6');
/*!40000 ALTER TABLE `nv4_en_news_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_config_post`
--

DROP TABLE IF EXISTS `nv4_en_news_config_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_config_post`
--

LOCK TABLES `nv4_en_news_config_post` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_config_post` DISABLE KEYS */;
INSERT INTO `nv4_en_news_config_post` VALUES (1,0,0,0,0),(2,0,0,0,0),(3,0,0,0,0),(4,0,0,0,0),(5,0,0,0,0);
/*!40000 ALTER TABLE `nv4_en_news_config_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_logs`
--

DROP TABLE IF EXISTS `nv4_en_news_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_logs`
--

LOCK TABLES `nv4_en_news_logs` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_news_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_rows`
--

DROP TABLE IF EXISTS `nv4_en_news_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_rows`
--

LOCK TABLES `nv4_en_news_rows` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_rows` DISABLE KEYS */;
INSERT INTO `nv4_en_news_rows` VALUES (3,4,'4',0,2,'',0,1441209833,1441335197,1,1441209780,0,2,'VIKING Moves to Expand Australasian Activities','viking-moves-to-expand-australasian-activities','','2015_09/viking-pic-300x199.jpg','VIKING PIC 300x199',1,'',1,'4',1,28,0,0,0),(4,4,'4',0,2,'',0,1441209938,1441335153,1,1441209840,0,2,'Viking acquires hook retrofit leader','viking-acquires-hook-retrofit-leader','','2015_09/viking-300x200.jpg','VIKING 300x200',1,'',1,'4',1,23,0,0,0),(5,4,'4',0,2,'',0,1441210036,1441335186,1,1441209900,0,2,'Nautilus comments on research that says people who work longer hours are at risk of stroke','nautilus-comments-on-research-that-says-people-who-work-longer-hours-are-at-risk-of-stroke','','2015_09/paper-ships-300x199.jpg','',1,'',1,'4',1,29,0,0,0),(6,4,'4',0,1,'',0,1441335327,1441335327,1,1441335180,0,2,'Hungary migrant stand-off continues','hungary-migrant-stand-off-continues','On Thursday, police let the migrants board the train in Budapest but then tried to force them off at a refugee camp to the west of the capital.','2015_09/viking-pic-300x199.jpg','VIKING PIC 300x199',1,'',1,'4',1,30,0,0,0);
/*!40000 ALTER TABLE `nv4_en_news_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_sources`
--

DROP TABLE IF EXISTS `nv4_en_news_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_sources`
--

LOCK TABLES `nv4_en_news_sources` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_news_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_tags`
--

DROP TABLE IF EXISTS `nv4_en_news_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text,
  `keywords` varchar(255) DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_tags`
--

LOCK TABLES `nv4_en_news_tags` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_tags` DISABLE KEYS */;
INSERT INTO `nv4_en_news_tags` VALUES (1,1,'nautilus','','','Nautilus'),(2,1,'research','','','research');
/*!40000 ALTER TABLE `nv4_en_news_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_tags_id`
--

DROP TABLE IF EXISTS `nv4_en_news_tags_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) NOT NULL,
  UNIQUE KEY `sid` (`id`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_tags_id`
--

LOCK TABLES `nv4_en_news_tags_id` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_tags_id` DISABLE KEYS */;
INSERT INTO `nv4_en_news_tags_id` VALUES (5,1,'Nautilus'),(5,2,'research');
/*!40000 ALTER TABLE `nv4_en_news_tags_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_news_topics`
--

DROP TABLE IF EXISTS `nv4_en_news_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_news_topics`
--

LOCK TABLES `nv4_en_news_topics` WRITE;
/*!40000 ALTER TABLE `nv4_en_news_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_news_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_our_business_logs`
--

DROP TABLE IF EXISTS `nv4_en_our_business_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_our_business_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_our_business_logs`
--

LOCK TABLES `nv4_en_our_business_logs` WRITE;
/*!40000 ALTER TABLE `nv4_en_our_business_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_our_business_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_page`
--

DROP TABLE IF EXISTS `nv4_en_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_page` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_page`
--

LOCK TABLES `nv4_en_page` WRITE;
/*!40000 ALTER TABLE `nv4_en_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_page_config`
--

DROP TABLE IF EXISTS `nv4_en_page_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_page_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_page_config`
--

LOCK TABLES `nv4_en_page_config` WRITE;
/*!40000 ALTER TABLE `nv4_en_page_config` DISABLE KEYS */;
INSERT INTO `nv4_en_page_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','5'),('related_articles','5');
/*!40000 ALTER TABLE `nv4_en_page_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_port_we_serv`
--

DROP TABLE IF EXISTS `nv4_en_port_we_serv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_port_we_serv` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_port_we_serv`
--

LOCK TABLES `nv4_en_port_we_serv` WRITE;
/*!40000 ALTER TABLE `nv4_en_port_we_serv` DISABLE KEYS */;
INSERT INTO `nv4_en_port_we_serv` VALUES (1,'Port We Serv','Port-We-Serv','','','','<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply port we serv\" src=\"/uploads/port-we-serv/ship-supply-port-we-serv.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">1. Ho Chi Minh City</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px; margin-left: 50px;\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Khanh Hoi port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">SPCT port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Cat Lai port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Tan Thuan port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Ben Nghe port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Tan Thuan Dong port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Vopak port</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">2. Vung Tau</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px; margin-left: 50px;\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Dong Nai port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Phu My port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Go dau port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Vedan port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Holcim Thi Vai port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">PTSC port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Cai Mep port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Ha Loc port</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">3. Hai Phong – Quang Ninh – Thanh Hoa</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px; margin-left: 50px;\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Dinh Vu port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Cai Lan port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Hon Gai port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Ha Long port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Nghi Son port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Vung Ang port</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">4. Da Nang – Quy Nhon – Tuy Hoa – Nha Trang</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px; margin-left: 50px;\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Tien Sa port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Thi Nai port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Dung Quoc</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Vung Ro port</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Cam Ranh port</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">5. Can Tho port</span></strong></div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">6. Holcim Binh Tri port</span></strong></div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">7. Shipyards</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px; margin-left: 50px;\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Bason shipyard</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">SSIC shipyard</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Triyard Ho Chi Minh</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Triyard Vung Tau</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">An Phu shipyard</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">TX51 shipyard</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Nam Trieu shipyard</li>\r\n</ul>\r\n</div>\r\n</div>','port we,serv',1,'4','',0,1,2,1442638892,1442902234,1);
/*!40000 ALTER TABLE `nv4_en_port_we_serv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_port_we_serv_config`
--

DROP TABLE IF EXISTS `nv4_en_port_we_serv_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_port_we_serv_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_port_we_serv_config`
--

LOCK TABLES `nv4_en_port_we_serv_config` WRITE;
/*!40000 ALTER TABLE `nv4_en_port_we_serv_config` DISABLE KEYS */;
INSERT INTO `nv4_en_port_we_serv_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','5'),('related_articles','5');
/*!40000 ALTER TABLE `nv4_en_port_we_serv_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_referer_stats`
--

DROP TABLE IF EXISTS `nv4_en_referer_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_referer_stats` (
  `host` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `host` (`host`),
  KEY `total` (`total`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_referer_stats`
--

LOCK TABLES `nv4_en_referer_stats` WRITE;
/*!40000 ALTER TABLE `nv4_en_referer_stats` DISABLE KEYS */;
INSERT INTO `nv4_en_referer_stats` VALUES ('google.com',3,0,0,0,0,0,0,0,0,3,0,0,0,1442309237),('success-seo.com',35,0,0,0,0,0,0,0,0,35,0,0,0,1442991334),('burger-imperia.com',1,0,0,0,0,0,0,0,0,1,0,0,0,1441592260),('hvd-store.com',1,0,0,0,0,0,0,0,0,1,0,0,0,1441675883),('buttons-for-website.com',5,0,0,0,0,0,0,0,0,5,0,0,0,1442840308),('pizza-imperia.com',1,0,0,0,0,0,0,0,0,1,0,0,0,1441682111),('google.com.vn',1,0,0,0,0,0,0,0,0,1,0,0,0,1441974839),('bluerobot.info',1,0,0,0,0,0,0,0,0,1,0,0,0,1441990664),('video--production.com',1,0,0,0,0,0,0,0,0,1,0,0,0,1442284401),('google.com.sg',1,0,0,0,0,0,0,0,0,1,0,0,0,1442634766),('google.com.bd',2,0,0,0,0,0,0,0,0,2,0,0,0,1442892130),('hundejo.com',1,0,0,0,0,0,0,0,0,1,0,0,0,1442942633),('google.com.pr',1,0,0,0,0,0,0,0,0,1,0,0,0,1442946483);
/*!40000 ALTER TABLE `nv4_en_referer_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_searchkeys`
--

DROP TABLE IF EXISTS `nv4_en_searchkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_searchkeys` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `skey` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) NOT NULL,
  KEY `id` (`id`),
  KEY `skey` (`skey`),
  KEY `search_engine` (`search_engine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_searchkeys`
--

LOCK TABLES `nv4_en_searchkeys` WRITE;
/*!40000 ALTER TABLE `nv4_en_searchkeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_searchkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_siteterms`
--

DROP TABLE IF EXISTS `nv4_en_siteterms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_siteterms` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT '',
  `imagealt` varchar(255) DEFAULT '',
  `description` text,
  `bodytext` mediumtext NOT NULL,
  `keywords` text,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) DEFAULT '',
  `layout_func` varchar(100) DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_siteterms`
--

LOCK TABLES `nv4_en_siteterms` WRITE;
/*!40000 ALTER TABLE `nv4_en_siteterms` DISABLE KEYS */;
INSERT INTO `nv4_en_siteterms` VALUES (1,'Terms & Conditions','Terms-Conditions','','','','<h2><strong>Term no</strong><strong> 1: Collect information</strong></h2><strong>1.1. Collecting information automatically.</strong><br  />Like the other modern websites, Websites will collect IP address and some information of the standard website like: browser, pages that you access to websites for process using services by desktop, laptop, computer and network devices, etc. It aims to analyze information for privacy and keeping safe mode the system.<br  /><strong>1.2. Collecting your information through an account.</strong><br  />All information of your account (creating a new account, contacting to us, and so on) will be stored in profile for caring customer services later.<br  /><strong>1.3. Collecting information through setting up cookies.</strong><br  />Like the other modern websites, when you access to websites, we (or monitoring tools; or the statistics of website activities that provided by partners ) will create some profiles that named Cookies on hard-disk or memory of your computer. One of some Cookies may be exist with the long time to become convenient process using. For example, saving your email in login page to avoid login again, ect.<br  /><strong>1.4. Collecting and storing information in the last.</strong><h3>You can change the private information any time, however, we will save in all information that changed to prevent the erase traces of illegal activities.</h3><h2><br  /><strong>Term no</strong><strong> 2: Storing and protecting information.</strong></h2>Almost collected information will be stored in us database system.<br  />We protect personal information by using some tools as password, firewall, encryption, and with some other tools that is license for accessing and suitable for data management process. For example, you and staffs must be responsibility for information processing through identifying steps in private information.<h2><br  /><strong>Term no</strong><strong> 3: Using information</strong></h2>Collected information will be used to:<ul>	<li>Supplying support services &amp; customer care.</li>	<li>Transaction payment and Payment Notifications will send when a new payment is created</li>	<li>Handling complaints, charges &amp; Troubleshooting.</li>	<li>Stopping any forbidden or illegal act and must guarantee to follow the policies in &quot;User agreement”</li>	<li><a name=\"_GoBack\"></a> Measurement, upgrading &amp; improving services, content and form of the website.</li>	<li>Sending information to user about Marketing&#039;s Programs, announcements and promotional programs.</li>	<li>Comparison of the accuracy of your personal information in the process of checking with third parties.</li></ul><h2><br  /><strong>Term no 4: Receiving information from partners</strong></h2>When using payment and transactions tools via the internet, we can receive more information about you such as your username address, email, bank account number ... We check that information with our user database to confirm whether you are the customer of us or not in order to enable the implementation of the service is convenient for you.<br  />The received information will be secured as the information that we collected directly from you.<h2><br  /><strong>Term no 5: Sharing information with the third party</strong></h2>We will not share your personal information, financial information... for the 3rd party, unless we have your consent or when we are forced to comply with the law or in case of having the requests from government agencies having jurisdiction.<h2><br  /><strong>Term no 6: Changing the privacy policy</strong></h2>This Privacy Policy may change from time to time. We will not reduce your rights under this Privacy Policy without your explicit consent. We will post any changes to this Privacy Policy on this website and if the changes are significant, we will provide a more prominent notice (including information email message about the change of the Privacy Policy for certain services).<br  /><br  />&nbsp;<div style=\"text-align: right;\">Tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a><br />&nbsp;</div>','',0,'4','',0,1,1,1439973638,1439973638,1);
/*!40000 ALTER TABLE `nv4_en_siteterms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_siteterms_config`
--

DROP TABLE IF EXISTS `nv4_en_siteterms_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_siteterms_config` (
  `config_name` varchar(30) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_siteterms_config`
--

LOCK TABLES `nv4_en_siteterms_config` WRITE;
/*!40000 ALTER TABLE `nv4_en_siteterms_config` DISABLE KEYS */;
INSERT INTO `nv4_en_siteterms_config` VALUES ('viewtype','0'),('facebookapi',''),('per_page','5'),('related_articles','5');
/*!40000 ALTER TABLE `nv4_en_siteterms_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_slider_1`
--

DROP TABLE IF EXISTS `nv4_en_slider_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_slider_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_slider_1`
--

LOCK TABLES `nv4_en_slider_1` WRITE;
/*!40000 ALTER TABLE `nv4_en_slider_1` DISABLE KEYS */;
INSERT INTO `nv4_en_slider_1` VALUES (1,1,'1',1,1439987696,1442024794,1,1439987696,0,2,'banner-1','','','2015_09/ship-supply-banner-4.jpg',1,0),(2,1,'1',1,1439987728,1442024785,1,1439987728,0,2,'banner-2','','','2015_09/ship-supply-banner-3.jpg',1,0),(3,1,'1',1,1439987744,1442024774,1,1439987744,0,2,'banner-3','','','2015_09/ship-supply-banner-2.jpg',1,0),(4,1,'1',1,1439987759,1442024760,1,1439987759,0,2,'banner-4','','','2015_09/ship-supply-banner-1.jpg',1,0),(5,1,'1',1,1439987778,1442024917,1,1439987778,0,2,'banner-5','','','2015_09/ship-supply-banner-3.jpg',1,0),(12,1,'1',2,1440945047,1442024908,1,1440945047,0,2,'banner-6','','','2015_09/ship-supply-banner-2.jpg',1,0),(13,1,'1',2,1440945062,1442024891,1,1440945062,0,2,'banner-7','','','2015_09/ship-supply-banner-1.jpg',1,0);
/*!40000 ALTER TABLE `nv4_en_slider_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_slider_2`
--

DROP TABLE IF EXISTS `nv4_en_slider_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_slider_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_slider_2`
--

LOCK TABLES `nv4_en_slider_2` WRITE;
/*!40000 ALTER TABLE `nv4_en_slider_2` DISABLE KEYS */;
INSERT INTO `nv4_en_slider_2` VALUES (6,2,'2',1,1439995531,1440951060,1,1439995531,0,2,'logo-brands-1','','','2015_08/blue-ocean-logo-1.jpg',1,0),(7,2,'2',1,1439995547,1440951080,1,1439995547,0,2,'logo-brands-2','','','2015_08/blue-ocean-logo-2.jpg',1,0),(8,2,'2',1,1439995558,1440951098,1,1439995558,0,2,'logo-brands-3','','','2015_08/blue-ocean-logo-3.jpg',1,0),(9,2,'2',1,1439995569,1440951121,1,1439995569,0,2,'logo-brands-4','','','2015_08/blue-ocean-logo-4.jpg',1,0),(10,2,'2',1,1439995581,1440951138,1,1439995581,0,2,'logo-brands-5','','','2015_08/blue-ocean-logo-5.jpg',1,0),(11,2,'2',1,1439995594,1440951160,1,1439995594,0,2,'logo-brands-6','','','2015_08/blue-ocean-logo-6.jpg',1,0),(14,2,'2',2,1440951180,1440951180,1,1440951180,0,2,'logo-brands-7','','','2015_08/blue-ocean-logo-7.jpg',1,0),(15,2,'2',2,1440951269,1440951269,1,1440951269,0,2,'logo-brands-8','','','2015_08/blue-ocean-logo-8.jpg',1,0),(16,2,'2',2,1440951295,1440951295,1,1440951295,0,2,'logo-brands-9','','','2015_08/blue-ocean-logo-9.jpg',1,0),(17,2,'2',2,1440951317,1440951317,1,1440951317,0,2,'logo-brands-10','','','2015_08/blue-ocean-logo-10.jpg',1,0),(18,2,'2',2,1440951343,1440951343,1,1440951343,0,2,'logo-brands-11','','','2015_08/blue-ocean-logo-11.jpg',1,0),(19,2,'2',2,1440951366,1440951366,1,1440951366,0,2,'logo-brands-12','','','2015_08/blue-ocean-logo-12.jpg',1,0),(20,2,'2',2,1440954107,1440954107,1,1440954107,0,2,'logo-brands-13','','','2015_08/blue-ocean-logo-13.jpg',1,0),(21,2,'2',2,1440954200,1440954200,1,1440954200,0,2,'logo-brands-14','','','2015_08/blue-ocean-logo-14.jpg',1,0),(22,2,'2',2,1440954238,1440954238,1,1440954238,0,2,'logo-brands-15','','','2015_08/blue-ocean-logo-15.jpg',1,0),(23,2,'2',2,1440954245,1440954245,1,1440954245,0,2,'logo-brands-16','','','2015_08/blue-ocean-logo-16.jpg',1,0),(24,2,'2',2,1440954252,1440954252,1,1440954252,0,2,'logo-brands-17','','','2015_08/blue-ocean-logo-17.jpg',1,0),(25,2,'2',2,1440954260,1440954260,1,1440954260,0,2,'logo-brands-18','','','2015_08/blue-ocean-logo-18.jpg',1,0),(26,2,'2',2,1440954267,1440954267,1,1440954267,0,2,'logo-brands-19','','','2015_08/blue-ocean-logo-19.jpg',1,0),(27,2,'2',2,1440954289,1440954289,1,1440954289,0,2,'logo-brands-20','','','2015_08/blue-ocean-logo-20.jpg',1,0),(28,2,'2',2,1440954295,1440954295,1,1440954295,0,2,'logo-brands-21','','','2015_08/blue-ocean-logo-21.jpg',1,0),(29,2,'2',2,1440954301,1440954301,1,1440954301,0,2,'logo-brands-22','','','2015_08/blue-ocean-logo-22.jpg',1,0),(30,2,'2',2,1440954307,1440954307,1,1440954307,0,2,'logo-brands-23','','','2015_08/blue-ocean-logo-23.jpg',1,0),(31,2,'2',2,1440954316,1440954316,1,1440954316,0,2,'logo-brands-24','','','2015_08/blue-ocean-logo-24.jpg',1,0),(32,2,'2',2,1440954323,1440954323,1,1440954323,0,2,'logo-brands-25','','','2015_08/blue-ocean-logo-25.jpg',1,0);
/*!40000 ALTER TABLE `nv4_en_slider_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_slider_admins`
--

DROP TABLE IF EXISTS `nv4_en_slider_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_slider_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_slider_admins`
--

LOCK TABLES `nv4_en_slider_admins` WRITE;
/*!40000 ALTER TABLE `nv4_en_slider_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_slider_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_slider_cat`
--

DROP TABLE IF EXISTS `nv4_en_slider_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_slider_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` text,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_slider_cat`
--

LOCK TABLES `nv4_en_slider_cat` WRITE;
/*!40000 ALTER TABLE `nv4_en_slider_cat` DISABLE KEYS */;
INSERT INTO `nv4_en_slider_cat` VALUES (1,0,'Banner','Banner',1,1,0,'viewcat_page_new',0,'',1,'',1439987593,1439987593,'6'),(2,0,'Đối tác','Doi-tac',2,2,0,'viewcat_page_new',0,'',1,'',1439995468,1439995468,'6');
/*!40000 ALTER TABLE `nv4_en_slider_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_slider_config_post`
--

DROP TABLE IF EXISTS `nv4_en_slider_config_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_slider_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_slider_config_post`
--

LOCK TABLES `nv4_en_slider_config_post` WRITE;
/*!40000 ALTER TABLE `nv4_en_slider_config_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_slider_config_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_slider_rows`
--

DROP TABLE IF EXISTS `nv4_en_slider_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_slider_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `admin_id` (`admin_id`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_slider_rows`
--

LOCK TABLES `nv4_en_slider_rows` WRITE;
/*!40000 ALTER TABLE `nv4_en_slider_rows` DISABLE KEYS */;
INSERT INTO `nv4_en_slider_rows` VALUES (1,1,'1',1,1439987696,1442024794,1,1439987696,0,2,'banner-1','','','2015_09/ship-supply-banner-4.jpg',1,0),(2,1,'1',1,1439987728,1442024785,1,1439987728,0,2,'banner-2','','','2015_09/ship-supply-banner-3.jpg',1,0),(3,1,'1',1,1439987744,1442024774,1,1439987744,0,2,'banner-3','','','2015_09/ship-supply-banner-2.jpg',1,0),(4,1,'1',1,1439987759,1442024760,1,1439987759,0,2,'banner-4','','','2015_09/ship-supply-banner-1.jpg',1,0),(5,1,'1',1,1439987778,1442024917,1,1439987778,0,2,'banner-5','','','2015_09/ship-supply-banner-3.jpg',1,0),(6,2,'2',1,1439995531,1440951060,1,1439995531,0,2,'logo-brands-1','','','2015_08/blue-ocean-logo-1.jpg',1,0),(7,2,'2',1,1439995547,1440951080,1,1439995547,0,2,'logo-brands-2','','','2015_08/blue-ocean-logo-2.jpg',1,0),(8,2,'2',1,1439995558,1440951098,1,1439995558,0,2,'logo-brands-3','','','2015_08/blue-ocean-logo-3.jpg',1,0),(9,2,'2',1,1439995569,1440951121,1,1439995569,0,2,'logo-brands-4','','','2015_08/blue-ocean-logo-4.jpg',1,0),(10,2,'2',1,1439995581,1440951138,1,1439995581,0,2,'logo-brands-5','','','2015_08/blue-ocean-logo-5.jpg',1,0),(11,2,'2',1,1439995594,1440951160,1,1439995594,0,2,'logo-brands-6','','','2015_08/blue-ocean-logo-6.jpg',1,0),(12,1,'1',2,1440945047,1442024908,1,1440945047,0,2,'banner-6','','','2015_09/ship-supply-banner-2.jpg',1,0),(13,1,'1',2,1440945062,1442024891,1,1440945062,0,2,'banner-7','','','2015_09/ship-supply-banner-1.jpg',1,0),(14,2,'2',2,1440951180,1440951180,1,1440951180,0,2,'logo-brands-7','','','2015_08/blue-ocean-logo-7.jpg',1,0),(15,2,'2',2,1440951269,1440951269,1,1440951269,0,2,'logo-brands-8','','','2015_08/blue-ocean-logo-8.jpg',1,0),(16,2,'2',2,1440951295,1440951295,1,1440951295,0,2,'logo-brands-9','','','2015_08/blue-ocean-logo-9.jpg',1,0),(17,2,'2',2,1440951317,1440951317,1,1440951317,0,2,'logo-brands-10','','','2015_08/blue-ocean-logo-10.jpg',1,0),(18,2,'2',2,1440951343,1440951343,1,1440951343,0,2,'logo-brands-11','','','2015_08/blue-ocean-logo-11.jpg',1,0),(19,2,'2',2,1440951366,1440951366,1,1440951366,0,2,'logo-brands-12','','','2015_08/blue-ocean-logo-12.jpg',1,0),(20,2,'2',2,1440954107,1440954107,1,1440954107,0,2,'logo-brands-13','','','2015_08/blue-ocean-logo-13.jpg',1,0),(21,2,'2',2,1440954200,1440954200,1,1440954200,0,2,'logo-brands-14','','','2015_08/blue-ocean-logo-14.jpg',1,0),(22,2,'2',2,1440954238,1440954238,1,1440954238,0,2,'logo-brands-15','','','2015_08/blue-ocean-logo-15.jpg',1,0),(23,2,'2',2,1440954245,1440954245,1,1440954245,0,2,'logo-brands-16','','','2015_08/blue-ocean-logo-16.jpg',1,0),(24,2,'2',2,1440954252,1440954252,1,1440954252,0,2,'logo-brands-17','','','2015_08/blue-ocean-logo-17.jpg',1,0),(25,2,'2',2,1440954260,1440954260,1,1440954260,0,2,'logo-brands-18','','','2015_08/blue-ocean-logo-18.jpg',1,0),(26,2,'2',2,1440954267,1440954267,1,1440954267,0,2,'logo-brands-19','','','2015_08/blue-ocean-logo-19.jpg',1,0),(27,2,'2',2,1440954289,1440954289,1,1440954289,0,2,'logo-brands-20','','','2015_08/blue-ocean-logo-20.jpg',1,0),(28,2,'2',2,1440954295,1440954295,1,1440954295,0,2,'logo-brands-21','','','2015_08/blue-ocean-logo-21.jpg',1,0),(29,2,'2',2,1440954301,1440954301,1,1440954301,0,2,'logo-brands-22','','','2015_08/blue-ocean-logo-22.jpg',1,0),(30,2,'2',2,1440954307,1440954307,1,1440954307,0,2,'logo-brands-23','','','2015_08/blue-ocean-logo-23.jpg',1,0),(31,2,'2',2,1440954316,1440954316,1,1440954316,0,2,'logo-brands-24','','','2015_08/blue-ocean-logo-24.jpg',1,0),(32,2,'2',2,1440954323,1440954323,1,1440954323,0,2,'logo-brands-25','','','2015_08/blue-ocean-logo-25.jpg',1,0);
/*!40000 ALTER TABLE `nv4_en_slider_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_1`
--

DROP TABLE IF EXISTS `nv4_en_supplies_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_1`
--

LOCK TABLES `nv4_en_supplies_1` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_1` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_1` VALUES (16,1,'1,7',0,2,'',0,1441353158,1442977318,6,1441353060,0,2,'Jis air pipe vent heads','jis-air-pipe-vent-heads','','jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-1.jpg','',2,'jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-2.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-3.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-4.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-5.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-6.jpg',1,'4',1,24,0,0,0),(28,1,'1',0,2,'',0,1442636458,1442978000,1,1442635800,0,2,'Provision supply','provision-supply','','provision/ship-supply-provision-1.jpg','',1,'provision/ship-supply-provision-2.jpg|provision/ship-supply-provision-13.jpg|provision/ship-supply-provision-14.jpg|provision/ship-supply-provision-12.jpg|provision/ship-supply-provision-11.jpg|provision/ship-supply-provision-3.jpg|provision/ship-supply-provision-4.jpg|provision/ship-supply-provision-5.jpg|provision/ship-supply-provision-6.jpg|provision/ship-supply-provision-7.jpg|provision/ship-supply-provision-8.jpg|provision/ship-supply-provision-9.jpg|provision/ship-supply-provision-10.jpg',1,'4',1,3,0,0,0),(26,7,'1,7',0,2,'',0,1442635112,1442977186,1,1442634840,0,2,'Cabin Stores','cabin-stores','','cabin-stores/ship-supply-cabin-stores-1.jpg','',1,'cabin-stores/ship-supply-cabin-stores-2.jpg|cabin-stores/ship-supply-cabin-stores-3.jpg|cabin-stores/ship-supply-cabin-stores-4.jpg|cabin-stores/ship-supply-cabin-stores-5.jpg|cabin-stores/ship-supply-cabin-stores-6.jpg|cabin-stores/ship-supply-cabin-stores-7.jpg|cabin-stores/ship-supply-cabin-stores-8.jpg|cabin-stores/ship-supply-cabin-stores-9.jpg|cabin-stores/ship-supply-cabin-stores-10.jpg|cabin-stores/ship-supply-cabin-stores-11.jpg|cabin-stores/ship-supply-cabin-stores-12.jpg',1,'4',1,9,0,0,0),(18,7,'1,7',0,2,'',0,1441353513,1442977195,1,1442634600,0,2,'Bridge','bridge','','bridge/ship-supply-charts-publications-2.jpg','ship supply charts publications &#40;2&#41;',1,'bridge/ship-supply-charts-publications-1.jpg|bridge/ship-supply-charts-publications-3.jpg|bridge/ship-supply-charts-publications-4.jpg|bridge/ship-supply-charts-publications-5.jpg|bridge/ship-supply-charts-publications-6.jpg|bridge/ship-supply-charts-publications-7.jpg|bridge/ship-supply-charts-publications-8.jpg|bridge/ship-supply-charts-publications-9.jpg',1,'4',1,31,0,0,0),(24,7,'1,7',0,2,'',0,1442138730,1442977206,1,1442634540,0,2,'Galley Stores','galley-stores','','galley-stores/ship-supply-cabin-and-galley-store-1.jpg','ship supply cabin and galley store &#40;1&#41;',1,'galley-stores/ship-supply-cabin-and-galley-store-2.jpg|galley-stores/ship-supply-cabin-and-galley-store-3.jpg|galley-stores/ship-supply-cabin-and-galley-store-4.jpg|galley-stores/ship-supply-cabin-and-galley-store-5.jpg|galley-stores/ship-supply-cabin-and-galley-store-6.jpg|galley-stores/ship-supply-cabin-and-galley-store-7.jpg|galley-stores/ship-supply-cabin-and-galley-store-8.jpg|galley-stores/ship-supply-cabin-and-galley-store-9.jpg|galley-stores/ship-supply-cabin-and-galley-store-10.jpg',1,'4',1,22,0,0,0),(27,7,'1,7',0,2,'',0,1442635584,1442977218,1,1442634420,0,2,'Deck Stores','deck-stores','','deck-stores/ship-supply-deck-stores-2.jpg','ship supply deck stores &#40;2&#41;',1,'deck-stores/ship-supply-deck-stores-3.jpg|deck-stores/ship-supply-deck-stores-4.jpg|deck-stores/ship-supply-deck-stores-5.jpg|deck-stores/ship-supply-deck-stores-6.jpg|deck-stores/ship-supply-deck-stores-7.jpg|deck-stores/ship-supply-deck-stores-8.jpg|deck-stores/ship-supply-deck-stores-9.jpg|deck-stores/ship-supply-deck-stores-10.jpg|deck-stores/ship-supply-deck-stores-11.jpg|deck-stores/ship-supply-deck-stores-12.jpg|deck-stores/ship-supply-deck-stores-13.jpg|deck-stores/ship-supply-deck-stores-14.jpg|deck-stores/ship-supply-deck-stores-15.jpg|deck-stores/ship-supply-deck-stores-16.jpg|deck-stores/ship-supply-deck-stores-17.jpg|deck-stores/ship-supply-deck-stores-18.jpg|deck-stores/ship-supply-deck-stores-19.jpg|deck-stores/ship-supply-deck-stores-20.jpg|deck-stores/ship-supply-deck-stores-21.jpg|deck-stores/ship-supply-deck-stores-22.jpg|deck-stores/ship-supply-deck-stores-23.jpg',1,'4',1,8,0,0,0),(20,7,'1,7',0,2,'',0,1441353895,1442977230,1,1442634000,0,2,'Marine Paints &amp; Chemicals','marine-paints-chemicals','','marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg','ship supply paints chemicals &#40;1&#41;',1,'marine-paints-chemicals/ship-supply-paints-chemicals-2.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-3.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-4.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-5.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-6.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-7.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-8.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-9.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-10.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-11.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-12.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-13.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-14.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-15.jpg',1,'4',1,40,0,0,0),(17,7,'1,7',0,2,'',0,1441353381,1442977255,1,1442633700,0,2,'Safety Stores &amp; Anti-Piracy Items','safety-stores-anti-piracy-items','','safety-stores/ship-supply-safety-equipment-1.jpg','ship supply safety equipment &#40;1&#41;',1,'safety-stores/ship-supply-safety-equipment-2.jpg|safety-stores/ship-supply-safety-equipment-3.jpg|safety-stores/ship-supply-safety-equipment-4.jpg|safety-stores/ship-supply-safety-equipment-5.jpg|safety-stores/ship-supply-safety-equipment-6.jpg|safety-stores/ship-supply-safety-equipment-7.jpg|safety-stores/ship-supply-safety-equipment-8.jpg|safety-stores/ship-supply-safety-equipment-9.jpg|safety-stores/ship-supply-safety-equipment-10.jpg|safety-stores/ship-supply-safety-equipment-11.jpg|safety-stores/ship-supply-safety-equipment-12.jpg|safety-stores/ship-supply-safety-equipment-13.jpg|safety-stores/ship-supply-safety-equipment-14.jpg|safety-stores/ship-supply-safety-equipment-15.jpg|safety-stores/ship-supply-safety-equipment-16.jpg|safety-stores/ship-supply-safety-equipment-18.jpg|safety-stores/ship-supply-safety-equipment-19.jpg|safety-stores/ship-supply-safety-equipment-20.jpg|safety-stores/ship-supply-safety-equipment-21.jpg|safety-stores/ship-supply-safety-equipment-22.jpg|safety-stores/ship-supply-safety-equipment-23.jpg',1,'4',1,29,0,0,0),(13,7,'1,7',0,2,'',0,1441352419,1442977282,1,1442633400,0,2,'Electrical Stores','electrical-stores','','electrical-stores/ship-supply-electrical-stores-2.jpg','ship supply electrical stores &#40;2&#41;',1,'electrical-stores/ship-supply-electrical-stores-3.jpg|electrical-stores/ship-supply-electrical-stores-4.jpg|electrical-stores/ship-supply-electrical-stores-5.jpg|electrical-stores/ship-supply-electrical-stores-6.jpg|electrical-stores/ship-supply-electrical-stores-7.jpg|electrical-stores/ship-supply-electrical-stores-8.jpg|electrical-stores/ship-supply-electrical-stores-9.jpg|electrical-stores/ship-supply-electrical-stores-10.jpg|electrical-stores/ship-supply-electrical-stores-11.jpg|electrical-stores/ship-supply-electrical-stores-12.jpg|electrical-stores/ship-supply-electrical-stores-13.jpg|electrical-stores/ship-supply-electrical-stores-14.jpg|electrical-stores/ship-supply-electrical-stores-15.jpg|electrical-stores/ship-supply-electrical-stores-16.jpg|electrical-stores/ship-supply-electrical-stores-17.jpg|electrical-stores/ship-supply-electrical-stores-18.jpg|electrical-stores/ship-supply-electrical-stores-19.jpg|electrical-stores/ship-supply-electrical-stores-20.jpg|electrical-stores/ship-supply-electrical-stores-21.jpg|electrical-stores/ship-supply-electrical-stores-22.jpg|electrical-stores/ship-supply-electrical-stores-23.jpg|electrical-stores/ship-supply-electrical-stores-24.jpg|electrical-stores/ship-supply-electrical-stores-1.jpg',1,'4',1,52,0,0,0),(25,7,'1,7',0,2,'',0,1442552579,1442977292,1,1442552280,0,2,'Engine Stores','engine-stores','','engine-stores/ship-supply-engineer-store-1.jpg','ship supply engineer store &#40;1&#41;',1,'engine-stores/ship-supply-engineer-store-2.jpg|engine-stores/ship-supply-engineer-store-3.jpg|engine-stores/ship-supply-engineer-store-4.jpg|engine-stores/ship-supply-engineer-store-5.jpg|engine-stores/ship-supply-engineer-store-6.jpg|engine-stores/ship-supply-engineer-store-7.jpg|engine-stores/ship-supply-engineer-store-8.jpg|engine-stores/ship-supply-engineer-store-9.jpg|engine-stores/ship-supply-engineer-store-11.jpg|engine-stores/ship-supply-engineer-store-12.jpg|engine-stores/ship-supply-engineer-store-13.jpg|engine-stores/ship-supply-engineer-store-14.jpg|engine-stores/ship-supply-engineer-store-15.jpg|engine-stores/ship-supply-engineer-store-16.jpg|engine-stores/ship-supply-engineer-store-17.jpg|engine-stores/ship-supply-engineer-store-18.jpg',1,'4',1,7,0,0,0),(19,7,'1,7',0,2,'',0,1441353649,1442977304,6,1441353480,0,2,'Oils - Lubricants','oils-lubricants','','oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-1.jpg','',2,'oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-2.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-3.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-4.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-5.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-6.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-7.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-8.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-9.jpg',1,'4',1,28,0,0,0);
/*!40000 ALTER TABLE `nv4_en_supplies_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_5`
--

DROP TABLE IF EXISTS `nv4_en_supplies_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_5`
--

LOCK TABLES `nv4_en_supplies_5` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_5` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_5` VALUES (14,5,'5',0,2,'',0,1441352664,1442977328,6,1441352520,0,2,'Rubber packing','rubber-packing','','rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-1.jpg','',2,'rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-2.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-3.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-4.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-5.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-6.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-7.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-8.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-9.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-10.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-11.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-12.jpg',1,'4',1,33,0,0,0);
/*!40000 ALTER TABLE `nv4_en_supplies_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_6`
--

DROP TABLE IF EXISTS `nv4_en_supplies_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_6`
--

LOCK TABLES `nv4_en_supplies_6` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_7`
--

DROP TABLE IF EXISTS `nv4_en_supplies_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_7`
--

LOCK TABLES `nv4_en_supplies_7` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_7` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_7` VALUES (24,7,'1,7',0,2,'',0,1442138730,1442977206,1,1442634540,0,2,'Galley Stores','galley-stores','','galley-stores/ship-supply-cabin-and-galley-store-1.jpg','ship supply cabin and galley store &#40;1&#41;',1,'galley-stores/ship-supply-cabin-and-galley-store-2.jpg|galley-stores/ship-supply-cabin-and-galley-store-3.jpg|galley-stores/ship-supply-cabin-and-galley-store-4.jpg|galley-stores/ship-supply-cabin-and-galley-store-5.jpg|galley-stores/ship-supply-cabin-and-galley-store-6.jpg|galley-stores/ship-supply-cabin-and-galley-store-7.jpg|galley-stores/ship-supply-cabin-and-galley-store-8.jpg|galley-stores/ship-supply-cabin-and-galley-store-9.jpg|galley-stores/ship-supply-cabin-and-galley-store-10.jpg',1,'4',1,22,0,0,0),(27,7,'1,7',0,2,'',0,1442635584,1442977218,1,1442634420,0,2,'Deck Stores','deck-stores','','deck-stores/ship-supply-deck-stores-2.jpg','ship supply deck stores &#40;2&#41;',1,'deck-stores/ship-supply-deck-stores-3.jpg|deck-stores/ship-supply-deck-stores-4.jpg|deck-stores/ship-supply-deck-stores-5.jpg|deck-stores/ship-supply-deck-stores-6.jpg|deck-stores/ship-supply-deck-stores-7.jpg|deck-stores/ship-supply-deck-stores-8.jpg|deck-stores/ship-supply-deck-stores-9.jpg|deck-stores/ship-supply-deck-stores-10.jpg|deck-stores/ship-supply-deck-stores-11.jpg|deck-stores/ship-supply-deck-stores-12.jpg|deck-stores/ship-supply-deck-stores-13.jpg|deck-stores/ship-supply-deck-stores-14.jpg|deck-stores/ship-supply-deck-stores-15.jpg|deck-stores/ship-supply-deck-stores-16.jpg|deck-stores/ship-supply-deck-stores-17.jpg|deck-stores/ship-supply-deck-stores-18.jpg|deck-stores/ship-supply-deck-stores-19.jpg|deck-stores/ship-supply-deck-stores-20.jpg|deck-stores/ship-supply-deck-stores-21.jpg|deck-stores/ship-supply-deck-stores-22.jpg|deck-stores/ship-supply-deck-stores-23.jpg',1,'4',1,8,0,0,0),(18,7,'1,7',0,2,'',0,1441353513,1442977195,1,1442634600,0,2,'Bridge','bridge','','bridge/ship-supply-charts-publications-2.jpg','ship supply charts publications &#40;2&#41;',1,'bridge/ship-supply-charts-publications-1.jpg|bridge/ship-supply-charts-publications-3.jpg|bridge/ship-supply-charts-publications-4.jpg|bridge/ship-supply-charts-publications-5.jpg|bridge/ship-supply-charts-publications-6.jpg|bridge/ship-supply-charts-publications-7.jpg|bridge/ship-supply-charts-publications-8.jpg|bridge/ship-supply-charts-publications-9.jpg',1,'4',1,31,0,0,0),(25,7,'1,7',0,2,'',0,1442552579,1442977292,1,1442552280,0,2,'Engine Stores','engine-stores','','engine-stores/ship-supply-engineer-store-1.jpg','ship supply engineer store &#40;1&#41;',1,'engine-stores/ship-supply-engineer-store-2.jpg|engine-stores/ship-supply-engineer-store-3.jpg|engine-stores/ship-supply-engineer-store-4.jpg|engine-stores/ship-supply-engineer-store-5.jpg|engine-stores/ship-supply-engineer-store-6.jpg|engine-stores/ship-supply-engineer-store-7.jpg|engine-stores/ship-supply-engineer-store-8.jpg|engine-stores/ship-supply-engineer-store-9.jpg|engine-stores/ship-supply-engineer-store-11.jpg|engine-stores/ship-supply-engineer-store-12.jpg|engine-stores/ship-supply-engineer-store-13.jpg|engine-stores/ship-supply-engineer-store-14.jpg|engine-stores/ship-supply-engineer-store-15.jpg|engine-stores/ship-supply-engineer-store-16.jpg|engine-stores/ship-supply-engineer-store-17.jpg|engine-stores/ship-supply-engineer-store-18.jpg',1,'4',1,7,0,0,0),(20,7,'1,7',0,2,'',0,1441353895,1442977230,1,1442634000,0,2,'Marine Paints &amp; Chemicals','marine-paints-chemicals','','marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg','ship supply paints chemicals &#40;1&#41;',1,'marine-paints-chemicals/ship-supply-paints-chemicals-2.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-3.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-4.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-5.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-6.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-7.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-8.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-9.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-10.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-11.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-12.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-13.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-14.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-15.jpg',1,'4',1,40,0,0,0),(19,7,'1,7',0,2,'',0,1441353649,1442977304,6,1441353480,0,2,'Oils - Lubricants','oils-lubricants','','oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-1.jpg','',2,'oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-2.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-3.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-4.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-5.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-6.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-7.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-8.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-9.jpg',1,'4',1,28,0,0,0),(13,7,'1,7',0,2,'',0,1441352419,1442977282,1,1442633400,0,2,'Electrical Stores','electrical-stores','','electrical-stores/ship-supply-electrical-stores-2.jpg','ship supply electrical stores &#40;2&#41;',1,'electrical-stores/ship-supply-electrical-stores-3.jpg|electrical-stores/ship-supply-electrical-stores-4.jpg|electrical-stores/ship-supply-electrical-stores-5.jpg|electrical-stores/ship-supply-electrical-stores-6.jpg|electrical-stores/ship-supply-electrical-stores-7.jpg|electrical-stores/ship-supply-electrical-stores-8.jpg|electrical-stores/ship-supply-electrical-stores-9.jpg|electrical-stores/ship-supply-electrical-stores-10.jpg|electrical-stores/ship-supply-electrical-stores-11.jpg|electrical-stores/ship-supply-electrical-stores-12.jpg|electrical-stores/ship-supply-electrical-stores-13.jpg|electrical-stores/ship-supply-electrical-stores-14.jpg|electrical-stores/ship-supply-electrical-stores-15.jpg|electrical-stores/ship-supply-electrical-stores-16.jpg|electrical-stores/ship-supply-electrical-stores-17.jpg|electrical-stores/ship-supply-electrical-stores-18.jpg|electrical-stores/ship-supply-electrical-stores-19.jpg|electrical-stores/ship-supply-electrical-stores-20.jpg|electrical-stores/ship-supply-electrical-stores-21.jpg|electrical-stores/ship-supply-electrical-stores-22.jpg|electrical-stores/ship-supply-electrical-stores-23.jpg|electrical-stores/ship-supply-electrical-stores-24.jpg|electrical-stores/ship-supply-electrical-stores-1.jpg',1,'4',1,52,0,0,0),(17,7,'1,7',0,2,'',0,1441353381,1442977255,1,1442633700,0,2,'Safety Stores &amp; Anti-Piracy Items','safety-stores-anti-piracy-items','','safety-stores/ship-supply-safety-equipment-1.jpg','ship supply safety equipment &#40;1&#41;',1,'safety-stores/ship-supply-safety-equipment-2.jpg|safety-stores/ship-supply-safety-equipment-3.jpg|safety-stores/ship-supply-safety-equipment-4.jpg|safety-stores/ship-supply-safety-equipment-5.jpg|safety-stores/ship-supply-safety-equipment-6.jpg|safety-stores/ship-supply-safety-equipment-7.jpg|safety-stores/ship-supply-safety-equipment-8.jpg|safety-stores/ship-supply-safety-equipment-9.jpg|safety-stores/ship-supply-safety-equipment-10.jpg|safety-stores/ship-supply-safety-equipment-11.jpg|safety-stores/ship-supply-safety-equipment-12.jpg|safety-stores/ship-supply-safety-equipment-13.jpg|safety-stores/ship-supply-safety-equipment-14.jpg|safety-stores/ship-supply-safety-equipment-15.jpg|safety-stores/ship-supply-safety-equipment-16.jpg|safety-stores/ship-supply-safety-equipment-18.jpg|safety-stores/ship-supply-safety-equipment-19.jpg|safety-stores/ship-supply-safety-equipment-20.jpg|safety-stores/ship-supply-safety-equipment-21.jpg|safety-stores/ship-supply-safety-equipment-22.jpg|safety-stores/ship-supply-safety-equipment-23.jpg',1,'4',1,29,0,0,0),(16,1,'1,7',0,2,'',0,1441353158,1442977318,6,1441353060,0,2,'Jis air pipe vent heads','jis-air-pipe-vent-heads','','jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-1.jpg','',2,'jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-2.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-3.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-4.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-5.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-6.jpg',1,'4',1,24,0,0,0),(26,7,'1,7',0,2,'',0,1442635112,1442977186,1,1442634840,0,2,'Cabin Stores','cabin-stores','','cabin-stores/ship-supply-cabin-stores-1.jpg','',1,'cabin-stores/ship-supply-cabin-stores-2.jpg|cabin-stores/ship-supply-cabin-stores-3.jpg|cabin-stores/ship-supply-cabin-stores-4.jpg|cabin-stores/ship-supply-cabin-stores-5.jpg|cabin-stores/ship-supply-cabin-stores-6.jpg|cabin-stores/ship-supply-cabin-stores-7.jpg|cabin-stores/ship-supply-cabin-stores-8.jpg|cabin-stores/ship-supply-cabin-stores-9.jpg|cabin-stores/ship-supply-cabin-stores-10.jpg|cabin-stores/ship-supply-cabin-stores-11.jpg|cabin-stores/ship-supply-cabin-stores-12.jpg',1,'4',1,9,0,0,0);
/*!40000 ALTER TABLE `nv4_en_supplies_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_admins`
--

DROP TABLE IF EXISTS `nv4_en_supplies_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_admins`
--

LOCK TABLES `nv4_en_supplies_admins` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_block`
--

DROP TABLE IF EXISTS `nv4_en_supplies_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  UNIQUE KEY `bid` (`bid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_block`
--

LOCK TABLES `nv4_en_supplies_block` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_block_cat`
--

DROP TABLE IF EXISTS `nv4_en_supplies_block_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_block_cat` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_block_cat`
--

LOCK TABLES `nv4_en_supplies_block_cat` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_block_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_block_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_bodyhtml_1`
--

DROP TABLE IF EXISTS `nv4_en_supplies_bodyhtml_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_bodyhtml_1` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `sourcetext` varchar(255) DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_bodyhtml_1`
--

LOCK TABLES `nv4_en_supplies_bodyhtml_1` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_bodyhtml_1` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_bodyhtml_1` VALUES (25,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply engineer store (1)\" src=\"/uploads/supplies/engine-stores/ship-supply-engineer-store-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">Hoses, Couplings, Bearings, Electrical &amp; Hydraulic Tools, Hand &amp; cutting Tools, Steel &amp; Metals, Lubricants &amp; Cleaners, Packing &amp; Jointing, Welding materials, and crew stores.</div>\r\n</div>','',0,0,1,1,1,0),(26,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply cabin stores 1\" src=\"/uploads/supplies/cabin-stores/ship-supply-cabin-stores-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">We provide Linens, Cleaning materials and products, Laundry products, Beddings.</div>\r\n</div>','',0,0,1,1,1,0),(24,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply cabin and galley store (1)\" src=\"/uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">Cleaning materials and Products, Utensils &amp; Cutleries, Gastronomy Bar &amp; buffet wares.</div>\r\n</div>','',0,0,1,1,1,0),(27,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply deck stores (2)\" src=\"/uploads/supplies/deck-stores/ship-supply-deck-stores-2.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">Ramnek , Lashing equipment, wires ropes &amp; hawsers, Anchor, Chains, piping &amp; fitting materials.</div>\r\n</div>','',0,0,1,1,1,0),(13,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply electrical stores (2)\" src=\"/uploads/supplies/electrical-stores/ship-supply-electrical-stores-2.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">Lamps, Cables , Spare parts.</div>\r\n</div>','',0,0,1,1,1,0),(14,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"blue ocean marine service ship supply rubber packing 1\" src=\"/uploads/our-business/rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Water or oil resistance rubber packing (three skins or four skins);</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Oil resistance rubber packing (four skins);</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Straight angle joint;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Vertical angle joint;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Vertical angle joint;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Double folding angle joint;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">End pieces;</li>\r\n</ul>\r\n</div>\r\n</div>','',0,0,1,1,1,0),(16,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"blue ocean marine service ship supply jis air pipe vent heads 1\" src=\"/uploads/our-business/jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">Air pipe heads and air vent heads are used for water, oil tank and air: fireproof and waterproof.</div>\r\n</div>','',0,0,1,1,1,0),(17,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply safety equipment (1)\" src=\"/uploads/supplies/safety-stores/ship-supply-safety-equipment-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Gas analysers;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Life bouys, life jackets, immersion suits;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Fire hoses, fire extinguishers, fire fighting suits;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Life rafts, rescue boats, emergency lights;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Pilot ladders, embarkation ladders, oil sorbents.</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">LIFE JACKET LIGHTS</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Dependable water-activated light works in both fresh water and seawater;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Fully approved to 1999 SOLAS amendments - IMO Resolution 81(70);</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">USCG approval no. 161.112/36/0;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">EC Type Approval and MED (&quot;Ship&#039;s Wheel&quot; mark) approval from Lloyd&#039;s Register;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Russian Maritime Register of Shipping approval no. 00.089.010;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Safe and environmentally friendly - magnesium-cuprous chloride battery.</li>\r\n</ul>\r\n</div>\r\n</div>','',0,0,1,1,1,0),(18,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply charts publications (2)\" src=\"/uploads/supplies/bridge/ship-supply-charts-publications-2.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">BA charts &amp; Publications and Stationeries.</div>\r\n</div>','',0,0,1,1,1,0),(19,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"blue ocean marine service ship supply oils lubricants 1\" src=\"/uploads/our-business/oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">Profesional service and fast delivery of Shell oil, Neste, Castrol, Mobil, British Petroleum products to all ships.</div>\r\n\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Antiseize assembly compounds;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Flaw &amp; Crack detector set;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Open gear lubricants;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Multi - purpose and liquid greases;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Insulators against corrosion &amp; rust.</li>\r\n</ul>\r\n</div>\r\n</div>','',0,0,1,1,1,0),(20,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply paints chemicals (1)\" src=\"/uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">Marine paints and coatings:</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Jotun;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">International;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Hempel;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Sigma.</li>\r\n</ul>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px; text-align: justify;\"><strong><span style=\"font-size:17px\">Marine chemicals:</span></strong></div>\r\n\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Unitor;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Marisol;</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Marichem - Marigases.</li>\r\n</ul>\r\n</div>\r\n</div>','',0,0,1,1,1,0),(28,'<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<figure class=\"image\" style=\"float:left\"><img alt=\"ship supply provision 1\" src=\"/uploads/supplies/provision/ship-supply-provision-1.jpg\" style=\"width: 100%;\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div class=\"col-xs-24 col-sm-12 col-md-12\">\r\n<div style=\"margin-bottom: 10px; text-align: justify;\">We offer a wide range of fresh, frozen and dry provision to meet the expectation of quality for all vessel and offshore industries.</div>\r\n</div>','',0,0,1,1,1,0);
/*!40000 ALTER TABLE `nv4_en_supplies_bodyhtml_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_bodytext`
--

DROP TABLE IF EXISTS `nv4_en_supplies_bodytext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_bodytext` (
  `id` int(11) unsigned NOT NULL,
  `bodytext` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_bodytext`
--

LOCK TABLES `nv4_en_supplies_bodytext` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_bodytext` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_bodytext` VALUES (25,'\r\n /uploads/supplies/engine-stores/ship-supply-engineer-store-1.jpg ship supply engineer store (1)\r\n\r\n\r\n\r\n\r\n\r\nHoses, Couplings, Bearings, Electrical &amp; Hydraulic Tools, Hand &amp; cutting Tools, Steel &amp; Metals, Lubricants &amp; Cleaners, Packing &amp; Jointing, Welding materials, and crew stores.\r\n'),(28,'\r\n /uploads/supplies/provision/ship-supply-provision-1.jpg ship supply provision 1\r\n\r\n\r\n\r\n\r\n\r\nWe offer a wide range of fresh, frozen and dry provision to meet the expectation of quality for all vessel and offshore industries.\r\n'),(26,'\r\n /uploads/supplies/cabin-stores/ship-supply-cabin-stores-1.jpg ship supply cabin stores 1\r\n\r\n\r\n\r\n\r\n\r\nWe provide Linens, Cleaning materials and products, Laundry products, Beddings.\r\n'),(13,'\r\n /uploads/supplies/electrical-stores/ship-supply-electrical-stores-2.jpg ship supply electrical stores (2)\r\n\r\n\r\n\r\n\r\n\r\nLamps, Cables , Spare parts.\r\n'),(14,'\r\n /uploads/our-business/rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-1.jpg blue ocean marine service ship supply rubber packing 1\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	Water or oil resistance rubber packing (three skins or four skins);\r\n	Oil resistance rubber packing (four skins);\r\n	Straight angle joint;\r\n	Vertical angle joint;\r\n	Vertical angle joint;\r\n	Double folding angle joint;\r\n	End pieces;\r\n\r\n\r\n'),(16,'\r\n /uploads/our-business/jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-1.jpg blue ocean marine service ship supply jis air pipe vent heads 1\r\n\r\n\r\n\r\n\r\n\r\nAir pipe heads and air vent heads are used for water, oil tank and air: fireproof and waterproof.\r\n'),(17,'\r\n /uploads/supplies/safety-stores/ship-supply-safety-equipment-1.jpg ship supply safety equipment (1)\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	Gas analysers;\r\n	Life bouys, life jackets, immersion suits;\r\n	Fire hoses, fire extinguishers, fire fighting suits;\r\n	Life rafts, rescue boats, emergency lights;\r\n	Pilot ladders, embarkation ladders, oil sorbents.\r\n\r\n\r\n\r\nLIFE JACKET LIGHTS\r\n\r\n\r\n\r\n	Dependable water-activated light works in both fresh water and seawater;\r\n	Fully approved to 1999 SOLAS amendments - IMO Resolution 81(70);\r\n	USCG approval no. 161.112/36/0;\r\n	EC Type Approval and MED (&quot;Ship&#039;s Wheel&quot; mark) approval from Lloyd&#039;s Register;\r\n	Russian Maritime Register of Shipping approval no. 00.089.010;\r\n	Safe and environmentally friendly - magnesium-cuprous chloride battery.\r\n\r\n\r\n'),(18,'\r\n /uploads/supplies/bridge/ship-supply-charts-publications-2.jpg ship supply charts publications (2)\r\n\r\n\r\n\r\n\r\n\r\nBA charts &amp; Publications and Stationeries.\r\n'),(19,'\r\n /uploads/our-business/oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-1.jpg blue ocean marine service ship supply oils lubricants 1\r\n\r\n\r\n\r\n\r\n\r\nProfesional service and fast delivery of Shell oil, Neste, Castrol, Mobil, British Petroleum products to all ships.\r\n\r\n\r\n\r\n	Antiseize assembly compounds;\r\n	Flaw &amp; Crack detector set;\r\n	Open gear lubricants;\r\n	Multi - purpose and liquid greases;\r\n	Insulators against corrosion &amp; rust.\r\n\r\n\r\n'),(20,'\r\n /uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg ship supply paints chemicals (1)\r\n\r\n\r\n\r\n\r\n\r\nMarine paints and coatings:\r\n\r\n\r\n\r\n	Jotun;\r\n	International;\r\n	Hempel;\r\n	Sigma.\r\n\r\n\r\n\r\nMarine chemicals:\r\n\r\n\r\n\r\n	Unitor;\r\n	Marisol;\r\n	Marichem - Marigases.\r\n\r\n\r\n'),(24,'\r\n /uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-1.jpg ship supply cabin and galley store (1)\r\n\r\n\r\n\r\n\r\n\r\nCleaning materials and Products, Utensils &amp; Cutleries, Gastronomy Bar &amp; buffet wares.\r\n'),(27,'\r\n /uploads/supplies/deck-stores/ship-supply-deck-stores-2.jpg ship supply deck stores (2)\r\n\r\n\r\n\r\n\r\n\r\nRamnek , Lashing equipment, wires ropes &amp; hawsers, Anchor, Chains, piping &amp; fitting materials.\r\n');
/*!40000 ALTER TABLE `nv4_en_supplies_bodytext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_cat`
--

DROP TABLE IF EXISTS `nv4_en_supplies_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_cat` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `titlesite` varchar(255) DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `descriptionhtml` text,
  `image` varchar(255) DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `keywords` text,
  `admins` text,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT '',
  PRIMARY KEY (`catid`),
  UNIQUE KEY `alias` (`alias`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_cat`
--

LOCK TABLES `nv4_en_supplies_cat` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_cat` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_cat` VALUES (1,0,'Supplies','','supplies-1','We providing the entire range of provisions, cabin, bonded, safety, deck, engine stores and specialize in supply stores for new building vessel','<div style=\"margin-bottom: 5px; text-align: justify;\">We offer a wide range of fresh, frozen and dry provision to meet the expectation of quality for all vessel and offshore industries.</div>','ship_supply.png',0,1,1,0,'viewcat_page_new',1,'7',1,20,0,0,'Ship supply','',1441076537,1442977492,'6'),(5,0,'General repairs','','general-repairs','','<div style=\"margin-bottom: 5px; text-align: justify;\">We repair and make arrangements for:</div>\r\n\r\n<div style=\"text-align:center; margin-top:15px; margin-bottom:15px\"><img alt=\"ship supply other services\" src=\"/uploads/supplies/2015_09/ship-supply-other-services.jpg\" style=\"width:50%\" /></div>\r\n\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Main Engine , Generator, Boiler, Pumps, Valves, Air compressor, Crane, Winch, Motor rewind, Refrigeration system,Radar, Gyro compass, Gps, Gmdss, Imasat, Vhf , Echo Sounder, Outfitting work, Under water work, Anchor and chain replacement.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Cargo holds cleaning, FO, sewage, sludge tank cleaning, oil spill recollection and gas freeing.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Dry docking attendance and daily service.</li>\r\n</ul>\r\n</div>','',0,2,3,0,'viewcat_page_new',0,'',1,20,0,0,'','',1442551665,1442632787,'6'),(6,0,'Other services','','other-services','','<div style=\"margin-bottom: 5px; text-align: justify;\">We also provide other services such as:</div>\r\n\r\n<div style=\"text-align:center; margin-top:15px; margin-bottom:15px\"><img alt=\"ship supply general repairs\" src=\"/uploads/supplies/2015_09/ship-supply-general-repairs.jpg\" style=\"width:50%\" /></div>\r\n\r\n<div style=\"margin-bottom:15px\">\r\n<ul style=\"list-style: inherit;\">\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Dry dock &amp; survey facilities.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">LSA &amp; FFE inspection &amp; calibration services.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Load test service.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Fresh water supply services.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Garbage &amp; sludge removal services.</li>\r\n	<li style=\"margin-bottom: 2px; text-align: justify\">Underwater survey and cleaning services.</li>\r\n</ul>\r\n</div>','',0,3,4,0,'viewcat_page_new',0,'',1,20,0,0,'','',1442551929,1442632797,'6'),(7,1,'Technical supply','','technical-supply','','<div style=\"margin-bottom: 5px; text-align: justify;\">We put on stock and supply various qualities of cabin, deck and engine stores and spare parts, suitable to the budget of managers and owners.</div>','',0,1,2,1,'viewcat_page_new',0,'',1,20,0,0,'','',1442633666,1442634446,'6');
/*!40000 ALTER TABLE `nv4_en_supplies_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_config_post`
--

DROP TABLE IF EXISTS `nv4_en_supplies_config_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_config_post`
--

LOCK TABLES `nv4_en_supplies_config_post` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_config_post` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_config_post` VALUES (1,0,0,0,0),(2,0,0,0,0),(3,0,0,0,0),(4,0,0,0,0),(5,0,0,0,0);
/*!40000 ALTER TABLE `nv4_en_supplies_config_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_logs`
--

DROP TABLE IF EXISTS `nv4_en_supplies_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_logs`
--

LOCK TABLES `nv4_en_supplies_logs` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_rows`
--

DROP TABLE IF EXISTS `nv4_en_supplies_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_rows` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` text NOT NULL,
  `homeimgfile` varchar(255) DEFAULT '',
  `homeimgalt` varchar(255) DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `otherimage` text,
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `topicid` (`topicid`),
  KEY `admin_id` (`admin_id`),
  KEY `author` (`author`),
  KEY `title` (`title`),
  KEY `addtime` (`addtime`),
  KEY `publtime` (`publtime`),
  KEY `exptime` (`exptime`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_rows`
--

LOCK TABLES `nv4_en_supplies_rows` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_rows` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_rows` VALUES (13,7,'1,7',0,2,'',0,1441352419,1442977282,1,1442633400,0,2,'Electrical Stores','electrical-stores','','electrical-stores/ship-supply-electrical-stores-2.jpg','ship supply electrical stores &#40;2&#41;',1,'electrical-stores/ship-supply-electrical-stores-3.jpg|electrical-stores/ship-supply-electrical-stores-4.jpg|electrical-stores/ship-supply-electrical-stores-5.jpg|electrical-stores/ship-supply-electrical-stores-6.jpg|electrical-stores/ship-supply-electrical-stores-7.jpg|electrical-stores/ship-supply-electrical-stores-8.jpg|electrical-stores/ship-supply-electrical-stores-9.jpg|electrical-stores/ship-supply-electrical-stores-10.jpg|electrical-stores/ship-supply-electrical-stores-11.jpg|electrical-stores/ship-supply-electrical-stores-12.jpg|electrical-stores/ship-supply-electrical-stores-13.jpg|electrical-stores/ship-supply-electrical-stores-14.jpg|electrical-stores/ship-supply-electrical-stores-15.jpg|electrical-stores/ship-supply-electrical-stores-16.jpg|electrical-stores/ship-supply-electrical-stores-17.jpg|electrical-stores/ship-supply-electrical-stores-18.jpg|electrical-stores/ship-supply-electrical-stores-19.jpg|electrical-stores/ship-supply-electrical-stores-20.jpg|electrical-stores/ship-supply-electrical-stores-21.jpg|electrical-stores/ship-supply-electrical-stores-22.jpg|electrical-stores/ship-supply-electrical-stores-23.jpg|electrical-stores/ship-supply-electrical-stores-24.jpg|electrical-stores/ship-supply-electrical-stores-1.jpg',1,'4',1,52,0,0,0),(14,5,'5',0,2,'',0,1441352664,1442977328,6,1441352520,0,2,'Rubber packing','rubber-packing','','rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-1.jpg','',2,'rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-2.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-3.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-4.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-5.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-6.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-7.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-8.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-9.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-10.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-11.jpg|rubber-packing/blue-ocean-marine-service-ship-supply-rubber-packing-12.jpg',1,'4',1,33,0,0,0),(26,7,'1,7',0,2,'',0,1442635112,1442977186,1,1442634840,0,2,'Cabin Stores','cabin-stores','','cabin-stores/ship-supply-cabin-stores-1.jpg','',1,'cabin-stores/ship-supply-cabin-stores-2.jpg|cabin-stores/ship-supply-cabin-stores-3.jpg|cabin-stores/ship-supply-cabin-stores-4.jpg|cabin-stores/ship-supply-cabin-stores-5.jpg|cabin-stores/ship-supply-cabin-stores-6.jpg|cabin-stores/ship-supply-cabin-stores-7.jpg|cabin-stores/ship-supply-cabin-stores-8.jpg|cabin-stores/ship-supply-cabin-stores-9.jpg|cabin-stores/ship-supply-cabin-stores-10.jpg|cabin-stores/ship-supply-cabin-stores-11.jpg|cabin-stores/ship-supply-cabin-stores-12.jpg',1,'4',1,9,0,0,0),(27,7,'1,7',0,2,'',0,1442635584,1442977218,1,1442634420,0,2,'Deck Stores','deck-stores','','deck-stores/ship-supply-deck-stores-2.jpg','ship supply deck stores &#40;2&#41;',1,'deck-stores/ship-supply-deck-stores-3.jpg|deck-stores/ship-supply-deck-stores-4.jpg|deck-stores/ship-supply-deck-stores-5.jpg|deck-stores/ship-supply-deck-stores-6.jpg|deck-stores/ship-supply-deck-stores-7.jpg|deck-stores/ship-supply-deck-stores-8.jpg|deck-stores/ship-supply-deck-stores-9.jpg|deck-stores/ship-supply-deck-stores-10.jpg|deck-stores/ship-supply-deck-stores-11.jpg|deck-stores/ship-supply-deck-stores-12.jpg|deck-stores/ship-supply-deck-stores-13.jpg|deck-stores/ship-supply-deck-stores-14.jpg|deck-stores/ship-supply-deck-stores-15.jpg|deck-stores/ship-supply-deck-stores-16.jpg|deck-stores/ship-supply-deck-stores-17.jpg|deck-stores/ship-supply-deck-stores-18.jpg|deck-stores/ship-supply-deck-stores-19.jpg|deck-stores/ship-supply-deck-stores-20.jpg|deck-stores/ship-supply-deck-stores-21.jpg|deck-stores/ship-supply-deck-stores-22.jpg|deck-stores/ship-supply-deck-stores-23.jpg',1,'4',1,8,0,0,0),(25,7,'1,7',0,2,'',0,1442552579,1442977292,1,1442552280,0,2,'Engine Stores','engine-stores','','engine-stores/ship-supply-engineer-store-1.jpg','ship supply engineer store &#40;1&#41;',1,'engine-stores/ship-supply-engineer-store-2.jpg|engine-stores/ship-supply-engineer-store-3.jpg|engine-stores/ship-supply-engineer-store-4.jpg|engine-stores/ship-supply-engineer-store-5.jpg|engine-stores/ship-supply-engineer-store-6.jpg|engine-stores/ship-supply-engineer-store-7.jpg|engine-stores/ship-supply-engineer-store-8.jpg|engine-stores/ship-supply-engineer-store-9.jpg|engine-stores/ship-supply-engineer-store-11.jpg|engine-stores/ship-supply-engineer-store-12.jpg|engine-stores/ship-supply-engineer-store-13.jpg|engine-stores/ship-supply-engineer-store-14.jpg|engine-stores/ship-supply-engineer-store-15.jpg|engine-stores/ship-supply-engineer-store-16.jpg|engine-stores/ship-supply-engineer-store-17.jpg|engine-stores/ship-supply-engineer-store-18.jpg',1,'4',1,7,0,0,0),(16,1,'1,7',0,2,'',0,1441353158,1442977318,6,1441353060,0,2,'Jis air pipe vent heads','jis-air-pipe-vent-heads','','jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-1.jpg','',2,'jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-2.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-3.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-4.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-5.jpg|jis-air-pipe-vent-heads/blue-ocean-marine-service-ship-supply-jis-air-pipe-vent-heads-6.jpg',1,'4',1,24,0,0,0),(17,7,'1,7',0,2,'',0,1441353381,1442977255,1,1442633700,0,2,'Safety Stores &amp; Anti-Piracy Items','safety-stores-anti-piracy-items','','safety-stores/ship-supply-safety-equipment-1.jpg','ship supply safety equipment &#40;1&#41;',1,'safety-stores/ship-supply-safety-equipment-2.jpg|safety-stores/ship-supply-safety-equipment-3.jpg|safety-stores/ship-supply-safety-equipment-4.jpg|safety-stores/ship-supply-safety-equipment-5.jpg|safety-stores/ship-supply-safety-equipment-6.jpg|safety-stores/ship-supply-safety-equipment-7.jpg|safety-stores/ship-supply-safety-equipment-8.jpg|safety-stores/ship-supply-safety-equipment-9.jpg|safety-stores/ship-supply-safety-equipment-10.jpg|safety-stores/ship-supply-safety-equipment-11.jpg|safety-stores/ship-supply-safety-equipment-12.jpg|safety-stores/ship-supply-safety-equipment-13.jpg|safety-stores/ship-supply-safety-equipment-14.jpg|safety-stores/ship-supply-safety-equipment-15.jpg|safety-stores/ship-supply-safety-equipment-16.jpg|safety-stores/ship-supply-safety-equipment-18.jpg|safety-stores/ship-supply-safety-equipment-19.jpg|safety-stores/ship-supply-safety-equipment-20.jpg|safety-stores/ship-supply-safety-equipment-21.jpg|safety-stores/ship-supply-safety-equipment-22.jpg|safety-stores/ship-supply-safety-equipment-23.jpg',1,'4',1,29,0,0,0),(18,7,'1,7',0,2,'',0,1441353513,1442977195,1,1442634600,0,2,'Bridge','bridge','','bridge/ship-supply-charts-publications-2.jpg','ship supply charts publications &#40;2&#41;',1,'bridge/ship-supply-charts-publications-1.jpg|bridge/ship-supply-charts-publications-3.jpg|bridge/ship-supply-charts-publications-4.jpg|bridge/ship-supply-charts-publications-5.jpg|bridge/ship-supply-charts-publications-6.jpg|bridge/ship-supply-charts-publications-7.jpg|bridge/ship-supply-charts-publications-8.jpg|bridge/ship-supply-charts-publications-9.jpg',1,'4',1,31,0,0,0),(19,7,'1,7',0,2,'',0,1441353649,1442977304,6,1441353480,0,2,'Oils - Lubricants','oils-lubricants','','oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-1.jpg','',2,'oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-2.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-3.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-4.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-5.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-6.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-7.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-8.jpg|oils-lubricants/blue-ocean-marine-service-ship-supply-oils-lubricants-9.jpg',1,'4',1,28,0,0,0),(20,7,'1,7',0,2,'',0,1441353895,1442977230,1,1442634000,0,2,'Marine Paints &amp; Chemicals','marine-paints-chemicals','','marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg','ship supply paints chemicals &#40;1&#41;',1,'marine-paints-chemicals/ship-supply-paints-chemicals-2.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-3.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-4.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-5.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-6.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-7.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-8.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-9.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-10.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-11.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-12.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-13.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-14.jpg|marine-paints-chemicals/ship-supply-paints-chemicals-15.jpg',1,'4',1,40,0,0,0),(28,1,'1',0,2,'',0,1442636458,1442978000,1,1442635800,0,2,'Provision supply','provision-supply','','provision/ship-supply-provision-1.jpg','',1,'provision/ship-supply-provision-2.jpg|provision/ship-supply-provision-13.jpg|provision/ship-supply-provision-14.jpg|provision/ship-supply-provision-12.jpg|provision/ship-supply-provision-11.jpg|provision/ship-supply-provision-3.jpg|provision/ship-supply-provision-4.jpg|provision/ship-supply-provision-5.jpg|provision/ship-supply-provision-6.jpg|provision/ship-supply-provision-7.jpg|provision/ship-supply-provision-8.jpg|provision/ship-supply-provision-9.jpg|provision/ship-supply-provision-10.jpg',1,'4',1,3,0,0,0),(24,7,'1,7',0,2,'',0,1442138730,1442977206,1,1442634540,0,2,'Galley Stores','galley-stores','','galley-stores/ship-supply-cabin-and-galley-store-1.jpg','ship supply cabin and galley store &#40;1&#41;',1,'galley-stores/ship-supply-cabin-and-galley-store-2.jpg|galley-stores/ship-supply-cabin-and-galley-store-3.jpg|galley-stores/ship-supply-cabin-and-galley-store-4.jpg|galley-stores/ship-supply-cabin-and-galley-store-5.jpg|galley-stores/ship-supply-cabin-and-galley-store-6.jpg|galley-stores/ship-supply-cabin-and-galley-store-7.jpg|galley-stores/ship-supply-cabin-and-galley-store-8.jpg|galley-stores/ship-supply-cabin-and-galley-store-9.jpg|galley-stores/ship-supply-cabin-and-galley-store-10.jpg',1,'4',1,22,0,0,0);
/*!40000 ALTER TABLE `nv4_en_supplies_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_sources`
--

DROP TABLE IF EXISTS `nv4_en_supplies_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`sourceid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_sources`
--

LOCK TABLES `nv4_en_supplies_sources` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_tags`
--

DROP TABLE IF EXISTS `nv4_en_supplies_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_tags` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` text,
  `keywords` varchar(255) DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_tags`
--

LOCK TABLES `nv4_en_supplies_tags` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_tags` DISABLE KEYS */;
INSERT INTO `nv4_en_supplies_tags` VALUES (1,0,'trung-nghia','','','trung nghia'),(2,0,'màn-sáo','','','màn sáo'),(3,0,'electrical-store','','','Electrical store'),(4,0,'ship-supply','','','ship supply'),(5,0,'blue-ocean','','','blue ocean');
/*!40000 ALTER TABLE `nv4_en_supplies_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_tags_id`
--

DROP TABLE IF EXISTS `nv4_en_supplies_tags_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) NOT NULL,
  UNIQUE KEY `sid` (`id`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_tags_id`
--

LOCK TABLES `nv4_en_supplies_tags_id` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_tags_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_tags_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_supplies_topics`
--

DROP TABLE IF EXISTS `nv4_en_supplies_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_supplies_topics` (
  `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_supplies_topics`
--

LOCK TABLES `nv4_en_supplies_topics` WRITE;
/*!40000 ALTER TABLE `nv4_en_supplies_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_en_supplies_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_support`
--

DROP TABLE IF EXISTS `nv4_en_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idgroup` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `skype_item` varchar(100) NOT NULL,
  `skype_type` varchar(100) NOT NULL,
  `yahoo_item` varchar(100) NOT NULL,
  `yahoo_type` varchar(2) NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_support`
--

LOCK TABLES `nv4_en_support` WRITE;
/*!40000 ALTER TABLE `nv4_en_support` DISABLE KEYS */;
INSERT INTO `nv4_en_support` VALUES (1,'1','Mr. Jimmy &#40;Technical Dept.&#41;','+84 8 6262 5055','technical@blueoceanmarineco.com','nhimthulinh08','smallicon','nhimthulinh08','1',6),(2,'2','Ms. Teresa &#40;Supply Dept.&#41;','+84 8 6278 3977','purchasing@blueoceanmarineco.com','trungnghia','balloon','binhminh241','1',7),(3,'2','Mr. Will &#40;Supply Dept.&#41;','+84 8 6278 3977','purchasing@blueoceanmarineco.com','nhann4','balloon','nguyen.hoangnhan','1',8);
/*!40000 ALTER TABLE `nv4_en_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_support_group`
--

DROP TABLE IF EXISTS `nv4_en_support_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_support_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_support_group`
--

LOCK TABLES `nv4_en_support_group` WRITE;
/*!40000 ALTER TABLE `nv4_en_support_group` DISABLE KEYS */;
INSERT INTO `nv4_en_support_group` VALUES (1,'Technical Dept.',3),(2,'Supply Dept.',4);
/*!40000 ALTER TABLE `nv4_en_support_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_voting`
--

DROP TABLE IF EXISTS `nv4_en_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_voting` (
  `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `question` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_voting`
--

LOCK TABLES `nv4_en_voting` WRITE;
/*!40000 ALTER TABLE `nv4_en_voting` DISABLE KEYS */;
INSERT INTO `nv4_en_voting` VALUES (2,'Do you know about Nukeviet 3?','',1,1,'6',1275318563,0,1),(3,'What are you interested in open source?','',1,1,'6',1275318563,0,1);
/*!40000 ALTER TABLE `nv4_en_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_en_voting_rows`
--

DROP TABLE IF EXISTS `nv4_en_voting_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_en_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vid` (`vid`,`title`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_en_voting_rows`
--

LOCK TABLES `nv4_en_voting_rows` WRITE;
/*!40000 ALTER TABLE `nv4_en_voting_rows` DISABLE KEYS */;
INSERT INTO `nv4_en_voting_rows` VALUES (5,2,'A whole new sourcecode for the web.','',0),(6,2,'Open source, free to use.','',0),(7,2,'Use of xHTML, CSS and Ajax support','',0),(8,2,'All the comments on','',0),(9,3,'constantly improved, modified by the whole world.','',0),(10,3,'To use the free of charge.','',0),(11,3,'The freedom to explore, modify at will.','',0),(12,3,'Match to learning and research because the freedom to modify at will.','',0),(13,3,'All comments on','',0);
/*!40000 ALTER TABLE `nv4_en_voting_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_extension_files`
--

DROP TABLE IF EXISTS `nv4_extension_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_extension_files`
--

LOCK TABLES `nv4_extension_files` WRITE;
/*!40000 ALTER TABLE `nv4_extension_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_extension_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_googleplus`
--

DROP TABLE IF EXISTS `nv4_googleplus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_googleplus` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `idprofile` varchar(25) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  UNIQUE KEY `idprofile` (`idprofile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_googleplus`
--

LOCK TABLES `nv4_googleplus` WRITE;
/*!40000 ALTER TABLE `nv4_googleplus` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_googleplus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_groups`
--

DROP TABLE IF EXISTS `nv4_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_groups` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `content` text,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `publics` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `ktitle` (`title`,`idsite`),
  KEY `exp_time` (`exp_time`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_groups`
--

LOCK TABLES `nv4_groups` WRITE;
/*!40000 ALTER TABLE `nv4_groups` DISABLE KEYS */;
INSERT INTO `nv4_groups` VALUES (1,'Super admin','Super Admin','',1439973638,0,0,1,1,0,1,0),(2,'General admin','General Admin','',1439973638,0,0,2,1,0,0,0),(3,'Module admin','Module Admin','',1439973638,0,0,3,1,0,0,0),(4,'Users','Users','',1439973638,0,0,4,1,0,2,0),(5,'Guest','Guest','',1439973638,0,0,5,1,0,0,0),(6,'All','All','',1439973638,0,0,6,1,0,0,0);
/*!40000 ALTER TABLE `nv4_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_groups_users`
--

DROP TABLE IF EXISTS `nv4_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`group_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_groups_users`
--

LOCK TABLES `nv4_groups_users` WRITE;
/*!40000 ALTER TABLE `nv4_groups_users` DISABLE KEYS */;
INSERT INTO `nv4_groups_users` VALUES (1,1,'0');
/*!40000 ALTER TABLE `nv4_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_language`
--

DROP TABLE IF EXISTS `nv4_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_language` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_key` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filelang` (`idfile`,`lang_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_language`
--

LOCK TABLES `nv4_language` WRITE;
/*!40000 ALTER TABLE `nv4_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_language_file`
--

DROP TABLE IF EXISTS `nv4_language_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) NOT NULL,
  `admin_file` varchar(255) NOT NULL DEFAULT '0',
  `langtype` varchar(50) NOT NULL,
  PRIMARY KEY (`idfile`),
  UNIQUE KEY `module` (`module`,`admin_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_language_file`
--

LOCK TABLES `nv4_language_file` WRITE;
/*!40000 ALTER TABLE `nv4_language_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_language_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_logs`
--

DROP TABLE IF EXISTS `nv4_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) NOT NULL,
  `module_name` varchar(150) NOT NULL,
  `name_key` varchar(255) NOT NULL,
  `note_action` text NOT NULL,
  `link_acess` varchar(255) DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_logs`
--

LOCK TABLES `nv4_logs` WRITE;
/*!40000 ALTER TABLE `nv4_logs` DISABLE KEYS */;
INSERT INTO `nv4_logs` VALUES (1,'en','login','[trungnghiack@gmail.com] Login',' Client IP:::1','',0,1439973735),(2,'en','upload','Upload file','uploads/logo.png','',1,1439973893),(3,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1439975651),(4,'en','modules','Add virtual module our_business','','',1,1439977178),(5,'en','modules','Setup new module our-business','','',1,1439977190),(6,'en','modules','Edit modules &ldquo;our-business&rdquo;','','',1,1439977230),(7,'en','modules','Setup new module home','','',1,1439977336),(8,'en','modules','Edit modules &ldquo;home&rdquo;','','',1,1439977350),(9,'en','themes','Edit block','Name : Menu Site','',1,1439977546),(10,'en','modules','Order module: home','16 -> 1','',1,1439977585),(11,'en','modules','Order module: our-business','16 -> 3','',1,1439977597),(12,'en','modules','Order module: contact','16 -> 5','',1,1439977606),(13,'en','modules','Setup new module slider','','',1,1439987546),(14,'en','modules','Edit modules &ldquo;slider&rdquo;','','',1,1439987564),(15,'en','slider','Add categories','Banner','',1,1439987593),(16,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-1.jpg','',1,1439987675),(17,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-2.jpg','',1,1439987676),(18,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-3.jpg','',1,1439987677),(19,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-4.jpg','',1,1439987678),(20,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-5.jpg','',1,1439987680),(21,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-6.jpg','',1,1439987681),(22,'en','upload','Upload file','uploads/slider/2015_08/vat-tu-hang-hai-banner-7.jpg','',1,1439987682),(23,'en','themes','Edit block','Name : Banner','',1,1439987935),(24,'en','themes','Edit block','Name : Contact now','',1,1439988913),(25,'en','themes','Edit block','Name : Contact now','',1,1439989440),(26,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1439989833),(27,'en','upload','Upload file','uploads/our-business/ship_repair.png','',1,1439990255),(28,'en','upload','Upload file','uploads/our-business/ship_service.png','',1,1439990256),(29,'en','upload','Upload file','uploads/our-business/ship_supply.png','',1,1439990256),(30,'en','our-business','Add categories','Ship supply','',1,1439990275),(31,'en','our-business','Add categories','Ship repair','',1,1439990340),(32,'en','our-business','Add categories','Ship service','',1,1439990370),(33,'en','themes','Edit block','Name : Our business','',1,1439990629),(34,'en','about','Delete','ID: 1','',1,1439993098),(35,'en','about','Delete','ID: 2','',1,1439993101),(36,'en','upload','Upload file','uploads/about/70105290-126322sm.jpg','',1,1439993267),(37,'en','upload','Upload file','uploads/about/sci.jpg','',1,1439993484),(38,'en','about','Add',' ','',1,1439993578),(39,'en','themes','Edit block','Name : About us','',1,1439993647),(40,'en','about','Edit','ID: 3','',1,1439994622),(41,'en','slider','Add categories','Đối tác','',1,1439995468),(42,'en','upload','Upload file','uploads/slider/2015_08/dt1.png','',1,1439995521),(43,'en','upload','Upload file','uploads/slider/2015_08/dt2.png','',1,1439995521),(44,'en','upload','Upload file','uploads/slider/2015_08/dt3.png','',1,1439995521),(45,'en','upload','Upload file','uploads/slider/2015_08/dt4.png','',1,1439995522),(46,'en','upload','Upload file','uploads/slider/2015_08/dt5.png','',1,1439995522),(47,'en','upload','Upload file','uploads/slider/2015_08/dt6.png','',1,1439995522),(48,'en','themes','Add block','Name : We are the Distributor of the following brands','',1,1439995727),(49,'en','themes','Edit block','Name : Main categories','',1,1439997096),(50,'en','themes','Edit block','Name : Our business','',1,1439997327),(51,'en','themes','Edit block','Name : Copyright','',1,1439999776),(52,'en','modules','Setup new module support','','',1,1440001506),(53,'en','modules','Edit modules &ldquo;support&rdquo;','','',1,1440001521),(54,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440002171),(55,'en','support','Sửa nhóm nhân viên','nsupportid 1','',1,1440002211),(56,'en','support','Thêm nhân viên',' ','',1,1440002249),(57,'en','themes','Edit block','Name : Support Online','',1,1440002324),(58,'en','themes','Edit block','Name : Support Online','',1,1440002355),(59,'en','login','[admin] Login',' Client IP:::1','',0,1440010083),(60,'en','our-business','Add categories','Provision','',1,1440011001),(61,'en','our-business','Add categories','Pipe Valve','',1,1440011023),(62,'en','our-business','Add categories','Electrical store','',1,1440011038),(63,'en','our-business','Add categories','Rubber Packing','',1,1440011055),(64,'en','our-business','Add categories','Deck Enginer Store','',1,1440011069),(65,'en','our-business','Add categories','JIS air pipe vent heads','',1,1440011085),(66,'en','our-business','Add categories','Safety Equipment','',1,1440011097),(67,'en','our-business','Add categories','Charts Publications','',1,1440011130),(68,'en','our-business','Add categories','Oils, lubricants','',1,1440011150),(69,'en','our-business','Add categories','Paints and Chemicals','',1,1440011164),(70,'en','our-business','Add categories','Repair','',1,1440011199),(71,'en','upload','Upload file','uploads/our-business/2015_08/6-14115440817.jpg','',1,1440011381),(72,'en','our-business','Add a new article','Provision','',1,1440011432),(73,'en','our-business','Edit article','Provision','',1,1440011770),(74,'en','themes','Layout setup theme: \"default\"','','',1,1440012969),(75,'en','themes','Add block','Name : Menu Business','',1,1440013095),(76,'en','themes','Edit block','Name : Our Business','',1,1440015819),(77,'en','themes','Update position of block','reset position all block','',1,1440016008),(78,'en','themes','Edit block','Name : Menu Site','',1,1440017147),(79,'en','login','[admin] Login',' Client IP:::1','',0,1440021283),(80,'en','our-business','Delete topics and articles','Repair','',1,1440021902),(81,'en','our-business','Delete topics and articles','Oils, lubricants','',1,1440021919),(82,'en','our-business','Delete topics and articles','Charts Publications','',1,1440021922),(83,'en','our-business','Delete topics and articles','Safety Equipment','',1,1440021924),(84,'en','our-business','Delete topics and articles','JIS air pipe vent heads','',1,1440021927),(85,'en','our-business','Delete topics and articles','Deck Enginer Store','',1,1440021929),(86,'en','our-business','Delete topics and articles','Rubber Packing','',1,1440021930),(87,'en','our-business','Delete topics and articles','Electrical store','',1,1440021932),(88,'en','our-business','Delete topics and articles','Pipe Valve','',1,1440021934),(89,'en','our-business','Delete topics and articles','Paints and Chemicals','',1,1440021940),(90,'en','our-business','Edit article','Provision','',1,1440021972),(91,'en','our-business','Delete topics and articles','Provision','',1,1440021984),(92,'en','upload','Upload file','uploads/our-business/2015_08/1-141154394130-1.jpg','',1,1440022067),(93,'en','upload','Upload file','uploads/our-business/2015_08/1-141154394130.jpg','',1,1440022068),(94,'en','upload','Upload file','uploads/our-business/2015_08/3-141154394152.jpg','',1,1440022068),(95,'en','upload','Upload file','uploads/our-business/2015_08/4-141154394153.jpg','',1,1440022069),(96,'en','upload','Upload file','uploads/our-business/2015_08/5-141154394144-1.jpg','',1,1440022069),(97,'en','upload','Upload file','uploads/our-business/2015_08/5-141154394144.jpg','',1,1440022070),(98,'en','upload','Upload file','uploads/our-business/2015_08/6-14115440817_1.jpg','',1,1440022070),(99,'en','upload','Upload file','uploads/our-business/2015_08/6-141154400540.jpg','',1,1440022071),(100,'en','upload','Upload file','uploads/our-business/2015_08/egg-141154400572.jpg','',1,1440022072),(101,'en','our-business','Add a new article','Pipe Valve','',1,1440022115),(102,'en','our-business','Add a new article','Electrical store','',1,1440022182),(103,'en','our-business','Add a new article','Rubber Packing','',1,1440022221),(104,'en','our-business','Add a new article','Deck Enginer Store','',1,1440022265),(105,'en','our-business','Add a new article','JIS air pipe vent heads','',1,1440022327),(106,'en','our-business','Add a new article','Repair','',1,1440022407),(107,'en','our-business','Edit article','JIS air pipe vent heads','',1,1440032055),(108,'en','themes','Edit block','Name : We are the Distributor of the following brands','',1,1440032884),(109,'en','login','[admin] Leave Administration',' Client IP:::1','',0,1440033123),(110,'en','login','[admin] Login',' Client IP:::1','',0,1440033385),(111,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440033394),(112,'en','login','[admin] Leave Administration',' Client IP:::1','',0,1440034200),(113,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1440747715),(114,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440747745),(115,'en','users','log_add_user','userid 2','',1,1440747988),(116,'en','authors','Add an Administrator','Username: hoangnhan','',1,1440748015),(117,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440750436),(118,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440751184),(119,'en','upload','Upload file','uploads/our-business/2015_08/moi.jpg','',1,1440753023),(120,'en','our-business','Add a new article','trung nghia','',1,1440754353),(121,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440754453),(122,'en','our-business','Add a new article','trung nghia','',1,1440754485),(123,'en','our-business','Add a new article','trung nghia','',1,1440754907),(124,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440754928),(125,'en','our-business','Add a new article','k hieu','',1,1440755047),(126,'en','our-business','Delete article','Sdf','',1,1440755296),(127,'en','our-business','Delete article','k hieu','',1,1440755325),(128,'en','our-business','Delete article','trung nghia','',1,1440755364),(129,'en','news','Delete article','NukeViet 3.0 - New CMS for News site','',1,1440755399),(130,'en','upload','Upload file','uploads/news/2015_08/1-141154394130-1.jpg','',1,1440755442),(131,'en','upload','Upload file','uploads/news/2015_08/1-141154394130.jpg','',1,1440755442),(132,'en','upload','Upload file','uploads/news/2015_08/3-141154394152.jpg','',1,1440755442),(133,'en','upload','Upload file','uploads/news/2015_08/4-141154394153.jpg','',1,1440755443),(134,'en','upload','Upload file','uploads/news/2015_08/5-141154394144-1.jpg','',1,1440755443),(135,'en','upload','Upload file','uploads/news/2015_08/5-141154394144.jpg','',1,1440755444),(136,'en','upload','Upload file','uploads/news/2015_08/6-14115440817.jpg','',1,1440755444),(137,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440755792),(138,'en','our-business','Delete article','trung nghia','',1,1440755800),(139,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440756066),(140,'en','our-business','Delete article','trung nghia','',1,1440756074),(141,'en','our-business','Add a new article','Provisionfdf','',1,1440756097),(142,'en','our-business','Delete article','Provisionfdf','',1,1440756127),(143,'en','our-business','Add a new article','sdfsd','',1,1440756155),(144,'en','our-business','Delete article','sdfsd','',1,1440756161),(145,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440756308),(146,'en','our-business','Add a new article','sfda','',1,1440756329),(147,'en','our-business','Add a new article','sdfsd','',1,1440756469),(148,'en','our-business','Add a new article','sds','',1,1440756583),(149,'en','our-business','Delete article','sds','',1,1440756589),(150,'en','our-business','Delete article','sdfsd','',1,1440756592),(151,'en','our-business','Delete article','sfda','',1,1440756595),(152,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440756918),(153,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440757038),(154,'en','our-business','Add a new article','sdfsd','',1,1440757405),(155,'en','our-business','Add a new article','trung nghia','',1,1440758079),(156,'en','our-business','Add a new article','sdfsd','',1,1440758158),(157,'en','our-business','Add a new article','sdfsd','',1,1440758162),(158,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1440812169),(159,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440812181),(160,'en','our-business','Delete article','sdfsd','',1,1440812195),(161,'en','our-business','Delete article','sdfsd','',1,1440812205),(162,'en','our-business','Add a new article','hiihi','',1,1440812277),(163,'en','our-business','Add a new article','hiihi','',1,1440812281),(164,'en','our-business','Delete article','hiihi','',1,1440812297),(165,'en','our-business','Delete article','hiihi','',1,1440812300),(166,'en','login','[hoangnhan] Login',' Client IP:14.169.129.151','',0,1440819381),(167,'en','users','log_edit_user','userid 2','',2,1440819424),(168,'en','login','[nhannh] Leave Administration',' Client IP:14.169.129.151','',0,1440819434),(169,'en','login','[nhannh] Login',' Client IP:14.169.129.151','',0,1440819446),(170,'en','themes','Edit block','Name : Copyright','',2,1440820007),(171,'en','news','Add a new article','sdf','',1,1440823332),(172,'en','news','Add a new article','sdf','',1,1440823340),(173,'en','news','Add a new article','sdf','',1,1440823343),(174,'en','news','Delete article','sdf','',1,1440823360),(175,'en','news','Delete article','sdf','',1,1440823368),(176,'en','news','Delete article','sdf','',1,1440823376),(177,'en','login','[nhannh] Login',' Client IP:116.102.246.16','',0,1440907977),(178,'en','login','[nhannh] Login',' Client IP:116.102.246.16','',0,1440924745),(179,'en','login','[nhannh] Leave Administration',' Client IP:116.102.246.16','',0,1440924901),(180,'en','login','[admin] Login',' Client IP:116.102.246.16','',0,1440924920),(181,'en','login','[admin] Leave Administration',' Client IP:116.102.246.16','',0,1440925026),(182,'en','login','[nhannh] Login',' Client IP:116.102.246.16','',0,1440925040),(183,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-7.jpg','',2,1440925065),(184,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-6.jpg','',2,1440925065),(185,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-5.jpg','',2,1440925065),(186,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-4.jpg','',2,1440925065),(187,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-3.jpg','',2,1440925065),(188,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-2.jpg','',2,1440925065),(189,'en','upload','Delete file','uploads/slider/2015_08/vat-tu-hang-hai-banner-1.jpg','',2,1440925065),(190,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-1.jpg','',2,1440925076),(191,'en','slider','Edit categories','banner-1','',2,1440925081),(192,'en','slider','Edit categories','banner-2','',2,1440925134),(193,'en','slider','Edit categories','banner-3','',2,1440925148),(194,'en','slider','Edit categories','banner-4','',2,1440925187),(195,'en','slider','Edit categories','banner-5','',2,1440925203),(196,'en','slider','Edit categories','banner-5','',2,1440925220),(197,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-2.jpg','',2,1440927719),(198,'en','slider','Edit categories','banner-2','',2,1440927724),(199,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-3.jpg','',2,1440929348),(200,'en','slider','Edit categories','banner-3','',2,1440929352),(201,'en','login','[nhannh] Login',' Client IP:116.102.246.16','',0,1440942142),(202,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-4.jpg','',2,1440945002),(203,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-5.jpg','',2,1440945002),(204,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-6.jpg','',2,1440945003),(205,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-7.jpg','',2,1440945004),(206,'en','slider','Edit categories','banner-4','',2,1440945022),(207,'en','slider','Edit categories','banner-5','',2,1440945076),(208,'en','slider','Edit categories','banner-1','',2,1440945138),(209,'en','themes','Edit block','Name : Banner','',2,1440945192),(210,'en','slider','Edit categories','banner-5','',2,1440945248),(211,'en','slider','Edit categories','banner-3','',2,1440945260),(212,'en','slider','Edit categories','banner-6','',2,1440945276),(213,'en','slider','Edit categories','banner-3','',2,1440945306),(214,'en','upload','Delete file','uploads/slider/2015_08/blue-ocean-banner-6.jpg','',2,1440945474),(215,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-banner-6.jpg','',2,1440945481),(216,'en','slider','Edit categories','banner-3','',2,1440945486),(217,'en','upload','Delete file','uploads/slider/2015_08/dt3.png','',2,1440951032),(218,'en','upload','Delete file','uploads/slider/2015_08/dt4.png','',2,1440951032),(219,'en','upload','Delete file','uploads/slider/2015_08/dt5.png','',2,1440951032),(220,'en','upload','Delete file','uploads/slider/2015_08/dt6.png','',2,1440951032),(221,'en','upload','Delete file','uploads/slider/2015_08/dt1.png','',2,1440951032),(222,'en','upload','Delete file','uploads/slider/2015_08/dt2.png','',2,1440951032),(223,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-1.jpg','',2,1440951042),(224,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-2.jpg','',2,1440951042),(225,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-3.jpg','',2,1440951042),(226,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-4.jpg','',2,1440951043),(227,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-5.jpg','',2,1440951043),(228,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-6.jpg','',2,1440951043),(229,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-7.jpg','',2,1440951043),(230,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-8.jpg','',2,1440951043),(231,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-9.jpg','',2,1440951043),(232,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-10.jpg','',2,1440951043),(233,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-11.jpg','',2,1440951043),(234,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-12.jpg','',2,1440951043),(235,'en','slider','Edit categories','logo-brands-1','',2,1440951060),(236,'en','slider','Edit categories','logo-brands-2','',2,1440951080),(237,'en','slider','Edit categories','logo-brands-3','',2,1440951098),(238,'en','slider','Edit categories','logo-brands-4','',2,1440951121),(239,'en','slider','Edit categories','logo-brands-5','',2,1440951138),(240,'en','slider','Edit categories','logo-brands-6','',2,1440951160),(241,'en','themes','Edit block','Name : We are the Distributor of the following brands','',2,1440951416),(242,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-13.jpg','',2,1440954062),(243,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-14.jpg','',2,1440954062),(244,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-15.jpg','',2,1440954062),(245,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-16.jpg','',2,1440954062),(246,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-17.jpg','',2,1440954063),(247,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-18.jpg','',2,1440954063),(248,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-19.jpg','',2,1440954063),(249,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-20.jpg','',2,1440954063),(250,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-21.jpg','',2,1440954174),(251,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-22.jpg','',2,1440954189),(252,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-23.jpg','',2,1440954189),(253,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-24.jpg','',2,1440954189),(254,'en','upload','Upload file','uploads/slider/2015_08/blue-ocean-logo-25.jpg','',2,1440954189),(255,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1440984496),(256,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440984508),(257,'en','themes','Edit block','Name : Copyright','',1,1440985195),(258,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440986881),(259,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1440989299),(260,'en','themes','Edit block','Name : Contact now','',1,1440989607),(261,'en','themes','Layout setup theme: \"default\"','','',1,1440990199),(262,'en','modules','Delete module \"about\"','','',1,1440992807),(263,'en','modules','Add virtual module about','','',1,1440992819),(264,'en','modules','Setup new module about','','',1,1440992824),(265,'en','modules','Edit modules &ldquo;about&rdquo;','','',1,1440992837),(266,'en','upload','Upload file','uploads/about/70105290-126322sm.jpg','',1,1440992905),(267,'en','about','Add',' ','',1,1440992972),(268,'en','themes','Edit block','Name : Menu Site','',1,1440993005),(269,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440993033),(270,'en','page','Add',' ','',1,1440993302),(271,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440993407),(272,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440993411),(273,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440994886),(274,'en','modules','Delete module \"about\"','','',1,1440994909),(275,'en','modules','Reinstall module \"page\"','','',1,1440994921),(276,'en','page','Add',' ','',1,1440994936),(277,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1440995904),(278,'en','modules','Reinstall module \"page\"','','',1,1440995919),(279,'en','page','Add',' ','',1,1440995940),(280,'en','modules','Reinstall module \"page\"','','',1,1440996055),(281,'en','page','Add',' ','',1,1440996088),(282,'en','themes','Edit block','Name : Menu Site','',1,1441003399),(283,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441004017),(284,'en','page','Delete','ID: 1','',1,1441004485),(285,'en','modules','Add virtual module about','','',1,1441004505),(286,'en','modules','Setup new module about','','',1,1441004509),(287,'en','modules','Edit modules &ldquo;about&rdquo;','','',1,1441004522),(288,'en','upload','Upload file','uploads/about/70105290-126322sm.jpg','',1,1441004602),(289,'en','about','Add',' ','',1,1441004637),(290,'en','themes','Edit block','Name : Menu Site','',1,1441004659),(291,'en','themes','Layout setup theme: \"default\"','','',1,1441004722),(292,'en','themes','Add block','Name : About','',1,1441004873),(293,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441005521),(294,'en','themes','Edit block','Name : Menu Business','',1,1441005607),(295,'en','themes','Edit block','Name : Menu Business','',1,1441005660),(296,'en','themes','Edit block','Name : Menu Business','',1,1441005749),(297,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441005871),(298,'en','themes','Edit block','Name : Menu Business','',1,1441006039),(299,'en','themes','Edit block','Name : Menu Business','',1,1441006095),(300,'en','themes','Edit block','Name : Menu Business','',1,1441006115),(301,'en','themes','Edit block','Name : Menu Business','',1,1441006306),(302,'en','themes','Edit block','Name : Menu Site','',1,1441008004),(303,'en','modules','Order module: about','18 -> 2','',1,1441008051),(304,'en','themes','Edit block','Name : Banner','',1,1441008409),(305,'en','themes','Edit block','Name : Contact now','',1,1441008435),(306,'en','our-business','Delete article','sdfsd','',1,1441009953),(307,'en','our-business','Delete article','trung nghia','',1,1441009964),(308,'en','our-business','Edit article','Repair','',1,1441011076),(309,'en','themes','Add block','Name : Support','',1,1441013372),(310,'en','themes','Add block','Name : Address contact','',1,1441013680),(311,'en','themes','Edit block','Name : Support','',1,1441013836),(312,'en','themes','Edit block','Name : Address contact','',1,1441013855),(313,'en','themes','Edit block','Name : Support','',1,1441013897),(314,'en','themes','Edit block','Name : Address contact','',1,1441014005),(315,'en','contact','log_edit_row','id: 1 Consumer Care Division','',1,1441014128),(316,'en','upload','Delete file','uploads/logo.png','',1,1441014428),(317,'en','upload','Upload file','uploads/logo.png','',1,1441014435),(318,'en','themes','Edit block','Name : Our Business','',1,1441015257),(319,'en','our-business','Add a new article','sfs','',1,1441017306),(320,'en','our-business','Delete article','sfs','',1,1441017318),(321,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441070458),(322,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441071800),(323,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441073604),(324,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441074047),(325,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441074441),(326,'en','modules','Delete module \"our-business\"','','',1,1441075107),(327,'en','modules','Reinstall module \"news\"','','',1,1441075132),(328,'en','modules','Reinstall module \"news\"','','',1,1441075222),(329,'en','news','Add categories','Tin giải trí','',1,1441075254),(330,'en','news','Add categories','Tin công ty','',1,1441075265),(331,'en','news','Add categories','Tin tổng hợp','',1,1441075277),(332,'en','upload','Upload file','uploads/news/2015_09/dong-nhi9.jpg','',1,1441075651),(333,'en','upload','Upload file','uploads/news/2015_09/hinh-anh-hot-girl-tam-tit-2.jpg','',1,1441075651),(334,'en','upload','Upload file','uploads/news/2015_09/images-1.jpg','',1,1441075652),(335,'en','upload','Upload file','uploads/news/2015_09/images.jpg','',1,1441075653),(336,'en','upload','Upload file','uploads/news/2015_09/img-4193-1371951689294.jpg','',1,1441075653),(337,'en','news','Add a new article','Lập trình viên Lê Thúc Vinh kết duyên cùng hotgirl Tâm Tít','',1,1441075761),(338,'en','modules','Add virtual module our_business','','',1,1441075825),(339,'en','modules','Setup new module our-business','','',1,1441075829),(340,'en','modules','Edit modules &ldquo;our-business&rdquo;','','',1,1441075851),(341,'en','news','Edit article','Hotgirl Tâm Tít vạn người mê','',1,1441076359),(342,'en','upload','Upload file','uploads/our-business/images397497_ship_03.jpg','',1,1441076484),(343,'en','upload','Upload file','uploads/our-business/nguyen-nhan-tau-thuyen-bi-ha.jpg','',1,1441076485),(344,'en','upload','Upload file','uploads/our-business/tau.jpg','',1,1441076485),(345,'en','our-business','Add categories','Ship supply','',1,1441076537),(346,'en','our-business','Add categories','Ship repair','',1,1441076583),(347,'en','our-business','Add categories','Ship service','',1,1441076607),(348,'en','upload','Upload file','uploads/our-business/2015_09/1-141154394130.jpg','',1,1441076802),(349,'en','upload','Upload file','uploads/our-business/2015_09/3-141154394152.jpg','',1,1441076803),(350,'en','upload','Upload file','uploads/our-business/2015_09/4-141154394153.jpg','',1,1441076803),(351,'en','upload','Upload file','uploads/our-business/2015_09/6-14115440817.jpg','',1,1441076803),(352,'en','upload','Upload file','uploads/our-business/2015_09/8-14137854309.jpg','',1,1441076804),(353,'en','upload','Upload file','uploads/our-business/2015_09/cap-hang-phao-2-14133477251.jpg','',1,1441076805),(354,'en','upload','Upload file','uploads/our-business/2015_09/dsc03333-14138747252.jpg','',1,1441076806),(355,'en','upload','Upload file','uploads/our-business/2015_09/moi.jpg','',1,1441076806),(356,'en','our-business','Add a new article','Provision','',1,1441076858),(357,'en','themes','Add block','Name : Our-business','',1,1441076946),(358,'en','themes','Add block','Name : Menu Our business','',1,1441077012),(359,'en','themes','Update position of block','reset position all block','',1,1441077095),(360,'en','upload','Delete file','uploads/our-business/images397497_ship_03.jpg','',1,1441077592),(361,'en','upload','Delete file','uploads/our-business/nguyen-nhan-tau-thuyen-bi-ha.jpg','',1,1441077592),(362,'en','upload','Delete file','uploads/our-business/tau.jpg','',1,1441077600),(363,'en','upload','Upload file','uploads/our-business/untitled-1.png','',1,1441077619),(364,'en','upload','Upload file','uploads/our-business/untitled-31.png','',1,1441077619),(365,'en','upload','Upload file','uploads/our-business/untitleeed-1.png','',1,1441077619),(366,'en','upload','Delete file','uploads/our-business/untitleeed-1.png','',1,1441077732),(367,'en','upload','Upload file','uploads/our-business/untitlessdd-1.png','',1,1441077742),(368,'en','our-business','Add a new article','trung nghĩa www','',1,1441078122),(369,'en','themes','Layout setup theme: \"default\"','','',1,1441079189),(370,'en','themes','Layout setup theme: \"default\"','','',1,1441080993),(371,'en','themes','Layout setup theme: \"default\"','','',1,1441082797),(372,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441082925),(373,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441089486),(374,'en','news','Add a new article','Hotgirl vạn người mê Tâm Tít','',1,1441092399),(375,'en','news','Delete article','Hotgirl Tâm Tít vạn người mê','',1,1441092418),(376,'en','modules','Order module: our-business','18 -> 3','',1,1441095260),(377,'en','upload','Upload file','uploads/our-business/ship_repair.png','',1,1441095296),(378,'en','upload','Upload file','uploads/our-business/ship_service.png','',1,1441095297),(379,'en','upload','Upload file','uploads/our-business/ship_supply.png','',1,1441095297),(380,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441100265),(381,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441102069),(382,'en','upload','Delete file','uploads/logo.png','',1,1441103604),(383,'en','upload','Upload file','uploads/logo.png','',1,1441103642),(384,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441103652),(385,'en','login','[nhannh] Login',' Client IP:14.169.129.151','',0,1441103961),(386,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441105454),(387,'en','login','[nhannh] Leave Administration',' Client IP:14.169.129.151','',0,1441106555),(388,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441106569),(389,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441106584),(390,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441107228),(391,'en','login','[nhannh] Login',' Client IP:116.102.230.61','',0,1441154850),(392,'en','login','[nhannh] Login',' Client IP:116.102.230.61','',0,1441176972),(393,'en','themes','Edit block','Name : INFORMATION','',2,1441177284),(394,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441177514),(395,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441177566),(396,'en','themes','Edit block','Name : Contact now','',2,1441178033),(397,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441179352),(398,'en','themes','Edit block','Name : Contact now','',2,1441186825),(399,'en','about','Edit','ID: 1','',2,1441186903),(400,'en','themes','Edit block','Name : Contact now','',2,1441187114),(401,'en','themes','Edit block','Name : Contact now','',2,1441187287),(402,'en','themes','Edit block','Name : Contact now','',2,1441187403),(403,'en','themes','Edit block','Name : Contact now','',2,1441187468),(404,'en','themes','Edit block','Name : Contact now','',2,1441187560),(405,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441188658),(406,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441188719),(407,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441189936),(408,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441190022),(409,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441190161),(410,'en','upload','Upload file','uploads/call60.png','',2,1441191297),(411,'en','upload','Upload file','uploads/email103.png','',2,1441191297),(412,'en','upload','Upload file','uploads/home173.png','',2,1441191298),(413,'en','upload','Upload file','uploads/iphone26.png','',2,1441191298),(414,'en','upload','Upload file','uploads/paper6.png','',2,1441191298),(415,'en','upload','Upload file','uploads/pin66.png','',2,1441191298),(416,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191306),(417,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191342),(418,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191499),(419,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191547),(420,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191756),(421,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191790),(422,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441191948),(423,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441192073),(424,'en','upload','Upload file','uploads/web58.png','',2,1441192273),(425,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441192679),(426,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441192994),(427,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441193220),(428,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441193386),(429,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441193843),(430,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441193886),(431,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441193926),(432,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441194379),(433,'en','login','[nhannh] Login',' Client IP:116.102.230.61','',0,1441205410),(434,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441205610),(435,'en','themes','Edit block','Name : Copyright','',2,1441206039),(436,'en','login','[admin] Login',' Client IP:183.80.72.91','',0,1441206283),(437,'en','about','Edit','ID: 1','',2,1441206389),(438,'en','support','Sửa nhân viên','supportid 1','',2,1441206736),(439,'en','support','Sửa nhân viên','supportid 1','',2,1441206793),(440,'en','support','Sửa nhân viên','supportid 2','',2,1441206867),(441,'en','support','Sửa nhóm nhân viên','nsupportid 1','',2,1441206887),(442,'en','support','Thêm nhóm nhân viên',' ','',2,1441206900),(443,'en','support','Thêm nhân viên',' ','',2,1441206960),(444,'en','support','Sửa nhân viên','supportid 2','',2,1441206971),(445,'en','support','Sửa nhân viên','supportid 2','',2,1441207090),(446,'en','support','Sửa nhân viên','supportid 3','',2,1441207100),(447,'en','news','Delete topics and articles','Tin giải trí','',2,1441207330),(448,'en','news','Delete topics and articles','Tin tổng hợp','',2,1441207333),(449,'en','news','Delete topics and articles','Tin công ty','',2,1441207336),(450,'en','news','Add categories','News','',2,1441207346),(451,'en','our-business','Delete article','trung nghĩa www','',2,1441207384),(452,'en','our-business','Delete article','Provision','',2,1441207386),(453,'en','our-business','Add a new article','trung nghĩa - cấm xoá Nhân e.hehe','',1,1441207527),(454,'en','our-business','Add a new article','Provision','',2,1441207605),(455,'en','our-business','Edit article','trung nghĩa - cấm xoá Nhân e.hehe','',1,1441207673),(456,'en','our-business','Edit article','Provision','',2,1441208649),(457,'en','our-business','Edit article','Provision','',2,1441208702),(458,'en','our-business','Add a new article','Electrical store','',2,1441208857),(459,'en','news','Add categories','Events','',2,1441208947),(460,'en','our-business','Add a new article','sdfs','',1,1441209015),(461,'en','our-business','Delete article','sdfs','',1,1441209047),(462,'en','our-business','Add a new article','dfsdf','',1,1441209432),(463,'en','our-business','Delete article','dfsdf','',1,1441209451),(464,'en','our-business','Add a new article','sdfs','',1,1441209525),(465,'en','our-business','Delete article','sdfs','',1,1441209532),(466,'en','our-business','Delete article','trung nghĩa - cấm xoá Nhân e.hehe','',1,1441209610),(467,'en','upload','Delete file','uploads/news/2015_09/img-4193-1371951689294.jpg','',2,1441209792),(468,'en','upload','Delete file','uploads/news/2015_09/images.jpg','',2,1441209792),(469,'en','upload','Delete file','uploads/news/2015_09/images-1.jpg','',2,1441209792),(470,'en','upload','Delete file','uploads/news/2015_09/hinh-anh-hot-girl-tam-tit-2.jpg','',2,1441209792),(471,'en','upload','Delete file','uploads/news/2015_09/dong-nhi9.jpg','',2,1441209792),(472,'en','upload','Upload file','uploads/news/2015_09/viking-pic-300x199.jpg','',2,1441209799),(473,'en','news','Add a new article','VIKING Moves to Expand Australasian Activities','',2,1441209833),(474,'en','upload','Upload file','uploads/news/2015_09/viking-300x200.jpg','',2,1441209917),(475,'en','news','Add a new article','Viking acquires hook retrofit leader','',2,1441209938),(476,'en','upload','Upload file','uploads/news/2015_09/paper-ships-300x199.jpg','',2,1441209974),(477,'en','news','Add a new article','Nautilus comments on research that says people who work longer hours are at risk of stroke','',2,1441210036),(478,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441244592),(479,'en','themes','Add block','Name : ho tro','',1,1441246929),(480,'en','our-business','Edit article','Electrical store','',1,1441248792),(481,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441254804),(482,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441262745),(483,'en','themes','Layout setup theme: \"default\"','','',1,1441262795),(484,'en','themes','Layout setup theme: \"default\"','','',1,1441264598),(485,'en','contact','log_edit_row','id: 1 Consumer Care Division','',1,1441266124),(486,'en','contact','log_edit_row','id: 2 Technical Department','',1,1441266556),(487,'en','login','[nhannh] Login',' Client IP:14.169.129.151','',0,1441271436),(488,'en','our-business','Edit article','Electrical store','',2,1441272221),(489,'en','our-business','Edit article','Electrical store','',1,1441274523),(490,'en','our-business','Edit article','Electrical store','',1,1441275157),(491,'en','our-business','Edit article','Provision','',1,1441275169),(492,'en','our-business','Add a new article','sdfsd','',1,1441277299),(493,'en','our-business','Delete article','sdfsd','',1,1441277314),(494,'en','our-business','Edit article','Electrical store','',1,1441277345),(495,'en','login','[nhannh] Login',' Client IP:116.102.230.61','',0,1441288806),(496,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441288941),(497,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441288993),(498,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1441289308),(499,'en','about','Edit','ID: 1','',2,1441291083),(500,'en','about','Edit','ID: 1','',2,1441291519),(501,'en','about','Edit','ID: 1','',2,1441291803),(502,'en','about','Edit','ID: 1','',2,1441291986),(503,'en','login','[admin] Login',' Client IP:183.80.72.91','',0,1441295670),(504,'en','our-business','Edit article','Provision','',1,1441298454),(505,'en','our-business','Edit article','Provision','',1,1441298495),(506,'en','login','[admin] Login',' Client IP:::1','',0,1441315967),(507,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441315982),(508,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',1,1441316733),(509,'en','themes','Add block','Name : Contact Header','',1,1441318309),(510,'en','upload','Delete file','uploads/logo.png','',1,1441318988),(511,'en','upload','Upload file','uploads/logo.png','',1,1441319008),(512,'en','themes','Edit block','Name : Welcom','',1,1441321601),(513,'en','themes','Edit block','Name : Welcom','',1,1441322075),(514,'en','modules','Delete module \"our-business\"','','',1,1441323560),(515,'en','modules','Add virtual module supplies','','',1,1441323651),(516,'en','modules','Setup new module supplies','','',1,1441323656),(517,'en','modules','Edit modules &ldquo;supplies&rdquo;','','',1,1441323672),(518,'en','supplies','Add categories','Supplies','',1,1441323693),(519,'en','upload','Upload file','uploads/supplies/2015_09/1-141154394130.jpg','',1,1441324016),(520,'en','upload','Upload file','uploads/supplies/2015_09/3-141154394152.jpg','',1,1441324016),(521,'en','upload','Upload file','uploads/supplies/2015_09/4-141154394153.jpg','',1,1441324017),(522,'en','upload','Upload file','uploads/supplies/2015_09/5-141154394144.jpg','',1,1441324017),(523,'en','upload','Upload file','uploads/supplies/2015_09/6-14137853959.jpg','',1,1441324018),(524,'en','upload','Upload file','uploads/supplies/2015_09/6-141154400540.jpg','',1,1441324018),(525,'en','upload','Upload file','uploads/supplies/2015_09/7-14137854142.jpg','',1,1441324019),(526,'en','upload','Upload file','uploads/supplies/2015_09/8-14137854309.jpg','',1,1441324019),(527,'en','upload','Upload file','uploads/supplies/2015_09/cap-hang-phao-2-14133477251.jpg','',1,1441324022),(528,'en','upload','Upload file','uploads/supplies/2015_09/dsc03333-14138747252.jpg','',1,1441324024),(529,'en','upload','Upload file','uploads/supplies/2015_09/moi.jpg','',1,1441324025),(530,'en','supplies','Add a new article','Provision','',1,1441324131),(531,'en','supplies','Add a new article','Pipe Valve','',1,1441324177),(532,'en','supplies','Add a new article','Electrical store','',1,1441324206),(533,'en','supplies','Add a new article','Rubber Packing','',1,1441324237),(534,'en','supplies','Add a new article','Deck Enginer Store','',1,1441324266),(535,'en','supplies','Add a new article','JIS air pipe vent heads','',1,1441324291),(536,'en','supplies','Add a new article','Safety Equipment','',1,1441324317),(537,'en','supplies','Add a new article','Safety Equipment','',1,1441324414),(538,'en','supplies','Delete article','Safety Equipment','',1,1441324427),(539,'en','supplies','Add a new article','Charts Publications','',1,1441324454),(540,'en','supplies','Add a new article','Oils, lubricants','',1,1441324477),(541,'en','supplies','Add a new article','Paints and Chemicals','',1,1441324501),(542,'en','themes','Layout setup theme: \"default\"','','',1,1441324567),(543,'en','themes','Edit block','Name : Menu Site','',1,1441324590),(544,'en','modules','Order module: supplies','18 -> 3','',1,1441324601),(545,'en','themes','Add block','Name : Supplies','',1,1441324728),(546,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441332504),(547,'en','upload','Delete file','uploads/supplies/2015_09/moi.jpg','',1,1441334174),(548,'en','upload','Delete file','uploads/supplies/2015_09/dsc03333-14138747252.jpg','',1,1441334174),(549,'en','upload','Delete file','uploads/supplies/2015_09/cap-hang-phao-2-14133477251.jpg','',1,1441334174),(550,'en','upload','Delete file','uploads/supplies/2015_09/8-14137854309.jpg','',1,1441334174),(551,'en','upload','Delete file','uploads/supplies/2015_09/7-14137854142.jpg','',1,1441334174),(552,'en','upload','Delete file','uploads/supplies/2015_09/6-141154400540.jpg','',1,1441334174),(553,'en','upload','Delete file','uploads/supplies/2015_09/6-14137853959.jpg','',1,1441334174),(554,'en','upload','Delete file','uploads/supplies/2015_09/5-141154394144.jpg','',1,1441334174),(555,'en','upload','Delete file','uploads/supplies/2015_09/3-141154394152.jpg','',1,1441334174),(556,'en','upload','Delete file','uploads/supplies/2015_09/4-141154394153.jpg','',1,1441334174),(557,'en','upload','Delete file','uploads/supplies/2015_09/1-141154394130.jpg','',1,1441334174),(558,'en','upload','Upload file','uploads/supplies/2015_09/1-141154394130-1.jpg','',1,1441334222),(559,'en','upload','Upload file','uploads/supplies/2015_09/500x300_spirit.jpeg','',1,1441334222),(560,'en','upload','Upload file','uploads/supplies/2015_09/anh.jpg','',1,1441334223),(561,'en','upload','Upload file','uploads/supplies/2015_09/images.jpg','',1,1441334223),(562,'en','upload','Upload file','uploads/supplies/2015_09/leisure.jpg','',1,1441334223),(563,'en','upload','Upload file','uploads/supplies/2015_09/moi.jpg','',1,1441334224),(564,'en','upload','Upload file','uploads/supplies/2015_09/images-3.jpg','',1,1441334308),(565,'en','upload','Upload file','uploads/supplies/2015_09/leisure_1.jpg','',1,1441334308),(566,'en','upload','Upload file','uploads/supplies/2015_09/ship.jpg','',1,1441334308),(567,'en','supplies','Edit article','Oils, lubricants','',1,1441334354),(568,'en','supplies','Edit article','Paints and Chemicals','',1,1441334369),(569,'en','supplies','Edit article','Charts Publications','',1,1441334380),(570,'en','supplies','Edit article','Safety Equipment','',1,1441334393),(571,'en','supplies','Edit article','Rubber Packing','',1,1441334409),(572,'en','supplies','Edit article','Electrical store','',1,1441334423),(573,'en','supplies','Edit article','Pipe Valve','',1,1441334436),(574,'en','supplies','Edit article','Provision','',1,1441334452),(575,'en','supplies','Edit article','JIS air pipe vent heads','',1,1441334478),(576,'en','supplies','Edit article','Electrical store','',1,1441334513),(577,'en','supplies','Edit article','Deck Enginer Store','',1,1441334539),(578,'en','news','log_add_blockcat',' ','',1,1441335074),(579,'en','news','Edit article','Nautilus comments on research that says people who work longer hours are at risk of stroke','',1,1441335135),(580,'en','news','Edit article','Viking acquires hook retrofit leader','',1,1441335153),(581,'en','news','Edit article','Nautilus comments on research that says people who work longer hours are at risk of stroke','',1,1441335186),(582,'en','news','Edit article','VIKING Moves to Expand Australasian Activities','',1,1441335197),(583,'en','upload','Upload file','uploads/news/2015_09/_85358853_85358852.jpg','',1,1441335302),(584,'en','news','Add a new article','Hungary migrant stand-off continues','',1,1441335327),(585,'en','themes','Add block','Name : News','',1,1441335475),(586,'en','themes','Edit block','Name : Our business','',1,1441343943),(587,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441344384),(588,'en','login','[admin] Login',' Client IP:::1','',0,1441357574),(589,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441357600),(590,'en','supplies','Edit article','Oils, lubricants','',1,1441358432),(591,'en','themes','Layout setup theme: \"default\"','','',1,1441365383),(592,'en','themes','Add block','Name : Supplies','',1,1441365911),(593,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441366750),(594,'en','themes','Edit block','Name : Supplies','',1,1441368165),(595,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441431560),(596,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',1,1441431715),(597,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441590167),(598,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441590180),(599,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441590750),(600,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441590797),(601,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441590842),(602,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441591171),(603,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441591323),(604,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441591356),(605,'en','upload','Upload file','uploads/supplies/2015_09/2-14137853315.jpg','',1,1441592929),(606,'en','login','[nhannh] Login',' Client IP:14.169.129.151','',0,1441597950),(607,'en','about','Edit','ID: 1','',2,1441600078),(608,'en','about','Edit','ID: 1','',2,1441600327),(609,'en','about','Edit','ID: 1','',2,1441600347),(610,'en','supplies','Edit article','Provision','',2,1441600952),(611,'en','login','[admin] Login',' Client IP:14.169.129.151','',0,1441607705),(612,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441609829),(613,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441611632),(614,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441613436),(615,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441615240),(616,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441617045),(617,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441617484),(618,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441618433),(619,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441620236),(620,'en','login','[admin] Login',' Client IP:14.169.249.37','',0,1441860299),(621,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441860310),(622,'en','about','Edit','ID: 1','',1,1441860644),(623,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441861972),(624,'en','login','[admin] Login',' Client IP:14.169.249.37','',0,1441935675),(625,'en','themes','Add block','Name : Statistics','',1,1441935863),(626,'en','themes','Edit block','Name : Statistics','',1,1441936038),(627,'en','themes','Add block','Name : Support contact','',1,1441937084),(628,'en','themes','Edit block','Name : Support contact','',1,1441937164),(629,'en','supplies','Add categories','Ship repair','',1,1441939233),(630,'en','supplies','Add categories','Ship service','',1,1441939256),(631,'en','supplies','Add categories','Deck store','',1,1441943090),(632,'en','supplies','Add a new article','Pipe','',1,1441943121),(633,'en','supplies','Add a new article','Valve','',1,1441943135),(634,'en','themes','Edit block','Name : --','',1,1441943454),(635,'en','themes','Edit block','Name : Menu Supplies','',1,1441943537),(636,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1441943546),(637,'en','login','[admin] Login',' Client IP:14.169.249.37','',0,1441945020),(638,'en','supplies','Add a new article','Dfs','',1,1441945038),(639,'en','supplies','Delete article','Dfs','',1,1441945052),(640,'en','login','[nhannh] Login',' Client IP:14.169.249.37','',0,1442024313),(641,'en','upload','Upload file','uploads/slider/2015_09/ship-supply-banner-1.jpg','',2,1442024748),(642,'en','upload','Upload file','uploads/slider/2015_09/ship-supply-banner-2.jpg','',2,1442024749),(643,'en','upload','Upload file','uploads/slider/2015_09/ship-supply-banner-3.jpg','',2,1442024749),(644,'en','upload','Upload file','uploads/slider/2015_09/ship-supply-banner-4.jpg','',2,1442024749),(645,'en','slider','Edit categories','banner-4','',2,1442024760),(646,'en','slider','Edit categories','banner-3','',2,1442024774),(647,'en','slider','Edit categories','banner-2','',2,1442024785),(648,'en','slider','Edit categories','banner-1','',2,1442024794),(649,'en','slider','Edit categories','banner-7','',2,1442024891),(650,'en','slider','Edit categories','banner-6','',2,1442024908),(651,'en','slider','Edit categories','banner-5','',2,1442024917),(652,'en','login','[admin] Login',' Client IP:14.169.249.37','',0,1442119190),(653,'en','login','[nhannh] Login',' Client IP:116.102.244.65','',0,1442155889),(654,'en','users','log_edit_user','userid 2','',2,1442155952),(655,'en','login','[web24] Leave Administration',' Client IP:116.102.244.65','',0,1442155956),(656,'en','login','[web24] Login',' Client IP:116.102.244.65','',0,1442155970),(657,'en','themes','Edit block','Name : Support contact','',2,1442157166),(658,'en','themes','Edit block','Name : Support contact','',2,1442157301),(659,'en','themes','Edit block','Name : Support contact','',2,1442157388),(660,'en','login','[web24] Login',' Client IP:14.169.249.37','',0,1442194747),(661,'en','about','Edit','ID: 1','',2,1442194777),(662,'en','upload','Upload file','uploads/about/blue-ocean-about-1.jpg','',2,1442194862),(663,'en','upload','Upload file','uploads/about/blue-ocean-about-2.jpg','',2,1442194862),(664,'en','upload','Upload file','uploads/about/blue-ocean-about-3.jpg','',2,1442194863),(665,'en','upload','Upload file','uploads/about/blue-ocean-about-4.jpg','',2,1442194863),(666,'en','about','Edit','ID: 1','',2,1442194878),(667,'en','about','Edit','ID: 1','',2,1442194922),(668,'en','login','[admin] Login',' Client IP:14.169.249.37','',0,1442197408),(669,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442197420),(670,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442197992),(671,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442198150),(672,'en','supplies','Delete topics and articles','Ship service','',2,1442201899),(673,'en','supplies','Delete topics and articles','Ship repair','',2,1442201913),(674,'en','login','[admin] Leave Administration',' Client IP:14.169.249.37','',0,1442203477),(675,'en','about','Edit','ID: 1','',2,1442204182),(676,'en','about','Edit','ID: 1','',2,1442204281),(677,'en','about','Edit','ID: 1','',2,1442204656),(678,'en','about','Edit','ID: 1','',2,1442204783),(679,'en','about','Edit','ID: 1','',2,1442204826),(680,'en','login','[admin] Login',' Client IP:14.169.191.67','',0,1442392783),(681,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442549962),(682,'en','users','log_edit_user','userid 2','',2,1442549983),(683,'en','supplies','Add categories','General repairs','',2,1442551665),(684,'en','supplies','Add categories','Other services','',2,1442551929),(685,'en','supplies','Add a new article','Deck &amp; engine store','',2,1442552579),(686,'en','supplies','Delete article','Pipe','',2,1442552623),(687,'en','supplies','Delete article','Valve','',2,1442552627),(688,'en','supplies','Delete topics and articles','Deck store','',2,1442552633),(689,'en','supplies','Edit article','Deck &amp; engine store','',2,1442552712),(690,'en','supplies','Edit article','Deck &amp; engine store','',2,1442552737),(691,'en','supplies','Edit article','Deck &amp; engine store','',2,1442552800),(692,'en','supplies','Edit article','Deck &amp; engine store','',2,1442552841),(693,'en','supplies','Delete article','Engineer store','',2,1442552853),(694,'en','supplies','Edit article','Oils - Lubricants','',2,1442553157),(695,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442558808),(696,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442630879),(697,'en','supplies','Edit article','Provision supply','',2,1442631015),(698,'en','upload','Upload file','uploads/supplies/2015_09/ship-supply-general-repairs.jpg','',2,1442632681),(699,'en','upload','Upload file','uploads/supplies/2015_09/ship-supply-other-services.jpg','',2,1442632681),(700,'en','supplies','Add categories','Technical supply','',2,1442633666),(701,'en','supplies','Edit article','Cabin and galley store','',2,1442633976),(702,'en','supplies','Edit article','Charts Publications','',2,1442634001),(703,'en','supplies','Edit article','Deck &amp; engine store','',2,1442634165),(704,'en','supplies','Edit article','Cabin and galley store','',2,1442634180),(705,'en','supplies','Edit article','Charts Publications','',2,1442634193),(706,'en','supplies','Edit article','Paints - Chemicals','',2,1442634251),(707,'en','supplies','Edit article','Oils - Lubricants','',2,1442634275),(708,'en','supplies','Edit article','Electrical store','',2,1442634290),(709,'en','supplies','Edit article','Safety Equipment','',2,1442634333),(710,'en','supplies','Add a new article','Cabin Stores','',2,1442635112),(711,'en','supplies','Edit article','Bridge','',2,1442635215),(712,'en','supplies','Edit article','Bridge','',2,1442635259),(713,'en','supplies','Edit article','Bridge','',2,1442635319),(714,'en','supplies','Edit article','Bridge','',2,1442635377),(715,'en','supplies','Edit article','Galley Stores','',2,1442635432),(716,'en','supplies','Edit article','Galley Stores','',2,1442635468),(717,'en','supplies','Add a new article','Deck Stores','',2,1442635584),(718,'en','supplies','Edit article','Deck Stores','',2,1442635603),(719,'en','supplies','Edit article','Marine Paints &amp; Chemicals','',2,1442635692),(720,'en','supplies','Edit article','Safety Stores &amp; Anti-Piracy Items','',2,1442635758),(721,'en','supplies','Edit article','Electrical Stores','',2,1442635823),(722,'en','supplies','Edit article','Engine Stores','',2,1442635876),(723,'en','supplies','log_declined_content','listid: 14, 16, 19','',2,1442635942),(724,'en','supplies','Edit article','Provision supply','',2,1442635974),(725,'en','supplies','Edit article','Provision supply','',2,1442636310),(726,'en','supplies','Edit article','Provision supply','',2,1442636361),(727,'en','supplies','Edit article','Provision supply','',2,1442636386),(728,'en','supplies','Add a new article','Provision supply','',2,1442636458),(729,'en','supplies','Delete article','Provision supply','',2,1442636475),(730,'en','supplies','Edit article','Provision supply','',2,1442636495),(731,'en','supplies','Edit article','Provision supply','',2,1442636512),(732,'en','supplies','Edit article','Provision supply','',2,1442636622),(733,'en','modules','Add virtual module port_we_serv','','',2,1442638004),(734,'en','modules','Setup new module port-we-serv','','',2,1442638033),(735,'en','modules','Edit modules &ldquo;port-we-serv&rdquo;','','',2,1442638081),(736,'en','modules','Order module: port-we-serv','19 -> 4','',2,1442638095),(737,'en','modules','Edit modules &ldquo;port-we-serv&rdquo;','','',2,1442638213),(738,'en','themes','Layout setup theme: \"default\"','','',2,1442638302),(739,'en','login','[admin] Login',' Client IP:14.169.191.67','',0,1442638336),(740,'en','port-we-serv','Add',' ','',2,1442638343),(741,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442638345),(742,'en','themes','Edit block','Name : Menu Site','',2,1442638358),(743,'en','modules','Delete module \"port-we-serv\"','','',2,1442638822),(744,'en','modules','Add virtual module port_we_serv','','',2,1442638839),(745,'en','modules','Setup new module port-we-serv','','',2,1442638842),(746,'en','modules','Edit modules &ldquo;port-we-serv&rdquo;','','',2,1442638858),(747,'en','modules','Order module: port-we-serv','19 -> 4','',2,1442638864),(748,'en','themes','Layout setup theme: \"default\"','','',2,1442638874),(749,'en','port-we-serv','Add',' ','',2,1442638892),(750,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442639481),(751,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442639817),(752,'en','login','[admin] Login',' Client IP:1.52.208.94','',0,1442731576),(753,'en','upload','Upload file','uploads/logo_1.png','',1,1442731857),(754,'en','themes','Edit block','Name : Contact Header','',1,1442731958),(755,'en','login','[admin] Login',' Client IP:14.169.191.67','',0,1442810300),(756,'en','upload','Upload file','uploads/logo_moi.png','',1,1442810378),(757,'en','themes','Edit block','Name : Contact Header','',1,1442810566),(758,'en','themes','Edit block','Name : Contact Header','',1,1442811265),(759,'en','themes','Edit block','Name : Menu Site','',1,1442811563),(760,'en','about','Edit','ID: 1','',1,1442812561),(761,'en','login','[admin] Login',' Client IP:14.169.191.67','',0,1442820378),(762,'en','themes','Edit block','Name : Supplies','',1,1442822717),(763,'en','themes','Edit block','Name : Menu Site','',1,1442824198),(764,'en','themes','Edit block','Name : Menu Site','',1,1442824881),(765,'en','modules','Order module: port-we-serv','19 -> 3','',1,1442824910),(766,'en','modules','Order module: port-we-serv','19 -> 4','',1,1442824926),(767,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442827244),(768,'en','themes','Edit block','Name : BLUE OCEAN MARINE SERVICE CO., LTD','',2,1442827362),(769,'en','themes','Edit block','Name : Supplies','',1,1442827448),(770,'en','supplies','Edit article','Provision supply','',1,1442827589),(771,'en','supplies','Edit article','Provision supply','',1,1442827615),(772,'en','supplies','Edit article','Provision supply','',1,1442827724),(773,'en','supplies','Edit article','Provision supply','',1,1442827759),(774,'en','supplies','Edit article','Provision supply','',1,1442828107),(775,'en','supplies','Edit article','Rubber packing','',1,1442828221),(776,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442829650),(777,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442894437),(778,'en','supplies','log_declined_content','listid: 14','',2,1442894460),(779,'en','upload','Create','uploads/supplies/provision','',2,1442894879),(780,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-1.jpg','',2,1442894899),(781,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-2.jpg','',2,1442894899),(782,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-3.jpg','',2,1442894899),(783,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-4.jpg','',2,1442894900),(784,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-5.jpg','',2,1442894900),(785,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-6.jpg','',2,1442894900),(786,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-7.jpg','',2,1442894900),(787,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-8.jpg','',2,1442894901),(788,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-9.jpg','',2,1442894902),(789,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-10.jpg','',2,1442894902),(790,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-11.jpg','',2,1442894903),(791,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-12.jpg','',2,1442894904),(792,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-13.jpg','',2,1442894904),(793,'en','upload','Upload file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-14.jpg','',2,1442894904),(794,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-14.jpg','',2,1442895044),(795,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-12.jpg','',2,1442895044),(796,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-13.jpg','',2,1442895044),(797,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-10.jpg','',2,1442895044),(798,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-11.jpg','',2,1442895044),(799,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-8.jpg','',2,1442895044),(800,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-9.jpg','',2,1442895044),(801,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-7.jpg','',2,1442895044),(802,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-3.jpg','',2,1442895044),(803,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-4.jpg','',2,1442895044),(804,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-5.jpg','',2,1442895044),(805,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-6.jpg','',2,1442895044),(806,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-1.jpg','',2,1442895044),(807,'en','upload','Delete file','uploads/supplies/provision/blue-ocean-marine-service-ship-supply-provision-2.jpg','',2,1442895044),(808,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-1.jpg','',2,1442895049),(809,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-2.jpg','',2,1442895049),(810,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-3.jpg','',2,1442895050),(811,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-4.jpg','',2,1442895050),(812,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-5.jpg','',2,1442895050),(813,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-6.jpg','',2,1442895050),(814,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-7.jpg','',2,1442895050),(815,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-8.jpg','',2,1442895051),(816,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-9.jpg','',2,1442895051),(817,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-10.jpg','',2,1442895051),(818,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-11.jpg','',2,1442895051),(819,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-12.jpg','',2,1442895052),(820,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-13.jpg','',2,1442895052),(821,'en','upload','Upload file','uploads/supplies/provision/ship-supply-provision-14.jpg','',2,1442895053),(822,'en','supplies','Edit article','Provision supply','',2,1442895181),(823,'en','upload','Create','uploads/supplies/bridge','',2,1442895394),(824,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-1.jpg','',2,1442895405),(825,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-2.jpg','',2,1442895405),(826,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-3.jpg','',2,1442895406),(827,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-4.jpg','',2,1442895406),(828,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-5.jpg','',2,1442895407),(829,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-6.jpg','',2,1442895407),(830,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-7.jpg','',2,1442895407),(831,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-8.jpg','',2,1442895408),(832,'en','upload','Upload file','uploads/supplies/bridge/ship-supply-charts-publications-9.jpg','',2,1442895408),(833,'en','supplies','Edit article','Bridge','',2,1442895475),(834,'en','supplies','Edit article','Provision supply','',2,1442895503),(835,'en','upload','Create','uploads/supplies/cabin-stores','',2,1442898239),(836,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-1.jpg','',2,1442898250),(837,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-2.jpg','',2,1442898251),(838,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-3.jpg','',2,1442898251),(839,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-4.jpg','',2,1442898252),(840,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-5.jpg','',2,1442898252),(841,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-6.jpg','',2,1442898253),(842,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-7.jpg','',2,1442898253),(843,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-8.jpg','',2,1442898254),(844,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-9.jpg','',2,1442898255),(845,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-10.jpg','',2,1442898255),(846,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-11.jpg','',2,1442898256),(847,'en','upload','Upload file','uploads/supplies/cabin-stores/ship-supply-cabin-stores-12.jpg','',2,1442898256),(848,'en','supplies','Edit article','Cabin Stores','',2,1442898324),(849,'en','supplies','Edit article','Cabin Stores','',2,1442898350),(850,'en','supplies','Edit article','Marine Paints &amp; Chemicals','',2,1442898489),(851,'en','upload','Create','uploads/supplies/galley-stores','',2,1442898607),(852,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-1.jpg','',2,1442898620),(853,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-2.jpg','',2,1442898621),(854,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-3.jpg','',2,1442898621),(855,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-4.jpg','',2,1442898621),(856,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-5.jpg','',2,1442898621),(857,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-6.jpg','',2,1442898621),(858,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-7.jpg','',2,1442898622),(859,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-8.jpg','',2,1442898622),(860,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-9.jpg','',2,1442898622),(861,'en','upload','Upload file','uploads/supplies/galley-stores/ship-supply-cabin-and-galley-store-10.jpg','',2,1442898622),(862,'en','supplies','Edit article','Galley Stores','',2,1442898692),(863,'en','upload','Create','uploads/supplies/marine-paints-chemicals','',2,1442899008),(864,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg','',2,1442899020),(865,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-2.jpg','',2,1442899020),(866,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-3.jpg','',2,1442899021),(867,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-4.jpg','',2,1442899021),(868,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-5.jpg','',2,1442899021),(869,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-6.jpg','',2,1442899021),(870,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-7.jpg','',2,1442899021),(871,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-8.jpg','',2,1442899022),(872,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-9.jpg','',2,1442899022),(873,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-10.jpg','',2,1442899022),(874,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-11.jpg','',2,1442899022),(875,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-12.jpg','',2,1442899022),(876,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-13.jpg','',2,1442899022),(877,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-14.jpg','',2,1442899023),(878,'en','upload','Upload file','uploads/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-15.jpg','',2,1442899023),(879,'en','supplies','Edit article','Marine Paints &amp; Chemicals','',2,1442899118),(880,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442900990),(881,'en','port-we-serv','Edit','ID: 1','',2,1442901312),(882,'en','port-we-serv','Edit','ID: 1','',2,1442901373),(883,'en','port-we-serv','Edit','ID: 1','',2,1442901426),(884,'en','port-we-serv','Edit','ID: 1','',2,1442901448),(885,'en','port-we-serv','Edit','ID: 1','',2,1442901464),(886,'en','port-we-serv','Edit','ID: 1','',2,1442901590),(887,'en','port-we-serv','Edit','ID: 1','',2,1442901692),(888,'en','port-we-serv','Edit','ID: 1','',2,1442901712),(889,'en','port-we-serv','Edit','ID: 1','',2,1442901821),(890,'en','port-we-serv','Edit','ID: 1','',2,1442901973),(891,'en','port-we-serv','Edit','ID: 1','',2,1442902085),(892,'en','upload','Upload file','uploads/port-we-serv/ship-supply-port-we-serv.jpg','',2,1442902121),(893,'en','port-we-serv','Edit','ID: 1','',2,1442902145),(894,'en','port-we-serv','Edit','ID: 1','',2,1442902217),(895,'en','port-we-serv','Edit','ID: 1','',2,1442902234),(896,'en','upload','Create','uploads/supplies/electrical-stores','',2,1442904122),(897,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-1.jpg','',2,1442904131),(898,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-2.jpg','',2,1442904132),(899,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-3.jpg','',2,1442904132),(900,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-4.jpg','',2,1442904132),(901,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-5.jpg','',2,1442904132),(902,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-6.jpg','',2,1442904132),(903,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-7.jpg','',2,1442904133),(904,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-8.jpg','',2,1442904133),(905,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-9.jpg','',2,1442904133),(906,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-10.jpg','',2,1442904133),(907,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-11.jpg','',2,1442904133),(908,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-12.jpg','',2,1442904133),(909,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-13.jpg','',2,1442904134),(910,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-14.jpg','',2,1442904134),(911,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-15.jpg','',2,1442904134),(912,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-16.jpg','',2,1442904134),(913,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-17.jpg','',2,1442904134),(914,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-18.jpg','',2,1442904134),(915,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-19.jpg','',2,1442904135),(916,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-20.jpg','',2,1442904135),(917,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-21.jpg','',2,1442904135),(918,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-22.jpg','',2,1442904135),(919,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-23.jpg','',2,1442904135),(920,'en','upload','Upload file','uploads/supplies/electrical-stores/ship-supply-electrical-stores-24.jpg','',2,1442904136),(921,'en','supplies','Edit article','Electrical Stores','',2,1442904307),(922,'en','upload','Create','uploads/supplies/safety-stores','',2,1442904634),(923,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-1.jpg','',2,1442904645),(924,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-2.jpg','',2,1442904645),(925,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-3.jpg','',2,1442904646),(926,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-4.jpg','',2,1442904646),(927,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-5.jpg','',2,1442904647),(928,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-6.jpg','',2,1442904647),(929,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-7.jpg','',2,1442904647),(930,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-8.jpg','',2,1442904647),(931,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-9.jpg','',2,1442904648),(932,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-10.jpg','',2,1442904648),(933,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-11.jpg','',2,1442904648),(934,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-12.jpg','',2,1442904649),(935,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-13.jpg','',2,1442904649),(936,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-14.jpg','',2,1442904649),(937,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-15.jpg','',2,1442904651),(938,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-16.jpg','',2,1442904651),(939,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-18.jpg','',2,1442904652),(940,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-19.jpg','',2,1442904653),(941,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-20.jpg','',2,1442904653),(942,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-21.jpg','',2,1442904654),(943,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-22.jpg','',2,1442904654),(944,'en','upload','Upload file','uploads/supplies/safety-stores/ship-supply-safety-equipment-23.jpg','',2,1442904654),(945,'en','supplies','Edit article','Safety Stores &amp; Anti-Piracy Items','',2,1442904806),(946,'en','upload','Create','uploads/supplies/engine-stores','',2,1442905357),(947,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-1.jpg','',2,1442905368),(948,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-2.jpg','',2,1442905368),(949,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-3.jpg','',2,1442905369),(950,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-4.jpg','',2,1442905369),(951,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-5.jpg','',2,1442905369),(952,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-6.jpg','',2,1442905370),(953,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-7.jpg','',2,1442905370),(954,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-8.jpg','',2,1442905370),(955,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-9.jpg','',2,1442905371),(956,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-10.jpg','',2,1442905371),(957,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-11.jpg','',2,1442905372),(958,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-12.jpg','',2,1442905372),(959,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-13.jpg','',2,1442905372),(960,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-14.jpg','',2,1442905373),(961,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-15.jpg','',2,1442905373),(962,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-16.jpg','',2,1442905373),(963,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-17.jpg','',2,1442905374),(964,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-18.jpg','',2,1442905374),(965,'en','supplies','Edit article','Engine Stores','',2,1442905515),(966,'en','upload','Create','uploads/supplies/deck-stores','',2,1442909017),(967,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-2.jpg','',2,1442909023),(968,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-3.jpg','',2,1442909024),(969,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-4.jpg','',2,1442909025),(970,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-5.jpg','',2,1442909025),(971,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-6.jpg','',2,1442909026),(972,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-7.jpg','',2,1442909026),(973,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-8.jpg','',2,1442909026),(974,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-9.jpg','',2,1442909026),(975,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-10.jpg','',2,1442909027),(976,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-11.jpg','',2,1442909027),(977,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-12.jpg','',2,1442909027),(978,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-13.jpg','',2,1442909028),(979,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-14.jpg','',2,1442909028),(980,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-15.jpg','',2,1442909028),(981,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-16.jpg','',2,1442909029),(982,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-17.jpg','',2,1442909029),(983,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-18.jpg','',2,1442909029),(984,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-19.jpg','',2,1442909030),(985,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-20.jpg','',2,1442909030),(986,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-21.jpg','',2,1442909031),(987,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-22.jpg','',2,1442909031),(988,'en','upload','Upload file','uploads/supplies/deck-stores/ship-supply-deck-stores-23.jpg','',2,1442909031),(989,'en','supplies','Edit article','Deck Stores','',2,1442909151),(990,'en','upload','Delete file','uploads/supplies/engine-stores/ship-supply-engineer-store-1.jpg','',2,1442909289),(991,'en','upload','Upload file','uploads/supplies/engine-stores/ship-supply-engineer-store-1.jpg','',2,1442909298),(992,'en','supplies','Edit article','Engine Stores','',2,1442909313),(993,'en','login','[admin] Login',' Client IP:14.169.191.67','',0,1442974557),(994,'en','webtools','System cleanup','clearcache, clearfiletemp, clearerrorlogs, clearip_logs','',1,1442974567),(995,'en','supplies','Edit article','Provision supply','',1,1442977175),(996,'en','supplies','Edit article','Cabin Stores','',1,1442977186),(997,'en','supplies','Edit article','Bridge','',1,1442977195),(998,'en','supplies','Edit article','Galley Stores','',1,1442977206),(999,'en','supplies','Edit article','Deck Stores','',1,1442977218),(1000,'en','supplies','Edit article','Marine Paints &amp; Chemicals','',1,1442977230),(1001,'en','supplies','Edit article','Safety Stores &amp; Anti-Piracy Items','',1,1442977243),(1002,'en','supplies','Edit article','Safety Stores &amp; Anti-Piracy Items','',1,1442977255),(1003,'en','supplies','Edit article','Electrical Stores','',1,1442977282),(1004,'en','supplies','Edit article','Engine Stores','',1,1442977292),(1005,'en','supplies','Edit article','Oils - Lubricants','',1,1442977304),(1006,'en','supplies','Edit article','Jis air pipe vent heads','',1,1442977318),(1007,'en','supplies','Edit article','Rubber packing','',1,1442977328),(1008,'en','login','[web24] Login',' Client IP:14.169.191.67','',0,1442977589),(1009,'en','supplies','Edit article','Provision supply','',2,1442978000),(1010,'en','supplies','log_declined_content','listid: 14, 16, 19','',2,1442978039),(1011,'en','themes','Edit block','Name : Supplies','',2,1442978840),(1012,'en','themes','Edit block','Name : Supplies','',1,1442979682),(1013,'en','themes','Edit block','Name : --','',1,1442979757),(1014,'en','themes','Edit block','Name : --','',1,1442979768),(1015,'en','themes','Edit block','Name : --','',1,1442979806),(1016,'en','themes','Edit block','Name : --','',1,1442979883),(1017,'en','themes','Edit block','Name : --','',1,1442979912),(1018,'en','themes','Edit block','Name : --','',1,1442979945),(1019,'en','themes','Edit block','Name : --','',1,1442980070),(1020,'en','themes','Edit block','Name : --','',1,1442980235),(1021,'en','themes','Edit block','Name : Supplies','',2,1442980570),(1022,'en','themes','Edit block','Name : Supplies','',2,1442980604);
/*!40000 ALTER TABLE `nv4_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_notification`
--

DROP TABLE IF EXISTS `nv4_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) NOT NULL,
  `module` varchar(50) NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_notification`
--

LOCK TABLES `nv4_notification` WRITE;
/*!40000 ALTER TABLE `nv4_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_plugin`
--

DROP TABLE IF EXISTS `nv4_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `plugin_file` varchar(50) NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `plugin_file` (`plugin_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_plugin`
--

LOCK TABLES `nv4_plugin` WRITE;
/*!40000 ALTER TABLE `nv4_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_sessions`
--

DROP TABLE IF EXISTS `nv4_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `session_id` (`session_id`),
  KEY `onl_time` (`onl_time`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_sessions`
--

LOCK TABLES `nv4_sessions` WRITE;
/*!40000 ALTER TABLE `nv4_sessions` DISABLE KEYS */;
INSERT INTO `nv4_sessions` VALUES ('501jttg6vm58ennqboa58soco3',0,'guest',1442994046);
/*!40000 ALTER TABLE `nv4_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup`
--

DROP TABLE IF EXISTS `nv4_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup` (
  `lang` char(2) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tables` varchar(255) NOT NULL,
  `version` varchar(100) NOT NULL,
  `setup_time` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `lang` (`lang`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup`
--

LOCK TABLES `nv4_setup` WRITE;
/*!40000 ALTER TABLE `nv4_setup` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup_extensions`
--

DROP TABLE IF EXISTS `nv4_setup_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'other',
  `title` varchar(55) NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) NOT NULL DEFAULT '',
  `table_prefix` varchar(55) NOT NULL DEFAULT '',
  `version` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text NOT NULL,
  `note` varchar(255) DEFAULT '',
  UNIQUE KEY `title` (`type`,`title`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup_extensions`
--

LOCK TABLES `nv4_setup_extensions` WRITE;
/*!40000 ALTER TABLE `nv4_setup_extensions` DISABLE KEYS */;
INSERT INTO `nv4_setup_extensions` VALUES (0,'module','about',0,0,'page','about','',1441004505,'',''),(0,'module','siteterms',0,0,'page','siteterms','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(19,'module','banners',1,0,'banners','banners','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(20,'module','contact',0,1,'contact','contact','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(1,'module','news',0,1,'news','news','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(21,'module','voting',0,0,'voting','voting','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(0,'module','supplies',0,0,'news','supplies','',1441323651,'',''),(284,'module','seek',1,0,'seek','seek','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(24,'module','users',1,0,'users','users','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(27,'module','statistics',0,0,'statistics','statistics','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(29,'module','menu',0,0,'menu','menu','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(283,'module','feeds',1,0,'feeds','feeds','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(282,'module','page',1,1,'page','page','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(281,'module','comment',1,0,'comment','comment','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(0,'module','freecontent',0,0,'freecontent','freecontent','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(0,'theme','default',0,0,'default','default','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(0,'theme','mobile_default',0,0,'mobile_default','mobile_default','4.0.21 1436199600',1439973638,'VINADES (contact@vinades.vn)',''),(0,'module','home',0,0,'home','home','3.4.01 1371254400',1439977333,'Phan Tan Dung (phantandung92@gmail.com)',''),(0,'module','slider',0,1,'slider','slider','4.1.00 1439987542',1439987542,'Pa Software Solutions (contact@vinanat.vn)',''),(0,'module','support',0,1,'support','support','4.0 1416416400',1440001503,'Pa Software Solutions ( contact@vinanat.vn)',''),(0,'module','port-we-serv',0,0,'page','port_we_serv','',1442638839,'','');
/*!40000 ALTER TABLE `nv4_setup_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_setup_language`
--

DROP TABLE IF EXISTS `nv4_setup_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_setup_language` (
  `lang` char(2) NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_setup_language`
--

LOCK TABLES `nv4_setup_language` WRITE;
/*!40000 ALTER TABLE `nv4_setup_language` DISABLE KEYS */;
INSERT INTO `nv4_setup_language` VALUES ('en',1);
/*!40000 ALTER TABLE `nv4_setup_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_upload_dir`
--

DROP TABLE IF EXISTS `nv4_upload_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL AUTO_INCREMENT,
  `dirname` varchar(255) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  UNIQUE KEY `name` (`dirname`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_upload_dir`
--

LOCK TABLES `nv4_upload_dir` WRITE;
/*!40000 ALTER TABLE `nv4_upload_dir` DISABLE KEYS */;
INSERT INTO `nv4_upload_dir` VALUES (0,'',0,3,100,150,90),(1,'uploads',1439973854,0,0,0,0),(23,'uploads/about',1441004577,0,0,0,0),(3,'uploads/banners',0,0,0,0,0),(4,'uploads/contact',0,0,0,0,0),(5,'uploads/freecontent',0,0,0,0,0),(6,'uploads/menu',0,0,0,0,0),(7,'uploads/news',0,0,0,0,0),(8,'uploads/news/source',0,0,0,0,0),(9,'uploads/news/temp_pic',0,0,0,0,0),(10,'uploads/news/topics',0,0,0,0,0),(11,'uploads/page',0,0,0,0,0),(12,'uploads/siteterms',0,0,0,0,0),(13,'uploads/users',0,0,0,0,0),(34,'uploads/supplies/topics',0,0,0,0,0),(31,'uploads/supplies',1442552758,0,0,0,0),(32,'uploads/supplies/source',0,0,0,0,0),(18,'uploads/slider',0,0,0,0,0),(19,'uploads/slider/2015_08',1439987641,0,0,0,0),(33,'uploads/supplies/temp_pic',0,0,0,0,0),(21,'uploads/news/2015_08',1440755420,0,0,0,0),(35,'uploads/supplies/2015_09',1441323973,0,0,0,0),(25,'uploads/news/2015_09',1441075348,0,0,0,0),(36,'uploads/slider/2015_09',1442024713,0,0,0,0),(38,'uploads/port-we-serv',1442902113,0,0,0,0),(39,'uploads/supplies/provision',1442894879,0,0,0,0),(40,'uploads/supplies/bridge',1442895395,0,0,0,0),(41,'uploads/supplies/cabin-stores',1442898240,0,0,0,0),(42,'uploads/supplies/galley-stores',1442898608,0,0,0,0),(43,'uploads/supplies/marine-paints-chemicals',1442899008,0,0,0,0),(44,'uploads/supplies/electrical-stores',1442904122,0,0,0,0),(45,'uploads/supplies/safety-stores',1442904634,0,0,0,0),(46,'uploads/supplies/engine-stores',1442905357,0,0,0,0),(47,'uploads/supplies/deck-stores',1442909017,0,0,0,0);
/*!40000 ALTER TABLE `nv4_upload_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_upload_file`
--

DROP TABLE IF EXISTS `nv4_upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_upload_file` (
  `name` varchar(255) NOT NULL,
  `ext` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(5) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `did` (`did`,`title`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_upload_file`
--

LOCK TABLES `nv4_upload_file` WRITE;
/*!40000 ALTER TABLE `nv4_upload_file` DISABLE KEYS */;
INSERT INTO `nv4_upload_file` VALUES ('logo.png','png','image',18905,'assets/logo.png',80,23,'247|70',1,1441319008,1,'logo.png','logo'),('blue-ocean...jpg','jpg','image',388284,'assets/slider/2015_08/blue-ocean-banner-1.jpg',80,29,'1359|480',2,1440925076,19,'blue-ocean-banner-1.jpg','blue ocean banner 1'),('blue-ocean...jpg','jpg','image',230924,'assets/slider/2015_08/blue-ocean-banner-2.jpg',80,29,'1359|480',2,1440927719,19,'blue-ocean-banner-2.jpg','blue ocean banner 2'),('blue-ocean...jpg','jpg','image',281662,'assets/slider/2015_08/blue-ocean-banner-3.jpg',80,29,'1359|480',2,1440929349,19,'blue-ocean-banner-3.jpg','blue ocean banner 3'),('blue-ocean...jpg','jpg','image',307576,'assets/slider/2015_08/blue-ocean-banner-4.jpg',80,29,'1359|480',2,1440945002,19,'blue-ocean-banner-4.jpg','blue ocean banner 4'),('blue-ocean...jpg','jpg','image',257993,'assets/slider/2015_08/blue-ocean-banner-5.jpg',80,29,'1359|480',2,1440945003,19,'blue-ocean-banner-5.jpg','blue ocean banner 5'),('blue-ocean...jpg','jpg','image',241328,'assets/slider/2015_08/blue-ocean-banner-6.jpg',80,29,'1359|480',2,1440945482,19,'blue-ocean-banner-6.jpg','blue ocean banner 6'),('blue-ocean...jpg','jpg','image',213899,'assets/slider/2015_08/blue-ocean-banner-7.jpg',80,29,'1359|480',2,1440945004,19,'blue-ocean-banner-7.jpg','blue ocean banner 7'),('images-3.jpg','jpg','image',11442,'assets/supplies/2015_09/images-3.jpg',80,48,'290|174',1,1441334308,35,'images-3.jpg','images &#40;3&#41;'),('leisure_1.jpg','jpg','image',21218,'assets/supplies/2015_09/leisure_1.jpg',80,48,'500|300',1,1441334308,35,'leisure_1.jpg','leisure'),('ship.jpg','jpg','image',32821,'assets/supplies/2015_09/ship.jpg',80,48,'500|300',1,1441334309,35,'ship.jpg','ship'),('_85358853_...jpg','jpg','image',36218,'assets/news/2015_09/_85358853_85358852.jpg',80,46,'660|371',1,1441335302,25,'_85358853_85358852.jpg','85358853 85358852'),('70105290-1...jpg','jpg','image',21781,'assets/about/70105290-126322sm.jpg',80,60,'400|300',1,1441004602,23,'70105290-126322sm.jpg','70105290 126322sm'),('blue-ocean...jpg','jpg','image',20389,'assets/slider/2015_08/blue-ocean-logo-3.jpg',80,54,'120|80',2,1440951042,19,'blue-ocean-logo-3.jpg','blue ocean logo 3'),('blue-ocean...jpg','jpg','image',26766,'assets/slider/2015_08/blue-ocean-logo-1.jpg',80,54,'120|80',2,1440951042,19,'blue-ocean-logo-1.jpg','blue ocean logo 1'),('blue-ocean...jpg','jpg','image',25363,'assets/slider/2015_08/blue-ocean-logo-2.jpg',80,54,'120|80',2,1440951042,19,'blue-ocean-logo-2.jpg','blue ocean logo 2'),('blue-ocean...jpg','jpg','image',21996,'assets/slider/2015_08/blue-ocean-logo-4.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-4.jpg','blue ocean logo 4'),('paper-ship...jpg','jpg','image',53499,'assets/news/2015_09/paper-ships-300x199.jpg',80,54,'300|199',2,1441209977,25,'paper-ships-300x199.jpg','paper ships 300x199'),('viking-pic...jpg','jpg','image',59166,'assets/news/2015_09/viking-pic-300x199.jpg',80,54,'300|199',2,1441209803,25,'viking-pic-300x199.jpg','VIKING PIC 300x199'),('viking-300...jpg','jpg','image',38225,'assets/news/2015_09/viking-300x200.jpg',80,54,'300|200',2,1441209920,25,'viking-300x200.jpg','VIKING 300x200'),('1-14115439...jpg','jpg','image',177078,'assets/news/2015_08/1-141154394130-1.jpg',80,50,'404|252',1,1440755442,21,'1-141154394130-1.jpg','1 141154394130 &#40;1&#41;'),('1-14115439...jpg','jpg','image',177078,'assets/news/2015_08/1-141154394130.jpg',80,50,'404|252',1,1440755442,21,'1-141154394130.jpg','1 141154394130'),('3-14115439...jpg','jpg','image',130061,'assets/news/2015_08/3-141154394152.jpg',80,62,'311|241',1,1440755443,21,'3-141154394152.jpg','3 141154394152'),('4-14115439...jpg','jpg','image',118309,'assets/news/2015_08/4-141154394153.jpg',80,77,'259|249',1,1440755443,21,'4-141154394153.jpg','4 141154394153'),('5-14115439...jpg','jpg','image',174194,'assets/news/2015_08/5-141154394144-1.jpg',71,80,'324|365',1,1440755443,21,'5-141154394144-1.jpg','5 141154394144 &#40;1&#41;'),('5-14115439...jpg','jpg','image',174194,'assets/news/2015_08/5-141154394144.jpg',71,80,'324|365',1,1440755444,21,'5-141154394144.jpg','5 141154394144'),('6-14115440817.jpg','jpg','image',174107,'assets/news/2015_08/6-14115440817.jpg',80,56,'400|278',1,1440755444,21,'6-14115440817.jpg','6 14115440817'),('blue-ocean...jpg','jpg','image',20813,'assets/slider/2015_08/blue-ocean-logo-5.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-5.jpg','blue ocean logo 5'),('blue-ocean...jpg','jpg','image',20434,'assets/slider/2015_08/blue-ocean-logo-6.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-6.jpg','blue ocean logo 6'),('blue-ocean...jpg','jpg','image',22220,'assets/slider/2015_08/blue-ocean-logo-7.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-7.jpg','blue ocean logo 7'),('blue-ocean...jpg','jpg','image',19032,'assets/slider/2015_08/blue-ocean-logo-8.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-8.jpg','blue ocean logo 8'),('blue-ocean...jpg','jpg','image',23839,'assets/slider/2015_08/blue-ocean-logo-9.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-9.jpg','blue ocean logo 9'),('blue-ocean...jpg','jpg','image',20752,'assets/slider/2015_08/blue-ocean-logo-10.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-10.jpg','blue ocean logo 10'),('blue-ocean...jpg','jpg','image',27378,'assets/slider/2015_08/blue-ocean-logo-11.jpg',80,54,'120|80',2,1440951043,19,'blue-ocean-logo-11.jpg','blue ocean logo 11'),('blue-ocean...jpg','jpg','image',18709,'assets/slider/2015_08/blue-ocean-logo-12.jpg',80,54,'120|80',2,1440951044,19,'blue-ocean-logo-12.jpg','blue ocean logo 12'),('blue-ocean...jpg','jpg','image',19533,'assets/slider/2015_08/blue-ocean-logo-13.jpg',80,54,'120|80',2,1440954062,19,'blue-ocean-logo-13.jpg','blue ocean logo 13'),('blue-ocean...jpg','jpg','image',18967,'assets/slider/2015_08/blue-ocean-logo-14.jpg',80,54,'120|80',2,1440954062,19,'blue-ocean-logo-14.jpg','blue ocean logo 14'),('blue-ocean...jpg','jpg','image',18605,'assets/slider/2015_08/blue-ocean-logo-15.jpg',80,54,'120|80',2,1440954062,19,'blue-ocean-logo-15.jpg','blue ocean logo 15'),('blue-ocean...jpg','jpg','image',18891,'assets/slider/2015_08/blue-ocean-logo-16.jpg',80,54,'120|80',2,1440954063,19,'blue-ocean-logo-16.jpg','blue ocean logo 16'),('blue-ocean...jpg','jpg','image',18947,'assets/slider/2015_08/blue-ocean-logo-17.jpg',80,54,'120|80',2,1440954063,19,'blue-ocean-logo-17.jpg','blue ocean logo 17'),('blue-ocean...jpg','jpg','image',20040,'assets/slider/2015_08/blue-ocean-logo-18.jpg',80,54,'120|80',2,1440954063,19,'blue-ocean-logo-18.jpg','blue ocean logo 18'),('blue-ocean...jpg','jpg','image',19136,'assets/slider/2015_08/blue-ocean-logo-19.jpg',80,54,'120|80',2,1440954063,19,'blue-ocean-logo-19.jpg','blue ocean logo 19'),('blue-ocean...jpg','jpg','image',23519,'assets/slider/2015_08/blue-ocean-logo-20.jpg',80,54,'120|80',2,1440954063,19,'blue-ocean-logo-20.jpg','blue ocean logo 20'),('blue-ocean...jpg','jpg','image',20851,'assets/slider/2015_08/blue-ocean-logo-21.jpg',80,54,'120|80',2,1440954176,19,'blue-ocean-logo-21.jpg','blue ocean logo 21'),('blue-ocean...jpg','jpg','image',17249,'assets/slider/2015_08/blue-ocean-logo-22.jpg',80,54,'120|80',2,1440954189,19,'blue-ocean-logo-22.jpg','blue ocean logo 22'),('blue-ocean...jpg','jpg','image',17842,'assets/slider/2015_08/blue-ocean-logo-23.jpg',80,54,'120|80',2,1440954189,19,'blue-ocean-logo-23.jpg','blue ocean logo 23'),('blue-ocean...jpg','jpg','image',25364,'assets/slider/2015_08/blue-ocean-logo-24.jpg',80,54,'120|80',2,1440954189,19,'blue-ocean-logo-24.jpg','blue ocean logo 24'),('blue-ocean...jpg','jpg','image',20287,'assets/slider/2015_08/blue-ocean-logo-25.jpg',80,54,'120|80',2,1440954189,19,'blue-ocean-logo-25.jpg','blue ocean logo 25'),('moi.jpg','jpg','image',9068,'assets/supplies/2015_09/moi.jpg',80,54,'275|183',1,1441334224,35,'moi.jpg','moi'),('leisure.jpg','jpg','image',21218,'assets/supplies/2015_09/leisure.jpg',80,48,'500|300',1,1441334224,35,'leisure.jpg','leisure'),('1-14115439...jpg','jpg','image',55643,'assets/supplies/2015_09/1-141154394130-1.jpg',80,48,'500|300',1,1441334222,35,'1-141154394130-1.jpg','1 141154394130 &#40;1&#41;'),('500x300_s...jpeg','jpeg','image',39272,'assets/supplies/2015_09/500x300_spirit.jpeg',80,48,'500|300',1,1441334223,35,'500x300_spirit.jpeg','500x300 spirit'),('anh.jpg','jpg','image',72703,'assets/supplies/2015_09/anh.jpg',80,48,'500|300',1,1441334223,35,'anh.jpg','anh'),('images.jpg','jpg','image',8965,'assets/supplies/2015_09/images.jpg',80,48,'290|174',1,1441334223,35,'images.jpg','images'),('call60.png','png','image',625,'assets/call60.png',32,32,'32|32',2,1441191297,1,'call60.png','call60'),('email103.png','png','image',647,'assets/email103.png',32,32,'32|32',2,1441191297,1,'email103.png','email103'),('home173.png','png','image',906,'assets/home173.png',32,32,'32|32',2,1441191298,1,'home173.png','home173'),('iphone26.png','png','image',334,'assets/iphone26.png',32,32,'32|32',2,1441191298,1,'iphone26.png','iphone26'),('paper6.png','png','image',326,'assets/paper6.png',32,32,'32|32',2,1441191298,1,'paper6.png','paper6'),('pin66.png','png','image',915,'assets/pin66.png',32,32,'32|32',2,1441191298,1,'pin66.png','pin66'),('web58.png','png','image',920,'assets/web58.png',32,32,'32|32',2,1441192273,1,'web58.png','web58'),('2-14137853315.jpg','jpg','image',368723,'assets/supplies/2015_09/2-14137853315.jpg',80,60,'1500|1125',1,1441592930,35,'2-14137853315.jpg','2 14137853315'),('ship-suppl...jpg','jpg','image',135720,'assets/slider/2015_09/ship-supply-banner-1.jpg',80,14,'1359|240',2,1442024749,36,'ship-supply-banner-1.jpg','ship supply banner 1'),('ship-suppl...jpg','jpg','image',176392,'assets/slider/2015_09/ship-supply-banner-2.jpg',80,14,'1359|240',2,1442024749,36,'ship-supply-banner-2.jpg','ship supply banner 2'),('ship-suppl...jpg','jpg','image',233759,'assets/slider/2015_09/ship-supply-banner-3.jpg',80,14,'1359|240',2,1442024749,36,'ship-supply-banner-3.jpg','ship supply banner 3'),('ship-suppl...jpg','jpg','image',159511,'assets/slider/2015_09/ship-supply-banner-4.jpg',80,14,'1359|240',2,1442024750,36,'ship-supply-banner-4.jpg','ship supply banner 4'),('blue-ocean...jpg','jpg','image',153330,'assets/about/blue-ocean-about-1.jpg',80,54,'600|400',2,1442194862,23,'blue-ocean-about-1.jpg','blue ocean about 1'),('blue-ocean...jpg','jpg','image',130493,'assets/about/blue-ocean-about-2.jpg',80,54,'600|400',2,1442194862,23,'blue-ocean-about-2.jpg','blue ocean about 2'),('blue-ocean...jpg','jpg','image',97230,'assets/about/blue-ocean-about-3.jpg',80,54,'600|400',2,1442194863,23,'blue-ocean-about-3.jpg','blue ocean about 3'),('blue-ocean...jpg','jpg','image',167438,'assets/about/blue-ocean-about-4.jpg',80,54,'600|400',2,1442194863,23,'blue-ocean-about-4.jpg','blue ocean about 4'),('untitled-1.png','png','image',156027,'assets/supplies/untitled-1.png',80,80,'298|297',2,1442200274,31,'untitled-1.png','untitled 1'),('untitlessdd-1.png','png','image',116264,'assets/supplies/untitlessdd-1.png',80,79,'299|294',2,1442200274,31,'untitlessdd-1.png','untitlessdd 1'),('untitled-31.png','png','image',113616,'assets/supplies/untitled-31.png',80,80,'297|296',2,1442200274,31,'untitled-31.png','untitled 31'),('ship_supply.png','png','image',85043,'assets/supplies/ship_supply.png',80,80,'248|248',2,1442200274,31,'ship_supply.png','ship supply'),('ship_repair.png','png','image',110489,'assets/supplies/ship_repair.png',80,80,'248|248',2,1442200274,31,'ship_repair.png','ship repair'),('ship_service.png','png','image',112019,'assets/supplies/ship_service.png',80,80,'248|248',2,1442200274,31,'ship_service.png','ship service'),('ship-suppl...jpg','jpg','image',96537,'assets/supplies/2015_09/ship-supply-general-repairs.jpg',80,54,'600|400',2,1442632681,35,'ship-supply-general-repairs.jpg','ship supply general repairs'),('ship-suppl...jpg','jpg','image',96322,'assets/supplies/2015_09/ship-supply-other-services.jpg',80,54,'600|400',2,1442632682,35,'ship-supply-other-services.jpg','ship supply other services'),('logo_1.png','png','image',16265,'assets/logo_1.png',80,25,'251|76',1,1442731857,1,'logo_1.png','logo'),('logo_moi.png','png','image',18171,'assets/logo_moi.png',80,28,'256|89',1,1442810378,1,'logo_moi.png','logo moi'),('ship-suppl...jpg','jpg','image',114076,'assets/supplies/bridge/ship-supply-charts-publications-4.jpg',80,54,'406|270',2,1442895406,40,'ship-supply-charts-publications-4.jpg','ship supply charts publications &#40;4&#41;'),('ship-suppl...jpg','jpg','image',115145,'assets/supplies/provision/ship-supply-provision-1.jpg',80,60,'400|300',2,1442895049,39,'ship-supply-provision-1.jpg','ship supply provision 1'),('ship-suppl...jpg','jpg','image',100727,'assets/supplies/provision/ship-supply-provision-2.jpg',80,54,'406|270',2,1442895049,39,'ship-supply-provision-2.jpg','ship supply provision 2'),('ship-suppl...jpg','jpg','image',89057,'assets/supplies/provision/ship-supply-provision-3.jpg',80,54,'406|270',2,1442895050,39,'ship-supply-provision-3.jpg','ship supply provision 3'),('ship-suppl...jpg','jpg','image',125239,'assets/supplies/provision/ship-supply-provision-4.jpg',80,54,'406|270',2,1442895050,39,'ship-supply-provision-4.jpg','ship supply provision 4'),('ship-suppl...jpg','jpg','image',115543,'assets/supplies/provision/ship-supply-provision-5.jpg',80,54,'406|270',2,1442895050,39,'ship-supply-provision-5.jpg','ship supply provision 5'),('ship-suppl...jpg','jpg','image',90754,'assets/supplies/provision/ship-supply-provision-6.jpg',80,54,'406|270',2,1442895050,39,'ship-supply-provision-6.jpg','ship supply provision 6'),('ship-suppl...jpg','jpg','image',99476,'assets/supplies/provision/ship-supply-provision-7.jpg',80,54,'406|270',2,1442895051,39,'ship-supply-provision-7.jpg','ship supply provision 7'),('ship-suppl...jpg','jpg','image',122385,'assets/supplies/provision/ship-supply-provision-8.jpg',80,54,'406|270',2,1442895051,39,'ship-supply-provision-8.jpg','ship supply provision 8'),('ship-suppl...jpg','jpg','image',49798,'assets/supplies/provision/ship-supply-provision-9.jpg',80,54,'406|270',2,1442895051,39,'ship-supply-provision-9.jpg','ship supply provision 9'),('ship-suppl...jpg','jpg','image',87491,'assets/supplies/provision/ship-supply-provision-10.jpg',80,54,'406|270',2,1442895051,39,'ship-supply-provision-10.jpg','ship supply provision 10'),('ship-suppl...jpg','jpg','image',125842,'assets/supplies/provision/ship-supply-provision-11.jpg',80,54,'406|270',2,1442895052,39,'ship-supply-provision-11.jpg','ship supply provision 11'),('ship-suppl...jpg','jpg','image',113510,'assets/supplies/provision/ship-supply-provision-12.jpg',80,54,'406|270',2,1442895052,39,'ship-supply-provision-12.jpg','ship supply provision 12'),('ship-suppl...jpg','jpg','image',136359,'assets/supplies/provision/ship-supply-provision-13.jpg',80,54,'406|270',2,1442895052,39,'ship-supply-provision-13.jpg','ship supply provision 13'),('ship-suppl...jpg','jpg','image',138280,'assets/supplies/provision/ship-supply-provision-14.jpg',80,54,'406|270',2,1442895053,39,'ship-supply-provision-14.jpg','ship supply provision 14'),('ship-suppl...jpg','jpg','image',107961,'assets/supplies/bridge/ship-supply-charts-publications-1.jpg',80,54,'406|270',2,1442895405,40,'ship-supply-charts-publications-1.jpg','ship supply charts publications &#40;1&#41;'),('ship-suppl...jpg','jpg','image',77355,'assets/supplies/bridge/ship-supply-charts-publications-2.jpg',80,60,'400|300',2,1442895405,40,'ship-supply-charts-publications-2.jpg','ship supply charts publications &#40;2&#41;'),('ship-suppl...jpg','jpg','image',103416,'assets/supplies/bridge/ship-supply-charts-publications-3.jpg',80,54,'406|270',2,1442895406,40,'ship-supply-charts-publications-3.jpg','ship supply charts publications &#40;3&#41;'),('ship-suppl...jpg','jpg','image',117378,'assets/supplies/bridge/ship-supply-charts-publications-5.jpg',80,54,'406|270',2,1442895407,40,'ship-supply-charts-publications-5.jpg','ship supply charts publications &#40;5&#41;'),('ship-suppl...jpg','jpg','image',63704,'assets/supplies/bridge/ship-supply-charts-publications-6.jpg',80,54,'406|270',2,1442895407,40,'ship-supply-charts-publications-6.jpg','ship supply charts publications &#40;6&#41;'),('ship-suppl...jpg','jpg','image',67247,'assets/supplies/bridge/ship-supply-charts-publications-7.jpg',80,54,'406|270',2,1442895408,40,'ship-supply-charts-publications-7.jpg','ship supply charts publications &#40;7&#41;'),('ship-suppl...jpg','jpg','image',70466,'assets/supplies/bridge/ship-supply-charts-publications-8.jpg',80,54,'406|270',2,1442895408,40,'ship-supply-charts-publications-8.jpg','ship supply charts publications &#40;8&#41;'),('ship-suppl...jpg','jpg','image',71370,'assets/supplies/bridge/ship-supply-charts-publications-9.jpg',80,54,'406|270',2,1442895408,40,'ship-supply-charts-publications-9.jpg','ship supply charts publications &#40;9&#41;'),('ship-suppl...jpg','jpg','image',87228,'assets/supplies/cabin-stores/ship-supply-cabin-stores-1.jpg',80,60,'400|300',2,1442898251,41,'ship-supply-cabin-stores-1.jpg','ship supply cabin stores 1'),('ship-suppl...jpg','jpg','image',74942,'assets/supplies/cabin-stores/ship-supply-cabin-stores-2.jpg',80,54,'406|270',2,1442898251,41,'ship-supply-cabin-stores-2.jpg','ship supply cabin stores 2'),('ship-suppl...jpg','jpg','image',72068,'assets/supplies/cabin-stores/ship-supply-cabin-stores-3.jpg',80,54,'406|270',2,1442898252,41,'ship-supply-cabin-stores-3.jpg','ship supply cabin stores 3'),('ship-suppl...jpg','jpg','image',86780,'assets/supplies/cabin-stores/ship-supply-cabin-stores-4.jpg',80,54,'406|270',2,1442898252,41,'ship-supply-cabin-stores-4.jpg','ship supply cabin stores 4'),('ship-suppl...jpg','jpg','image',96920,'assets/supplies/cabin-stores/ship-supply-cabin-stores-5.jpg',80,54,'406|270',2,1442898253,41,'ship-supply-cabin-stores-5.jpg','ship supply cabin stores 5'),('ship-suppl...jpg','jpg','image',56467,'assets/supplies/cabin-stores/ship-supply-cabin-stores-6.jpg',80,54,'406|270',2,1442898253,41,'ship-supply-cabin-stores-6.jpg','ship supply cabin stores 6'),('ship-suppl...jpg','jpg','image',103738,'assets/supplies/cabin-stores/ship-supply-cabin-stores-7.jpg',80,54,'406|270',2,1442898254,41,'ship-supply-cabin-stores-7.jpg','ship supply cabin stores 7'),('ship-suppl...jpg','jpg','image',101894,'assets/supplies/cabin-stores/ship-supply-cabin-stores-8.jpg',80,54,'406|270',2,1442898254,41,'ship-supply-cabin-stores-8.jpg','ship supply cabin stores 8'),('ship-suppl...jpg','jpg','image',97133,'assets/supplies/cabin-stores/ship-supply-cabin-stores-9.jpg',80,54,'406|270',2,1442898255,41,'ship-supply-cabin-stores-9.jpg','ship supply cabin stores 9'),('ship-suppl...jpg','jpg','image',86056,'assets/supplies/cabin-stores/ship-supply-cabin-stores-10.jpg',80,54,'406|270',2,1442898256,41,'ship-supply-cabin-stores-10.jpg','ship supply cabin stores 10'),('ship-suppl...jpg','jpg','image',60093,'assets/supplies/cabin-stores/ship-supply-cabin-stores-11.jpg',80,54,'406|270',2,1442898256,41,'ship-supply-cabin-stores-11.jpg','ship supply cabin stores 11'),('ship-suppl...jpg','jpg','image',47826,'assets/supplies/cabin-stores/ship-supply-cabin-stores-12.jpg',80,54,'406|270',2,1442898256,41,'ship-supply-cabin-stores-12.jpg','ship supply cabin stores 12'),('ship-suppl...jpg','jpg','image',71276,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-1.jpg',80,60,'400|300',2,1442898621,42,'ship-supply-cabin-and-galley-store-1.jpg','ship supply cabin and galley store &#40;1&#41;'),('ship-suppl...jpg','jpg','image',110787,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-2.jpg',80,54,'406|270',2,1442898621,42,'ship-supply-cabin-and-galley-store-2.jpg','ship supply cabin and galley store &#40;2&#41;'),('ship-suppl...jpg','jpg','image',108037,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-3.jpg',80,54,'406|270',2,1442898621,42,'ship-supply-cabin-and-galley-store-3.jpg','ship supply cabin and galley store &#40;3&#41;'),('ship-suppl...jpg','jpg','image',86456,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-4.jpg',80,54,'406|270',2,1442898621,42,'ship-supply-cabin-and-galley-store-4.jpg','ship supply cabin and galley store &#40;4&#41;'),('ship-suppl...jpg','jpg','image',71091,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-5.jpg',80,54,'406|270',2,1442898621,42,'ship-supply-cabin-and-galley-store-5.jpg','ship supply cabin and galley store &#40;5&#41;'),('ship-suppl...jpg','jpg','image',71117,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-6.jpg',80,54,'406|270',2,1442898621,42,'ship-supply-cabin-and-galley-store-6.jpg','ship supply cabin and galley store &#40;6&#41;'),('ship-suppl...jpg','jpg','image',88412,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-7.jpg',80,54,'406|270',2,1442898622,42,'ship-supply-cabin-and-galley-store-7.jpg','ship supply cabin and galley store &#40;7&#41;'),('ship-suppl...jpg','jpg','image',75832,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-8.jpg',80,54,'406|270',2,1442898622,42,'ship-supply-cabin-and-galley-store-8.jpg','ship supply cabin and galley store &#40;8&#41;'),('ship-suppl...jpg','jpg','image',68580,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-9.jpg',80,54,'406|270',2,1442898622,42,'ship-supply-cabin-and-galley-store-9.jpg','ship supply cabin and galley store &#40;9&#41;'),('ship-suppl...jpg','jpg','image',67450,'assets/supplies/galley-stores/ship-supply-cabin-and-galley-store-10.jpg',80,54,'406|270',2,1442898622,42,'ship-supply-cabin-and-galley-store-10.jpg','ship supply cabin and galley store &#40;10&#41;'),('ship-suppl...jpg','jpg','image',83289,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-1.jpg',80,60,'400|300',2,1442899020,43,'ship-supply-paints-chemicals-1.jpg','ship supply paints chemicals &#40;1&#41;'),('ship-suppl...jpg','jpg','image',67302,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-2.jpg',80,54,'406|270',2,1442899020,43,'ship-supply-paints-chemicals-2.jpg','ship supply paints chemicals &#40;2&#41;'),('ship-suppl...jpg','jpg','image',69847,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-3.jpg',80,54,'406|270',2,1442899021,43,'ship-supply-paints-chemicals-3.jpg','ship supply paints chemicals &#40;3&#41;'),('ship-suppl...jpg','jpg','image',88362,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-4.jpg',80,54,'406|270',2,1442899021,43,'ship-supply-paints-chemicals-4.jpg','ship supply paints chemicals &#40;4&#41;'),('ship-suppl...jpg','jpg','image',58010,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-5.jpg',80,54,'406|270',2,1442899021,43,'ship-supply-paints-chemicals-5.jpg','ship supply paints chemicals &#40;5&#41;'),('ship-suppl...jpg','jpg','image',59020,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-6.jpg',80,54,'406|270',2,1442899021,43,'ship-supply-paints-chemicals-6.jpg','ship supply paints chemicals &#40;6&#41;'),('ship-suppl...jpg','jpg','image',109247,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-7.jpg',80,54,'406|270',2,1442899021,43,'ship-supply-paints-chemicals-7.jpg','ship supply paints chemicals &#40;7&#41;'),('ship-suppl...jpg','jpg','image',119544,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-8.jpg',80,54,'406|270',2,1442899022,43,'ship-supply-paints-chemicals-8.jpg','ship supply paints chemicals &#40;8&#41;'),('ship-suppl...jpg','jpg','image',83541,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-9.jpg',80,54,'406|270',2,1442899022,43,'ship-supply-paints-chemicals-9.jpg','ship supply paints chemicals &#40;9&#41;'),('ship-suppl...jpg','jpg','image',113887,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-10.jpg',80,54,'406|270',2,1442899022,43,'ship-supply-paints-chemicals-10.jpg','ship supply paints chemicals &#40;10&#41;'),('ship-suppl...jpg','jpg','image',38344,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-11.jpg',80,54,'406|270',2,1442899022,43,'ship-supply-paints-chemicals-11.jpg','ship supply paints chemicals &#40;11&#41;'),('ship-suppl...jpg','jpg','image',36421,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-12.jpg',80,54,'406|270',2,1442899022,43,'ship-supply-paints-chemicals-12.jpg','ship supply paints chemicals &#40;12&#41;'),('ship-suppl...jpg','jpg','image',54317,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-13.jpg',80,54,'406|270',2,1442899023,43,'ship-supply-paints-chemicals-13.jpg','ship supply paints chemicals &#40;13&#41;'),('ship-suppl...jpg','jpg','image',74152,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-14.jpg',80,54,'406|270',2,1442899023,43,'ship-supply-paints-chemicals-14.jpg','ship supply paints chemicals &#40;14&#41;'),('ship-suppl...jpg','jpg','image',96399,'assets/supplies/marine-paints-chemicals/ship-supply-paints-chemicals-15.jpg',80,54,'406|270',2,1442899023,43,'ship-supply-paints-chemicals-15.jpg','ship supply paints chemicals &#40;15&#41;'),('ship-suppl...jpg','jpg','image',194362,'assets/port-we-serv/ship-supply-port-we-serv.jpg',54,80,'656|973',2,1442902121,38,'ship-supply-port-we-serv.jpg','ship supply port we serv'),('ship-suppl...jpg','jpg','image',43477,'assets/supplies/electrical-stores/ship-supply-electrical-stores-1.jpg',80,54,'406|270',2,1442904132,44,'ship-supply-electrical-stores-1.jpg','ship supply electrical stores &#40;1&#41;'),('ship-suppl...jpg','jpg','image',68255,'assets/supplies/electrical-stores/ship-supply-electrical-stores-2.jpg',80,60,'400|300',2,1442904132,44,'ship-supply-electrical-stores-2.jpg','ship supply electrical stores &#40;2&#41;'),('ship-suppl...jpg','jpg','image',72134,'assets/supplies/electrical-stores/ship-supply-electrical-stores-3.jpg',80,54,'406|270',2,1442904132,44,'ship-supply-electrical-stores-3.jpg','ship supply electrical stores &#40;3&#41;'),('ship-suppl...jpg','jpg','image',86797,'assets/supplies/electrical-stores/ship-supply-electrical-stores-4.jpg',80,54,'406|270',2,1442904132,44,'ship-supply-electrical-stores-4.jpg','ship supply electrical stores &#40;4&#41;'),('ship-suppl...jpg','jpg','image',65199,'assets/supplies/electrical-stores/ship-supply-electrical-stores-5.jpg',80,54,'406|270',2,1442904132,44,'ship-supply-electrical-stores-5.jpg','ship supply electrical stores &#40;5&#41;'),('ship-suppl...jpg','jpg','image',61049,'assets/supplies/electrical-stores/ship-supply-electrical-stores-6.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-6.jpg','ship supply electrical stores &#40;6&#41;'),('ship-suppl...jpg','jpg','image',95703,'assets/supplies/electrical-stores/ship-supply-electrical-stores-7.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-7.jpg','ship supply electrical stores &#40;7&#41;'),('ship-suppl...jpg','jpg','image',50132,'assets/supplies/electrical-stores/ship-supply-electrical-stores-8.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-8.jpg','ship supply electrical stores &#40;8&#41;'),('ship-suppl...jpg','jpg','image',35432,'assets/supplies/electrical-stores/ship-supply-electrical-stores-9.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-9.jpg','ship supply electrical stores &#40;9&#41;'),('ship-suppl...jpg','jpg','image',47948,'assets/supplies/electrical-stores/ship-supply-electrical-stores-10.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-10.jpg','ship supply electrical stores &#40;10&#41;'),('ship-suppl...jpg','jpg','image',56518,'assets/supplies/electrical-stores/ship-supply-electrical-stores-11.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-11.jpg','ship supply electrical stores &#40;11&#41;'),('ship-suppl...jpg','jpg','image',28084,'assets/supplies/electrical-stores/ship-supply-electrical-stores-12.jpg',80,54,'406|270',2,1442904133,44,'ship-supply-electrical-stores-12.jpg','ship supply electrical stores &#40;12&#41;'),('ship-suppl...jpg','jpg','image',40640,'assets/supplies/electrical-stores/ship-supply-electrical-stores-13.jpg',80,54,'406|270',2,1442904134,44,'ship-supply-electrical-stores-13.jpg','ship supply electrical stores &#40;13&#41;'),('ship-suppl...jpg','jpg','image',35413,'assets/supplies/electrical-stores/ship-supply-electrical-stores-14.jpg',80,54,'406|270',2,1442904134,44,'ship-supply-electrical-stores-14.jpg','ship supply electrical stores &#40;14&#41;'),('ship-suppl...jpg','jpg','image',30517,'assets/supplies/electrical-stores/ship-supply-electrical-stores-15.jpg',80,54,'406|270',2,1442904134,44,'ship-supply-electrical-stores-15.jpg','ship supply electrical stores &#40;15&#41;'),('ship-suppl...jpg','jpg','image',47398,'assets/supplies/electrical-stores/ship-supply-electrical-stores-16.jpg',80,54,'406|270',2,1442904134,44,'ship-supply-electrical-stores-16.jpg','ship supply electrical stores &#40;16&#41;'),('ship-suppl...jpg','jpg','image',55087,'assets/supplies/electrical-stores/ship-supply-electrical-stores-17.jpg',80,54,'406|270',2,1442904134,44,'ship-supply-electrical-stores-17.jpg','ship supply electrical stores &#40;17&#41;'),('ship-suppl...jpg','jpg','image',32641,'assets/supplies/electrical-stores/ship-supply-electrical-stores-18.jpg',80,54,'406|270',2,1442904135,44,'ship-supply-electrical-stores-18.jpg','ship supply electrical stores &#40;18&#41;'),('ship-suppl...jpg','jpg','image',40293,'assets/supplies/electrical-stores/ship-supply-electrical-stores-19.jpg',80,54,'406|270',2,1442904135,44,'ship-supply-electrical-stores-19.jpg','ship supply electrical stores &#40;19&#41;'),('ship-suppl...jpg','jpg','image',42010,'assets/supplies/electrical-stores/ship-supply-electrical-stores-20.jpg',80,54,'406|270',2,1442904135,44,'ship-supply-electrical-stores-20.jpg','ship supply electrical stores &#40;20&#41;'),('ship-suppl...jpg','jpg','image',42149,'assets/supplies/electrical-stores/ship-supply-electrical-stores-21.jpg',80,54,'406|270',2,1442904135,44,'ship-supply-electrical-stores-21.jpg','ship supply electrical stores &#40;21&#41;'),('ship-suppl...jpg','jpg','image',51030,'assets/supplies/electrical-stores/ship-supply-electrical-stores-22.jpg',80,54,'406|270',2,1442904135,44,'ship-supply-electrical-stores-22.jpg','ship supply electrical stores &#40;22&#41;'),('ship-suppl...jpg','jpg','image',54000,'assets/supplies/electrical-stores/ship-supply-electrical-stores-23.jpg',80,54,'406|270',2,1442904136,44,'ship-supply-electrical-stores-23.jpg','ship supply electrical stores &#40;23&#41;'),('ship-suppl...jpg','jpg','image',31884,'assets/supplies/electrical-stores/ship-supply-electrical-stores-24.jpg',80,54,'406|270',2,1442904136,44,'ship-supply-electrical-stores-24.jpg','ship supply electrical stores &#40;24&#41;'),('ship-suppl...jpg','jpg','image',86418,'assets/supplies/safety-stores/ship-supply-safety-equipment-1.jpg',80,60,'400|300',2,1442904645,45,'ship-supply-safety-equipment-1.jpg','ship supply safety equipment &#40;1&#41;'),('ship-suppl...jpg','jpg','image',69245,'assets/supplies/safety-stores/ship-supply-safety-equipment-2.jpg',80,54,'406|270',2,1442904645,45,'ship-supply-safety-equipment-2.jpg','ship supply safety equipment &#40;2&#41;'),('ship-suppl...jpg','jpg','image',79161,'assets/supplies/safety-stores/ship-supply-safety-equipment-3.jpg',80,54,'406|270',2,1442904646,45,'ship-supply-safety-equipment-3.jpg','ship supply safety equipment &#40;3&#41;'),('ship-suppl...jpg','jpg','image',59495,'assets/supplies/safety-stores/ship-supply-safety-equipment-4.jpg',80,54,'406|270',2,1442904646,45,'ship-supply-safety-equipment-4.jpg','ship supply safety equipment &#40;4&#41;'),('ship-suppl...jpg','jpg','image',52964,'assets/supplies/safety-stores/ship-supply-safety-equipment-5.jpg',80,54,'406|270',2,1442904647,45,'ship-supply-safety-equipment-5.jpg','ship supply safety equipment &#40;5&#41;'),('ship-suppl...jpg','jpg','image',78790,'assets/supplies/safety-stores/ship-supply-safety-equipment-6.jpg',80,54,'406|270',2,1442904647,45,'ship-supply-safety-equipment-6.jpg','ship supply safety equipment &#40;6&#41;'),('ship-suppl...jpg','jpg','image',49060,'assets/supplies/safety-stores/ship-supply-safety-equipment-7.jpg',80,54,'406|270',2,1442904647,45,'ship-supply-safety-equipment-7.jpg','ship supply safety equipment &#40;7&#41;'),('ship-suppl...jpg','jpg','image',75190,'assets/supplies/safety-stores/ship-supply-safety-equipment-8.jpg',80,54,'406|270',2,1442904647,45,'ship-supply-safety-equipment-8.jpg','ship supply safety equipment &#40;8&#41;'),('ship-suppl...jpg','jpg','image',81686,'assets/supplies/safety-stores/ship-supply-safety-equipment-9.jpg',80,54,'406|270',2,1442904648,45,'ship-supply-safety-equipment-9.jpg','ship supply safety equipment &#40;9&#41;'),('ship-suppl...jpg','jpg','image',79095,'assets/supplies/safety-stores/ship-supply-safety-equipment-10.jpg',80,54,'406|270',2,1442904648,45,'ship-supply-safety-equipment-10.jpg','ship supply safety equipment &#40;10&#41;'),('ship-suppl...jpg','jpg','image',71137,'assets/supplies/safety-stores/ship-supply-safety-equipment-11.jpg',80,54,'406|270',2,1442904649,45,'ship-supply-safety-equipment-11.jpg','ship supply safety equipment &#40;11&#41;'),('ship-suppl...jpg','jpg','image',56371,'assets/supplies/safety-stores/ship-supply-safety-equipment-12.jpg',80,54,'406|270',2,1442904649,45,'ship-supply-safety-equipment-12.jpg','ship supply safety equipment &#40;12&#41;'),('ship-suppl...jpg','jpg','image',79562,'assets/supplies/safety-stores/ship-supply-safety-equipment-13.jpg',80,54,'406|270',2,1442904649,45,'ship-supply-safety-equipment-13.jpg','ship supply safety equipment &#40;13&#41;'),('ship-suppl...jpg','jpg','image',85474,'assets/supplies/safety-stores/ship-supply-safety-equipment-14.jpg',80,54,'406|270',2,1442904650,45,'ship-supply-safety-equipment-14.jpg','ship supply safety equipment &#40;14&#41;'),('ship-suppl...jpg','jpg','image',85384,'assets/supplies/safety-stores/ship-supply-safety-equipment-15.jpg',80,54,'406|270',2,1442904651,45,'ship-supply-safety-equipment-15.jpg','ship supply safety equipment &#40;15&#41;'),('ship-suppl...jpg','jpg','image',53919,'assets/supplies/safety-stores/ship-supply-safety-equipment-16.jpg',80,54,'406|270',2,1442904651,45,'ship-supply-safety-equipment-16.jpg','ship supply safety equipment &#40;16&#41;'),('ship-suppl...jpg','jpg','image',67178,'assets/supplies/safety-stores/ship-supply-safety-equipment-18.jpg',80,54,'406|270',2,1442904652,45,'ship-supply-safety-equipment-18.jpg','ship supply safety equipment &#40;18&#41;'),('ship-suppl...jpg','jpg','image',46700,'assets/supplies/safety-stores/ship-supply-safety-equipment-19.jpg',80,54,'406|270',2,1442904653,45,'ship-supply-safety-equipment-19.jpg','ship supply safety equipment &#40;19&#41;'),('ship-suppl...jpg','jpg','image',50991,'assets/supplies/safety-stores/ship-supply-safety-equipment-20.jpg',80,54,'406|270',2,1442904654,45,'ship-supply-safety-equipment-20.jpg','ship supply safety equipment &#40;20&#41;'),('ship-suppl...jpg','jpg','image',50410,'assets/supplies/safety-stores/ship-supply-safety-equipment-21.jpg',80,54,'406|270',2,1442904654,45,'ship-supply-safety-equipment-21.jpg','ship supply safety equipment &#40;21&#41;'),('ship-suppl...jpg','jpg','image',56605,'assets/supplies/safety-stores/ship-supply-safety-equipment-22.jpg',80,54,'406|270',2,1442904654,45,'ship-supply-safety-equipment-22.jpg','ship supply safety equipment &#40;22&#41;'),('ship-suppl...jpg','jpg','image',49875,'assets/supplies/safety-stores/ship-supply-safety-equipment-23.jpg',80,54,'406|270',2,1442904654,45,'ship-supply-safety-equipment-23.jpg','ship supply safety equipment &#40;23&#41;'),('ship-suppl...jpg','jpg','image',98312,'assets/supplies/engine-stores/ship-supply-engineer-store-1.jpg',80,60,'400|300',2,1442909298,46,'ship-supply-engineer-store-1.jpg','ship supply engineer store &#40;1&#41;'),('ship-suppl...jpg','jpg','image',105042,'assets/supplies/engine-stores/ship-supply-engineer-store-2.jpg',80,54,'406|270',2,1442905369,46,'ship-supply-engineer-store-2.jpg','ship supply engineer store &#40;2&#41;'),('ship-suppl...jpg','jpg','image',68975,'assets/supplies/engine-stores/ship-supply-engineer-store-3.jpg',80,54,'406|270',2,1442905369,46,'ship-supply-engineer-store-3.jpg','ship supply engineer store &#40;3&#41;'),('ship-suppl...jpg','jpg','image',63036,'assets/supplies/engine-stores/ship-supply-engineer-store-4.jpg',80,54,'406|270',2,1442905369,46,'ship-supply-engineer-store-4.jpg','ship supply engineer store &#40;4&#41;'),('ship-suppl...jpg','jpg','image',71357,'assets/supplies/engine-stores/ship-supply-engineer-store-5.jpg',80,54,'406|270',2,1442905370,46,'ship-supply-engineer-store-5.jpg','ship supply engineer store &#40;5&#41;'),('ship-suppl...jpg','jpg','image',60777,'assets/supplies/engine-stores/ship-supply-engineer-store-6.jpg',80,54,'406|270',2,1442905370,46,'ship-supply-engineer-store-6.jpg','ship supply engineer store &#40;6&#41;'),('ship-suppl...jpg','jpg','image',76239,'assets/supplies/engine-stores/ship-supply-engineer-store-7.jpg',80,54,'406|270',2,1442905370,46,'ship-supply-engineer-store-7.jpg','ship supply engineer store &#40;7&#41;'),('ship-suppl...jpg','jpg','image',73999,'assets/supplies/engine-stores/ship-supply-engineer-store-8.jpg',80,54,'406|270',2,1442905371,46,'ship-supply-engineer-store-8.jpg','ship supply engineer store &#40;8&#41;'),('ship-suppl...jpg','jpg','image',98750,'assets/supplies/engine-stores/ship-supply-engineer-store-9.jpg',80,54,'406|270',2,1442905371,46,'ship-supply-engineer-store-9.jpg','ship supply engineer store &#40;9&#41;'),('ship-suppl...jpg','jpg','image',101291,'assets/supplies/engine-stores/ship-supply-engineer-store-10.jpg',80,54,'406|270',2,1442905372,46,'ship-supply-engineer-store-10.jpg','ship supply engineer store &#40;10&#41;'),('ship-suppl...jpg','jpg','image',63633,'assets/supplies/engine-stores/ship-supply-engineer-store-11.jpg',80,54,'406|270',2,1442905372,46,'ship-supply-engineer-store-11.jpg','ship supply engineer store &#40;11&#41;'),('ship-suppl...jpg','jpg','image',67752,'assets/supplies/engine-stores/ship-supply-engineer-store-12.jpg',80,54,'406|270',2,1442905372,46,'ship-supply-engineer-store-12.jpg','ship supply engineer store &#40;12&#41;'),('ship-suppl...jpg','jpg','image',93867,'assets/supplies/engine-stores/ship-supply-engineer-store-13.jpg',80,54,'406|270',2,1442905373,46,'ship-supply-engineer-store-13.jpg','ship supply engineer store &#40;13&#41;'),('ship-suppl...jpg','jpg','image',68174,'assets/supplies/engine-stores/ship-supply-engineer-store-14.jpg',80,54,'406|270',2,1442905373,46,'ship-supply-engineer-store-14.jpg','ship supply engineer store &#40;14&#41;'),('ship-suppl...jpg','jpg','image',71072,'assets/supplies/engine-stores/ship-supply-engineer-store-15.jpg',80,54,'406|270',2,1442905373,46,'ship-supply-engineer-store-15.jpg','ship supply engineer store &#40;15&#41;'),('ship-suppl...jpg','jpg','image',69816,'assets/supplies/engine-stores/ship-supply-engineer-store-16.jpg',80,54,'406|270',2,1442905374,46,'ship-supply-engineer-store-16.jpg','ship supply engineer store &#40;16&#41;'),('ship-suppl...jpg','jpg','image',85532,'assets/supplies/engine-stores/ship-supply-engineer-store-17.jpg',80,54,'406|270',2,1442905374,46,'ship-supply-engineer-store-17.jpg','ship supply engineer store &#40;17&#41;'),('ship-suppl...jpg','jpg','image',61880,'assets/supplies/engine-stores/ship-supply-engineer-store-18.jpg',80,54,'406|270',2,1442905374,46,'ship-supply-engineer-store-18.jpg','ship supply engineer store &#40;18&#41;'),('ship-suppl...jpg','jpg','image',135428,'assets/supplies/deck-stores/ship-supply-deck-stores-2.jpg',80,60,'400|300',2,1442909024,47,'ship-supply-deck-stores-2.jpg','ship supply deck stores &#40;2&#41;'),('ship-suppl...jpg','jpg','image',63167,'assets/supplies/deck-stores/ship-supply-deck-stores-3.jpg',80,54,'406|270',2,1442909025,47,'ship-supply-deck-stores-3.jpg','ship supply deck stores &#40;3&#41;'),('ship-suppl...jpg','jpg','image',50679,'assets/supplies/deck-stores/ship-supply-deck-stores-4.jpg',80,54,'406|270',2,1442909025,47,'ship-supply-deck-stores-4.jpg','ship supply deck stores &#40;4&#41;'),('ship-suppl...jpg','jpg','image',38056,'assets/supplies/deck-stores/ship-supply-deck-stores-5.jpg',80,54,'406|270',2,1442909025,47,'ship-supply-deck-stores-5.jpg','ship supply deck stores &#40;5&#41;'),('ship-suppl...jpg','jpg','image',54962,'assets/supplies/deck-stores/ship-supply-deck-stores-6.jpg',80,54,'406|270',2,1442909026,47,'ship-supply-deck-stores-6.jpg','ship supply deck stores &#40;6&#41;'),('ship-suppl...jpg','jpg','image',108436,'assets/supplies/deck-stores/ship-supply-deck-stores-7.jpg',80,54,'406|270',2,1442909026,47,'ship-supply-deck-stores-7.jpg','ship supply deck stores &#40;7&#41;'),('ship-suppl...jpg','jpg','image',104469,'assets/supplies/deck-stores/ship-supply-deck-stores-8.jpg',80,54,'406|270',2,1442909026,47,'ship-supply-deck-stores-8.jpg','ship supply deck stores &#40;8&#41;'),('ship-suppl...jpg','jpg','image',88217,'assets/supplies/deck-stores/ship-supply-deck-stores-9.jpg',80,54,'406|270',2,1442909027,47,'ship-supply-deck-stores-9.jpg','ship supply deck stores &#40;9&#41;'),('ship-suppl...jpg','jpg','image',116305,'assets/supplies/deck-stores/ship-supply-deck-stores-10.jpg',80,54,'406|270',2,1442909027,47,'ship-supply-deck-stores-10.jpg','ship supply deck stores &#40;10&#41;'),('ship-suppl...jpg','jpg','image',83245,'assets/supplies/deck-stores/ship-supply-deck-stores-11.jpg',80,54,'406|270',2,1442909027,47,'ship-supply-deck-stores-11.jpg','ship supply deck stores &#40;11&#41;'),('ship-suppl...jpg','jpg','image',58430,'assets/supplies/deck-stores/ship-supply-deck-stores-12.jpg',80,54,'406|270',2,1442909027,47,'ship-supply-deck-stores-12.jpg','ship supply deck stores &#40;12&#41;'),('ship-suppl...jpg','jpg','image',66179,'assets/supplies/deck-stores/ship-supply-deck-stores-13.jpg',80,54,'406|270',2,1442909028,47,'ship-supply-deck-stores-13.jpg','ship supply deck stores &#40;13&#41;'),('ship-suppl...jpg','jpg','image',106624,'assets/supplies/deck-stores/ship-supply-deck-stores-14.jpg',80,54,'406|270',2,1442909028,47,'ship-supply-deck-stores-14.jpg','ship supply deck stores &#40;14&#41;'),('ship-suppl...jpg','jpg','image',93511,'assets/supplies/deck-stores/ship-supply-deck-stores-15.jpg',80,54,'406|270',2,1442909028,47,'ship-supply-deck-stores-15.jpg','ship supply deck stores &#40;15&#41;'),('ship-suppl...jpg','jpg','image',110670,'assets/supplies/deck-stores/ship-supply-deck-stores-16.jpg',80,54,'406|270',2,1442909029,47,'ship-supply-deck-stores-16.jpg','ship supply deck stores &#40;16&#41;'),('ship-suppl...jpg','jpg','image',70591,'assets/supplies/deck-stores/ship-supply-deck-stores-17.jpg',80,54,'406|270',2,1442909029,47,'ship-supply-deck-stores-17.jpg','ship supply deck stores &#40;17&#41;'),('ship-suppl...jpg','jpg','image',63471,'assets/supplies/deck-stores/ship-supply-deck-stores-18.jpg',80,54,'406|270',2,1442909029,47,'ship-supply-deck-stores-18.jpg','ship supply deck stores &#40;18&#41;'),('ship-suppl...jpg','jpg','image',60994,'assets/supplies/deck-stores/ship-supply-deck-stores-19.jpg',80,54,'406|270',2,1442909030,47,'ship-supply-deck-stores-19.jpg','ship supply deck stores &#40;19&#41;'),('ship-suppl...jpg','jpg','image',82025,'assets/supplies/deck-stores/ship-supply-deck-stores-20.jpg',80,54,'406|270',2,1442909030,47,'ship-supply-deck-stores-20.jpg','ship supply deck stores &#40;20&#41;'),('ship-suppl...jpg','jpg','image',64598,'assets/supplies/deck-stores/ship-supply-deck-stores-21.jpg',80,54,'406|270',2,1442909031,47,'ship-supply-deck-stores-21.jpg','ship supply deck stores &#40;21&#41;'),('ship-suppl...jpg','jpg','image',59734,'assets/supplies/deck-stores/ship-supply-deck-stores-22.jpg',80,60,'400|300',2,1442909031,47,'ship-supply-deck-stores-22.jpg','ship supply deck stores &#40;22&#41;'),('ship-suppl...jpg','jpg','image',76566,'assets/supplies/deck-stores/ship-supply-deck-stores-23.jpg',80,54,'406|270',2,1442909031,47,'ship-supply-deck-stores-23.jpg','ship supply deck stores &#40;23&#41;');
/*!40000 ALTER TABLE `nv4_upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users`
--

DROP TABLE IF EXISTS `nv4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `gender` char(1) DEFAULT '',
  `photo` varchar(255) DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `passlostkey` varchar(50) DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checknum` varchar(40) DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) DEFAULT '',
  `last_agent` varchar(255) DEFAULT '',
  `last_openid` varchar(255) DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40) DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`),
  KEY `idsite` (`idsite`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users`
--

LOCK TABLES `nv4_users` WRITE;
/*!40000 ALTER TABLE `nv4_users` DISABLE KEYS */;
INSERT INTO `nv4_users` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','{SSHA}RxhFijY9DEpYQTyHPh5L8lKE3/96cmJr','trungnghiack@gmail.com','admin','','','',0,'',1439973726,'where are you from','daklak bmt','',0,1,'',1,'',1439973726,'','','',0,0,''),(2,'web24','a43bdc040a35ab9bad37d8e3d8dd7d39','{SSHA}w2lJBQBHS70jiSO1pumYV/6QKxgxbUxn','hoangnhan@gmail.com','hoangnhan','','','',0,'',1440747988,'hoangnhan','hoangnhan','',0,1,'',1,'',0,'','','',0,0,'');
/*!40000 ALTER TABLE `nv4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_config`
--

DROP TABLE IF EXISTS `nv4_users_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_config` (
  `config` varchar(100) NOT NULL,
  `content` text,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_config`
--

LOCK TABLES `nv4_users_config` WRITE;
/*!40000 ALTER TABLE `nv4_users_config` DISABLE KEYS */;
INSERT INTO `nv4_users_config` VALUES ('access_admin','a:6:{s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}',1352873462),('password_simple','000000|1234|2000|12345|111111|123123|123456|654321|696969|1234567|12345678|123456789|1234567890|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman',1439973638),('deny_email','yoursite.com|mysite.com|localhost|xxx',1439973638),('deny_name','anonimo|anonymous|god|linux|nobody|operator|root',1439973638),('avatar_width','80',1439973638),('avatar_height','80',1439973638),('siteterms_en','<p style=\"text-align:center;\"> <strong>Website usage terms and conditions – sample template</strong></p><p> Welcome to our website. If you continue to browse and use this website you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]’s relationship with you in relation to this website.<br /> The term ‘[business name]’ or ‘us’ or ‘we’ refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term ‘you’ refers to the user or viewer of our website.<br /> The use of this website is subject to the following terms of use:<br /> • The content of the pages of this website is for your general information and use only. It is subject to change without notice.<br /> • Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.<br /> • Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.<br /> • This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.<br /> • All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.<br /> • Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.<br /> • fr0m time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).<br /> • You may not crea-te a link to this website fr0m another website or document without [business name]’s prior written consent.<br /> • Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Scotland and Wales.</p>',1274757617);
/*!40000 ALTER TABLE `nv4_users_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_field`
--

DROP TABLE IF EXISTS `nv4_users_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field` varchar(25) NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') NOT NULL DEFAULT 'textbox',
  `field_choices` text NOT NULL,
  `sql_choices` text NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) NOT NULL DEFAULT '',
  `func_callback` varchar(75) NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) NOT NULL,
  `language` text NOT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `field` (`field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_field`
--

LOCK TABLES `nv4_users_field` WRITE;
/*!40000 ALTER TABLE `nv4_users_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_info`
--

DROP TABLE IF EXISTS `nv4_users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_info`
--

LOCK TABLES `nv4_users_info` WRITE;
/*!40000 ALTER TABLE `nv4_users_info` DISABLE KEYS */;
INSERT INTO `nv4_users_info` VALUES (1),(2);
/*!40000 ALTER TABLE `nv4_users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_openid`
--

DROP TABLE IF EXISTS `nv4_users_openid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `opid` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`opid`),
  KEY `userid` (`userid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_openid`
--

LOCK TABLES `nv4_users_openid` WRITE;
/*!40000 ALTER TABLE `nv4_users_openid` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_openid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_question`
--

DROP TABLE IF EXISTS `nv4_users_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  UNIQUE KEY `title` (`title`,`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_question`
--

LOCK TABLES `nv4_users_question` WRITE;
/*!40000 ALTER TABLE `nv4_users_question` DISABLE KEYS */;
INSERT INTO `nv4_users_question` VALUES (1,'What is the first name of your favorite uncle?','en',1,1274841115,1274841115),(2,'whe-re did you meet your spouse','en',2,1274841123,1274841123),(3,'What is your oldest cousin&#039;s name?','en',3,1274841131,1274841131),(4,'What is your youngest child&#039;s username?','en',4,1274841142,1274841142),(5,'What is your oldest child&#039;s username?','en',5,1274841150,1274841150),(6,'What is the first name of your oldest niece?','en',6,1274841158,1274841158),(7,'What is the first name of your oldest nephew?','en',7,1274841167,1274841167),(8,'What is the first name of your favorite aunt?','en',8,1274841175,1274841175),(9,'whe-re did you spend your honeymoon?','en',9,1274841183,1274841183);
/*!40000 ALTER TABLE `nv4_users_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv4_users_reg`
--

DROP TABLE IF EXISTS `nv4_users_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `checknum` varchar(50) NOT NULL DEFAULT '',
  `users_info` text,
  `openid_info` text,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `login` (`username`),
  UNIQUE KEY `md5username` (`md5username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv4_users_reg`
--

LOCK TABLES `nv4_users_reg` WRITE;
/*!40000 ALTER TABLE `nv4_users_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `nv4_users_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'travel360'
--

--
-- Dumping routines for database 'travel360'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-23 15:11:04
