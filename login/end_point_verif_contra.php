<?php

require 'funcs/conexion.php';
require 'funcs/funcs.php';

if ($_POST['obj']=='verificarcontraseña') {
    $user_id = $mysqli->real_escape_string($_POST['$id_usuario']);
    $token = $mysqli->real_escape_string($_POST['$token']);
    $password = $mysqli->real_escape_string($_POST['$password']);
    $con_password = $mysqli->real_escape_string($_POST['$con_password']);
    $pass_encriptada= password_hash($password, PASSWORD_DEFAULT);
    $validarContrasena = mysqli_query($mysqli, "SELECT * from tbl_historico_contrsenas WHERE id_usuario='$user_id'");
    $errores=array();
        if (mysqli_num_rows($validarContrasena) > 0) {
            while ($row =  mysqli_fetch_assoc($validarContrasena)) {
                
                
                 if (password_verify($password,$row['contrasena_anterior'])) {
                    $errores[]= 'esta contraseña ya la usó anteriormente';
                 
                }
            }
          
            
        }else{
           //verificar si se ocupa el
        }
           
    
    
        $json=json_encode($errores);
        echo $json ;
}

if ($_POST['obj']=='verificarcontraseñapregunta') {
    $user_id = $mysqli->real_escape_string($_POST['$id_usuario']);
    
    $password = $mysqli->real_escape_string($_POST['$password']);
    $con_password = $mysqli->real_escape_string($_POST['$con_password']);
    $pass_encriptada= password_hash($password, PASSWORD_DEFAULT);
    $validarContrasena = mysqli_query($mysqli, "SELECT * from tbl_historico_contrsenas WHERE id_usuario='$user_id'");
    $errores=array();
        if (mysqli_num_rows($validarContrasena) > 0) {
            while ($row =  mysqli_fetch_assoc($validarContrasena)) {
                
                
                 if (password_verify($password,$row['contrasena_anterior'])) {
                    $errores[]= 'esta contraseña ya la uso anteriormente';
                 
                }
            }
          
            
        }else{
           //verificar si se ocupa el
        }
           
    
    
        $json=json_encode($errores);
        echo $json ;
}

if ($_POST['obj']=='verificarusuarioautoregistro') {
    $correo=$_POST['$email'];
    $usuario=$_POST['$nombreUsuario'];
    $validarCorreo = mysqli_query($mysqli, "SELECT * from tbl_usuario WHERE email='$correo'");
    $validarUsuario = mysqli_query($mysqli, "SELECT * from tbl_usuario WHERE Nom_Usuario='$usuario'");
   
   $errores=array();
        if (mysqli_num_rows($validarCorreo) > 0) {
            $msgCorreoFalse='Este correo electrónico ya está en uso';
            $errores[]=$msgCorreoFalse;
            
        }else{
           //verificar si se ocupa el
        }

        if ( (mysqli_num_rows($validarUsuario) > 0)) {
            $msgUsuarioTrue='Este usuario ya está en uso.';
            $errores[]=$msgUsuarioTrue;
           
        }else{
           //verisficar si se ocupa el else
           
        }
        $json=json_encode($errores);
        echo $json ;
} else{
   
}

?>