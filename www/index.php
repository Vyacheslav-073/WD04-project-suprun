<?php

$errors = array();
$success = array();

require "config.php";
require "db.php";
require "libs/functions.php";
session_start();

/*.......................................

 РОУТЕР

.......................................*/

// request URL = http://project/blog/post?id=15
$uri = $_SERVER["REQUEST_URI"];// /portfolio/
$uri = rtrim($uri, "/");// /portfolio
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1); // portfolio
$uri = explode('?', $uri);

switch ( $uri[0]) {

    case '':
        require ROOT . "modules/main/index.php";
        break;

//::::::::::::::: USERS :::::::::::::::::::::

    case 'login':
        require ROOT . "modules/login/login.php";
        break;

    case 'registration':
        include ROOT . "modules/login/registration.php";
        break;

    case 'logout':
        include ROOT . "modules/login/logout.php";
        break;

    case 'lost-password':
        include ROOT . "modules/login/lost-password.php";
        break;

    case 'set-new-password':
        include ROOT . "modules/login/set-new-password.php";
        break;

    case 'profile':
        include ROOT . "modules/profile/index.php";
        break;

    case 'profile-edit':
        include ROOT . "modules/profile/edit.php";
        break;

//::::::::::::::: / USERS :::::::::::::::::::::

//::::::::::::::: ABOUT :::::::::::::::::::::

    case 'about':
        include ROOT . "modules/about/index.php";
        break;

    case 'edit-text':
        include ROOT . "modules/about/edit-text.php";
        break;

    case 'edit-skills':
        include ROOT . "modules/about/edit-skills.php";
        break;

    case 'edit-jobs':
        include ROOT . "modules/about/edit-jobs.php";
        break;

    case 'about/jobs-delete':
        include ROOT . "modules/about/jobs-delete.php";
        break;

//::::::::::::::: / ABOUT :::::::::::::::::::::

//::::::::::::::: Categories :::::::::::::::::::::

    case 'blog/categories':
        include ROOT . "modules/categories/all.php";
        break;

    case 'blog/category-new':
        include ROOT . "modules/categories/new.php";
        break;

    case 'blog/category-edit':
        include ROOT . "modules/categories/edit.php";
        break;

    case 'blog/category-delete':
        include ROOT . "modules/categories/delete.php";
        break;

//::::::::::::::: / Categories :::::::::::::::::::::

//::::::::::::::: BLOG :::::::::::::::::::::::::

    case 'blog':
        include ROOT . "modules/blog/index.php";
        break;

    case 'blog/post-new':
        include ROOT . "modules/blog/post-new.php";
        break;

    case 'blog/post-edit':
        include ROOT . "modules/blog/post-edit.php";
        break;

    case 'blog/post-delete':
        include ROOT . "modules/blog/post-delete.php";
        break;

    case 'blog/post':
        include ROOT . "modules/blog/post.php";
        break;

//:::::::::::::: / BLOG ::::::::::::::::::::::::
        
//:::::::::::::: CONTACTS ::::::::::::::::::::::::

    case 'contacts':
        include ROOT . "modules/contacts/index.php";
        break;

    case 'contacts-edit':
        include ROOT . "modules/contacts/edit.php";
        break;

    case 'messages':
        include ROOT . "modules/contacts/messages.php";
        break;

    case 'contacts/message-delete':
        include ROOT . "modules/contacts/message-delete.php";
        break;

//:::::::::::::: / CONTACTS ::::::::::::::::::::::::

//:::::::::::::: PORTFOLIO ::::::::::::::::::::::::

    case 'portfolio':
        include ROOT."modules/portfolio/index.php";
        break;

    case 'portfolio/portfolio-new':
        include ROOT."modules/portfolio/portfolio-new.php";
        break;

    case 'portfolio/portfolio-edit':
        include ROOT."modules/portfolio/portfolio-edit.php";
        break;

    case 'portfolio/post':
        include ROOT."modules/portfolio/post.php";
        break;

	case 'portfolio/portfolio-delete':
        include ROOT."modules/portfolio/portfolio-delete.php";
        break;

//:::::::::::::: // PORTFOLIO ::::::::::::::::::::::::

    default:
        include "modules/main/index.php";
        break;
}

?>