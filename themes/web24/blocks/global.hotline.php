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

if (! nv_function_exists('nv_hotline')) {
    function nv_hotline_config()
    {
        global $lang_global, $data_block;

        $html = '<tr>';
        $html .= '<td>Hotline</td>';
        $html .= '<td><input type="text" name="config_phone" value="' . nv_htmlspecialchars($data_block['phone']) . '" size="80"></td>';
        $html .= '</tr>';

        return $html;
    }

    function nv_hotline_submit()
    {
        global $nv_Request;

        $return = array();
        $return['error'] = array();
        $return['config']['phone'] = $nv_Request->get_title('config_phone', 'post');
        return $return;
    }

    /**
     * nv_menu_theme_default_footer()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_hotline($block_config)
    {
        global $global_config, $lang_global;

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.hotline.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.hotline.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('global.hotline.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
        $xtpl->assign('LANG', $lang_global);
		
		if (! empty($block_config['phone'])) {
            $nums = array_map('trim', explode(',', nv_unhtmlspecialchars($block_config['phone'])));
            foreach ($nums as $k => $num) {
                unset($m);
                if (preg_match("/^(.*)\s*\[([0-9\+\.\,\;\*\#]+)\]$/", $num, $m)) {
                    $xtpl->assign('PHONE', array( 'number' => nv_htmlspecialchars($m[1]), 'href' => $m[2] ));
                    $xtpl->parse('main.phone.item.href');
                    $xtpl->parse('main.phone.item.href2');
                } else {
                    $num = preg_replace("/\[[^\]]*\]/", "", $num);
                    $xtpl->assign('PHONE', array( 'number' => nv_htmlspecialchars($num), 'href' => $num));
                }
                if ($k) {
                    $xtpl->parse('main.phone.item.comma');
                }
                $xtpl->parse('main.phone.item');
            }

            $xtpl->parse('main.phone');
        }
		$link = 'tel:' . $block_config['phone'];
        $xtpl->assign('link', $link);
        $xtpl->assign('DATA', $block_config);

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_hotline($block_config);
}
