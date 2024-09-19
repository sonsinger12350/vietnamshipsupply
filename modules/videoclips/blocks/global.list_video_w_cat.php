<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Thu, 19 Jun 2014 02:27:09 GMT
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');

if (!nv_function_exists('nv4_block_list_video_w_cat')) {
    /**
     * nv_block_config_list_video_w_cat()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_list_video_w_cat($module, $data_block, $lang_block)
    {
        global $site_mods;

        $html = '';
        $html .= '<div class="form-group">';
        $html .= '<label class="control-label col-sm-6">' . $lang_block['numrow'] . ':</label>';
        $html .= '<div class="col-sm-8"><input type="text" class="form-control" name="config_numrow" value="' . $data_block['numrow'] . '"/></div>';
        $html .= '</div>';
        return $html;
    }

    /**
     * nv_block_config_list_video_w_cat_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_list_video_w_cat_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 0);
        return $return;
    }

    /**
     * nv4_block_list_video_w_cat()
     *
     * @param mixed $block_config
     * @return
     */
    function nv4_block_list_video_w_cat($block_config)
    {
        global $global_config, $db, $site_mods, $module_name, $module_data, $module_info, $module_file, $catid;

        $mod_name = $block_config['module'];
        // var_dump($module_data);die();
        $db->sqlreset()
            ->select('t1.*')
            ->from(NV_PREFIXLANG . '_' . $site_mods[$mod_name]['module_data'] . '_clip AS t1')
            ->join('INNER JOIN ' .NV_PREFIXLANG . '_' . $site_mods[$mod_name]['module_data'] . '_topic AS t2 ON t1.tid = t2.id')
            ->where("t1.status = 1 AND t2.status = 1 AND t2.in_news_cat =" .$catid. " AND t2.in_news_module = '".$module_data."'")
            ->order('t1.addtime DESC')
            ->limit($block_config['numrow']);

        $sth = $db->prepare($db->sql());
        $sth->execute();
        $list = $sth->fetchAll();

        if (isset($site_mods[$mod_name])) {
            $mod_file = $site_mods[$mod_name]['module_file'];
            $mod_data = $site_mods[$mod_name]['module_data'];
            $mod_upload = $site_mods[$mod_name]['module_upload'];
        }

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $mod_file . '/block_list_video_w_cat.tpl')) {
            $block_theme = $global_config['module_theme'];
        } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/' . $mod_file . '/block_list_video_w_cat.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('block_list_video_w_cat.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file);
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('TEMPLATE', $block_theme);
        $a = 1;
        foreach ($list as $row) {
            if (!empty($row['img'])) {
                $imageinfo = nv_ImageInfo(NV_ROOTDIR . '/' . $row['img'], 120, true, NV_ROOTDIR . '/' . NV_FILES_DIR . '/' . $mod_upload);
                $row['image'] = $imageinfo['src'];
            } else {
                $row['image'] = NV_BASE_SITEURL . "themes/" . $block_theme . "/images/" . $mod_file . "/video.png";
            }
            $code = '';
            if(!empty($row['externalpath'])){
                if(preg_match("/^(http(s)?\:)?\/\/([w]{3})?\.youtube[^\/]+\/watch\?v\=([^\&]+)\&?(.*?)$/is", $row['externalpath'], $m)){
                    $row['image'] = 'https://i3.ytimg.com/vi/'.$m[4].'/maxresdefault.jpg';
                    $code = $m[4];
                } elseif (preg_match("/(http(s)?\:)?\/\/youtu?\.be[^\/]?\/([^\&]+)$/isU", $row['externalpath'], $m)) {
                    $row['image'] = 'https://i3.ytimg.com/vi/'.$m[3].'/maxresdefault.jpg';
                    $code = $m[3];
                }
            }
            


            $row['link'] = nv_url_rewrite(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $mod_name . '&amp;' . NV_OP_VARIABLE . '=video-' . $row['alias'], true);
            $xtpl->assign('CODE', $code);
            $xtpl->assign('ROW', $row);
            if($a == 1){
                $xtpl->parse('main.first');
            }
            else{
                $xtpl->parse('main.loop');
            }
            $a++;
        }
        $xtpl->parse('main');
        return $xtpl->text('main');
    }

}

if (defined('NV_SYSTEM')) {
    $content = nv4_block_list_video_w_cat($block_config);
}
