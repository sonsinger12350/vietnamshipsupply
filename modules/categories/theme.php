<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES ., JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Jul 11, 2010 8:43:46 PM
 */

if (!defined('NV_IS_MOD_PAGE')) {
    die('Stop!!!');
}

/**
 * nv_page_main()
 *
 * @param mixed $row
 * @param mixed $ab_links
 * @return
 */
function nv_page_main($row, $array_tag, $ab_links, $content_comment)
{
    global $module_name, $lang_module, $lang_global, $module_info, $module_upload, $meta_property, $client_info, $site_mods, $page_config, $global_config;

    $xtpl = new XTemplate('main.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('LANG', $lang_module);
    $xtpl->assign('GLANG', $lang_global);
    $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
    $xtpl->assign('TEMPLATE', $module_info['template']);
    $xtpl->assign('CONTENT', $row);

    // Khai báo các tham số dữ liệu có cấu trúc
    for($i = 1; $i <= 4; $i++){

        // Tab 1:
        if($i == 1){
            if(!empty($row['tab_1_urlvideo_id'])){
                $xtpl->parse('main.tab_'.$i.'.iframe_video');
            }
        }

        // Tab 2:
        if($i == 2){
        }

        // Tab 3:
        if($i == 3){
            // print_r($row['tab_3_image']);die();
        }

        // Tab 4:
        if($i == 4){
            foreach ($site_mods as $free_mod) {
                if($free_mod['module_file'] == 'freecontent' and $free_mod['module_data'] == $page_config['table_freecontent']){
                    $mod_upload_freecontent = $free_mod['module_upload'];
                }
            }
            if(!empty($row['tab_'.$i.'_free_array'])){
                $num = 1;
                $delay = 500;
                foreach ($row['tab_'.$i.'_free_array'] as $free_content) {
                    $free_content['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $mod_upload_freecontent . '/' . $free_content['image'];
                    $xtpl->assign('FREECONENT_I', $free_content);
                    $xtpl->assign('DELAY', $delay);
                    if($i == 4){
                        $delay += 200;
                        if($num == 4){
                            $delay = 500;
                        }
                    }
                    if($i == 5){
                        if($num == 1){
                            $num++;
                            $delay = 700;
                        }
                        $xtpl->assign('DELAY2', $delay);
                        $delay += 200;
                        if($num == 3){
                            $delay = 500;
                        }
                    }
                    if($i == 6){
                        if($num == 1){
                            $num++;
                            $delay = 700;
                        }
                        $xtpl->assign('DELAY2', $delay);
                        $delay += 200;
                        if($num == 4){
                            $delay = 500;
                        }
                    }
                    $num++;
                    $xtpl->parse('main.tab_'.$i.'.freecontent.loop');
                }
                $xtpl->parse('main.tab_'.$i.'.freecontent');
            }
        }

        if(!empty($row['tab_'.$i.'_titletab']) and !empty($row['tab_'.$i.'_alias'])){
            $xtpl->parse('main.tab_'.$i);
        }
    }

    if (defined('NV_IS_MODADMIN')) {
        $xtpl->assign('ADMIN_CHECKSS', md5($row['id'] . NV_CHECK_SESSION));
        $xtpl->assign('ADMIN_EDIT', NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=content&amp;id=' . $row['id']);
        $xtpl->parse('main.adminlink');

        // Hiển thị cảnh báo cho người quản trị nếu bài ngưng hoạt động
        if (!$row['status']) {
            $xtpl->parse('main.warning');
        }
    } elseif (!$row['status']) {
        nv_redirect_location(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name);
    }

    if (!empty($ab_links)) {
        foreach ($ab_links as $row) {
            $xtpl->assign('OTHER', $row);
            $xtpl->parse('main.other.loop');
        }
        $xtpl->parse('main.other');
    }

    if (! empty($array_tag)) {
        $t = sizeof($array_tag) - 1;
        foreach ($array_tag as $i => $value) {
            $xtpl->assign('TAG', $value['title']);
            $xtpl->assign('LINK_TAGS', nv_url_rewrite(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '='.$value['alias'],true));
            $xtpl->assign('SLASH', ($t == $i) ? '' : ', ');
            $xtpl->parse('main.tags.loop');
        }
        $xtpl->parse('main.tags');
    }
    
    if (!empty($content_comment)) {
        $xtpl->assign('CONTENT_COMMENT', $content_comment);
        $xtpl->parse('main.comment');
    }

    $xtpl->parse('main');
    return $xtpl->text('main');
}

/**
 * nv_page_main_list()
 *
 * @param mixed $array_data
 * @return
 */
function nv_page_main_list($array_data, $generate_page)
{
    global $lang_global, $module_upload, $module_info, $module_name;

    $template = (file_exists(NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme'] . '/main_list.tpl')) ? $module_info['template'] : 'default';

    $xtpl = new XTemplate('main_list.tpl', NV_ROOTDIR . '/themes/' . $template . '/modules/' . $module_info['module_theme']);
    $xtpl->assign('GLANG', $lang_global);

    if (!empty($array_data)) {
        foreach ($array_data as $row) {
            if (!empty($row['image'])) {
                if (file_exists(NV_ROOTDIR . '/' . NV_ASSETS_DIR . '/' . $module_upload . '/' . $row['image'])) {
                    $row['image'] = NV_BASE_SITEURL . NV_ASSETS_DIR . '/' . $module_upload . '/' . $row['image'];
                } elseif (file_exists(NV_ROOTDIR . '/' . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $row['image'])) {
                    $row['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $row['image'];
                } else {
                    $row['image'] = '';
                }
                $row['imagealt'] = !empty($row['imagealt']) ? $row['imagealt'] : $row['title'];
            }

            $xtpl->assign('DATA', $row);

            if (!empty($row['image'])) {
                $xtpl->parse('main.loop.image');
            }
            if (defined('NV_IS_MODADMIN')) {
                $xtpl->assign('ADMIN_CHECKSS', md5($row['id'] . NV_CHECK_SESSION));
                $xtpl->assign('ADMIN_EDIT', NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=content&amp;id=' . $row['id']);
                $xtpl->parse('main.loop.adminlink');
            }
            $xtpl->parse('main.loop');
        }
        if ($generate_page != '') {
            $xtpl->assign('GENERATE_PAGE', $generate_page);
        }
    }

    $xtpl->parse('main');
    return $xtpl->text('main');
} 