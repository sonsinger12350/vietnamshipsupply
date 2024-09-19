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

if (! nv_function_exists('nv_hotline_banner')) {
    function nv_hotline_banner_config()
    {
        global $lang_global, $data_block;

        $html .= '<div class="form-group">';
        $html .= '<label class="control-label col-sm-6">Số điện thoại</label>';
        $html .= '<div class="col-sm-18"><input type="text" name="phone" value="' . nv_htmlspecialchars($data_block['phone']) . '" size="80"></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '<label class="control-label col-sm-6">Số điện thoại khi click gọi</label>';
        $html .= '<div class="col-sm-18"><input type="text" name="phone_link" value="' . nv_htmlspecialchars($data_block['phone_link']) . '" size="80"></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '<label class="control-label col-sm-6">Miêu tả</label>';
        $html .= '<div class="col-sm-18"><input type="text" name="hometext" value="' . nv_htmlspecialchars($data_block['hometext']) . '" size="80"></div>';
        $html .= '</div>';
      
       

        return $html;
    }

    function nv_hotline_banner_submit()
    {
        global $nv_Request;

        $return = array();
        $return['error'] = array();
        $return['config']['phone'] = $nv_Request->get_title('phone', 'post');
        $return['config']['phone_link'] = $nv_Request->get_title('phone_link', 'post');
        $return['config']['hometext'] = $nv_Request->get_title('hometext', 'post');
    
        return $return;
    }

    /**
     * nv_menu_theme_default_footer()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_hotline_banner($block_config)
    {
        global $global_config, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.hotline_banner.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.hotline_banner.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.hotline_banner.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);

       

        $xtpl->assign('DATA', $block_config);
      
       
        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_hotline_banner($block_config);
}
