
<?php 

$contraseña = 'Minuto95';

$contra_cifrada = password_hash($contraseña, PASSWORD_DEFAULT);

echo "contraseña: ".$contraseña."cifrada: ".$contra_cifrada


// var_dump($_POST);

// var_dump($_POST);

?>