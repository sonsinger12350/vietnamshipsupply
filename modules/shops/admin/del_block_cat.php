<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VIETNAM DIGITAL TRADING TECHNOLOGY  <contact@thuongmaiso.vn>
 * @Copyright (C) 2017 VIETNAM DIGITAL TRADING TECHNOLOGY . All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 04/18/2017 09:47
 */

if (! defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$bid = $nv_Request->get_int('bid', 'post', 0);

$contents = "NO_" . $bid;
$bid = $db->query("SELECT bid FROM " . $db_config['prefix'] . "_" . $module_data . "_block_cat WHERE bid=" . intval($bid))->fetchColumn();
if ($bid > 0) {
	$check_alias = new NukeViet\TMS\Checkalias;
    $sql = "DELETE FROM " . $db_config['prefix'] . "_" . $module_data . "_block_cat WHERE bid=" . $bid;
    if ($db->query($sql)) {
        $sql = "DELETE FROM " . $db_config['prefix'] . "_" . $module_data . "_block WHERE bid=" . $bid;
        $db->query($sql);

        nv_fix_block_cat();
		
		$check_alias->delete_alias_block_shops($bid, $module_name, 'blockcat');
        $nv_Cache->delMod($module_name);

        $contents = "OK_" . $bid;
    }
}

include NV_ROOTDIR . '/includes/header.php';
echo $contents;
include NV_ROOTDIR . '/includes/footer.php';
