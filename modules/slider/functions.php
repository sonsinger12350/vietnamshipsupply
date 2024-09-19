<?php

/**
 * @Project NUKEVIET 4.x
 * @Author THUCVINH (tieplua@gmail.com)
 * @License GNU/GPL version 2 or any later version
 */
 
if ( ! defined( 'NV_SYSTEM' ) ) die( 'Stop!!!' );

define( 'NV_IS_MOD_PHOTO', true );

if( ! $home )
{
	header( "Location:" . nv_url_rewrite( NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA, true ) );
}