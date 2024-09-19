<?php

/**
 * @Project NUKEVIET 4.x
 * @Author THUCVINH (tieplua@gmail.com)
 * @License GNU/GPL version 2 or any later version
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( ! nv_function_exists( 'content_slider' ) )
{

	function nv_block_config_slider_blocks( $module, $data_block, $lang_block )
	{
		global $nv_Cache, $site_mods;
		$html = '';
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['group_id'] . '</td>';
		$html .= '	<td><select name="config_group_id" class="form-control w200">';

		$sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_group ORDER BY weight ASC';
		$group = $nv_Cache->db($sql, 'group_id', $module);
		foreach( $group as $l )
		{
			$sel = ( $data_block['group_id'] == $l['group_id'] ) ? ' selected' : '';
			$html .= '<option value="' . $l['group_id'] . '" ' . $sel . '>' . $l['title'] . '</option>';
		}

		$html .= '	</select></td>';
		$html .= '</tr>';

		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['numrow'] . '</td>';
		$html .= '	<td><input type="text" name="config_numrow" size="5" value="' . $data_block['numrow'] . '" class="form-control w100"/></td>';
		$html .= '</tr>';
		$html .= '<tr>';
		$html .= '	<td>' . $lang_block['template'] . '</td>';
		$html .= '	<td><select name="config_template" class="form-control w200">';

		$sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_template ORDER BY weight ASC';
		$template = $nv_Cache->db($sql, 'template_id', $module);
		foreach( $template as $l )
		{
			$sel = ( $data_block['template'] == $l['title'] ) ? ' selected' : '';
			$html .= '<option value="' . $l['title'] . '" ' . $sel . '>' . $l['title'] . '</option>';
		}
		$html .= '	</select></td>';
		$html .= '</tr>';

		return $html;
	}

	function nv_block_config_slider_blocks_submit( $module, $lang_block )
	{
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$return['config'] = array();
		$return['config']['group_id'] = $nv_Request->get_int( 'config_group_id', 'post', 0 );
		$return['config']['numrow'] = $nv_Request->get_int( 'config_numrow', 'post', 0 );
		$return['config']['template'] = $nv_Request->get_title( 'config_template', 'post', 0 );
		return $return;
	}

	function content_slider( $block_config )
	{

		global $global_config, $module_info, $site_mods, $nv_Cache, $module_name;
		
		$module = $block_config['module'];
		$mod_data = $site_mods[$module]['module_data'];
		$mod_file = $site_mods[$module]['module_file'];
		
		$block_config['numrow'] = ( $block_config['numrow'] != 0 ) ? $block_config['numrow'] : 10;

		$sql = 'SELECT photo_id, title, description, description2, description3, description4, description5, links, image, thumb FROM ' . NV_PREFIXLANG . '_' . $mod_data . '_photo WHERE group_id=' . $block_config['group_id'] . ' AND status = 1 ORDER BY weight ASC LIMIT 0 , ' . $block_config['numrow'];
 
		$array_photo = $nv_Cache->db( $sql, 'photo_id', $module);
		if( !empty( $array_photo ) )
		{
			if( file_exists( NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $mod_file . '/block.' . $block_config['template'] . '.tpl' ) )
			{
				$block_theme = $global_config['module_theme'];
			}
			else
			{
				$block_theme = 'default';
			}

			$xtpl = new XTemplate( 'block.' . $block_config['template'] . '.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file );

			$xtpl->assign( 'TEMPLATE', $block_theme );
			$xtpl->assign( 'MOD_FILE', $mod_file );
			
			if( ! defined( 'BXSLIDER' ) )
			{
				$xtpl->parse( 'main.load_bxslider' );
				define( 'BXSLIDER', true );
			}
			
			$a = 1;
			foreach( $array_photo as $data )
			{
				// print_r($data);die();
				if(!empty($data['description'])){
					$xtpl->assign( 'des', $data['description'] );
					$xtpl->parse( 'main.loop.des' );
				}				
				if(!empty($data['description2'])){
					$xtpl->assign( 'des2', $data['description2'] );
					$xtpl->parse( 'main.loop.des2' );
				}
				if(!empty($data['description3'])){
					$xtpl->assign( 'des3', $data['description3'] );
					$xtpl->parse( 'main.loop.des3' );
				}
				if(!empty($data['description4'])){
					$xtpl->assign( 'des4', $data['description4'] );
					$xtpl->parse( 'main.loop.des4' );
				}
				if(!empty($data['description5'])){
					$xtpl->assign( 'des5', $data['description5'] );
					$xtpl->parse( 'main.loop.des5' );
				}
	
				$data['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module . '/images/' . $data['image'];
				$data['thumb'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module . '/thumbs/' . $data['thumb'];
				
				$data['link'] = !empty( $data['links'] ) ? nv_unhtmlspecialchars( $data['links'] ) : '#';
				
				$data['slide'] = $a;
				
				$xtpl->assign( 'DATA', $data );
				$xtpl->parse( 'main.loop' );
				++$a;
			}
			$xtpl->parse( 'main' );
			return $xtpl->text( 'main' );
		}
	}

}

if( defined( 'NV_SYSTEM' ) )
{
	global $site_mods, $module_name;
	$module = $block_config['module'];
	if( isset( $site_mods[$module] ) )
	{
		 
		$content = content_slider( $block_config );
	}
}

