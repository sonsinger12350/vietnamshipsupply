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

$order_info = array();
$order_old = array();
$coupons_code = '';
$coupons_check = 0;

if (isset($_SESSION[$module_data . '_coupons']['code']) and isset($_SESSION[$module_data . '_coupons']['check'])) {
    $coupons_code = $_SESSION[$module_data . '_coupons']['code'];
    $coupons_check = $_SESSION[$module_data . '_coupons']['check'];
}
$link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=';

// Coupons
if ($nv_Request->isset_request('coupons_check', 'post')) {
    $data_content = array();
    $coupons_code = $nv_Request->get_title('coupons_code', 'post', '');
    $contents = $error = '';
    if (empty($coupons_code)) {
        $error = $lang_module['coupons_empty'];
    } else {
        $result = $db->query('SELECT * FROM ' . $db_config['prefix'] . '_' . $module_data . '_coupons WHERE code = ' . $db->quote($coupons_code));
        $num = $result->rowCount();
        $data_content = $result->fetch();
        if (empty($data_content)) {
            $error = $lang_module['coupons_no_exist'];
        }
    }

    if (empty($error)) {
        $_SESSION[$module_data . '_coupons'] = array(
            'check' => $coupons_check,
            'code' => $coupons_code
        );
    }

    $contents = call_user_func('coupons_info', $data_content, $coupons_check, $error);

    include NV_ROOTDIR . '/includes/header.php';
    echo $contents;
    include NV_ROOTDIR . '/includes/footer.php';
    nv_htmlOutput();
}

if ($nv_Request->isset_request('coupons_clear', 'post')) {
    unset($_SESSION[$module_data . '_coupons']);
    nv_htmlOutput();
}

