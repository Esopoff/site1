<!DOCTYPE html>
<?php
/* ******************************************************
Чолий Артём <esopoff@gmail.com>
24/05/2016 03:54:00
information.php - Страница вывода информации о компании
********************************************************/
?>
<html>
<head>
	<meta charset="utf-8">
	<title>Avto Torros</title>
	<link rel="stylesheet" type="text/css" href="static/css/style.css">
</head>
<body>
<?php 
require_once 'core/func/func.php';
?>
<img src="static/images//avto.png" width = "1140" height = "423"  > 

 	<p class="information">
 		<a href = "information.php">Информация о компании</a>
 	</p>
 	<p class="category">
 		<a href = "category.php">Автомобили </a>
 	</p>
 	<?php echo view_link_category(); ?>
 	<?php 
  // Подключение файла функций
// echo result();
// echo 'Get url: '.get_request();

echo get_id_category();
echo view_product();

?>
</body>
</html>