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

if (!empty($_POST['action']) && $_POST['action'] == 'load_product') {
    $response = [
        'success' => 0,
        'data' => [
            'products' => '',
            'pagination' => ''
        ]
    ];
    $limit = 12;
    $category = $_POST['category'];
    $grandCat = !empty($_POST['grandCat']) ? $_POST['grandCat'] : '';
    $grandGrandCat = !empty($_POST['grandGrandCat']) ? $_POST['grandGrandCat'] : '';
    $sql = "SELECT COUNT(1) total FROM `nv4_shops_rows` WHERE FIND_IN_SET($category, listcatid)";
    if (!empty($grandCat)) $sql .= " AND FIND_IN_SET($grandCat, listcatid)";
    if (!empty($grandGrandCat)) $sql .= " AND FIND_IN_SET($grandGrandCat, listcatid)";
    $total = $db->query($sql)->fetch();
    $totalPage = 0;
    $currentPage = !empty($_POST['page']) ? $_POST['page'] : 1;

    if ($total['total'] <= 0) {
        header('Content-Type: application/json');
        echo json_encode($response);
        exit;
    }
    
    if ($total['total'] > $limit) {
        $totalPage = ceil($total['total']/$limit);
    }

    $offset = $currentPage == 1 ? 0 : ($currentPage-1)*$limit + 1;
    if ($offset == $total['total']) $offset -= 1;
    $sql = "SELECT * FROM `nv4_shops_rows` WHERE FIND_IN_SET($category, listcatid)";
    if (!empty($grandCat)) $sql .= " AND FIND_IN_SET($grandCat, listcatid)";
    if (!empty($grandGrandCat)) $sql .= " AND FIND_IN_SET($grandGrandCat, listcatid)";
    $sql .= " LIMIT $limit OFFSET $offset";

    $products = $db->query($sql)->fetchAll();
    $html = '';
    $pagination = '';

    foreach ($products as $product) {
        $html .= '
            <a class="product" href="'.$product['en_alias'].'.html">
                <img src="'.$product['homeimgfile'].'" alt="'.$product['en_title'].'">
                <div class="info">
                    <p class="title">'.$product['en_title'].'</p>
                </div>
            </a>
        ';
    }

    if ($totalPage) {
        $pagination = '<p>Items '.($offset == 0 ? 1 : $offset).' to '.($offset == 0 ? $offset+$limit : $offset+$limit-1).' of '.$total['total'].' total</p><div class="list-page">';
        $adjacentPages = 1;
        $startPage = max(1, $currentPage - $adjacentPages);
        $endPage = min($totalPage, $currentPage + $adjacentPages);

        if ($currentPage > 1) $pagination .= '<div class="item" data-page="'.($currentPage - 1).'"><i class="icofont-curved-left"></i> Previous</div>';

        if ($currentPage > $adjacentPages + 1) {
            $pagination .= '<div class="item active" data-page="1">1</div>';
            if ($currentPage > $adjacentPages + 2) $pagination .= '<div class="item">...</div>';
        }

        for ($i = $startPage; $i <= $endPage; $i++) {
            $pagination .= '<div class="item '.($i == $currentPage ? 'active' : '').'" data-page="'.$i.'">'.$i.'</div>';
        }

        if ($currentPage < $totalPage - $adjacentPages) {
            if ($currentPage < $totalPage - $adjacentPages - 1) $pagination .= '<div class="item">...</div>';
            $pagination .= '<div class="item" data-page="'.$totalPage.'">'.$totalPage.'</div>';
        }

        if ($currentPage < $totalPage) $pagination .= '<div class="item" data-page="'.($currentPage + 1).'">Next <i class="icofont-curved-right"></i></div>';
        $pagination .= '</div>';
    }

    $response['success'] = 1;
    $response['data'] = [
        'products' => $html,
        'pagination' => $pagination
    ];

    header('Content-Type: application/json');
    echo json_encode($response);
    exit;
}

$contents = '';
$cache_file = '';

if (!defined('NV_IS_MODADMIN')){
    $cache_file = NV_LANG_DATA . '_' . $module_info['template'] . '-' . $op . '-' . $page . '-' . NV_CACHE_PREFIX . '.cache';
    if (($cache = $nv_Cache->getItem($module_name, $cache_file, 3600)) != false) {
        $contents = $cache;
    }
}

if(empty($contents)){
    $categoriesRaw = $db->query("SELECT `catid`, `parentid`, `en_title`, `en_alias` FROM " . $db_config['prefix'] . "_shops_catalogs")->fetchAll();

    function groupByParentId($categoriesRaw) {
        $grouped = [];

        // Lặp qua mảng categories và nhóm theo parentid
        foreach ($categoriesRaw as $category) {
            $grouped[$category['parentid']][] = $category;
        }

        return $grouped;
    }

    $groupedCategories = groupByParentId($categoriesRaw);

    function buildCategoryTree($groupedCategories, $parentId = 0) {
        $tree = [];

        if (isset($groupedCategories[$parentId])) {
            foreach ($groupedCategories[$parentId] as $category) {
                $category['children'] = buildCategoryTree($groupedCategories, $category['catid']);
                $tree[] = $category;
            }
        }

        return $tree;
    }

    $categories = buildCategoryTree($groupedCategories);
    $categoryContent = '';

    foreach ($categories as $cat) {
        if (!empty($cat['children'])) {
            $categoryContent .= '
                <li class="item">
                    <a class="item-action" href="javascript:void(0)">'.$cat['en_title'].'<i class="icofont-caret-right"></i></a>
                    <div class="subitem">
                        <ul class="list level-1">';
                            foreach ($cat['children'] as $childCat) {
                                if (!empty($childCat['children'])) {
                                    $categoryContent .= '            
                                        <li class="item level-1">
                                            <a class="item-action level-1" href="javascript:void(0)">'.$childCat['en_title'].'<i class="icofont-caret-right"></i></a>
                                            <ul class="list level-2">';
                                                foreach ($childCat['children'] as $grandchildCat) {
                                                    $categoryContent .= '
                                                        <li class="item level-2"><a class="item-action level-2" href="/'.$grandchildCat['en_alias'].'.html" data-cat="'.$grandchildCat['catid'].'" data-grandcat="'.$childCat['catid'].'" data-grandgrandcat="'.$cat['catid'].'">'.$grandchildCat['en_title'].'</a></li>
                                                    ';
                                                }
                $categoryContent .= '       </ul>
                                        </li>
                                    ';
                                }
                                else {
                                    $categoryContent .= '                
                                        <li class="item level-1"><a class="item-action level-1" href="/'.$childCat['en_alias'].'.html" data-cat="'.$childCat['catid'].'" data-grandcat="'.$cat['catid'].'">'.$childCat['en_title'].'</a></li>
                                    ';
                                }
                            }
            $categoryContent .= '
                        </ul>
                    </div>
                </li>
            ';
        }
        else {
            $categoryContent .= '
                <li class="item">
                    <a class="item-action" href="/'.$cat['en_alias'].'.html" data-cat="'.$cat['catid'].'">'.$cat['en_title'].'</a>
                </li>
            ';
        }
        
    }

    $contents = nv_page_main($categoryContent, $array_tag, $other_links, $content_comment);

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
