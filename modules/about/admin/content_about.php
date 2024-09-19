<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 2-9-2010 14:43
 */

if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}


$id = $nv_Request->get_int('id', 'post,get', 0);
$copy = $nv_Request->get_int('copy', 'get,post',0);

if ($id) {
    $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . ' WHERE id=' . $id;
    $row = $db->query($sql)->fetch();

    if (empty($row)) {
        nv_redirect_location(NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name);
    }

    $page_title = $lang_module['edit'];
    $action = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=' . $op . '&amp;id=' . $id;
} else {
    nv_redirect_location(NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name . '&' . NV_OP_VARIABLE . '=content_about&id=1');
    
    $page_title = $lang_module['add'];
    $action = NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=' . $op;
}

$selectthemes = (!empty($site_mods[$module_name]['theme'])) ? $site_mods[$module_name]['theme'] : $global_config['site_theme'];
$layout_array = nv_scandir(NV_ROOTDIR . '/themes/' . $selectthemes . '/layout', $global_config['check_op_layout']);
$error = '';
$groups_list = nv_groups_list();

$check_alias = new NukeViet\TMS\Checkalias;


if ($nv_Request->get_int('save', 'post') == '1') {

    // Tab 1:
    $row['tab_1_titletab'] = $nv_Request->get_title('tab_1_titletab', 'post', '', 1);
    $row['tab_1_alias'] = $nv_Request->get_title('tab_1_alias', 'post', '', 1);
    $row['tab_1_icon'] = $nv_Request->get_title('tab_1_icon', 'post', '', 1);
    $row['tab_1_description'] = $nv_Request->get_textarea('tab_1_description', '', 'br', 1);


    // Tab 2:
    $row['tab_2_titletab'] = $nv_Request->get_title('tab_2_titletab', 'post', '', 1);
    $row['tab_2_alias'] = $nv_Request->get_title('tab_2_alias', 'post', '', 1);
    $row['tab_2_icon'] = $nv_Request->get_title('tab_2_icon', 'post', '', 1);
    $row['tab_2_bodytext'] = $nv_Request->get_editor('tab_2_bodytext', '', NV_ALLOWED_HTML_TAGS);
    $image = $nv_Request->get_string('tab_2_image', 'post', '');
    if (nv_is_file($image, NV_UPLOADS_DIR . '/' . $module_upload)) {
        $lu = strlen(NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/');
        $row['tab_2_image'] = substr($image, $lu);
    } else {
        $row['tab_2_image'] = '';
    }


    // Tab 3:
    $row['tab_3_titletab'] = $nv_Request->get_title('tab_3_titletab', 'post', '', 1);
    $row['tab_3_alias'] = $nv_Request->get_title('tab_3_alias', 'post', '', 1);
    $row['tab_3_icon'] = $nv_Request->get_title('tab_3_icon', 'post', '', 1);
    $row['tab_3_bodytext'] = $nv_Request->get_editor('tab_3_bodytext', '', NV_ALLOWED_HTML_TAGS);
    


    // Tab 4:
    $row['tab_4_titletab'] = $nv_Request->get_title('tab_4_titletab', 'post', '', 1);
    $row['tab_4_alias'] = $nv_Request->get_title('tab_4_alias', 'post', '', 1);
    $row['tab_4_icon'] = $nv_Request->get_title('tab_4_icon', 'post', '', 1);
    $row['tab_4_bid'] = $nv_Request->get_int('tab_4_bid', 'post', '', 1);
    $image = $nv_Request->get_string('tab_4_image', 'post', '');
    if (nv_is_file($image, NV_UPLOADS_DIR . '/' . $module_upload)) {
        $lu = strlen(NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/');
        $row['tab_4_image'] = substr($image, $lu);
    } else {
        $row['tab_4_image'] = '';
    }
	
	

    $row['titlesite'] = $nv_Request->get_title('titlesite', 'post', '', 1);
    $row['hometext'] = $nv_Request->get_textarea('hometext', '', 'br', 1);
    
   // $row['keywords'] = nv_strtolower($nv_Request->get_title('keywords', 'post', '', 0));
   
    $row['keywords'] = $nv_Request->get_array('keywords', 'post', '');
	
    $row['keywords'] = trim(nv_substr(implode(', ', $row['keywords']), 0, 255), ", \t\n\r\0\x0B");
	
    $row['tags'] = $nv_Request->get_array('tags', 'post', '');
    $row['tags'] = implode(', ', $row['tags']);

    $row['layout_func'] = $nv_Request->get_title('layout_func', 'post', '');


    // KIỂM TRA TRÙNG ALIAS
    
    // $check_return = $check_alias->check_id_alias($id, $row['alias']);
    
    // KẾT THÚC TRÙNG ALIAS

    // print_r($row);die();
    if (empty($row['tab_1_titletab']) or empty($row['tab_2_titletab']) or empty($row['tab_3_titletab']) or empty($row['tab_4_titletab'])) {
        $error = $lang_module['empty_title'];
    } 
    elseif (empty($row['layout_func']) or in_array('layout.' . $row['layout_func'] . '.tpl', $layout_array)) {

        if (empty($row['tags'])) {
            $row['tags'] = nv_get_keywords($row['title']);
            if (empty($row['tags'])) {
                $row['tags'] = nv_unhtmlspecialchars($row['tags']);
                $row['tags'] = strip_punctuation($row['tags']);
                $row['tags'] = trim($row['tags']);
                $row['tags'] = nv_strtolower($row['tags']);
                $row['tags'] = preg_replace('/[ ]+/', ',', $row['tags']);
            }
        }

        if ($id and !$copy) {
            $_sql = 'UPDATE ' . NV_PREFIXLANG . '_' . $module_data . ' SET 

                tab_1_titletab = :tab_1_titletab, 
                tab_1_alias = :tab_1_alias, 
                tab_1_icon = :tab_1_icon, 
                tab_1_description = :tab_1_description, 

                tab_2_titletab = :tab_2_titletab, 
                tab_2_alias = :tab_2_alias, 
                tab_2_icon = :tab_2_icon, 
                tab_2_image = :tab_2_image, 
                tab_2_bodytext = :tab_2_bodytext, 

                tab_3_titletab = :tab_3_titletab, 
                tab_3_alias = :tab_3_alias, 
                tab_3_icon = :tab_3_icon, 
                tab_3_bodytext = :tab_3_bodytext, 

                tab_4_titletab = :tab_4_titletab, 
                tab_4_alias = :tab_4_alias, 
                tab_4_icon = :tab_4_icon, 
                tab_4_image = :tab_4_image, 
                tab_4_bid = :tab_4_bid, 


                titlesite = :titlesite,
                hometext = :hometext,
                keywords = :keywords, 
                tags = :tags, 
                layout_func = :layout_func,  
                edit_time = ' . NV_CURRENTTIME . ' 
            WHERE id =' . $id;
            $publtime = $row['add_time'];
        } else {
            if ($copy)
                $row['alias'] = 'copy-' . $id;
            if ($page_config['news_first']) {
                $weight = 1;
            } else {
                $weight = $db->query("SELECT MAX(weight) FROM " . NV_PREFIXLANG . "_" . $module_data)->fetchColumn();
                $weight = intval($weight) + 1;
            }

            $_sql = 'INSERT INTO ' . NV_PREFIXLANG . '_' . $module_data . '
                (
                    tab_1_titletab, tab_1_alias, tab_1_icon, tab_1_description, tab_2_titletab, tab_2_alias, tab_2_icon, tab_2_image, tab_2_bodytext, tab_3_titletab, tab_3_alias, tab_3_icon, tab_3_bodytext, tab_4_titletab, tab_4_alias, tab_4_icon, tab_4_image, tab_4_bid, titlesite, hometext, keywords, tags, layout_func, weight, admin_id, add_time, edit_time, status) VALUES
                (
                    :tab_1_titletab, :tab_1_alias, :tab_1_icon, :tab_1_description, :tab_2_titletab, :tab_2_alias, :tab_2_icon, :tab_2_image, :tab_2_bodytext, :tab_3_titletab, :tab_3_alias, :tab_3_icon, :tab_3_bodytext, :tab_4_titletab, :tab_4_alias, :tab_4_icon, :tab_4_image, :tab_4_bid,  :titlesite, :hometext, :keywords, :tags, :layout_func, ' . $weight . ', ' . $admin_info['admin_id'] . ', ' . NV_CURRENTTIME . ', ' . NV_CURRENTTIME . ', 1)';

            $publtime = NV_CURRENTTIME;
        }
        try {

            $sth = $db->prepare($_sql);

            $sth->bindParam(':tab_1_titletab', $row['tab_1_titletab'], PDO::PARAM_STR);
            $sth->bindParam(':tab_1_alias', $row['tab_1_alias'], PDO::PARAM_STR);
            $sth->bindParam(':tab_1_icon', $row['tab_1_icon'], PDO::PARAM_STR);
            $sth->bindParam(':tab_1_description', $row['tab_1_description'], PDO::PARAM_STR);

            $sth->bindParam(':tab_2_titletab', $row['tab_2_titletab'], PDO::PARAM_STR);
            $sth->bindParam(':tab_2_alias', $row['tab_2_alias'], PDO::PARAM_STR);
            $sth->bindParam(':tab_2_icon', $row['tab_2_icon'], PDO::PARAM_STR);
            $sth->bindParam(':tab_2_image', $row['tab_2_image'], PDO::PARAM_STR);
            $sth->bindParam(':tab_2_bodytext', $row['tab_2_bodytext'], PDO::PARAM_STR);

            $sth->bindParam(':tab_3_titletab', $row['tab_3_titletab'], PDO::PARAM_STR);
            $sth->bindParam(':tab_3_alias', $row['tab_3_alias'], PDO::PARAM_STR);
            $sth->bindParam(':tab_3_icon', $row['tab_3_icon'], PDO::PARAM_STR);
            $sth->bindParam(':tab_3_bodytext', $row['tab_3_bodytext'], PDO::PARAM_STR);

            $sth->bindParam(':tab_4_titletab', $row['tab_4_titletab'], PDO::PARAM_STR);
            $sth->bindParam(':tab_4_alias', $row['tab_4_alias'], PDO::PARAM_STR);
            $sth->bindParam(':tab_4_icon', $row['tab_4_icon'], PDO::PARAM_STR);
            $sth->bindParam(':tab_4_image', $row['tab_4_image'], PDO::PARAM_STR);
            $sth->bindParam(':tab_4_bid', $row['tab_4_bid'], PDO::PARAM_INT);


            $sth->bindParam(':titlesite', $row['titlesite'], PDO::PARAM_STR);

            $sth->bindParam(':hometext', $row['hometext'], PDO::PARAM_STR); 
            $sth->bindParam(':keywords', $row['keywords'], PDO::PARAM_STR);
            $sth->bindParam(':tags', $row['tags'], PDO::PARAM_STR);
            $sth->bindParam(':layout_func', $row['layout_func'], PDO::PARAM_STR);
            $sth->execute();

            if ($sth->rowCount()) {
                if($id == 0)
                    $id_page = $db->lastInsertId();
                else 
                    $id_page = $id;
                // Thêm id_alias                
                // $check_alias->add_alias_page($id_page, $row['alias'], $module_name, 'main');


                if ($id) {
                    if ($copy) {
                        $id_copy = $db->lastInsertId();
                        $db->query('UPDATE ' . NV_PREFIXLANG . '_' . $module_data . ' SET alias = ' . $db->quote(change_alias($row['title']) . '-' . $id_copy) . ' WHERE id=' . $id_copy);
                    }
                    nv_insert_logs(NV_LANG_DATA, $module_name, 'Edit', 'ID: ' . $id, $admin_info['userid']);
                } else {
                    if ($page_config['news_first']) {
                        $id = $db->lastInsertId();
                        $db->query('UPDATE ' . NV_PREFIXLANG . '_' . $module_data . ' SET weight=weight+1 WHERE id!=' . $id);
                    }

                    nv_insert_logs(NV_LANG_DATA, $module_name, 'Add', ' ', $admin_info['userid']);
                }

                $nv_Cache->delMod($module_name);
                nv_redirect_location(NV_BASE_ADMINURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name . '&' . NV_OP_VARIABLE . '=main');
            } else {
                $error = $lang_module['errorsave'];
            }
        } catch (PDOException $e) {
            print_r($e->getMessage());die();
            $error = $lang_module['errorsave'];
        }
    }
} elseif (empty($id)) {
    $row['tab_1_titletab'] = '';
    $row['tab_1_alias'] = '';
    $row['tab_1_icon'] = '';
    $row['tab_1_description'] = '';

    $row['tab_2_titletab'] = '';
    $row['tab_2_alias'] = '';
    $row['tab_2_icon'] = '';
    $row['tab_2_image'] = '';
    $row['tab_2_bodytext'] = '';

    $row['tab_3_titletab'] = '';
    $row['tab_3_alias'] = '';
    $row['tab_3_icon'] = '';
    $row['tab_3_bodytext'] = '';

    $row['tab_4_titletab'] = '';
    $row['tab_4_alias'] = '';
    $row['tab_4_icon'] = '';
    $row['tab_4_image'] = '';
    $row['tab_4_bid'] = 0;


    $row['layout_func'] = '';
    $row['keywords'] = '';
    $row['tags'] = '';
    $row['titlesite'] = '';
    $row['hometext'] = '';
}

if (defined('NV_EDITOR')) {
    require_once NV_ROOTDIR . '/' . NV_EDITORSDIR . '/' . NV_EDITOR . '/nv.php';
}

$row['tab_1_description'] = nv_htmlspecialchars(nv_br2nl($row['tab_1_description']));

$row['tab_2_bodytext'] = htmlspecialchars(nv_editor_br2nl($row['tab_2_bodytext']));
if (defined('NV_EDITOR') and nv_function_exists('nv_aleditor')) {
    $row['tab_2_bodytext'] = nv_aleditor('tab_2_bodytext', '100%', '300px', $row['tab_2_bodytext']);
} else {
    $row['tab_2_bodytext'] = '<textarea style="width:100%;height:300px" name="tab_2_bodytext">' . $row['tab_2_bodytext'] . '</textarea>';
}
$row['tab_3_bodytext'] = htmlspecialchars(nv_editor_br2nl($row['tab_3_bodytext']));
if (defined('NV_EDITOR') and nv_function_exists('nv_aleditor')) {
    $row['tab_3_bodytext'] = nv_aleditor('tab_3_bodytext', '100%', '300px', $row['tab_3_bodytext']);
} else {
    $row['tab_3_bodytext'] = '<textarea style="width:100%;height:300px" name="tab_3_bodytext">' . $row['tab_3_bodytext'] . '</textarea>';
}

if (!empty($row['tab_2_image']) and is_file(NV_UPLOADS_REAL_DIR . '/' . $module_upload . '/' . $row['tab_2_image'])) {
    $row['tab_2_image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $row['tab_2_image'];
}
if (!empty($row['tab_4_image']) and is_file(NV_UPLOADS_REAL_DIR . '/' . $module_upload . '/' . $row['tab_4_image'])) {
    $row['tab_4_image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $row['tab_4_image'];
}

$lang_global['title_suggest_max'] = sprintf($lang_global['length_suggest_max'], 65);
$lang_global['description_suggest_max'] = sprintf($lang_global['length_suggest_max'], 160);
$lang_global['titlesite_suggest_max'] = sprintf($lang_global['length_suggest_max'], 65);
$lang_global['hometext_suggest_max'] = sprintf($lang_global['length_suggest_max'], 170);

$xtpl = new XTemplate('content_about.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('GLANG', $lang_global);
$xtpl->assign('FORM_ACTION', $action);
$xtpl->assign('UPLOADS_DIR_USER', NV_UPLOADS_DIR . '/' . $module_upload);

$row['tab_1_urlvideo'] = urldecode($row['tab_1_urlvideo']);
$xtpl->assign('DATA', $row);
// print_r($row);die();
$xtpl->assign('ISCOPY', $copy);

// print_r($page_config);die();
// if(!empty($page_config['table_slider'])){
//     $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $page_config['table_slider'] . '_group WHERE status = 1';
//     $result = $db->query($sql)->fetchAll();
//     foreach ($result as $result_i) {
//         $result_i['checked'] = ($result_i['group_id'] == $row['tab_1_free_slider']) ? 'selected="selected"' : '';
//         $xtpl->assign('GROUP_SLIDER' , $result_i);
//         $xtpl->parse('main.slider');
//     }
// }


if(!empty($page_config['table_freecontent'])){
    $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $page_config['table_freecontent'] . '_blocks';
    $result = $db->query($sql)->fetchAll();
    foreach ($result as $result_i) {
        $result_i['tab_4_checked'] = ($result_i['bid'] == $row['tab_4_bid']) ? 'selected="selected"' : '';
        $xtpl->assign('FREECONTENT' , $result_i);
        $xtpl->parse('main.tab_4_freecontent');
    }
}

foreach ($layout_array as $value) {
    $value = preg_replace($global_config['check_op_layout'], '\\1', $value);
    $xtpl->assign('LAYOUT_FUNC', array(
        'key' => $value,
        'selected' => ($row['layout_func'] == $value) ? ' selected="selected"' : ''
    ));
    $xtpl->parse('main.layout_func');
}

if ($error) {
    $xtpl->assign('ERROR', $error);
    $xtpl->parse('main.error');
}

if (!empty($row['keywords'])) {
    $_array = explode(',', $row['keywords']);
    foreach ($_array as $_v) {
        $xtpl->assign('KEYWORDS', $_v);
        $xtpl->parse('main.keywords');
    }
}


// DANH SÁCH TAG NEWS

$list_tag_news = $check_alias->list_tags();

// DANH SÁCH ALIAS CỦA ID NÀY
$array_tag_new = explode(',',$row['tags']);
foreach($list_tag_news as $tag){
    if(in_array($tag['id'],$array_tag_new))
        $xtpl->assign('selected_tag', 'selected=selected');
    else 
        $xtpl->assign('selected_tag', '');
    $xtpl->assign('tag', $tag);
    $xtpl->parse('main.tag');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
