<?php

include 'conexion.php';

// registro en Bitacora cuando entra al modulo mantenimiento
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

if(isset($_POST['usuarios']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',2,'Acceso','INGRESO A PANTALLA USUARIOS')");
   

    header('Location:Usuarios.php');
}

if(isset($_POST['cargos']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',10,'Acceso','INGRESO A PANTALLA CARGOS')");
   

    header('Location:Cargos.php');
}
if(isset($_POST['especialidades']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',9,'Acceso','INGRESO A PANTALLA ESPECIALIDADES')");
   

    header('Location:Especialidades.php');
}
if(isset($_POST['servicios']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',14,'Acceso','INGRESO A PANTALLA SERVICIOS')");
    
     header('Location:Servicios.php');
}

if(isset($_POST['estado_civil']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',12,'Acceso','INGRESO A PANTALLA ESTADO_CIVIL')");
    
     header('Location:Estado_Civil.php');
}
if(isset($_POST['genero']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',16,'Acceso','INGRESO A PANTALLA GÉNERO')");
    
     header('Location:Sexo.php');
}
if(isset($_POST['religion']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',13,'Acceso','INGRESO A PANTALLA RELIGIÓn')");
    
     header('Location:Religiones.php');
}
if(isset($_POST['tipo_sangre']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',15,'Acceso','INGRESO A PANTALLA TIPO_SANGRE')");
    
     header('Location:Tipo_Sangre.php');
}
if(isset($_POST['parentesco']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',18,'Acceso','INGRESO A PANTALLA PARENTESCO')");
    
     header('Location:Parentesco.php');
}
//MODULO SGURIDAD
//cambiar el insert de bitacora a la pantalla que corresponde.
if(isset($_POST['roles']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',1,'Acceso','INGRESO A PANTALLA PERSONAL')");
   

    header('Location:Roles.php');
}
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
if(isset($_POST['p_preguntas']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',16,'Acceso','INGRESO A PANTALLA PREGUNTAS SECRETAS')");
   

    header('Location:Preguntas.php');
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
    // $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    // VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:bitacora.php');
}
if(isset($_POST['cobros_adicionales']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
   

    header('Location:cobros_adicionales.php');
}
?>