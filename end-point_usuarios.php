<?php
session_start();
include ("conexion.php");
?>
<?php

    
if ($_POST['funcion']=='verificar') {
    $correo=$_POST['$email'];
    $usuario=$_POST['$usuario'];
    $validarCorreo = mysqli_query($con, "SELECT * from tbl_usuario WHERE email='$correo'");
    $validarUsuario = mysqli_query($con, "SELECT * from tbl_usuario WHERE Nom_Usuario='$usuario'");
   
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
    echo 'no se encontro';
}

	

?>