<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES ., JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Jan 17, 2011 11:34:27 AM
 */

if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_about')) {
    function nv_about_config()
    {
        global $lang_global, $data_block;

        $html = '<tr>';
        $html .= '<td>Hình nền</td>';
        $html .= '<td><input type="text" name="hinhnen" value="' . nv_htmlspecialchars($data_block['hinhnen']) . '" size="80"></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>Logo</td>';
        $html .= '<td><input type="text" name="logo" value="' . nv_htmlspecialchars($data_block['logo']) . '" size="80"></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>Mô tả</td>';
        $html .= '<td><input type="text" name="mota" value="' . nv_htmlspecialchars($data_block['mota']) . '" size="80"></td>';
        $html .= '</tr>';
      
       

        return $html;
    }

    function nv_about_submit()
    {
        global $nv_Request;

        $return = array();
        $return['error'] = array();
        $return['config']['hinhnen'] = $nv_Request->get_title('hinhnen', 'post');
        $return['config']['logo'] = $nv_Request->get_title('logo', 'post');
        $return['config']['mota'] = $nv_Request->get_title('mota', 'post');
    
        return $return;
    }

    /**
     * nv_menu_theme_default_footer()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_about($block_config)
    {
        global $global_config, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.about.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.about.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.about.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);

       

        $xtpl->assign('DATA', $block_config);
      
       
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_about($block_config);
}
