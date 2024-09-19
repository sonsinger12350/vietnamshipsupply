<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2016 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Wed, 06 Apr 2016 00:56:59 GMT
 */

if ( ! defined( 'NV_IS_FILE_ADMIN' ) ) die( 'Stop!!!' );

$error = array();
$row = array();
$row['id'] = 0;
$row['title'] = '';
$row['content'] = '';
$row['maillist'] = '';

if ( $nv_Request->isset_request( 'submit', 'post' ) )
{
	$row['title'] = $nv_Request->get_title( 'title', 'post', '' );
	$row['content'] = $nv_Request->get_editor( 'content', '', NV_ALLOWED_HTML_TAGS );
	$row['maillist'] = $nv_Request->get_textarea( 'maillist', NV_ALLOWED_HTML_TAGS, 1 );

	if( empty( $row['title'] ) )
	{
		$error[] = $lang_module['error_required_title'];
	}
	elseif( empty( $row['content'] ) )
	{
		$error[] = $lang_module['error_required_content'];
	}
	elseif( empty( $row['maillist'] ) )
	{
		$error[] = $lang_module['error_required_maillist'];
	}

	if( empty( $error ) )
	{
		try
		{
			$email_list = explode(';', $row['maillist']);
			$sendmail = @nv_sendmail($global_config['site_email'], $email_list, $row['title'], $row['content']);

			if ($sendmail) {
				$stmt = $db->prepare( 'INSERT INTO ' . NV_PREFIXLANG . '_' . $module_data . '_sendmail (title, content, maillist, adminid, sendtime) VALUES (:title, :content, :maillist, ' . $admin_info['userid'] . ', ' . NV_CURRENTTIME . ')' );
				$stmt->bindParam( ':title', $row['title'], PDO::PARAM_STR );
				$stmt->bindParam( ':content', $row['content'], PDO::PARAM_STR, strlen($row['content']) );
				$stmt->bindParam( ':maillist', $row['maillist'], PDO::PARAM_STR, strlen($row['maillist']) );

				$exc = $stmt->execute();
				if( $exc )
				{
					$nv_Cache->delMod( $module_name );
					Header( 'Location: ' . NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name . '&' . NV_OP_VARIABLE . '=sendmail' );
					die();
				}
			}
		}
		catch( PDOException $e )
		{
			trigger_error( $e->getMessage() );
			die( $e->getMessage() ); //Remove this line after checks finished
		}
	}
}

if( defined( 'NV_EDITOR' ) ) require_once NV_ROOTDIR . '/' . NV_EDITORSDIR . '/' . NV_EDITOR . '/nv.php';
$row['content'] = htmlspecialchars( nv_editor_br2nl( $row['content'] ) );
if( defined( 'NV_EDITOR' ) and nv_function_exists( 'nv_aleditor' ) )
{
	$row['content'] = nv_aleditor( 'content', '100%', '300px', $row['content'] );
}
else
{
	$row['content'] = '<textarea style="width:100%;height:300px" name="content">' . $row['content'] . '</textarea>';
}

$xtpl = new XTemplate( $op . '.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file );
$xtpl->assign( 'LANG', $lang_module );
$xtpl->assign( 'MODULE_NAME', $module_name );
$xtpl->assign( 'OP', $op );
$xtpl->assign( 'ROW', $row );

if( ! empty( $error ) )
{
	$xtpl->assign( 'ERROR', implode( '<br />', $error ) );
	$xtpl->parse( 'main.error' );
}

$xtpl->parse( 'main' );
$contents = $xtpl->text( 'main' );

$page_title = $lang_module['sendmail-content'];

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme( $contents );
include NV_ROOTDIR . '/includes/footer.php';