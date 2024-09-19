<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VIETNAM DIGITAL TRADING TECHNOLOGY  <contact@thuongmaiso.vn>
 * @Copyright (C) 2017 VIETNAM DIGITAL TRADING TECHNOLOGY . All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 04/18/2017 09:47
 */

if (!defined('NV_IS_MOD_SHOPS')) {
    die('Stop!!!');
}

$page_title = $module_info['custom_title'];
$key_words = $module_info['keywords'];

$nv_Request->get_int('sorts', 'session', 0);
$sorts = $nv_Request->get_int('sort', 'post', 0);
$sorts_old = $nv_Request->get_int('sorts', 'session', $pro_config['sortdefault']);
$sorts = $nv_Request->get_int('sorts', 'post', $sorts_old);

// $tab = $nv_Request->get_title('tab', 'post', 'now');
// $page = $nv_Request->get_int('page', 'post', 1);
// die('asd');
$compare_id = $nv_Request->get_string($module_data . '_compare_id', 'session', '');
$compare_id = unserialize($compare_id);

$contents = '';
$cache_file = '';

/*if (!defined('NV_IS_MODADMIN') and $page < 5) {
    $cache_file = NV_LANG_DATA . '_' . $module_info['template'] . '_' . $op . '_' . $page . '_' . NV_CACHE_PREFIX . '.cache';
    if (($cache = $nv_Cache->getItem($module_name, $cache_file)) != false) {
        $contents = $cache;
    }
}*/

if (empty($contents)) {
    $data_content = array();
    $html_pages = '';
    $orderby = '';
	$per_page = 100;
    /*if ($sorts == 0) {
        $orderby = ' id DESC ';
    } elseif ($sorts == 1) {
        $orderby = ' t1.product_price ASC, t1.id DESC ';
    } else {
        $orderby = ' t1.product_price DESC, t1.id DESC ';
    }
	$db->sqlreset()
		->select('COUNT(*)')
		->from($db_config['prefix'] . '_' . $module_data . '_rows t1')
		->join('INNER JOIN '$ . db_config['prefix'] . '_' . $module_data . '_discounts t2 ON t1.discount_id = t2.did')
		->where('t1.inhome=1 AND t1.status =1 ');

	$num_items = $db->query($db->sql())
		->fetchColumn();
	*/
	$db->select('t1.id, t1.listcatid, t1.publtime, t1.' . NV_LANG_DATA . '_title, t1.' . NV_LANG_DATA . '_alias, t1.' . NV_LANG_DATA . '_hometext, t1.homeimgalt, t1.homeimgfile, t1.homeimgthumb, t1.product_code, t1.product_number, t1.product_price, t1.money_unit, t1.discount_id, t1.showprice,' . NV_LANG_DATA . '_gift_content, t1.gift_from, t1.gift_to, t2.begin_time, t2.end_time')
		->from($db_config['prefix'] . '_' . $module_data . '_rows t1')
		->join('INNER JOIN ' . $db_config['prefix'] . '_' . $module_data . '_discounts t2 ON t1.discount_id = t2.did')
		->where('t2.end_time > '. NV_CURRENTTIME .' AND t1.discount_id > 0 AND t1.product_number > 0 AND t1.status =1')
		->order('t1.product_number ASC, t2.end_time ASC, t1.publtime DESC');
		// ->order($orderby)
		// ->limit($per_page)
		// ->offset(($page - 1) * $per_page);

	$result = $db->query($db->sql());

	while (list ($id, $listcatid, $publtime, $title, $alias, $hometext, $homeimgalt, $homeimgfile, $homeimgthumb, $product_code, $product_number, $product_price, $money_unit, $discount_id, $showprice, $gift_content, $gift_from, $gift_to, $begin_time, $end_time) = $result->fetch(3)) {
		if ($homeimgthumb == 1) {
			//image thumb

			$thumb = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module_upload . '/' . $homeimgfile;
		} elseif ($homeimgthumb == 2) {
			//image file

			$thumb = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $homeimgfile;
		} elseif ($homeimgthumb == 3) {
			//image url

			$thumb = $homeimgfile;
		} else {
			//no image

			$thumb = NV_BASE_SITEURL . 'themes/' . $module_info['template'] . '/images/' . $module_file . '/no-image.jpg';
		}
		
		$countAll = $average = $score = 0;
		$array_rating = $db->query('SELECT rating FROM ' . $db_config['prefix'] . '_' . $module_data . '_review WHERE product_id = '. $id)->fetchAll();
		if(!empty($array_rating)){
			$countAll = count($array_rating); 
			foreach($array_rating as $score_i){
				$score += $score_i['rating'];
			}
			$average = round($score / $countAll);
		}

		$data_content[] = array(
			'id' => $id,
			'listcatid' => $listcatid,
			'publtime' => $publtime,
			'title' => $title,
			'alias' => $alias,
			'hometext' => $hometext,
			'homeimgalt' => $homeimgalt,
			'homeimgthumb' => $thumb,
			'product_price' => $product_price,
			'product_number' => $product_number,
			'product_code' => $product_code,
			'discount_id' => $discount_id,
			'money_unit' => $money_unit,
			'showprice' => $showprice,
			'newday' => $global_array_shops_cat[$listcatid]['newday'],
			'gift_content' => $gift_content,
			'gift_from' => $gift_from,
			'gift_to' => $gift_to,
			'begin_time' => $begin_time,
			'end_time' => $end_time,
			'average' => $average,
			'count_rate' => $countAll,
			'link_pro' => NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $alias,
			'link_order' => NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=setcart&amp;id=' . $id
		);
	}

	if (empty($data_content) and $page > 1) {
		nv_redirect_location(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name, true);
	}

	$base_url = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name;
	// $html_pages = nv_alias_page($page_title, $base_url, $num_items, $per_page, $page);
	// print_r($data_content);die();
    $contents = nv_template_viewdeal($data_content);

    /*if (!defined('NV_IS_MODADMIN') and $contents != '' and $cache_file != '') {
        $nv_Cache->setItem($module_name, $cache_file, $contents);
    }*/
}

if ($page > 1) {
    $page_title .= ' ' . NV_TITLEBAR_DEFIS . ' ' . $lang_global['page'] . ' ' . $page;
    $description .= ' ' . $page;
}

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
