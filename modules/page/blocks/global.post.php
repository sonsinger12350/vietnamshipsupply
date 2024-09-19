<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VIETNAM DIGITAL TRADING TECHNOLOGY  <contact@thuongmaiso.vn>
 * @Copyright (C) 2014 VIETNAM DIGITAL TRADING TECHNOLOGY . All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 3/25/2010 18:6
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!nv_function_exists('nv_post')) {
    /**
     * nv_block_config_post()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_post($module, $data_block, $lang_block)
    {
        global $db, $db_config, $site_mods;

        $html = '';

        $html .= '<div class="form-group">';
        $html .= '  <label class="control-label col-sm-6">Chọn bài viết:</label>';
        $html .= '  <div class="col-sm-9">';
        $html .= '      <select class="form-control" name="config_id_post">';
        $sql_rows = $db->query('SELECT * FROM ' .NV_PREFIXLANG .'_'.$site_mods[$module]['module_data'].' WHERE status = 1')->fetchAll();
        foreach ($sql_rows as $row_post) {
            $html .= '<option value="'.$row_post['id'].'" '. (($row_post['id'] == $data_block['id_post']) ? 'selected="selected"' : '') .' > '.$row_post['title'].'</option>';
        }

        $html .= '      </select>';
        $html .= '  </div>';
        $html .= '</div>';


        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['title_length'] . ':</label>';
        $html .= '	<div class="col-sm-9"><input type="text" class="form-control" name="config_title_length" value="' . $data_block['title_length'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['content_length'] . ':</label>';
        $html .= '	<div class="col-sm-9"><input type="text" name="config_content_length" class="form-control" value="' . $data_block['content_length'] . '"/></div>';
        $html .= '</div>';
        return $html;
    }

    /**
     * nv_block_config_post_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_post_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['title_length'] = $nv_Request->get_int('config_title_length', 'post', 24);
        $return['config']['content_length'] = $nv_Request->get_int('config_content_length', 'post', 5);
        $return['config']['id_post'] = $nv_Request->get_int('config_id_post', 'post', 1);
        return $return;
    }

    /**
     * nv_post()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_post($block_config)
    {
        global $nv_Cache, $global_config, $site_mods, $lang_global, $db;
        $module = $block_config['module'];

        if (!isset($site_mods[$module])) {
            return '';
        }

        $db->sqlreset()->select('id, title, alias, description')->from(NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'])->where('id = '.$block_config['id_post']);

        $list = $nv_Cache->db($db->sql(), 'id', $module);

        if (!empty($list)) {
            if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/page/block.post.tpl')) {
                $block_theme = $global_config['module_theme'];
            } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/page/block.post.tpl')) {
                $block_theme = $global_config['site_theme'];
            } else {
                $block_theme = 'default';
            }

            $xtpl = new XTemplate('block.post.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/page');
            $xtpl->assign('GLANG', $lang_global);
            foreach ($list as $l) {
                $l['title_clean60'] = nv_clean60($l['title'], $block_config['title_length']);
                $l['description_clean60'] = nv_clean60(strip_tags($l['description'],'<br>'), $block_config['content_length']);
                $l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'] . $global_config['rewrite_exturl'];
                $xtpl->assign('ROW', $l);
                $xtpl->parse('main.loop');
            }

            $xtpl->parse('main');
            return $xtpl->text('main');
        } else {
            return '';
        }
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_post($block_config);
}
