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
    VALUES ('$id_usuario',13,'Acceso','INGRESO A PANTALLA RELIGIÓN')");
    
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
    VALUES ('$id_usuario',19,'Acceso','INGRESO A PANTALLA ROLES')");
   

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
    VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS DE SEGURIDAD')");
   

    header('Location:Parametros.php');
}
if(isset($_POST['p_sistema']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',20,'Acceso','INGRESO A PANTALLA PARAMETROS DE SISTEMA')");
   

    header('Location:Parametros_sistema.php');
}
if(isset($_POST['p_preguntas']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',17,'Acceso','INGRESO A PANTALLA PREGUNTAS SECRETAS')");
   

    header('Location:Preguntas.php');
}
//MODULO ADMINISTRACION
if(isset($_POST['gestion_bd']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',21,'Acceso','INGRESO A PANTALLA RESAPALDO DB')");
   

    header('Location:acceso_DB.php');
}

if(isset($_POST['restablecer_bd']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',22,'Acceso','INGRESO A PANTALLA RESTAURAR DB')");
   

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
    VALUES ('$id_usuario',23,'Acceso','INGRESO A PANTALLA COBROS')");
   

    header('Location:cobros_adicionales.php');
}
//MODULO CAJA
if(isset($_POST['caja']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',8,'Acceso','INGRESO A PANTALLA CAJA')");
   

    header('Location:Caja.php');
}
//MODULO ATENCION A PACIENTES 
if(isset($_POST['pacientes']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',4,'Acceso','INGRESO A PANTALLA PACIENTES')");
   

    header('Location:Pacientes.php');
}
if(isset($_POST['citas']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',7,'Acceso','INGRESO A PANTALLA CITAS')");
   

    header('Location:Cita.php');
}
if(isset($_POST['preclinica']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',6,'Acceso','INGRESO A PANTALLA PRECLINICA')");
   

    header('Location:Preclinica.php');
}
if(isset($_POST['clinica']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',5,'Acceso','INGRESO A PANTALLA CONSULTA')");
   

    header('Location:Consulta.php');
}
if(isset($_POST['expediente']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',24,'Acceso','INGRESO A PANTALLA EXPEDIENTE')");
   

    header('Location:Expediente.php');
}
// ADMINISTRAR USUARIO Y SESION
if(isset($_POST['cerrar']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',25,'Acceso','CERRO SESIÓN')");
   

    header('Location:cerrar.php');
}
if(isset($_POST['perfil']) ){
    session_start();
    $id_usuario= $_SESSION['ID_Usuario'];
    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    VALUES ('$id_usuario',25,'Acceso','INGRESO A ADMINISTRAR CUENTA')");
   

    header('Location:Administrar_Usuario.php');
}
?>
