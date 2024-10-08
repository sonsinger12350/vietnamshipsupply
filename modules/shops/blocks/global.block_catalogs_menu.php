<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VIETNAM DIGITAL TRADING TECHNOLOGY  <contact@thuongmaiso.vn>
 * @Copyright (C) 2017 VIETNAM DIGITAL TRADING TECHNOLOGY . All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 04/18/2017 09:47
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!function_exists('nv_pro_catalogs_menu')) {

    /**
     * nv_block_config_product_catalogs_menu_blocks()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_product_catalogs_menu_blocks($module, $data_block, $lang_block)
    {
        global $db, $language_array, $db_config;

        $html = "";
        $html .= "<div class=\"form-group\">";
        $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['cut_num'] . "</label>";
        $html .= "	<div class=\"col-sm-18\"><input class=\"form-control w150\" type=\"text\" name=\"config_cut_num\" size=\"5\" value=\"" . $data_block['cut_num'] . "\"/></div>";
        $html .= "</div>";
        return $html;
    }

    /**
     * nv_block_config_product_catalogs_menu_blocks_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_product_catalogs_menu_blocks_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['cut_num'] = $nv_Request->get_int('config_cut_num', 'post', 0);
        return $return;
    }

    /**
     * nv_pro_catalogs_menu()
     *
     * @param mixed $block_config
     * @return
     */
    function nv_pro_catalogs_menu($block_config)
    {
        global $nv_Cache, $site_mods, $global_config, $module_config, $module_name, $module_info, $global_array_shops_cat, $db, $db_config, $array_cat_shops;

        $module = $block_config['module'];
        $mod_data = $site_mods[$module]['module_data'];
        $mod_file = $site_mods[$module]['module_file'];
        $pro_config = $module_config[$module];
        $array_cat_shops = array();

        $block_tpl_name = "block.catalogs_menu.tpl";
        if (file_exists(NV_ROOTDIR . "/themes/" . $global_config['module_theme'] . "/modules/" . $mod_file . "/" . $block_tpl_name)) {
            $block_theme = $global_config['module_theme'];
        } else {
            $block_theme = "default";
        }

        if ($module != $module_name) {
            $sql = "SELECT catid, parentid, lev, " . NV_LANG_DATA . "_title AS title, " . NV_LANG_DATA . "_alias AS alias, image, viewcat, numsubcat, subcatid, numlinks, " . NV_LANG_DATA . "_description AS description, inhome, " . NV_LANG_DATA . "_keywords AS keywords, groups_view FROM " . $db_config['prefix'] . "_" . $mod_data . "_catalogs ORDER BY sort ASC";

            $list = $nv_Cache->db($sql, "catid", $module);
            foreach ($list as $row) {
                $array_cat_shops[$row['catid']] = array(
                    "catid" => $row['catid'],
                    "parentid" => $row['parentid'],
                    "title" => $row['title'],
                    "alias" => $row['alias'],
                    "image" => $row['image'],
                    "link" => NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&amp;" . NV_NAME_VARIABLE . "=" . $row['alias'],
                    "viewcat" => $row['viewcat'],
                    "numsubcat" => $row['numsubcat'],
                    "subcatid" => $row['subcatid'],
                    "numlinks" => $row['numlinks'],
                    "description" => $row['description'],
                    "inhome" => $row['inhome'],
                    "keywords" => $row['keywords'],
                    "groups_view" => $row['groups_view'],
                    'lev' => $row['lev']
                );
            }
            unset($list, $row);
        } else {
            $array_cat_shops = $global_array_shops_cat;
        }

        $xtpl = new XTemplate($block_tpl_name, NV_ROOTDIR . "/themes/" . $block_theme . "/modules/" . $mod_file);
        $xtpl->assign('TEMPLATE', $block_theme);
        $xtpl->assign('ID', $block_config['bid']);
        $cut_num = $block_config['cut_num'];
        $html = "";

        foreach ($array_cat_shops as $cat) {
            if ($cat['parentid'] == 0) {
				$cat['title'] = nv_clean60($cat['title'], $cut_num);
				if (!empty($cat['subcatid'])) {
					$sub_cat = html_viewsub_menu_cat($cat['subcatid'], $block_config, $module, $mod_file);
					$xtpl->assign('SUBCAT', $sub_cat);
					$xtpl->parse('main.cat.has_subcat');
					$xtpl->parse('main.cat.subcat');
				}

				$cat['image'] = NV_BASE_SITEURL . NV_ASSETS_DIR . '/'. $block_config['module']. "/". $cat['image'];
				$xtpl->assign('CAT', $cat);
				$xtpl->parse('main.cat');
            }
        }
        $xtpl->assign('CONTENT', $html);
        $xtpl->parse('main');
        return $xtpl->text('main');
    }

    /**
     * html_viewsub()
     *
     * @param mixed $list_sub
     * @param mixed $block_config
     * @return
     */
    function html_viewsub_menu_cat($list_sub, $block_config, $module, $mod_file)
    {
        global $array_cat_shops, $global_config;
        $cut_num = $block_config['cut_num'];
        if (empty($list_sub)) {
            return "";
        } else {
			$xtpl = new XTemplate("block.catalogs_menu.tpl", NV_ROOTDIR . "/themes/" . $global_config['module_theme']	. "/modules/" . $mod_file);
			
            $list = explode(",", $list_sub);
            foreach ($list as $catid) {
				$array_cat_shops[$catid]['title'] = nv_clean60($array_cat_shops[$catid]['title'], $cut_num);
				if (!empty($array_cat_shops[$catid]['subcatid'])) {
					$sub_cat = html_viewsub_menu_cat($array_cat_shops[$catid]['subcatid'], $block_config, $module, $mod_file);
					$xtpl->assign('SUBCAT', $sub_cat);
					$xtpl->parse('cat_submenu.loop.has_subcat');
					$xtpl->parse('cat_submenu.loop.sub_cat');
				}
				$xtpl->assign('CAT_SUBCAT', $array_cat_shops[$catid]);
				$xtpl->parse('cat_submenu.loop');
            }
			
			$xtpl->parse('cat_submenu');
			return $xtpl->text('cat_submenu');
        }
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_pro_catalogs_menu($block_config);
}
