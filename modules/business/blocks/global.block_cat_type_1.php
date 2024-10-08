<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 10 Dec 2011 06:46:54 GMT
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_block_cat_type_1')) {
    function nv_block_config_cat_type_1($module, $data_block, $lang_block)
    {
        global $nv_Cache, $site_mods;

        $html = '<tr>';
        $html .= '<td>' . $lang_block['catid'] . '</td>';
        $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat ORDER BY sort ASC';
        $list = $nv_Cache->db($sql, '', $module);
        $html .= '<td>';
        foreach ($list as $l) {
            $xtitle_i = '';

            if ($l['lev'] > 0) {
                for ($i = 1; $i <= $l['lev']; ++$i) {
                    $xtitle_i .= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                }
            }
            $html .= $xtitle_i . '<label><input class="linkcat" data-link="' . NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'] . '" type="checkbox" name="config_catid[]" value="' . $l['catid'] . '" ' . ((in_array($l['catid'], $data_block['catid'])) ? ' checked="checked"' : '') . '</input>' . $l['title'] . '</label><br />';
        }
        $html .= '</td>';
        $html .= '</tr>';
        $html .= '<script type="text/javascript">';
        $html .= '	$("input.linkcat").click(function() {';
        $html .= '		if ($(this).prop("checked")) {';
		$html .= '			var link = $(this).data("link");';
        $html .= '			$("input[name=title]").val(trim($(this).parent().text()));';
        $html .= '			$("input[name=link]").val(link);';
        $html .= '		}';
        $html .= '	});';
        $html .= '</script>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_block['title_length'] . '</td>';
        $html .= '<td><input type="text" class="form-control w200" name="config_title_length" size="5" value="' . $data_block['title_length'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_block['numrow'] . '</td>';
        $html .= '<td><input type="text" class="form-control w200" name="config_numrow" size="5" value="' . $data_block['numrow'] . '"/></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>' . $lang_block['showtooltip'] . '</td>';
        $html .= '<td>';
        $html .= '<input type="checkbox" value="1" name="config_showtooltip" ' . ($data_block['showtooltip'] == 1 ? 'checked="checked"' : '') . ' /><br /><br />';
        $tooltip_position = array( 'top' => $lang_block['tooltip_position_top'], 'bottom' => $lang_block['tooltip_position_bottom'], 'left' => $lang_block['tooltip_position_left'], 'right' => $lang_block['tooltip_position_right'] );
        $html .= '<span class="text-middle pull-left">' . $lang_block['tooltip_position'] . '&nbsp;</span><select name="config_tooltip_position" class="form-control w100 pull-left">';
        foreach ($tooltip_position as $key => $value) {
            $html .= '<option value="' . $key . '" ' . ($data_block['tooltip_position'] == $key ? 'selected="selected"' : '') . '>' . $value . '</option>';
        }
        $html .= '</select>';
        $html .= '&nbsp;<span class="text-middle pull-left">' . $lang_block['tooltip_length'] . '&nbsp;</span><input type="text" class="form-control w100 pull-left" name="config_tooltip_length" size="5" value="' . $data_block['tooltip_length'] . '"/>';
        $html .= '</td>';
        $html .= '</tr>';
        return $html;
    }

    function nv_block_config_cat_type_1_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['catid'] = $nv_Request->get_array('config_catid', 'post', array());
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 0);
        $return['config']['title_length'] = $nv_Request->get_int('config_title_length', 'post', 20);
        $return['config']['showtooltip'] = $nv_Request->get_int('config_showtooltip', 'post', 0);
        $return['config']['tooltip_position'] = $nv_Request->get_string('config_tooltip_position', 'post', 0);
        $return['config']['tooltip_length'] = $nv_Request->get_string('config_tooltip_length', 'post', 0);
        return $return;
    }

    function nv_block_cat_type_1($block_config)
    {
        global $nv_Cache, $module_array_cat, $site_mods, $module_config, $global_config, $db, $lang_global, $nv_Cache;
        $module = $block_config['module'];
        $show_no_image = $module_config[$module]['show_no_image'];
        $blockwidth = $module_config[$module]['blockwidth'];

        if (empty($block_config['catid'])) {
            return '';
        }

        $content = '';
        $cache_file = '';
        
        if(!defined('NV_IS_MODADMIN')){
            $cache_file = NV_LANG_DATA . '_block_cat_type_1_' . $block_config['bid'] . '_' . NV_CACHE_PREFIX . '.cache';
        }
        
        if (($cache = $nv_Cache->getItem($module, $cache_file)) != false) {
            // $array_block_new_items = unserialize($cache);
            $content = $cache;
        } else {


            $catid = implode(',', $block_config['catid']);

            $db->sqlreset()
                ->select('id, catid, title, alias, homeimgfile, homeimgthumb, hometext, publtime, external_link')
                ->from(NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_rows')
                ->where('status= 1 AND catid IN(' . $catid . ')')
                ->order('publtime DESC')
                ->limit($block_config['numrow']);
            $list = $nv_Cache->db($db->sql(), 'id', $module);
            // print_r($list);die();
            if (! empty($list)) {
                if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme']  . '/modules/business/block_cat_type_1.tpl')) {
                    $block_theme = $global_config['module_theme'] ;
                } else {
                    $block_theme = 'default';
                }

                $xtpl = new XTemplate('block_cat_type_1.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/business');
                $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
                $xtpl->assign('TEMPLATE', $block_theme);
                foreach ($list as $l) {
                    $l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
                    if ($l['homeimgthumb'] == 1) {
                        $l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['homeimgfile'];
                    } elseif ($l['homeimgthumb'] == 2) {
                        $l['thumb'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $l['homeimgfile'];
                    } elseif ($l['homeimgthumb'] == 3) {
                        $l['thumb'] = $l['homeimgfile'];
                    } elseif (! empty($show_no_image)) {
                        $l['thumb'] = NV_BASE_SITEURL . $show_no_image;
                    } else {
                        $l['thumb'] = '';
                    }

                    $l['blockwidth'] = $blockwidth;

                    $l['hometext_clean'] = strip_tags($l['hometext']);
                    $l['hometext_clean'] = nv_clean60($l['hometext_clean'], $block_config['tooltip_length'], true);

                    if (! $block_config['showtooltip']) {
                        $xtpl->assign('TITLE', 'title="' . $l['title'] . '"');
                    }

                    

                    if ($l['external_link']) {
                        $l['target_blank'] = 'target="_blank"';
                    }
                    $dayofW = nv_date('l', $l['publtime']);
                    $day = nv_date('d', $l['publtime']);
                    $month = nv_date('n', $l['publtime']);
                    $year = nv_date('Y', $l['publtime']);


                    $xtpl->assign('dayofW', $dayofW);
                    $xtpl->assign('day', $day);
                    $xtpl->assign('month', $month);
                    $xtpl->assign('year', $year);                    
                    $xtpl->assign('fulldate', $dayofW.', '. $day.' tháng '.$month.', '.$year);
                    if ($a == 1) {
                        $l['title_clean'] = nv_clean60($l['title'], 60);
                    }
                    else { 
                        $l['title_clean'] = nv_clean60($l['title'], 50);
                    }

                    $xtpl->assign('GLANG', $lang_global);
                    $xtpl->assign('ROW', $l);
                    $xtpl->parse('main.loop');
    				
                }
    	
                if ($block_config['showtooltip']) {
                    $xtpl->assign('TOOLTIP_POSITION', $block_config['tooltip_position']);
                    $xtpl->parse('main.tooltip');
                }

                $xtpl->parse('main');
                $content = $xtpl->text('main');
            }



            $cache = $content;
            $nv_Cache->setItem($module, $cache_file, $cache);
        }
        return $content;
    }
}
if (defined('NV_SYSTEM')) {
    global $nv_Cache, $site_mods, $module_name, $global_array_cat, $module_array_cat;
    $module = $block_config['module'];
    if (isset($site_mods[$module])) {
        if ($module == $module_name) {
            $module_array_cat = $global_array_cat;
            unset($module_array_cat[0]);
        } else {
            $module_array_cat = array();
            $sql = 'SELECT catid, parentid, title, alias, viewcat, subcatid, numlinks, description, keywords, groups_view FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat ORDER BY sort ASC';
            $list = $nv_Cache->db($sql, 'catid', $module);
            if(!empty($list))
            {
                foreach ($list as $l) {
                    $module_array_cat[$l['catid']] = $l;
                    $module_array_cat[$l['catid']]['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'];
                }
            }
        }
        $content = nv_block_cat_type_1($block_config);
    }
}
