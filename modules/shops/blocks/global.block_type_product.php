<?php

/**
 * @Project NUKEVIET 4.x
* @Author VINADES.,JSC (contact@vinades.vn)
* @Copyright (C) 2014 VINADES., JSC. All rights reserved
* @License GNU/GPL version 2 or any later version
* @Createdate 3/9/2010 23:25
*/
if (! defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (! nv_function_exists('nv_type_product')) {

    /**
     * nv_block_config_relates_blocks()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     *
     */

    function GetCatidInParent($catid, $check_inhome = 0)
    {
        global $global_array_shops_cat;
        $array_cat[] = $catid;
        $subcatid = explode(',', $global_array_shops_cat[$catid]['subcatid']);
        if (! empty($subcatid)) {
            foreach ($subcatid as $id) {
                if ($id > 0) {
                    if ($global_array_shops_cat[$id]['numsubcat'] == 0) {
                        if (! $check_inhome or ($check_inhome and $global_array_shops_cat[$id]['inhome'] == 1)) {
                            $array_cat[] = $id;
                        }
                    } else {
                        $array_cat_temp = GetCatidInParent($id, $check_inhome);
                        foreach ($array_cat_temp as $catid_i) {
                            if (! $check_inhome or ($check_inhome and $global_array_shops_cat[$catid_i]['inhome'] == 1)) {
                                $array_cat[] = $catid_i;
                            }
                        }
                    }
                }
            }
        }
        return array_unique($array_cat);
    }

/**
 * GetParentCatFilter()
 *
 * @param mixed $cateid
 * @return
 */


function nv_block_config_type_blocks($module, $data_block, $lang_block)
{
    global $nv_Cache, $db_config, $site_mods;

    $html = "<tr>";
    $html .= "  <td>Loại sản phẩm</td>";
    $html .= "  <td>";
    $sql = "SELECT catid, " . NV_LANG_DATA . "_title," . NV_LANG_DATA . "_alias FROM " . $db_config['prefix'] . "_" . $site_mods[$module]['module_data'] . "_catalogs ORDER BY weight ASC";

    $list = $nv_Cache->db($sql, 'catid', $module);

    foreach ($list as $l) {

       $html .= '<label><input type="checkbox" name="config_catid[]" value="' . $l['catid'] . '" ' . ((in_array($l['catid'], $data_block['catid'])) ? ' checked="checked"' : '') . '</input>' . $l[NV_LANG_DATA . '_title'] . '</label><br />';

   }

   $html .= "</td>\n";
   $html .= '<script type="text/javascript">';
   $html .= '  $("select[name=config_blockid]").change(function() {';
   $html .= '      $("input[name=title]").val($("select[name=config_blockid] option:selected").text());';
   $html .= '  });';
   $html .= '</script>';
   $html .= "</tr>";

   $html .= "<tr>";
   $html .= "  <td>" . $lang_block['numrow'] . "</td>";
   $html .= "  <td><input class=\"form-control w100\" type=\"text\" name=\"config_numrow\" size=\"5\" value=\"" . $data_block['numrow'] . "\"/></td>";
   $html .= "</tr>";

   $html .= "<tr>";
   $html .= "  <td>" . $lang_block['cut_num'] . "</td>";
   $html .= "  <td><input class=\"form-control w100\" type=\"text\" name=\"config_cut_num\" size=\"5\" value=\"" . $data_block['cut_num'] . "\"/></td>";
   $html .= "</tr>";

   return $html;
}

    /**
     * nv_block_config_relates_blocks_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     *
     */
    function nv_block_config_type_blocks_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['catid'] = $nv_Request->get_array('config_catid', 'post', array());
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 0);
        $return['config']['cut_num'] = $nv_Request->get_int('config_cut_num', 'post', 0);
        return $return;
    }


    if (! nv_function_exists('nv_get_price_tmp')) {

        function nv_get_price_tmp($module_name, $module_data, $module_file, $pro_id)
        {
            global $nv_Cache, $db, $db_config, $module_config, $discounts_config;

            $price = array();
            $pro_config = $module_config[$module_name];

            require_once NV_ROOTDIR . '/modules/' . $module_file . '/site.functions.php';
            $price = nv_get_price($pro_id, $pro_config['money_unit'], 1, false, $module_name);

            return $price;
        }
    }
    

    /**
     * nv_relates_product()
     *
     * @param mixed $block_config
     * @return
     *
     */
    function nv_type_product($block_config)
    {
        global $nv_Cache, $nv_Cache, $site_mods, $global_config, $lang_module, $module_config, $module_config, $module_name, $module_info, $global_array_shops_cat, $db_config, $my_head, $db, $pro_config, $money_config, $array_wishlist_id;

        $module = $block_config['module'];
        $mod_data = $site_mods[$module]['module_data'];
        $mod_file = $site_mods[$module]['module_file'];

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/' . $mod_file . '/block.type_product.tpl')) {
            $block_theme = $global_config['site_theme'];
        } else {
            $block_theme = 'default';
        }

        if ($module != $module_name) {


            $sql = 'SELECT catid, parentid, lev, ' . NV_LANG_DATA . '_title AS title, ' . NV_LANG_DATA . '_alias AS alias, viewcat, numsubcat, subcatid, image, numlinks, ' . NV_LANG_DATA . '_description AS description, inhome, ' . NV_LANG_DATA . '_keywords AS keywords, groups_view, typeprice FROM ' . $db_config['prefix'] . '_' . $mod_data . '_catalogs ORDER BY sort ASC';
            $list = $nv_Cache->db($sql, 'catid', $module);
            foreach ($list as $row) {
                $global_array_shops_cat[$row['catid']] = array(
                    'catid' => $row['catid'],
                    'parentid' => $row['parentid'],
                    'title' => $row['title'],
                    'alias' => $row['alias'],
                    'image' => NV_BASE_SITEURL . NV_FILES_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $row['image'],
                    'link' => NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $row['alias'],
                    'viewcat' => $row['viewcat'],
                    'numsubcat' => $row['numsubcat'],
                    'subcatid' => $row['subcatid'],
                    'numlinks' => $row['numlinks'],
                    'description' => $row['description'],
                    'inhome' => $row['inhome'],
                    'keywords' => $row['keywords'],
                    'groups_view' => $row['groups_view'],
                    'lev' => $row['lev'],
                    'typeprice' => $row['typeprice']
                );
            }
            unset($list, $row);

            // Css
            if (file_exists(NV_ROOTDIR . '/themes/' . $block_theme . '/css/' . $mod_file . '.css')) {
                $my_head .= '<link rel="StyleSheet" href="' . NV_BASE_SITEURL . 'themes/' . $block_theme . '/css/' . $mod_file . '.css" type="text/css" />';
            }

            // js
            if (file_exists(NV_ROOTDIR . '/themes/' . $block_theme . '/js/' . $mod_file . '.js')) {
                $my_head .= '<script src="' . NV_BASE_SITEURL . 'themes/' . $block_theme . '/js/' . $mod_file . '.js"></script>';
            }

            // Language
            if (file_exists(NV_ROOTDIR . '/modules/' . $mod_file . '/language/' . NV_LANG_DATA . '.php')) {
                require_once NV_ROOTDIR . '/modules/' . $mod_file . '/language/' . NV_LANG_DATA . '.php';
            }

            $pro_config = $module_config[$module];

            // Lay ty gia ngoai te
            $sql = 'SELECT code, currency, exchange, round, number_format FROM ' . $db_config['prefix'] . '_' . $mod_data . '_money_' . NV_LANG_DATA;
            $cache_file = NV_LANG_DATA . '_' . md5($sql) . '_' . NV_CACHE_PREFIX . '.cache';
            if (($cache = $nv_Cache->getItem($module, $cache_file)) != false) {
                $money_config = unserialize($cache);
            } else {
                $money_config = array();
                $result = $db->query($sql);
                while ($row = $result->fetch()) {
                    $money_config[$row['code']] = array(
                        'code' => $row['code'],
                        'currency' => $row['currency'],
                        'exchange' => $row['exchange'],
                        'round' => $row['round'],
                        'number_format' => $row['number_format'],
                        'decimals' => $row['round'] > 1 ? $row['round'] : strlen($row['round']) - 2,
                        'is_config' => ($row['code'] == $pro_config['money_unit']) ? 1 : 0
                    );
                }
                $result->closeCursor();
                $cache = serialize($money_config);
                $nv_Cache->setItem($module, $cache_file, $cache);
            }
        }

        $link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=';

        $xtpl = new XTemplate('block.type_product.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file);
        $xtpl->assign('LANG', $lang_module);
        $xtpl->assign('module_name', $module);
        $xtpl->assign('WIDTH', $pro_config['homewidth']);


        if(!empty($block_config['catid']))
        {
            foreach($block_config['catid'] as $bid)
            {


                $array_cat = GetCatidInParent($bid);
                $from = ' listcatid IN (' . implode(',', $array_cat) . ')';

                $db->sqlreset()
                ->select('t1.id, t1.listcatid, t1.' . NV_LANG_DATA . '_title  AS title , t1.' . NV_LANG_DATA . '_hometext AS hometext, t1.' . NV_LANG_DATA . '_alias AS alias, t1.addtime, t1.homeimgfile, t1.homeimgthumb, t1.product_price, t1.money_unit, t1.discount_id, t1.showprice, t1.product_number')
                ->from($db_config['prefix'] . '_' . $mod_data . '_rows t1')
                ->join('INNER JOIN ' . $db_config['prefix'] . '_' . $mod_data . '_catalogs t2 ON t1.listcatid = t2.catid')
                ->where($from .' AND t1.status =1')
                ->order('t1.publtime DESC')
                ->limit($block_config['numrow']);

                $list = $nv_Cache->db($db->sql(), 'id', $module);

            //die($db->sql());
                $i = 1;
                $cut_num = $block_config['cut_num'];


                $xtpl->assign('data', $global_array_shops_cat[$bid]);
            // XUẤT DANH SÁCH LOẠI CON RA

                if($global_array_shops_cat[$bid]['numsubcat'] > 0)
                {
                    $mang_con = explode(',',$global_array_shops_cat[$bid]['subcatid']);
                    foreach($mang_con as $con)
                    {
                        $xtpl->assign('con', $global_array_shops_cat[$con]);
                        $xtpl->parse('main.loopcatid.catalog_con');
                    }
                }


                foreach ($list as $row) {
                    if ($row['homeimgthumb'] == 1) {
                    // image thumb

                        $src_img = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $row['homeimgfile'];
                    } elseif ($row['homeimgthumb'] == 2) {
                    // image file

                        $src_img = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $row['homeimgfile'];
                    } elseif ($row['homeimgthumb'] == 3) {
                    // image url

                        $src_img = $row['homeimgfile'];
                    } else {
                    // no image

                        $src_img = NV_BASE_SITEURL . 'themes/' . $global_config['site_theme'] . '/images/shops/no-image.jpg';
                    }

                    $xtpl->assign('id', $row['id']);
                    $xtpl->assign('hometext', $row['hometext']);
                    $xtpl->assign('link', $link . $row['alias'] . $global_config['rewrite_exturl']);
                    $xtpl->assign('title', nv_clean60($row['title'],55));
                    $xtpl->assign('src_img', $src_img);
                    $xtpl->assign('time', nv_date('d-m-Y h:i:s A', $row['addtime']));				
                    if ($pro_config['active_order'] == '1' and $pro_config['active_order_non_detail'] == '1') {
                        if ($row['showprice'] == '1') {
                            if ($row['product_number'] > 0) {
                                $xtpl->parse('main.loopcatid.loop.order');
                            } else {
                                $xtpl->parse('main.loopcatid.loop.product_empty');
                            }
                        }
                    }

                    if ($pro_config['active_price'] == '1') {
                        if ($row['showprice'] == '1') {
                            $price = nv_get_price_tmp($module, $mod_data, $mod_file, $row['id']);
                        // var_dump($price); die;
                            $xtpl->assign('PRICE', $price);
                            if ($row['discount_id'] and $price['discount_percent'] > 0) {
                                $xtpl->parse('main.loopcatid.loop.price.discounts');

                            } else {
                                $xtpl->parse('main.loopcatid.loop.price.no_discounts');
                            }
                            $xtpl->parse('main.loopcatid.loop.price');
                        } else {
                            $xtpl->parse('main.loopcatid.loop.contact');
                        }
					// LẤY ĐIỂM ĐÁNH GIÁ TRUNG BÌNH CỦA SẢN PHẨM RA
                        $dem = 0;
                        $diem = $db->query('SELECT rating FROM ' . $db_config['prefix'] . '_' . 'shops'. '_review')->fetchAll();

                        if(!empty($diem))
                        {

                          foreach($diem as $d)
                          {
                             $dem = $dem + $d['rating'];
                         }
                         $dem = $dem/(count($diem));
                     }

                     $data_content['dem'] = $dem;
                     if(!empty($diem))
                     { 

                         foreach($diem as $d)
                         {
                            $dem = $dem + $d['rating'];
                            $xtpl->assign('class', 'rate-btn-hover');
                            $xtpl->parse('main.danh_gia');
                        }
                        $dem = $dem/(count($diem));
                        $xtpl->assign('class', 'rate-btn-hover');
                        $xtpl->parse('main.danh_gia');							
                    }					

                }

                // San pham yeu thich
                if ($pro_config['active_wishlist']) {
                    if (! empty($array_wishlist_id)) {
                        if (in_array($row['id'], $array_wishlist_id)) {
                            $xtpl->parse('main.loopcatid.loop.wishlist.disabled');
                        }
                    }
                    $xtpl->parse('main.loopcatid.loop.wishlist');
                }

                $xtpl->parse('main.loopcatid.loop');
                ++ $i;
            }



            $xtpl->parse('main.loopcatid');
        }
    }
    $xtpl->parse('main');
    return $xtpl->text('main');
}
}

if (defined('NV_SYSTEM')) {
    $content = nv_type_product($block_config);
}
