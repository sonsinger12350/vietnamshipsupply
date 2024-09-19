<?php

/**
 * @Project NUKEVIET 4.x
 * @Author THUCVINH (tieplua@gmail.com)
 * @License GNU/GPL version 2 or any later version
 */

if( ! defined( 'NV_IS_MOD_PHOTO' ) ) die( 'Stop!!!' );

$page_title = $module_info['custom_title'];
$key_words = $module_info['keywords'];
 
 

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme( $contents );
include NV_ROOTDIR . '/includes/footer.php';
