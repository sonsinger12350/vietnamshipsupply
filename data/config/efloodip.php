<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2019 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Mon, 24 Jun 2019 04:45:11 GMT
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');

$array_except_flood_site = array();
$array_except_flood_site['127.0.0.1'] = array('mask' => "//", 'begintime' => 1533984163, 'endtime' => 0);
$array_except_flood_site['::1'] = array('mask' => "//", 'begintime' => 1561351510, 'endtime' => 0);

$array_except_flood_admin = array();
