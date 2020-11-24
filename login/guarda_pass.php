<?php

require 'funcs/conexion.php';
require 'funcs/funcs.php';


$user_id = $mysqli->real_escape_string($_POST['user_id']);
$token = $mysqli->real_escape_string($_POST['token']);
$password = $mysqli->real_escape_string($_POST['password']);
$con_password = $mysqli->real_escape_string($_POST['con_password']);

if (validaPassword($password,$con_password))
{

$pass_hash= hashpassword($password);

if(cambiaPassword($password,$user_id,$token)){

    echo "La contrasena ha sido modificada";
    echo"<br> <a href='login.php'>Iniciar Sesion</a>";
} else{

    $errors[]="Error al modificar Contrasenia";
}

} else{

    echo 'Las contraseñas no coinciden';
}


?>