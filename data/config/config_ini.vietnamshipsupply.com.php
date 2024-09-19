<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2024 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Tue, 10 Sep 2024 22:35:20 GMT
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');

$sys_info['disable_classes'] = [];
$sys_info['disable_functions'] = ['exec', 'execl', 'system', 'passthru', 'shell_exec', 'escapeshellarg', 'escapeshellcmd', 'proc_close', 'ini_alter', 'proc_open', 'dl', 'popen', 'show_source', 'posix_getpwuid', 'getpwuid', 'posix_geteuid', 'posix_getegid', 'posix_getgrgid', 'open_basedir', 'safe_mode_include_dir', 'pcntl_exec', 'pcntl_fork', 'proc_get_status', 'proc_nice', 'proc_terminate', 'pclose', 'virtual', 'openlog', 'popen', 'pclose', 'virtual', 'openlog', 'escapeshellcmd', 'escapeshellarg', 'dl', 'show_source', 'symlink', 'mail'];
$sys_info['ini_set_support'] = true;
$sys_info['supports_rewrite'] = 'rewrite_mode_apache';
$sys_info['zlib_support'] = true;
$sys_info['mb_support'] = true;
$sys_info['iconv_support'] = true;
$sys_info['allowed_set_time_limit'] = true;
$sys_info['os'] = 'LINUX';
$sys_info['fileuploads_support'] = true;
$sys_info['curl_support'] = true;
$sys_info['ftp_support'] = true;
$sys_info['string_handler'] = 'mb';
$sys_info['support_cache'] = [];
$sys_info['php_compress_methods'] = ['deflate' => 'gzdeflate', 'gzip' => 'gzencode', 'x-gzip' => 'gzencode', 'compress' => 'gzcompress', 'x-compress' => 'gzcompress'];
$sys_info['server_headers'] = ['x-powered-by' => 'PHP/7.0.33','content-type' => 'text/html; charset=UTF-8','content-length' => '0','date' => 'Tue, 10 Sep 2024 22:35:21 GMT','server' => 'LiteSpeed'];

ini_set('display_errors', '0');
ini_set('display_startup_errors', '0');
ini_set('log_errors', '0');
ini_set('session.cookie_httponly', '1');
ini_set('session.gc_maxlifetime', '3600');
ini_set('track_errors', '1');
ini_set('user_agent', 'NV4');

$iniSaveTime = 1726007720;
