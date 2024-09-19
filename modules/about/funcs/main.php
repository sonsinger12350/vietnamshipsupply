<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Apr 20, 2010 10:47:41 AM
 */

if (!defined('NV_IS_MOD_PAGE')) {
    die('Stop!!!');
}


// Xem theo bài viết
// $base_url_rewrite = nv_url_rewrite(str_replace('&amp;', '&', $base_url) . '&' . NV_OP_VARIABLE . '=' . $rowdetail['alias'] . $global_config['rewrite_exturl'], true);

$contents = '';
$cache_file = '';

if (!defined('NV_IS_MODADMIN')){
    $cache_file = NV_LANG_DATA . '_' . $module_info['template'] . '-' . $op . '-' . $page . '-' . NV_CACHE_PREFIX . '.cache';
    if (($cache = $nv_Cache->getItem($module_name, $cache_file, 3600)) != false) {
        $contents = $cache;
    }
}

if(empty($contents)){

    $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . ' WHERE id = 1';
    $rowdetail = $db->query($sql)->fetch();

    $base_url_rewrite = nv_url_rewrite(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE , true);

    if ($_SERVER['REQUEST_URI'] == $base_url_rewrite) {
        $canonicalUrl = NV_MAIN_DOMAIN . $base_url_rewrite;
    } elseif (NV_MAIN_DOMAIN . $_SERVER['REQUEST_URI'] != $base_url_rewrite) {
        if (!empty($array_op) and $_SERVER['REQUEST_URI'] != $base_url_rewrite) {
            nv_redirect_location($base_url_rewrite);
        }
        $canonicalUrl = $base_url_rewrite;
    }

    if (!empty($rowdetail['image']) and !nv_is_url($rowdetail['image'])) {
        $imagesize = @getimagesize(NV_UPLOADS_REAL_DIR . '/' . $module_upload . '/' . $rowdetail['image']);
        $rowdetail['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $rowdetail['image'];
        $rowdetail['imageWidth'] = $imagesize[0] > 500 ? 500 : $imagesize[0];
        $meta_property['og:image'] = NV_MY_DOMAIN . $rowdetail['image'];
    }
    $rowdetail['number_add_time'] = $rowdetail['add_time'];
    $rowdetail['number_edit_time'] = $rowdetail['edit_time'] ? $rowdetail['edit_time'] : $rowdetail['add_time'];
    $rowdetail['add_time'] = nv_date('H:i T l, d/m/Y', $rowdetail['add_time']);
    $rowdetail['edit_time'] = nv_date('H:i T l, d/m/Y', $rowdetail['edit_time']);
    $rowdetail['link'] = NV_MAIN_DOMAIN . $base_url_rewrite;
    $rowdetail['tab_1_urlvideo'] = urldecode($rowdetail['tab_1_urlvideo']);
    if(preg_match("/^(?:http(?:s)?:\/\/)?(?:www\.)?(?:m\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'>]+)/", $rowdetail['tab_1_urlvideo'], $matches)){
        $rowdetail['tab_1_urlvideo_id'] = $matches[1];
        $rowdetail['tab_1_urlvideo_img'] = 'https://i3.ytimg.com/vi/'.$matches[1].'/maxresdefault.jpg';
    }


    // if(!empty($page_config['table_slider']) and !empty($rowdetail['tab_1_free_slider'])){
    //     $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $page_config['table_slider'] . '_photo WHERE status = 1 AND group_id = ' . $rowdetail['tab_1_free_slider'] . ' ORDER BY weight ASC';
    //     $rowdetail['tab_1_free_slider_array'] = $nv_Cache->db($sql, '', $page_config['table_slider']);
    // }

    $rowdetail['tab_2_image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload .'/'. $rowdetail['tab_2_image'];
    $rowdetail['tab_4_image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload .'/'. $rowdetail['tab_4_image'];

    if(!empty($page_config['table_freecontent'])){
        for ($i=2; $i <= 4; $i++) { 
            if(!empty($rowdetail['tab_'.$i.'_bid'])){
                $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $page_config['table_freecontent'] . '_rows WHERE status = 1 AND bid = ' . $rowdetail['tab_'.$i.'_bid'];
                $rowdetail['tab_'.$i.'_free_array'] = $nv_Cache->db($sql, '', $page_config['table_freecontent']);
            }
        }
    }
	
	for($j=1; $j<=3; $j++){
		// print_r($row);die();
		$rowdetail['tab_3_image_'.$j] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload .'/' . $rowdetail['tab_3_image_'.$j];
	}
	


    $module_info['layout_funcs'][$op_file] = !empty($rowdetail['layout_func']) ? $rowdetail['layout_func'] : $module_info['layout_funcs'][$op_file];

    if (!empty($rowdetail['keywords'])) {
        $key_words = $rowdetail['keywords'];
    } else {
        $key_words = nv_get_keywords($rowdetail['bodytext']);

        if (empty($key_words)) {
            $key_words = nv_unhtmlspecialchars($rowdetail['title']);
            $key_words = strip_punctuation($key_words);
            $key_words = trim($key_words);
            $key_words = nv_strtolower($key_words);
            $key_words = preg_replace('/[ ]+/', ',', $key_words);
        }
    }

    //  TAG 
    $array_tag = array();
    if(!empty($rowdetail['tags']))
    {
        $array_tag_new = explode(',',$rowdetail['tags']);
        foreach($array_tag_new as $id_tag)
        {
            if($id_tag > 0)
            {
                $row = $db->query('SELECT title, alias FROM ' . NV_PREFIXLANG . '_alias WHERE id ='.$id_tag)->fetch();
                if(!empty($row))
                $array_tag[] = $row;    
            }
        }
    }


    $contents = nv_page_main($rowdetail, $array_tag, $other_links, $content_comment);

    if (!defined('NV_IS_MODADMIN') and $contents != '' and $cache_file != '') {
        $nv_Cache->setItem($module_name, $cache_file, $contents);
    }

}

$page_title = $module_info['site_title'];
// $page_title = $mod_title = $rowdetail['titlesite'];
$description = $rowdetail['hometext'];

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
