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

if (! nv_function_exists('nv_lienhebanhang')) {
    function nv_lienhebanhang_config()
    {
        global $lang_global, $data_block;

        $html = '<tr>';
        $html .= '<td>Số điện thoại</td>';
        $html .= '<td><input type="text" name="sodienthoai" value="' . nv_htmlspecialchars($data_block['sodienthoai']) . '" size="80"></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>Mô tả</td>';
        $html .= '<td><input type="text" name="phongbanhang" value="' . nv_htmlspecialchars($data_block['phongbanhang']) . '" size="80"></td>';
        $html .= '</tr>';
        $html .= '<tr>';
        $html .= '<td>Phòng bán hàng</td>';
        $html .= '<td><input type="text" name="phongban" value="' . nv_htmlspecialchars($data_block['phongban']) . '" size="80"></td>';
        $html .= '</tr>';
      
       

        return $html;
    }

    function nv_lienhebanhang_submit()
    {
        global $nv_Request;

        $return = array();
        $return['error'] = array();
        $return['config']['sodienthoai'] = $nv_Request->get_title('sodienthoai', 'post');
        $return['config']['phongbanhang'] = $nv_Request->get_title('phongbanhang', 'post');
        $return['config']['phongban'] = $nv_Request->get_title('phongban', 'post');
    
        return $return;
    }

    /**
     * nv_menu_theme_default_footer()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_lienhebanhang($block_config)
    {
        global $global_config, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.lienhebanhang.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.lienhebanhang.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.lienhebanhang.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);

       

        $xtpl->assign('DATA', $block_config);
      
       
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_lienhebanhang($block_config);
}
