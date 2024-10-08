<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VIETNAM DIGITAL TRADING TECHNOLOGY  <contact@thuongmaiso.vn>
 * @Copyright (C) 2017 VIETNAM DIGITAL TRADING TECHNOLOGY . All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 04/18/2017 09:47
 */

if (! defined('NV_IS_MOD_SEARCH')) {
    die('Stop!!!');
}

if (file_exists(NV_ROOTDIR . '/modules/' . $m_values['module_file'] . '/language/' . NV_LANG_DATA . '.php')) {
    require_once NV_ROOTDIR . '/modules/' . $m_values['module_file'] . '/language/' . NV_LANG_DATA . '.php';
}
$where = '';
// TÌM KIẾM TAG
if($id_alias > 0)
{
	$list_id = $db->query('SELECT id FROM ' . $db_config['prefix'] . '_' . $m_values['module_data'] . '_tags_id_' . NV_LANG_DATA . ' WHERE tid = ' . $id_alias)->fetchAll();
	
	$string_id = '';
	if(!empty($list_id))
	{	
		foreach($list_id as $tid)
		{
			if(empty($string_id))
				$string_id = $tid['id'];
			else
				$string_id = $string_id .','.$tid['id'];
		}
	}

	if(!empty($string_id))
	{
		$where = 'id IN ('. $string_id .')';
	
		// Fetch Limit
		$db->sqlreset()->select('COUNT(*)')
			->from($db_config['prefix'] . '_' . $m_values['module_data'] . '_rows')
			->where($where);

		$num_items += $db->query($db->sql())->fetchColumn();

		$db->select('id, ' . NV_LANG_DATA . '_title,' . NV_LANG_DATA . '_alias, listcatid, homeimgfile, ' . NV_LANG_DATA . '_hometext, ' . NV_LANG_DATA . '_bodytext')
			->order('id DESC')
			->limit($limit)
			->offset(($page - 1) * $limit);

		$tmp_re = $db->query($db->sql());

		if ($num_items) {
			$array_cat_alias = array();

			$sql = 'SELECT catid, ' . NV_LANG_DATA . '_alias AS alias FROM ' . $db_config['prefix'] . '_' . $m_values['module_data'] . '_catalogs';
			$array_cat_alias = $nv_Cache->db($sql, 'catid', $m_values['module_name']);
			$array_cat_alias[0] = array( 'alias' => 'Other' );

			$link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=';

			while (list($id, $tilterow, $alias, $listcatid, $image, $hometext, $bodytext) = $tmp_re->fetch(3)) {
				$content = $hometext . $bodytext;
				$catid = explode(',', $listcatid);
				$catid = end($catid);
				$image_link = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $m_values['module_name'] . '/' . $image ;
				$url = $link . $alias;

				$result_array[] = array(
					'link' => $url,
					'title' => BoldKeywordInStr($tilterow, $key, $logic),
					'content' => BoldKeywordInStr($content, $key, $logic),
					'image' => $image_link
				);
			}
		}
	}
	
}
else
{
	$where = "(" . nv_like_logic(NV_LANG_DATA . '_title', $dbkeywordhtml, $logic) . "
		OR " . nv_like_logic('product_code', $dbkeyword, $logic) . "
		OR " . nv_like_logic(NV_LANG_DATA . '_bodytext', $dbkeywordhtml, $logic) . "
		OR " . nv_like_logic(NV_LANG_DATA . '_hometext', $dbkeywordhtml, $logic) . ")
		AND ( publtime < " . NV_CURRENTTIME . " AND (exptime=0 OR exptime>" . NV_CURRENTTIME . ") )";


// Fetch Limit
$db->sqlreset()->select('COUNT(*)')
    ->from($db_config['prefix'] . '_' . $m_values['module_data'] . '_rows')
    ->where($where);

$num_items += $db->query($db->sql())->fetchColumn();

$db->select('id, ' . NV_LANG_DATA . '_title,' . NV_LANG_DATA . '_alias, listcatid, homeimgfile, ' . NV_LANG_DATA . '_hometext, ' . NV_LANG_DATA . '_bodytext')
    ->order('id DESC')
    ->limit($limit)
    ->offset(($page - 1) * $limit);

$tmp_re = $db->query($db->sql());

if ($num_items) {
    $array_cat_alias = array();

    $sql = 'SELECT catid, ' . NV_LANG_DATA . '_alias AS alias FROM ' . $db_config['prefix'] . '_' . $m_values['module_data'] . '_catalogs';
    $array_cat_alias = $nv_Cache->db($sql, 'catid', $m_values['module_name']);
    $array_cat_alias[0] = array( 'alias' => 'Other' );

    $link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=';

    while (list($id, $tilterow, $alias, $listcatid, $image, $hometext, $bodytext) = $tmp_re->fetch(3)) {
        $content = $hometext . $bodytext;
        $catid = explode(',', $listcatid);
        $catid = end($catid);
		
		$image_link = $image ;
        $url = $link . $alias;

        $result_array[] = array(
            'link' => $url,
            'title' => BoldKeywordInStr($tilterow, $key, $logic),
            'content' => BoldKeywordInStr($content, $key, $logic),
            'image' => $image_link
        );
    }
}

}
