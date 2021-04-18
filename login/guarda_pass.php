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
$estado=1;
if(cambiaPassword($pass_hash,$user_id,$token,$estado)){
    $id_objeto=26;
    $accion="Cambio de contraseña";
    $descripcion="RECUPERACION DE CONTRASEÑA MEDIANTE CORREO"; 
    insertBitacora($user_id,$id_objeto,$accion,$descripcion);
   //falta hacer el insert a la bitacora 


   
   
    echo "<script type='text/javascript'>
    alert('Recuperación de Contraseña exitosa, favor inicie sesión');
    window.location.href= 'login.php';
    </script>";
} else{

    $errors[]="Error al modificar Contrasenia";
}

} else{

    echo 'Las contraseñas no coinciden';
}


?>