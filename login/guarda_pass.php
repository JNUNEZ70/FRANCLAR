<?php

require 'funcs/conexion.php';
require 'funcs/funcs.php';

if (isset($_POST['recuperar'])) {
    # code...
    $idpregunta = mysqli_real_escape_string($mysqli,(strip_tags($_POST['pregunta'],ENT_QUOTES)));
    $respuesta = mysqli_real_escape_string($mysqli,(strip_tags($_POST['respuesta'],ENT_QUOTES)));
    $nuevacont = mysqli_real_escape_string($mysqli,(strip_tags($_POST['Ncontraseña'],ENT_QUOTES)));
    $confnuevacont = mysqli_real_escape_string($mysqli,(strip_tags($_POST['Ccontraseña'],ENT_QUOTES)));
    $id_usuario= mysqli_real_escape_string($mysqli,(strip_tags($_POST['id_usuario'],ENT_QUOTES)));; 
    $nuevacont_encr = password_hash($nuevacont, PASSWORD_DEFAULT);
    
    $obtenerresp = mysqli_query($mysqli, "SELECT * FROM tbl_pregunta_usuario WHERE ID_Pregunta='$idpregunta' AND ID_Usuario='$id_usuario'  ");
    $dato = mysqli_fetch_assoc($obtenerresp);
    $resp_usu = $dato['Respuesta'];
    
    

    if(password_verify($respuesta,$resp_usu) == 0){
        echo "<script type='text/javascript'>
        alert('Respuesta incorrecta, favor intente de nuevo');
        window.location.href= 'RPreguntas.php';
        </script>";
    }else if($nuevacont <> $confnuevacont){
        echo "<script type='text/javascript'>
        alert('Las contraseñas proporcionadas no coinciden, favor intente de nuevo');
        window.location.href= 'RPreguntas.php';
        </script>";
    }else{
        $update = mysqli_query($mysqli, "UPDATE tbl_usuario SET Contraseña='$nuevacont_encr', ID_Estado=1 WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
        if($update){
            $user_id=$id_usuario;
            $id_objeto=27;
            $accion="Cambio de contraseña";
            $descripcion="RECUPERACION DE CONTRASEÑA MEDIANTE PREGUNTA"; 
            insertBitacora($user_id,$id_objeto,$accion,$descripcion);

            echo "<script type='text/javascript'>
            alert('Recuperación de Contraseña exitosa, favor inicie sesión');
            window.location.href= 'login.php';
            </script>";
        }
    
    }
    return false;  
}










$user_id = $mysqli->real_escape_string($_POST['user_id']);
$token = $mysqli->real_escape_string($_POST['token']);
$password = $mysqli->real_escape_string($_POST['password']);
$con_password = $mysqli->real_escape_string($_POST['con_password']);




if (validaPassword($password,$con_password)){
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