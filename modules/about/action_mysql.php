<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 2-10-2010 20:59
 */

if (! defined('NV_IS_FILE_MODULES')) {
    die('Stop!!!');
}

$sql_drop_module = array();

$sql_drop_module[] = "DROP TABLE IF EXISTS " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . ";";
$sql_drop_module[] = "DROP TABLE IF EXISTS " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_config;";

$sql_create_module = $sql_drop_module;

/*
$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . " (
 id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
 title varchar(250) NOT NULL,
 alias varchar(250) NOT NULL,
 image varchar(255) DEFAULT '',
 imagealt varchar(255) DEFAULT '',
 imageposition tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
 icon text,
 titlesite text,
 hometext text,
 ratename text,
 ratenumber text,
 description text,
 bodytext mediumtext NOT NULL,
 keywords text,
 tags text,
 socialbutton tinyint(4) NOT NULL DEFAULT '0',
 activecomm varchar(255) DEFAULT '',
 layout_func varchar(100) DEFAULT '',
 weight smallint(4) NOT NULL DEFAULT '0',
 admin_id mediumint(8) unsigned NOT NULL DEFAULT '0',
 add_time int(11) NOT NULL DEFAULT '0',
 edit_time int(11) NOT NULL DEFAULT '0',
 status tinyint(1) unsigned NOT NULL DEFAULT '0',
 hitstotal MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
 hot_post TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
 PRIMARY KEY (id),
 UNIQUE KEY alias (alias)
) ENGINE=MyISAM";*/


$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . " (
 id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,

 
 tab_1_titletab varchar(255) NULL DEFAULT '',
 tab_1_alias varchar(255) NULL DEFAULT '',
 tab_1_icon varchar(255) NULL DEFAULT '',
 tab_1_description text NULL DEFAULT '',

 tab_2_titletab varchar(255) NULL DEFAULT '',
 tab_2_alias varchar(255) NULL DEFAULT '',
 tab_2_icon varchar(255) NULL DEFAULT '',
 tab_2_image varchar(255) NULL DEFAULT '',
 tab_2_bodytext text NULL DEFAULT '',


 tab_3_titletab varchar(255) NULL DEFAULT '',
 tab_3_alias varchar(255) NULL DEFAULT '',
 tab_3_icon varchar(255) NULL DEFAULT '',
 tab_3_bodytext text NULL DEFAULT '',


 tab_4_titletab varchar(255) NULL DEFAULT '',
 tab_4_alias varchar(255) NULL DEFAULT '',
 tab_4_icon varchar(255) NULL DEFAULT '',
 tab_4_image varchar(255) NULL DEFAULT '',
 tab_4_bid int(11) NULL DEFAULT 0,



 titlesite text NULL DEFAULT '',
 hometext text NULL DEFAULT '',
 keywords text NULL DEFAULT '',
 tags text NULL DEFAULT '',
 layout_func varchar(100) NULL DEFAULT '',
 weight smallint(4) NOT NULL DEFAULT '0',
 admin_id mediumint(8) unsigned NOT NULL DEFAULT '0',
 add_time int(11) NOT NULL DEFAULT '0',
 edit_time int(11) NOT NULL DEFAULT '0',
 status tinyint(1) unsigned NOT NULL DEFAULT '0',
 PRIMARY KEY (id)
) ENGINE=MyISAM";

/*
tab 1: về chúng tôi
	- title
	- description
	- bodytext
	- title video
	- url video
	- slider hình (module slider => id group)
tab 2:
	- title
	- bodytext
tab 3: sơ đồ tổ chức
	- title
	- description
	- file pdf (click view)
	- image
tab 4: đối tác
	- bid của free content
tab 5: chuyên gia tư vấn
	- bid của free content
tab 6: nhân sự
	- bid của free content
*/

$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_config (
 config_name varchar(30) NOT NULL,
 config_value varchar(255) NOT NULL,
 UNIQUE KEY config_name (config_name)
)ENGINE=MyISAM";

$sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_config VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', 1),
('table_slider', 'slider'),
('table_freecontent', 'freecontent')
";

$sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . " (id, weight, admin_id, add_time, edit_time, status) VALUES (NULL, 1, 1, ". NV_CURRENTTIME .", ". NV_CURRENTTIME .", 1)";

// Comments
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'auto_postcomm', '1')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'allowed_comm', '-1')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'view_comm', '6')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'setcomm', '4')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'activecomm', '1')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'emailcomm', '0')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'adminscomm', '')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'sortcomm', '0')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'captcha', '1')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'perpagecomm', '5')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'timeoutcomm', '360')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'allowattachcomm', '0')";
$sql_create_module[] = "INSERT INTO " . NV_CONFIG_GLOBALTABLE . " (lang, module, config_name, config_value) VALUES ('" . $lang . "', '" . $module_name . "', 'alloweditorcomm', '0')";
