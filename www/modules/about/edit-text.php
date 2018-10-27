<?php

if (!isAdmin()){
	header("Location:" . HOST);
	die();
}

$title = "Редактировать - О авторе";

$about=R::load('about', 1);

if( isset($_POST['textUpdate'])) {

	if( trim($_POST['name']) =='') {
		$errors[]=['title' => 'Введите Имя'];
	}

	if( trim($_POST['description']) =='') {
		$errors[]=['title' => 'Введите описание'];
	}
	
	if( empty($errors)) { 

		$about->name = htmlentities($_POST['name']);
		$about->description = $_POST['description'];

        if( isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] !='') {

            $fileName = $_FILES['photo']['name'];
            $fileTmpLoc = $_FILES['photo']['tmp_name'];
			$fileSize = $_FILES['photo']['size'];
			$fileType = $_FILES['photo']['type'];
			$fileErrorMsg = $_FILES['photo']['error'];
			$kaboom = explode(".",$fileName);
			$fileExt = end($kaboom);

			list($width, $height) = getimagesize($fileTmpLoc);

			if($width<10 || $height<10){
				$errors[] = ['title' => 'That image has no dimensiots'];
			}

			if($fileSize > 4194304){				
				$errors[] = ['title'=>'Файл изображения не должен бфть более 4 Mb'];
			}

			if( !preg_match("/\.(gif|jpg|jpeg|png)$/i",$fileName)) {

				$errors[] = ['title' => 'Неверный формат файла',
						'desc' => '<p>Файл изображения долен быть в формате gif, jpg, png или jpeg</p>'
				    ];
		        }
					
			if( $fileErrorMsg == 1) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка.'];
			}

			$db_file_name = rand(100000000000,999999999999) . '.' . $fileExt;
			$postImageFolderLocation = ROOT . 'usercontent/about/';
			$uploadfile = $postImageFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			
			if($moveResult != true) {
				$errors[] = ['title' => 'Ошибка загрузки файла.'];
			}
			
			include_once(ROOT . "/libs/image_resize_imagick.php");
			
			$target_file = $postImageFolderLocation.$db_file_name;
			
			$wmax = 222;
			$hmax = 222;
				
			$img = createThumbnail($target_file,$wmax,$hmax);
			$img->writeImage($target_file);
			
			$about->photo = $db_file_name;			
									
		}

		R::store($about);

		header("Location: " . HOST . "about");
		exit();
	}
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/edit-text.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>