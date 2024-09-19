<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 07/30/2013 10:27
 */

if (! defined('NV_ADMIN')) {
    die('Stop!!!');
}

    $submenu['sitemapPing'] = $lang_module['sitemapPing'];
    $submenu['metatags'] = $lang_module['metaTagsConfig'];
    if (empty($global_config['idsite'])) {
        $submenu['rpc'] = $lang_module['rpc_setting'];
    }
if (defined('NV_IS_GODADMIN')) {
    $submenu['pagetitle'] = $lang_module['pagetitle'];
    $submenu['robots'] = $lang_module['robots'];
}
