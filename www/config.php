<?php

// DB SETTINGS
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD04-project-suprun');
define('DB_USER', 'root');
define('DB_PASS', '');

/*Устанавливает путь до корневой директории скрипта по протоколу HTTP*/
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

/*Устанавливает физический путь до корневой директории скрипта*/
define('ROOT', dirname(__FILE__).'/');

?>