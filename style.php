<?php
    // SCSS => CSS 
	use ScssPhp\ScssPhp\Server;
	use ScssPhp\ScssPhp\Compiler;
	require_once "vendor/scssphp/scss.inc.php";
    require_once "vendor/scssphp/example/Server.php";

    $scss = new Compiler();
	$scss->setFormatter('ScssPhp\ScssPhp\Formatter\Compressed'); // Để compress file css
    $directory = 'themes/web24/css/'; // Thư mục chứa style.scss 
    $server = new Server($directory, null, $scss); // Nhớ tạo thư mục scss_cache trong thư mục của biến $directory
    // $server = new Server($directory, null, null); // Sửa giao diện xong thì ẩn code này để compressed file lại
    $server->serve(); // Nó sẽ lưu cache lại, làm mới khi complie mới, mỗi lần Complie ~ 6s tùy vào số lượng code
    die();

