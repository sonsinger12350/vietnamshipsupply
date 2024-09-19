<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Tue, 07 Jan 2020 04:55:04 GMT
 */

if( !defined( 'NV_IS_UPDATE' ) ) die( 'Stop!!!' );

$nv_update_config['updatelog'] = array (
  'step' => 2,
  'old_version' => '4.3.03',
  'file_list' => 
  array (
    0 => 'admin/authors/add.php',
    1 => 'admin/authors/del.php',
    2 => 'admin/authors/edit.php',
    3 => 'admin/authors/main.php',
    4 => 'admin/extensions/manage.php',
    5 => 'admin/extensions/upload.php',
    6 => 'admin/index.php',
    7 => 'admin/language/check.php',
    8 => 'admin/language/edit.php',
    9 => 'admin/language/functions.php',
    10 => 'admin/language/interface.php',
    11 => 'admin/language/main.php',
    12 => 'admin/language/read.php',
    13 => 'admin/language/write.php',
    14 => 'admin/modules/del.php',
    15 => 'admin/modules/edit.php',
    16 => 'admin/modules/functions.php',
    17 => 'admin/modules/setup.php',
    18 => 'admin/modules/show.php',
    19 => 'admin/seotools/admin.menu.php',
    20 => 'admin/seotools/functions.php',
    21 => 'admin/seotools/main.php',
    22 => 'admin/seotools/metatags.php',
    23 => 'admin/seotools/robots.php',
    24 => 'admin/settings/cronjobs.php',
    25 => 'admin/settings/cronjobs_add.php',
    26 => 'admin/settings/cronjobs_del.php',
    27 => 'admin/settings/cronjobs_edit.php',
    28 => 'admin/settings/functions.php',
    29 => 'admin/settings/plugin.php',
    30 => 'admin/settings/security.php',
    31 => 'admin/settings/smtp.php',
    32 => 'admin/settings/system.php',
    33 => 'admin/siteinfo/logs.php',
    34 => 'admin/themes/activatetheme.php',
    35 => 'admin/themes/admin.menu.php',
    36 => 'admin/themes/block_content.php',
    37 => 'admin/themes/functions.php',
    38 => 'admin/themes/main.php',
    39 => 'admin/themes/settings.php',
    40 => 'admin/upload/config.php',
    41 => 'admin/upload/folderlist.php',
    42 => 'admin/upload/functions.php',
    43 => 'admin/upload/main.php',
    44 => 'admin/upload/upload.php',
    45 => 'admin/webtools/checkupdate.php',
    46 => 'admin/webtools/clearsystem.php',
    47 => 'admin/webtools/statistics.php',
    48 => 'assets/editors/ckeditor/LICENSE.md',
    49 => 'assets/editors/ckeditor/adapters/jquery.js',
    50 => 'assets/editors/ckeditor/build-config.js',
    51 => 'assets/editors/ckeditor/ckeditor.js',
    52 => 'assets/editors/ckeditor/config.js',
    53 => 'assets/editors/ckeditor/contents.css',
    54 => 'assets/editors/ckeditor/lang/en.js',
    55 => 'assets/editors/ckeditor/lang/fr.js',
    56 => 'assets/editors/ckeditor/lang/vi.js',
    57 => 'assets/editors/ckeditor/nv.php',
    58 => 'assets/editors/ckeditor/plugins/autosave/css/autosave.min.css',
    59 => 'assets/editors/ckeditor/plugins/autosave/js/extensions.min.js',
    60 => 'assets/editors/ckeditor/plugins/balloonpanel/skins/kama/balloonpanel.css',
    61 => 'assets/editors/ckeditor/plugins/balloonpanel/skins/moono/balloonpanel.css',
    62 => 'assets/editors/ckeditor/plugins/balloonpanel/skins/moono-lisa/balloonpanel.css',
    63 => 'assets/editors/ckeditor/plugins/clipboard/dialogs/paste.js',
    64 => 'assets/editors/ckeditor/plugins/codesnippet/dialogs/codesnippet.js',
    65 => 'assets/editors/ckeditor/plugins/colordialog/dialogs/colordialog.css',
    66 => 'assets/editors/ckeditor/plugins/colordialog/dialogs/colordialog.js',
    67 => 'assets/editors/ckeditor/plugins/copyformatting/styles/copyformatting.css',
    68 => 'assets/editors/ckeditor/plugins/dialog/dialogDefinition.js',
    69 => 'assets/editors/ckeditor/plugins/dialog/styles/dialog.css',
    70 => 'assets/editors/ckeditor/plugins/div/dialogs/div.js',
    71 => 'assets/editors/ckeditor/plugins/find/dialogs/find.js',
    72 => 'assets/editors/ckeditor/plugins/flash/dialogs/flash.js',
    73 => 'assets/editors/ckeditor/plugins/iframe/dialogs/iframe.js',
    74 => 'assets/editors/ckeditor/plugins/image2/dialogs/image2.js',
    75 => 'assets/editors/ckeditor/plugins/link/dialogs/anchor.js',
    76 => 'assets/editors/ckeditor/plugins/link/dialogs/link.js',
    77 => 'assets/editors/ckeditor/plugins/liststyle/dialogs/liststyle.js',
    78 => 'assets/editors/ckeditor/plugins/pastefromword/filter/default.js',
    79 => 'assets/editors/ckeditor/plugins/pastetools/filter/common.js',
    80 => 'assets/editors/ckeditor/plugins/placeholder/dialogs/placeholder.js',
    81 => 'assets/editors/ckeditor/plugins/smiley/dialogs/smiley.js',
    82 => 'assets/editors/ckeditor/plugins/specialchar/dialogs/lang/en.js',
    83 => 'assets/editors/ckeditor/plugins/specialchar/dialogs/lang/fr.js',
    84 => 'assets/editors/ckeditor/plugins/specialchar/dialogs/lang/vi.js',
    85 => 'assets/editors/ckeditor/plugins/specialchar/dialogs/specialchar.js',
    86 => 'assets/editors/ckeditor/plugins/table/dialogs/table.js',
    87 => 'assets/editors/ckeditor/plugins/tableselection/styles/tableselection.css',
    88 => 'assets/editors/ckeditor/plugins/tabletools/dialogs/tableCell.js',
    89 => 'assets/editors/ckeditor/plugins/templates/dialogs/templates.css',
    90 => 'assets/editors/ckeditor/plugins/templates/dialogs/templates.js',
    91 => 'assets/editors/ckeditor/plugins/templates/templates/default.js',
    92 => 'assets/editors/ckeditor/plugins/youtube/images/icon-hdpi.png',
    93 => 'assets/editors/ckeditor/plugins/youtube/images/icon.png',
    94 => 'assets/editors/ckeditor/skins/moono/colorpanel.css',
    95 => 'assets/editors/ckeditor/skins/moono/dialog.css',
    96 => 'assets/editors/ckeditor/skins/moono/dialog_ie.css',
    97 => 'assets/editors/ckeditor/skins/moono/dialog_ie7.css',
    98 => 'assets/editors/ckeditor/skins/moono/dialog_ie8.css',
    99 => 'assets/editors/ckeditor/skins/moono/dialog_iequirks.css',
    100 => 'assets/editors/ckeditor/skins/moono/editor.css',
    101 => 'assets/editors/ckeditor/skins/moono/editor_gecko.css',
    102 => 'assets/editors/ckeditor/skins/moono/editor_ie.css',
    103 => 'assets/editors/ckeditor/skins/moono/editor_ie7.css',
    104 => 'assets/editors/ckeditor/skins/moono/editor_ie8.css',
    105 => 'assets/editors/ckeditor/skins/moono/editor_iequirks.css',
    106 => 'assets/editors/ckeditor/skins/moono/elementspath.css',
    107 => 'assets/editors/ckeditor/skins/moono/mainui.css',
    108 => 'assets/editors/ckeditor/skins/moono/menu.css',
    109 => 'assets/editors/ckeditor/skins/moono/notification.css',
    110 => 'assets/editors/ckeditor/skins/moono/panel.css',
    111 => 'assets/editors/ckeditor/skins/moono/presets.css',
    112 => 'assets/editors/ckeditor/skins/moono/richcombo.css',
    113 => 'assets/editors/ckeditor/skins/moono/toolbar.css',
    114 => 'assets/editors/ckeditor/styles.js',
    115 => 'assets/editors/ckeditor/vendor/promise.js',
    116 => 'assets/js/chart/Chart.bundle.min.js',
    117 => 'assets/js/chart/Chart.min.css',
    118 => 'assets/js/chart/Chart.min.js',
    119 => 'assets/js/clipboard/clipboard.min.js',
    120 => 'assets/js/jquery/jquery.min.js',
    121 => 'assets/js/jquery/jquery.validate.min.js',
    122 => 'assets/js/language/jquery.validator-en.js',
    123 => 'assets/js/language/jquery.validator-fr.js',
    124 => 'assets/js/language/jquery.validator-vi.js',
    125 => 'assets/js/pdf.js/viewer.js',
    126 => 'assets/js/pdf.js/viewer.tpl',
    127 => 'assets/js/plupload/Moxie.swf',
    128 => 'assets/js/plupload/plupload.full.min.js',
    129 => 'assets/js/select2/i18n/en.js',
    130 => 'assets/js/select2/i18n/fr.js',
    131 => 'assets/js/select2/i18n/vi.js',
    132 => 'assets/js/select2/select2.min.css',
    133 => 'assets/js/select2/select2.min.js',
    134 => 'assets/js/upload.js',
    135 => 'assets/tpl/flood_blocker.tpl',
    136 => 'assets/tpl/rss.tpl',
    137 => 'composer.json',
    138 => 'data/config/rpc_services.php',
    139 => 'data/ip/0.php',
    140 => 'data/ip/1.php',
    141 => 'data/ip/10.php',
    142 => 'data/ip/100.php',
    143 => 'data/ip/101.php',
    144 => 'data/ip/102.php',
    145 => 'data/ip/103.php',
    146 => 'data/ip/104.php',
    147 => 'data/ip/105.php',
    148 => 'data/ip/106.php',
    149 => 'data/ip/107.php',
    150 => 'data/ip/108.php',
    151 => 'data/ip/109.php',
    152 => 'data/ip/11.php',
    153 => 'data/ip/110.php',
    154 => 'data/ip/111.php',
    155 => 'data/ip/112.php',
    156 => 'data/ip/113.php',
    157 => 'data/ip/114.php',
    158 => 'data/ip/115.php',
    159 => 'data/ip/116.php',
    160 => 'data/ip/117.php',
    161 => 'data/ip/118.php',
    162 => 'data/ip/119.php',
    163 => 'data/ip/12.php',
    164 => 'data/ip/120.php',
    165 => 'data/ip/121.php',
    166 => 'data/ip/122.php',
    167 => 'data/ip/123.php',
    168 => 'data/ip/124.php',
    169 => 'data/ip/125.php',
    170 => 'data/ip/126.php',
    171 => 'data/ip/127.php',
    172 => 'data/ip/128.php',
    173 => 'data/ip/129.php',
    174 => 'data/ip/13.php',
    175 => 'data/ip/130.php',
    176 => 'data/ip/131.php',
    177 => 'data/ip/132.php',
    178 => 'data/ip/133.php',
    179 => 'data/ip/134.php',
    180 => 'data/ip/135.php',
    181 => 'data/ip/136.php',
    182 => 'data/ip/137.php',
    183 => 'data/ip/138.php',
    184 => 'data/ip/139.php',
    185 => 'data/ip/14.php',
    186 => 'data/ip/140.php',
    187 => 'data/ip/141.php',
    188 => 'data/ip/142.php',
    189 => 'data/ip/143.php',
    190 => 'data/ip/144.php',
    191 => 'data/ip/145.php',
    192 => 'data/ip/146.php',
    193 => 'data/ip/147.php',
    194 => 'data/ip/148.php',
    195 => 'data/ip/149.php',
    196 => 'data/ip/15.php',
    197 => 'data/ip/150.php',
    198 => 'data/ip/151.php',
    199 => 'data/ip/152.php',
    200 => 'data/ip/153.php',
    201 => 'data/ip/154.php',
    202 => 'data/ip/155.php',
    203 => 'data/ip/156.php',
    204 => 'data/ip/157.php',
    205 => 'data/ip/158.php',
    206 => 'data/ip/159.php',
    207 => 'data/ip/16.php',
    208 => 'data/ip/160.php',
    209 => 'data/ip/161.php',
    210 => 'data/ip/162.php',
    211 => 'data/ip/163.php',
    212 => 'data/ip/164.php',
    213 => 'data/ip/165.php',
    214 => 'data/ip/166.php',
    215 => 'data/ip/167.php',
    216 => 'data/ip/168.php',
    217 => 'data/ip/169.php',
    218 => 'data/ip/17.php',
    219 => 'data/ip/170.php',
    220 => 'data/ip/171.php',
    221 => 'data/ip/172.php',
    222 => 'data/ip/173.php',
    223 => 'data/ip/174.php',
    224 => 'data/ip/175.php',
    225 => 'data/ip/176.php',
    226 => 'data/ip/177.php',
    227 => 'data/ip/178.php',
    228 => 'data/ip/179.php',
    229 => 'data/ip/18.php',
    230 => 'data/ip/180.php',
    231 => 'data/ip/181.php',
    232 => 'data/ip/182.php',
    233 => 'data/ip/183.php',
    234 => 'data/ip/184.php',
    235 => 'data/ip/185.php',
    236 => 'data/ip/186.php',
    237 => 'data/ip/187.php',
    238 => 'data/ip/188.php',
    239 => 'data/ip/189.php',
    240 => 'data/ip/19.php',
    241 => 'data/ip/190.php',
    242 => 'data/ip/191.php',
    243 => 'data/ip/192.php',
    244 => 'data/ip/193.php',
    245 => 'data/ip/194.php',
    246 => 'data/ip/195.php',
    247 => 'data/ip/196.php',
    248 => 'data/ip/197.php',
    249 => 'data/ip/198.php',
    250 => 'data/ip/199.php',
    251 => 'data/ip/2.php',
    252 => 'data/ip/20.php',
    253 => 'data/ip/200.php',
    254 => 'data/ip/201.php',
    255 => 'data/ip/202.php',
    256 => 'data/ip/203.php',
    257 => 'data/ip/204.php',
    258 => 'data/ip/205.php',
    259 => 'data/ip/206.php',
    260 => 'data/ip/207.php',
    261 => 'data/ip/208.php',
    262 => 'data/ip/209.php',
    263 => 'data/ip/21.php',
    264 => 'data/ip/210.php',
    265 => 'data/ip/211.php',
    266 => 'data/ip/212.php',
    267 => 'data/ip/213.php',
    268 => 'data/ip/214.php',
    269 => 'data/ip/215.php',
    270 => 'data/ip/216.php',
    271 => 'data/ip/217.php',
    272 => 'data/ip/218.php',
    273 => 'data/ip/219.php',
    274 => 'data/ip/22.php',
    275 => 'data/ip/220.php',
    276 => 'data/ip/221.php',
    277 => 'data/ip/222.php',
    278 => 'data/ip/223.php',
    279 => 'data/ip/224.php',
    280 => 'data/ip/225.php',
    281 => 'data/ip/226.php',
    282 => 'data/ip/227.php',
    283 => 'data/ip/228.php',
    284 => 'data/ip/229.php',
    285 => 'data/ip/23.php',
    286 => 'data/ip/230.php',
    287 => 'data/ip/231.php',
    288 => 'data/ip/232.php',
    289 => 'data/ip/233.php',
    290 => 'data/ip/234.php',
    291 => 'data/ip/235.php',
    292 => 'data/ip/236.php',
    293 => 'data/ip/237.php',
    294 => 'data/ip/238.php',
    295 => 'data/ip/239.php',
    296 => 'data/ip/24.php',
    297 => 'data/ip/240.php',
    298 => 'data/ip/241.php',
    299 => 'data/ip/242.php',
    300 => 'data/ip/243.php',
    301 => 'data/ip/244.php',
    302 => 'data/ip/245.php',
    303 => 'data/ip/246.php',
    304 => 'data/ip/247.php',
    305 => 'data/ip/248.php',
    306 => 'data/ip/249.php',
    307 => 'data/ip/25.php',
    308 => 'data/ip/250.php',
    309 => 'data/ip/251.php',
    310 => 'data/ip/252.php',
    311 => 'data/ip/253.php',
    312 => 'data/ip/254.php',
    313 => 'data/ip/255.php',
    314 => 'data/ip/26.php',
    315 => 'data/ip/27.php',
    316 => 'data/ip/28.php',
    317 => 'data/ip/29.php',
    318 => 'data/ip/3.php',
    319 => 'data/ip/30.php',
    320 => 'data/ip/31.php',
    321 => 'data/ip/32.php',
    322 => 'data/ip/33.php',
    323 => 'data/ip/34.php',
    324 => 'data/ip/35.php',
    325 => 'data/ip/36.php',
    326 => 'data/ip/37.php',
    327 => 'data/ip/38.php',
    328 => 'data/ip/39.php',
    329 => 'data/ip/4.php',
    330 => 'data/ip/40.php',
    331 => 'data/ip/41.php',
    332 => 'data/ip/42.php',
    333 => 'data/ip/43.php',
    334 => 'data/ip/44.php',
    335 => 'data/ip/45.php',
    336 => 'data/ip/46.php',
    337 => 'data/ip/47.php',
    338 => 'data/ip/48.php',
    339 => 'data/ip/49.php',
    340 => 'data/ip/5.php',
    341 => 'data/ip/50.php',
    342 => 'data/ip/51.php',
    343 => 'data/ip/52.php',
    344 => 'data/ip/53.php',
    345 => 'data/ip/54.php',
    346 => 'data/ip/55.php',
    347 => 'data/ip/56.php',
    348 => 'data/ip/57.php',
    349 => 'data/ip/58.php',
    350 => 'data/ip/59.php',
    351 => 'data/ip/6.php',
    352 => 'data/ip/60.php',
    353 => 'data/ip/61.php',
    354 => 'data/ip/62.php',
    355 => 'data/ip/63.php',
    356 => 'data/ip/64.php',
    357 => 'data/ip/65.php',
    358 => 'data/ip/66.php',
    359 => 'data/ip/67.php',
    360 => 'data/ip/68.php',
    361 => 'data/ip/69.php',
    362 => 'data/ip/7.php',
    363 => 'data/ip/70.php',
    364 => 'data/ip/71.php',
    365 => 'data/ip/72.php',
    366 => 'data/ip/73.php',
    367 => 'data/ip/74.php',
    368 => 'data/ip/75.php',
    369 => 'data/ip/76.php',
    370 => 'data/ip/77.php',
    371 => 'data/ip/78.php',
    372 => 'data/ip/79.php',
    373 => 'data/ip/8.php',
    374 => 'data/ip/80.php',
    375 => 'data/ip/81.php',
    376 => 'data/ip/82.php',
    377 => 'data/ip/83.php',
    378 => 'data/ip/84.php',
    379 => 'data/ip/85.php',
    380 => 'data/ip/86.php',
    381 => 'data/ip/87.php',
    382 => 'data/ip/88.php',
    383 => 'data/ip/89.php',
    384 => 'data/ip/9.php',
    385 => 'data/ip/90.php',
    386 => 'data/ip/91.php',
    387 => 'data/ip/92.php',
    388 => 'data/ip/93.php',
    389 => 'data/ip/94.php',
    390 => 'data/ip/95.php',
    391 => 'data/ip/96.php',
    392 => 'data/ip/97.php',
    393 => 'data/ip/98.php',
    394 => 'data/ip/99.php',
    395 => 'data/ip6/2000.php',
    396 => 'data/ip6/2001.php',
    397 => 'data/ip6/2003.php',
    398 => 'data/ip6/2067.php',
    399 => 'data/ip6/2160.php',
    400 => 'data/ip6/2400.php',
    401 => 'data/ip6/2401.php',
    402 => 'data/ip6/2402.php',
    403 => 'data/ip6/2403.php',
    404 => 'data/ip6/2404.php',
    405 => 'data/ip6/2405.php',
    406 => 'data/ip6/2406.php',
    407 => 'data/ip6/2407.php',
    408 => 'data/ip6/2408.php',
    409 => 'data/ip6/2409.php',
    410 => 'data/ip6/240a.php',
    411 => 'data/ip6/240b.php',
    412 => 'data/ip6/240c.php',
    413 => 'data/ip6/240d.php',
    414 => 'data/ip6/240e.php',
    415 => 'data/ip6/240f.php',
    416 => 'data/ip6/2600.php',
    417 => 'data/ip6/2601.php',
    418 => 'data/ip6/2602.php',
    419 => 'data/ip6/2603.php',
    420 => 'data/ip6/2604.php',
    421 => 'data/ip6/2605.php',
    422 => 'data/ip6/2606.php',
    423 => 'data/ip6/2607.php',
    424 => 'data/ip6/2608.php',
    425 => 'data/ip6/2609.php',
    426 => 'data/ip6/260c.php',
    427 => 'data/ip6/260f.php',
    428 => 'data/ip6/2610.php',
    429 => 'data/ip6/2620.php',
    430 => 'data/ip6/2800.php',
    431 => 'data/ip6/2801.php',
    432 => 'data/ip6/2802.php',
    433 => 'data/ip6/2803.php',
    434 => 'data/ip6/2804.php',
    435 => 'data/ip6/2806.php',
    436 => 'data/ip6/2a00.php',
    437 => 'data/ip6/2a01.php',
    438 => 'data/ip6/2a02.php',
    439 => 'data/ip6/2a03.php',
    440 => 'data/ip6/2a04.php',
    441 => 'data/ip6/2a05.php',
    442 => 'data/ip6/2a06.php',
    443 => 'data/ip6/2a07.php',
    444 => 'data/ip6/2a08.php',
    445 => 'data/ip6/2a0a.php',
    446 => 'data/ip6/2a0b.php',
    447 => 'data/ip6/2a0c.php',
    448 => 'data/ip6/2a0d.php',
    449 => 'data/ip6/2c0e.php',
    450 => 'data/ip6/2c0f.php',
    451 => 'data/ip6/600.php',
    452 => 'includes/action_mysql.php',
    453 => 'includes/constants.php',
    454 => 'includes/core/admin_access.php',
    455 => 'includes/core/admin_functions.php',
    456 => 'includes/core/admin_login.php',
    457 => 'includes/core/admin_logout.php',
    458 => 'includes/core/captcha.php',
    459 => 'includes/core/cronjobs.php',
    460 => 'includes/core/flood_blocker.php',
    461 => 'includes/core/is_user.php',
    462 => 'includes/core/phpinfo.php',
    463 => 'includes/core/theme_functions.php',
    464 => 'includes/core/user_functions.php',
    465 => 'includes/field_not_allow.php',
    466 => 'includes/footer.php',
    467 => 'includes/functions.php',
    468 => 'includes/ini/mime.ini',
    469 => 'includes/ini.php',
    470 => 'includes/language/en/admin_authors.php',
    471 => 'includes/language/en/admin_extensions.php',
    472 => 'includes/language/en/admin_language.php',
    473 => 'includes/language/en/admin_modules.php',
    474 => 'includes/language/en/admin_seotools.php',
    475 => 'includes/language/en/admin_settings.php',
    476 => 'includes/language/en/admin_themes.php',
    477 => 'includes/language/en/admin_upload.php',
    478 => 'includes/language/en/admin_webtools.php',
    479 => 'includes/language/en/global.php',
    480 => 'includes/language/en/install.php',
    481 => 'includes/language/fr/admin_authors.php',
    482 => 'includes/language/fr/admin_extensions.php',
    483 => 'includes/language/fr/admin_language.php',
    484 => 'includes/language/fr/admin_modules.php',
    485 => 'includes/language/fr/admin_seotools.php',
    486 => 'includes/language/fr/admin_settings.php',
    487 => 'includes/language/fr/admin_themes.php',
    488 => 'includes/language/fr/admin_upload.php',
    489 => 'includes/language/fr/admin_webtools.php',
    490 => 'includes/language/fr/global.php',
    491 => 'includes/language/fr/install.php',
    492 => 'includes/language/vi/admin_authors.php',
    493 => 'includes/language/vi/admin_extensions.php',
    494 => 'includes/language/vi/admin_language.php',
    495 => 'includes/language/vi/admin_modules.php',
    496 => 'includes/language/vi/admin_seotools.php',
    497 => 'includes/language/vi/admin_settings.php',
    498 => 'includes/language/vi/admin_themes.php',
    499 => 'includes/language/vi/admin_upload.php',
    500 => 'includes/language/vi/admin_webtools.php',
    501 => 'includes/language/vi/global.php',
    502 => 'includes/language/vi/install.php',
    503 => 'includes/mainfile.php',
    504 => 'includes/plugin/cdn_js_css_image.php',
    505 => 'includes/plugin/china_censorship.ini',
    506 => 'includes/plugin/china_censorship.php',
    507 => 'includes/plugin/mysql_master_slave.php',
    508 => 'includes/request_uri.php',
    509 => 'includes/utf8/utf8_functions.php',
    510 => 'includes/xtemplate.class.php',
    511 => 'index.php',
    512 => 'install/action_mysql.php',
    513 => 'install/config.php',
    514 => 'install/data.php',
    515 => 'install/data_by_lang.php',
    516 => 'install/index.php',
    517 => 'install/ini.php',
    518 => 'install/mainfile.php',
    519 => 'install/tpl/step1.tpl',
    520 => 'install/tpl/step4.tpl',
    521 => 'install/tpl/step6.tpl',
    522 => 'install/update.php',
    523 => 'modules/banners/admin/add_banner.php',
    524 => 'modules/banners/admin/b_list.php',
    525 => 'modules/banners/admin/banners_list.php',
    526 => 'modules/banners/admin/edit_banner.php',
    527 => 'modules/banners/admin/info_pl.php',
    528 => 'modules/banners/admin/main.php',
    529 => 'modules/banners/admin.functions.php',
    530 => 'modules/banners/blocks/global.banners.php',
    531 => 'modules/banners/forms/form_random_one.php',
    532 => 'modules/banners/funcs/click.php',
    533 => 'modules/banners/funcs/main.php',
    534 => 'modules/banners/language/admin_en.php',
    535 => 'modules/banners/language/admin_fr.php',
    536 => 'modules/banners/language/admin_vi.php',
    537 => 'modules/banners/language/en.php',
    538 => 'modules/banners/language/fr.php',
    539 => 'modules/banners/language/vi.php',
    540 => 'modules/banners/version.php',
    541 => 'modules/comment/admin/del.php',
    542 => 'modules/comment/admin/main.php',
    543 => 'modules/comment/comment.php',
    544 => 'modules/comment/funcs/main.php',
    545 => 'modules/comment/language/en.php',
    546 => 'modules/comment/language/fr.php',
    547 => 'modules/comment/language/vi.php',
    548 => 'modules/comment/version.php',
    549 => 'modules/contact/action_mysql.php',
    550 => 'modules/contact/admin/config.php',
    551 => 'modules/contact/admin/department.php',
    552 => 'modules/contact/admin/main.php',
    553 => 'modules/contact/admin/row.php',
    554 => 'modules/contact/admin/supporter-content.php',
    555 => 'modules/contact/admin.functions.php',
    556 => 'modules/contact/admin.menu.php',
    557 => 'modules/contact/funcs/main.php',
    558 => 'modules/contact/language/admin_en.php',
    559 => 'modules/contact/language/admin_fr.php',
    560 => 'modules/contact/language/admin_vi.php',
    561 => 'modules/contact/language/data_en.php',
    562 => 'modules/contact/language/data_fr.php',
    563 => 'modules/contact/language/data_vi.php',
    564 => 'modules/contact/theme.php',
    565 => 'modules/contact/version.php',
    566 => 'modules/feeds/admin.functions.php',
    567 => 'modules/feeds/funcs/main.php',
    568 => 'modules/feeds/version.php',
    569 => 'modules/freecontent/admin/manager.php',
    570 => 'modules/freecontent/language/admin_en.php',
    571 => 'modules/freecontent/language/admin_fr.php',
    572 => 'modules/freecontent/language/admin_vi.php',
    573 => 'modules/freecontent/version.php',
    574 => 'modules/menu/version.php',
    575 => 'modules/news/action_mysql.php',
    576 => 'modules/news/admin/addtotopics.php',
    577 => 'modules/news/admin/content.php',
    578 => 'modules/news/admin/groups.php',
    579 => 'modules/news/admin/main.php',
    580 => 'modules/news/admin/setting.php',
    581 => 'modules/news/admin/sources.php',
    582 => 'modules/news/admin/tags.php',
    583 => 'modules/news/admin/tagsajax.php',
    584 => 'modules/news/admin/topics.php',
    585 => 'modules/news/admin.functions.php',
    586 => 'modules/news/blocks/module.block_headline.php',
    587 => 'modules/news/blocks/module.block_news.php',
    588 => 'modules/news/funcs/content.php',
    589 => 'modules/news/funcs/detail.php',
    590 => 'modules/news/funcs/main.php',
    591 => 'modules/news/funcs/print.php',
    592 => 'modules/news/funcs/rss.php',
    593 => 'modules/news/funcs/sendmail.php',
    594 => 'modules/news/funcs/sitemap.php',
    595 => 'modules/news/funcs/tag.php',
    596 => 'modules/news/functions.php',
    597 => 'modules/news/global.functions.php',
    598 => 'modules/news/language/admin_en.php',
    599 => 'modules/news/language/admin_fr.php',
    600 => 'modules/news/language/admin_vi.php',
    601 => 'modules/news/language/data_en.php',
    602 => 'modules/news/language/data_fr.php',
    603 => 'modules/news/language/data_vi.php',
    604 => 'modules/news/language/en.php',
    605 => 'modules/news/language/fr.php',
    606 => 'modules/news/language/vi.php',
    607 => 'modules/news/theme.php',
    608 => 'modules/news/version.php',
    609 => 'modules/page/action_mysql.php',
    610 => 'modules/page/admin/content.php',
    611 => 'modules/page/admin/del.php',
    612 => 'modules/page/funcs/main.php',
    613 => 'modules/page/funcs/rss.php',
    614 => 'modules/page/language/admin_en.php',
    615 => 'modules/page/language/admin_fr.php',
    616 => 'modules/page/language/admin_vi.php',
    617 => 'modules/page/language/data_en.php',
    618 => 'modules/page/language/data_fr.php',
    619 => 'modules/page/language/data_vi.php',
    620 => 'modules/page/theme.php',
    621 => 'modules/page/version.php',
    622 => 'modules/seek/version.php',
    623 => 'modules/statistics/admin/cleardata.php',
    624 => 'modules/statistics/admin.functions.php',
    625 => 'modules/statistics/admin.menu.php',
    626 => 'modules/statistics/language/admin_en.php',
    627 => 'modules/statistics/language/admin_fr.php',
    628 => 'modules/statistics/language/admin_vi.php',
    629 => 'modules/statistics/version.php',
    630 => 'modules/two-step-verification/version.php',
    631 => 'modules/users/action_mysql.php',
    632 => 'modules/users/admin/authors.php',
    633 => 'modules/users/admin/config.php',
    634 => 'modules/users/admin/del.php',
    635 => 'modules/users/admin/edit.php',
    636 => 'modules/users/admin/edit_2step.php',
    637 => 'modules/users/admin/editcensor.php',
    638 => 'modules/users/admin/fields.php',
    639 => 'modules/users/admin/groups.php',
    640 => 'modules/users/admin/main.php',
    641 => 'modules/users/admin/setofficial.php',
    642 => 'modules/users/admin/user_add.php',
    643 => 'modules/users/admin/user_waiting.php',
    644 => 'modules/users/admin/user_waiting_remail.php',
    645 => 'modules/users/admin.functions.php',
    646 => 'modules/users/admin.menu.php',
    647 => 'modules/users/blocks/global.login.php',
    648 => 'modules/users/blocks/global.user_button.php',
    649 => 'modules/users/fields.check.php',
    650 => 'modules/users/funcs/active.php',
    651 => 'modules/users/funcs/editinfo.php',
    652 => 'modules/users/funcs/groups.php',
    653 => 'modules/users/funcs/login.php',
    654 => 'modules/users/funcs/logout.php',
    655 => 'modules/users/funcs/lostactivelink.php',
    656 => 'modules/users/funcs/lostpass.php',
    657 => 'modules/users/funcs/memberlist.php',
    658 => 'modules/users/funcs/register.php',
    659 => 'modules/users/functions.php',
    660 => 'modules/users/global.functions.php',
    661 => 'modules/users/language/admin_en.php',
    662 => 'modules/users/language/admin_fr.php',
    663 => 'modules/users/language/admin_vi.php',
    664 => 'modules/users/language/en.php',
    665 => 'modules/users/language/fr.php',
    666 => 'modules/users/language/vi.php',
    667 => 'modules/users/login/oauth-facebook.php',
    668 => 'modules/users/login/oauth-google.php',
    669 => 'modules/users/notification.php',
    670 => 'modules/users/siteinfo.php',
    671 => 'modules/users/theme.php',
    672 => 'modules/users/version.php',
    673 => 'modules/voting/funcs/main.php',
    674 => 'modules/voting/language/admin_en.php',
    675 => 'modules/voting/language/admin_fr.php',
    676 => 'modules/voting/language/admin_vi.php',
    677 => 'modules/voting/version.php',
    678 => 'robots.php',
    679 => 'themes/admin_default/css/settings.css',
    680 => 'themes/admin_default/css/style.css',
    681 => 'themes/admin_default/css/themes.css',
    682 => 'themes/admin_default/css/upload.css',
    683 => 'themes/admin_default/css/users.css',
    684 => 'themes/admin_default/js/banners.js',
    685 => 'themes/admin_default/js/extensions.js',
    686 => 'themes/admin_default/js/main.js',
    687 => 'themes/admin_default/js/news.js',
    688 => 'themes/admin_default/js/news_content.js',
    689 => 'themes/admin_default/js/seotools.js',
    690 => 'themes/admin_default/js/settings.js',
    691 => 'themes/admin_default/js/siteinfo.js',
    692 => 'themes/admin_default/js/statistics.js',
    693 => 'themes/admin_default/js/themes.js',
    694 => 'themes/admin_default/js/users.js',
    695 => 'themes/admin_default/js/voting.js',
    696 => 'themes/admin_default/modules/authors/add.tpl',
    697 => 'themes/admin_default/modules/authors/edit.tpl',
    698 => 'themes/admin_default/modules/banners/add_banner.tpl',
    699 => 'themes/admin_default/modules/banners/add_plan.tpl',
    700 => 'themes/admin_default/modules/banners/b_list.tpl',
    701 => 'themes/admin_default/modules/banners/edit_plan.tpl',
    702 => 'themes/admin_default/modules/banners/main.tpl',
    703 => 'themes/admin_default/modules/comment/main.tpl',
    704 => 'themes/admin_default/modules/contact/config.tpl',
    705 => 'themes/admin_default/modules/contact/forward.tpl',
    706 => 'themes/admin_default/modules/contact/main.tpl',
    707 => 'themes/admin_default/modules/contact/reply.tpl',
    708 => 'themes/admin_default/modules/contact/row.tpl',
    709 => 'themes/admin_default/modules/contact/send.tpl',
    710 => 'themes/admin_default/modules/extensions/manage.tpl',
    711 => 'themes/admin_default/modules/freecontent/list.tpl',
    712 => 'themes/admin_default/modules/freecontent/main.tpl',
    713 => 'themes/admin_default/modules/language/check.tpl',
    714 => 'themes/admin_default/modules/modules/edit.tpl',
    715 => 'themes/admin_default/modules/news/content.tpl',
    716 => 'themes/admin_default/modules/news/main.tpl',
    717 => 'themes/admin_default/modules/news/settings.tpl',
    718 => 'themes/admin_default/modules/news/sources.tpl',
    719 => 'themes/admin_default/modules/page/content.tpl',
    720 => 'themes/admin_default/modules/seotools/metatags.tpl',
    721 => 'themes/admin_default/modules/settings/cronjobs_add.tpl',
    722 => 'themes/admin_default/modules/settings/plugin.tpl',
    723 => 'themes/admin_default/modules/settings/security.tpl',
    724 => 'themes/admin_default/modules/settings/smtp.tpl',
    725 => 'themes/admin_default/modules/settings/system.tpl',
    726 => 'themes/admin_default/modules/siteinfo/logs.tpl',
    727 => 'themes/admin_default/modules/statistics/cleardata.tpl',
    728 => 'themes/admin_default/modules/statistics/index.html',
    729 => 'themes/admin_default/modules/themes/main.tpl',
    730 => 'themes/admin_default/modules/themes/settings.tpl',
    731 => 'themes/admin_default/modules/upload/foldlist.tpl',
    732 => 'themes/admin_default/modules/upload/main.tpl',
    733 => 'themes/admin_default/modules/users/config.tpl',
    734 => 'themes/admin_default/modules/users/editcensor.tpl',
    735 => 'themes/admin_default/modules/users/editcensor_review.tpl',
    736 => 'themes/admin_default/modules/users/fields.tpl',
    737 => 'themes/admin_default/modules/users/getuserid.tpl',
    738 => 'themes/admin_default/modules/users/groups.tpl',
    739 => 'themes/admin_default/modules/users/main.tpl',
    740 => 'themes/admin_default/modules/users/user_add.tpl',
    741 => 'themes/admin_default/modules/users/user_edit.tpl',
    742 => 'themes/admin_default/modules/users/user_waiting_remail.tpl',
    743 => 'themes/admin_default/modules/users/user_waitting.tpl',
    744 => 'themes/admin_default/modules/voting/main.tpl',
    745 => 'themes/admin_default/modules/webtools/statistics.tpl',
    746 => 'themes/admin_default/system/main.tpl',
    747 => 'themes/admin_default/theme.php',
    748 => 'themes/default/blocks/global.company_info.ini',
    749 => 'themes/default/blocks/global.company_info.php',
    750 => 'themes/default/blocks/global.company_info.tpl',
    751 => 'themes/default/blocks/global.theme_switch.php',
    752 => 'themes/default/blocks/global.theme_switch.tpl',
    753 => 'themes/default/config.ini',
    754 => 'themes/default/config.php',
    755 => 'themes/default/css/contentslider.css',
    756 => 'themes/default/css/jquery.ui.tabs.css',
    757 => 'themes/default/css/style.css',
    758 => 'themes/default/default.jpg',
    759 => 'themes/default/js/main.js',
    760 => 'themes/default/js/users.js',
    761 => 'themes/default/language/admin_en.php',
    762 => 'themes/default/language/admin_fr.php',
    763 => 'themes/default/language/admin_vi.php',
    764 => 'themes/default/language/en.php',
    765 => 'themes/default/language/fr.php',
    766 => 'themes/default/language/vi.php',
    767 => 'themes/default/layout/header_only.tpl',
    768 => 'themes/default/modules/comment/comment.tpl',
    769 => 'themes/default/modules/comment/main.tpl',
    770 => 'themes/default/modules/contact/form.tpl',
    771 => 'themes/default/modules/contact/main.tpl',
    772 => 'themes/default/modules/menu/global.bootstrap.tpl',
    773 => 'themes/default/modules/news/block_headline.tpl',
    774 => 'themes/default/modules/news/block_news.tpl',
    775 => 'themes/default/modules/news/block_newscenter.tpl',
    776 => 'themes/default/modules/news/detail.tpl',
    777 => 'themes/default/modules/news/sendmail.tpl',
    778 => 'themes/default/modules/page/main.tpl',
    779 => 'themes/default/modules/users/block.login.tpl',
    780 => 'themes/default/modules/users/block.user_button.tpl',
    781 => 'themes/default/modules/users/lostactivelink.tpl',
    782 => 'themes/default/modules/users/register_form.tpl',
    783 => 'themes/default/system/config.tpl',
    784 => 'themes/default/theme.php',
    785 => 'themes/mobile_default/blocks/global.company_info.ini',
    786 => 'themes/mobile_default/blocks/global.company_info.php',
    787 => 'themes/mobile_default/blocks/global.company_info.tpl',
    788 => 'themes/mobile_default/config.ini',
    789 => 'themes/mobile_default/config.php',
    790 => 'themes/mobile_default/css/style.css',
    791 => 'themes/mobile_default/js/main.js',
    792 => 'themes/mobile_default/language/admin_en.php',
    793 => 'themes/mobile_default/language/admin_fr.php',
    794 => 'themes/mobile_default/language/admin_vi.php',
    795 => 'themes/mobile_default/language/en.php',
    796 => 'themes/mobile_default/language/fr.php',
    797 => 'themes/mobile_default/language/vi.php',
    798 => 'themes/mobile_default/layout/header_only.tpl',
    799 => 'themes/mobile_default/mobile_default.jpg',
    800 => 'themes/mobile_default/modules/comment/main.tpl',
    801 => 'themes/mobile_default/modules/news/block_news.tpl',
    802 => 'themes/mobile_default/modules/news/detail.tpl',
    803 => 'themes/mobile_default/modules/news/sendmail.tpl',
    804 => 'themes/mobile_default/modules/news/theme.php',
    805 => 'themes/mobile_default/modules/users/block.user_button.tpl',
    806 => 'themes/mobile_default/modules/users/register_form.tpl',
    807 => 'themes/mobile_default/system/config.tpl',
    808 => 'themes/mobile_default/theme.php',
    809 => 'vendor/composer/ClassLoader.php',
    810 => 'vendor/composer/LICENSE',
    811 => 'vendor/composer/autoload_classmap.php',
    812 => 'vendor/composer/autoload_files.php',
    813 => 'vendor/composer/autoload_psr4.php',
    814 => 'vendor/composer/autoload_real.php',
    815 => 'vendor/composer/autoload_static.php',
    816 => 'vendor/composer/installed.json',
    817 => 'vendor/phpmailer/phpmailer/LICENSE',
    818 => 'vendor/phpmailer/phpmailer/VERSION',
    819 => 'vendor/phpmailer/phpmailer/src/Exception.php',
    820 => 'vendor/phpmailer/phpmailer/src/OAuth.php',
    821 => 'vendor/phpmailer/phpmailer/src/PHPMailer.php',
    822 => 'vendor/phpmailer/phpmailer/src/POP3.php',
    823 => 'vendor/phpmailer/phpmailer/src/SMTP.php',
    824 => 'vendor/vinades/nukeviet/Cache/Memcached.php',
    825 => 'vendor/vinades/nukeviet/Cache/Redis.php',
    826 => 'vendor/vinades/nukeviet/Client/Gfonts.php',
    827 => 'vendor/vinades/nukeviet/Core/Blocker.php',
    828 => 'vendor/vinades/nukeviet/Core/Database.php',
    829 => 'vendor/vinades/nukeviet/Core/Error.php',
    830 => 'vendor/vinades/nukeviet/Core/Ips.php',
    831 => 'vendor/vinades/nukeviet/Core/Optimizer.php',
    832 => 'vendor/vinades/nukeviet/Core/Request.php',
    833 => 'vendor/vinades/nukeviet/Files/Upload.php',
    834 => 'vendor/vinades/nukeviet/Http/Http.php',
    835 => 'vendor/vinades/nukeviet/Seo/BotManager.php',
  ),
  'data_list' => 
  array (
    'nv_up_delfile4304' => 
    array (
      'langkey' => 'nv_up_delfile4304',
      'require' => 2,
    ),
    'nv_up_googleplus4305' => 
    array (
      'langkey' => 'nv_up_googleplus4305',
      'require' => 2,
    ),
    'nv_up_modusers4305' => 
    array (
      'langkey' => 'nv_up_modusers4305',
      'require' => 2,
    ),
    'nv_up_sys4305' => 
    array (
      'langkey' => 'nv_up_sys4305',
      'require' => 2,
    ),
    'nv_up_modusers4306' => 
    array (
      'langkey' => 'nv_up_modusers4306',
      'require' => 2,
    ),
    'nv_up_modnews4306' => 
    array (
      'langkey' => 'nv_up_modnews4306',
      'require' => 2,
    ),
    'nv_up_sys4306' => 
    array (
      'langkey' => 'nv_up_sys4306',
      'require' => 2,
    ),
    'nv_up_modusers4307' => 
    array (
      'langkey' => 'nv_up_modusers4307',
      'require' => 2,
    ),
    'nv_up_sys4307' => 
    array (
      'langkey' => 'nv_up_sys4307',
      'require' => 2,
    ),
    'nv_up_sys4308' => 
    array (
      'langkey' => 'nv_up_sys4308',
      'require' => 2,
    ),
    'nv_up_finish' => 
    array (
      'langkey' => 'nv_up_finish',
      'require' => 2,
    ),
  ),
  'substep' => 3,
  'data_passed' => 
  array (
    'nv_up_delfile4304' => 1,
    'nv_up_googleplus4305' => 1,
    'nv_up_modusers4305' => 1,
    'nv_up_sys4305' => 1,
    'nv_up_modusers4306' => 1,
    'nv_up_modnews4306' => 1,
    'nv_up_sys4306' => 1,
    'nv_up_modusers4307' => 1,
    'nv_up_sys4307' => 1,
    'nv_up_sys4308' => 1,
    'nv_up_finish' => 1,
  ),
  'is_start_up_db' => 1578372867,
  'starttime' => 1578372867,
  'is_start_move_file' => 1578372904,
);

