<?php

/**
 * @Project NUKEVIET 4.x
 * @Author THUCVINH (tieplua@gmail.com)
 * @License GNU/GPL version 2 or any later version
 */
 
if( ! defined( 'NV_IS_FILE_MODULES' ) ) die( 'Stop!!!' );

$sql_drop_module = array();

$sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $db_config['prefix'] . '_' . $lang . '_' . $module_data . '_group';
$sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $db_config['prefix'] . '_' . $lang . '_' . $module_data . '_photo';
$sql_drop_module[] = 'DROP TABLE IF EXISTS ' . $db_config['prefix'] . '_' . $lang . '_' . $module_data . '_template';
 

$sql_create_module = $sql_drop_module;

$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_group (
	group_id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
	title varchar(250) NOT NULL default '',
	status tinyint(1) NOT NULL default '1',
	weight smallint(4) NOT NULL DEFAULT '0',
	date_added int(11) unsigned NOT NULL default '0',
	PRIMARY KEY (group_id)
) ENGINE=MyISAM";	
 
$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_photo (
	photo_id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
	group_id mediumint(8) unsigned NOT NULL default '0',
	title varchar(250) NOT NULL default '',
	description text NOT NULL,
	
	description2 text NOT NULL,
	description3 text NOT NULL,
	description4 text NOT NULL,
	description5 text NOT NULL,
	
	links varchar(250) NOT NULL,
	image varchar(250) NOT NULL,
	thumb varchar(250) NOT NULL,
	status tinyint(1) NOT NULL default '1',
	weight smallint(4) NOT NULL DEFAULT '0',
	date_added int(11) unsigned NOT NULL default '0',
	PRIMARY KEY (photo_id),
	UNIQUE KEY title (title),
	KEY group_id (group_id)
) ENGINE=MyISAM";

$sql_create_module[] = "CREATE TABLE " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_template (
	template_id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
	title varchar(250) NOT NULL default '',
	weight smallint(4) NOT NULL DEFAULT '0',
	status tinyint(1) NOT NULL default '1',
	date_added int(11) unsigned NOT NULL default '0',
	PRIMARY KEY (template_id),
	UNIQUE KEY title (title)
) ENGINE=MyISAM"; 

$sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_template VALUES(NULL, 'slider', 1, 1, ". NV_CURRENTTIME .")"; 
$sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_template VALUES(NULL, 'slider_owl', 2, 1, ". NV_CURRENTTIME .")"; 
$sql_create_module[] = "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_template VALUES(NULL, 'doi_tac', 3, 1, ". NV_CURRENTTIME .")"; 

 