$base_url_rewrite = nv_url_rewrite(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&amp;' . NV_OP_VARIABLE . '=cart', true);
if ($_SERVER['REQUEST_URI'] != $base_url_rewrite) {
    nv_redirect_location($base_url_rewrite);
}

// Sửa đơn hàng
if (isset($_SESSION[$module_data . '_order_info']) and !empty($_SESSION[$module_data . '_order_info'])) {
    $order_info = $_SESSION[$module_data . '_order_info'];
    $result = $db->query('SELECT * FROM ' . $db_config['prefix'] . '_' . $module_data . '_orders WHERE order_id=' . $order_info['order_id']);

    if ($result->rowCount() == 0) {
        unset($_SESSION[$module_data . '_order_info']);
        nv_redirect_location(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name, true);
    }

    if( $_SESSION[$module_data . '_order_info']['checked'] )
	{
        $result = $db->query('SELECT * FROM ' . $db_config['prefix'] . '_' . $module_data . '_orders_id WHERE order_id=' . $order_info['order_id']);

        while ($row = $result->fetch()) {
            $array_group = array();
            $data_content = $db->query("SELECT * FROM " . $db_config['prefix'] . "_" . $module_data . "_rows WHERE id = " . $row['proid'])->fetch();
            $result_group = $db->query("SELECT group_id FROM " . $db_config['prefix'] . "_" . $module_data . "_orders_id_group WHERE order_i = " . $row['id']);
            while (list ($group_id) = $result_group->fetch(3)) {
                $array_group[] = $group_id;
            }
			
            $array_group = !empty($array_group) ? implode(',', $array_group) : '';
            $order_old[$row['proid'] . '_' . $array_group . '_'. $row['id_setting_price']] = array(
                'num' => $row['num'],
                'num_old' => $row['num'],
                'setting_price' => $row['setting_price'],
                'id_setting_price' => $row['id_setting_price'],
                'order' => 1,
                'price' => $row['price'],
                'money_unit' => $order_info['money_unit'],
                'discount_id' => $row['discount_id'],
                'group' => $array_group,
                'store' => $data_content['product_number'],
                'weight' => $data_content['product_weight'],
                'weight_unit' => $data_content['weight_unit']
            );
        }
		
        $shipping_old = array(
            'ship_name' => '',
            'ship_phone' => '',
            'ship_location_id' => 0,
            'ship_address_extend' => '',
            'ship_shops_id' => 0,
            'ship_carrier_id' => 0,
            'order_shipping' => 0
        );

        $result = $db->query('SELECT * FROM ' . $db_config['prefix'] . '_' . $module_data . '_orders_shipping WHERE order_id=' . $order_info['order_id']);
        if ($result->rowCount()) {
            $shipping_old = $result->fetch();
            $shipping_old['order_shipping'] = 1;
        }

        $_SESSION[$module_data . '_order_info']['checked'] = 0;
        $_SESSION[$module_data . '_order_info']['order_product'] = $order_old;
        $_SESSION[$module_data . '_order_info']['shipping'] = $shipping_old;
        $_SESSION[$module_data . '_cart'] = $order_old;
    }
}

if ($nv_Request->get_int('save', 'post', 0) == 1) {
    // Set cart to order
    $listproid = $nv_Request->get_array('listproid', 'post', '');
    $coupons_code = $nv_Request->get_title('coupons_code', 'post', '');
    if (!empty($listproid)) {
        foreach ($listproid as $pro_id => $number) {
            if (!empty($_SESSION[$module_data . '_cart'][$pro_id]) and $number >= 0) {
                $_SESSION[$module_data . '_cart'][$pro_id]['num'] = $number;
            }
        }
    }
}

if ($nv_Request->get_int('ajaxinsdecs', 'post', 0) == 1) {
    //Cập nhật giá tiền thông qua ajax nếu số lượng tăng (khỏi load lại trang)
    $idpro = $nv_Request->get_int('proidupdate', 'post', 0);
    $setting = $nv_Request->get_int('settingupdate', 'post', 0);
    if (!empty($listproid)) {
        foreach ($listproid as $pro_id => $number) {
            $arrayproid = explode('_', $pro_id);
            if ($arrayproid[0] == $idpro  and $number >= 0) {
                if ($arrayproid[2] == $setting && $setting > 0) { //Check nếu có cấu hình giá
                    $arraysettingprice = json_decode($_SESSION[$module_data . '_cart'][$pro_id]['setting_price'], true);
                    $price_pro = nv_get_price($idpro, $pro_config['money_unit'], $number);
                    $price_pro['sale_format'] = number_format($price_pro['sale'] + ($arraysettingprice['price'] * $number),0,",",".");
                    die(json_encode($price_pro));
                }
                elseif($arrayproid[2] == "0"){ //Nếu không có cấu hình giá (đoạn này có thể không cần nhưng để hoạt động cho chắc tránh đêm dài lắm mộng)
                    $price_pro = nv_get_price($idpro, $pro_config['money_unit'], $number);
                    die(json_encode($price_pro));
                }                
            }
        }
    }
}

$data_content = array();
$array_error_product_number = array();

if (!empty($_SESSION[$module_data . '_cart'])) {
    $arrayid = array();
    foreach ($_SESSION[$module_data . '_cart'] as $pro_id => $pro_info) {
        $array = explode('_', $pro_id);
        if (true) {
            // Sản phẩm không có nhóm
            $sql = "SELECT t1.id, t1.listcatid, t1.publtime, t1." . NV_LANG_DATA . "_title, t1." . NV_LANG_DATA . "_alias, t1." . NV_LANG_DATA . "_hometext,
            t1.homeimgalt, t1.homeimgfile, t1.homeimgthumb, t1.product_number, t1.product_price, t1.discount_id, t2." . NV_LANG_DATA . "_title, t1.money_unit
            FROM " . $db_config['prefix'] . "_" . $module_data . "_rows AS t1, " . $db_config['prefix'] . "_" . $module_data . "_units AS t2
            WHERE t1.product_unit = t2.id AND t1.id IN ('" . $array[0] . "') AND t1.status =1";
        } else {
            // Sản phẩm có theo nhóm
            $sql = "SELECT t1.id, t1.listcatid, t1.publtime, t1." . NV_LANG_DATA . "_title, t1." . NV_LANG_DATA . "_alias, t1." . NV_LANG_DATA . "_hometext,
            t1.homeimgalt, t1.homeimgfile, t1.homeimgthumb, t1.product_number, t1.product_price, t1.discount_id, t2." . NV_LANG_DATA . "_title, t1.money_unit
            FROM " . $db_config['prefix'] . "_" . $module_data . "_rows AS t1,
            " . $db_config['prefix'] . "_" . $module_data . "_units AS t2,
            " . $db_config['prefix'] . "_" . $module_data . "_group_quantity t3
            WHERE t1.product_unit = t2.id AND t1.id = t3.pro_id AND  t3.listgroup ='" . $array[1] . "' AND t1.id IN ('" . $array[0] . "') AND t1.status =1";
        }
        $result = $db->query($sql);
        while (list($id, $listcatid, $publtime, $title, $alias, $hometext, $homeimgalt, $homeimgfile, $homeimgthumb, $product_number, $product_price, $discount_id, $unit, $money_unit) = $result->fetch(3)) {
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

            $group = $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['group'];
            $number = $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['num'];
            $setting_price = $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['setting_price'];

            if (!empty($order_info)) {
                $product_number = $product_number + (isset($_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['num_old']) ? $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['num_old'] : $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['num']);
            }

            if (!empty($group) and $pro_config['active_warehouse']) {
                $group = explode(',', $group);
                asort($group);
                $group = implode(',', $group);
                $product_number = 1;
                $_result = $db->query('SELECT quantity FROM ' . $db_config['prefix'] . '_' . $module_data . '_group_quantity WHERE pro_id = ' . $id . ' AND listgroup="' . $group . '"');
                if ($_result->rowCount() > 0) {
                    $product_number = $_result->fetchColumn();
                }
            }

            if ($number > $product_number and $number > 0 and empty($pro_config['active_order_number'])) {
                $number = $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['num'] = $product_number;
                $array_error_product_number[] = sprintf($lang_module['product_number_max'], $title, $product_number);
            }

            if ($pro_config['active_price'] == '0') {
                $discount_id = $product_price = 0;
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
                'discount_id' => $discount_id,
                'product_unit' => $unit,
                'money_unit' => $money_unit,
                'group' => $group,
                'id_setting_price' => $array[2],
                'link_pro' => $link . $global_array_shops_cat[$listcatid]['alias'] . '/' . $alias . $global_config['rewrite_exturl'],
                'num' => $number,
                'setting_price' => $setting_price,
                'link_remove' => $link . 'remove&id=' . $id . '&group=' . $group. '&id_setting_price=' . $array[2]
            );
            $_SESSION[$module_data . '_cart'][$id . '_' . $array[1]. '_' . $array[2]]['order'] = 1;
        }
        if (empty($array_error_product_number) and $nv_Request->isset_request('cart_order', 'post')) {
            nv_redirect_location(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name . '&' . NV_OP_VARIABLE . '=order', true);
        }
    }
} else {
    nv_redirect_location(NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module_name, true);
}
$page_title = $lang_module['cart_title'];

$contents = call_user_func('cart_product', $data_content, $coupons_code, $order_info, $array_error_product_number);

include NV_ROOTDIR . '/includes/header.php';
echo nv_site_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
