<?php

include 'conexion.php';


if(isset($_POST['diagnostico']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',11,'Acceso','INGRESO A PANTALLA DIAGNOSTICO')");
    


     header('Location:Diagnosticos.php');

}

if(isset($_POST['personal']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',1,'Acceso','INGRESO A PANTALLA PERSONAL')");
   

    header('Location:Personal.php');
}

//MODULO SGURIDAD
//cambiar el insert de bitacora a la pantalla que corresponde.
if(isset($_POST['rol_y_permiso']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',1,'Acceso','INGRESO A PANTALLA PERSONAL')");
   

    header('Location:roles_permisos.php');
}
if(isset($_POST['P_seguridad']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:Parametros.php');
}
if(isset($_POST['p_sistema']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:Parametros_sistema.php');
}
//MODULO ADMINISTRACION
if(isset($_POST['gestion_bd']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:acceso_DB.php');
}

if(isset($_POST['restablecer_bd']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:restablecer_DB.php');
}

if(isset($_POST['bitacora']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:bitacora.php');
}
?>