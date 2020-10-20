<?php
session_start();
include ("conexionPDO.php");
?>
<?php
    
	if(isset($_POST['add'])){
        $ID_Empleado = mysqli_real_escape_string($conn,(strip_tags($_POST['ID_Empleado'],ENT_QUOTES)));
        $Nom_Usuario = mysqli_real_escape_string($conn,(strip_tags($_POST['Nom_Usuario'],ENT_QUOTES)));
        $ID_Estado= mysqli_real_escape_string($conn,(strip_tags($_POST['ID_Estado'],ENT_QUOTES)));
        $email = mysqli_real_escape_string($conn,(strip_tags($_POST['email'],ENT_QUOTES)));
        $Contraseña = mysqli_real_escape_string($conn,(strip_tags($_POST['Contraseña'],ENT_QUOTES)));
        $ID_Rol = mysqli_real_escape_string($conn,(strip_tags($_POST['ID_Rol'],ENT_QUOTES)));

        $Primer_Ingreso = mysqli_real_escape_string($conn,(strip_tags($_POST['Primer_Ingreso'],ENT_QUOTES)));
    
    
	
	$insert = mysqli_query($conn, "INSERT INTO tbl_usuario (ID_Empleado,ID_Estado, Nom_Usuario, email, Contraseña, ID_Rol, Primer_Ingreso) 
                                       VALUES ( '$ID_Empleado' ,  '$ID_Estado' ,'$Nom_Usuario' , '$email' , '$Contraseña' , '$ID_Rol' , '$Primer_Ingreso')") or die(mysqli_error());
    
    if($insert){
        echo "<script type='text/javascript'>
            alert('El Usuario ha sido registrado exitosamente');
            window.location.href= 'login.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo Crear el usuario.</div>';
    }
}
?>

Indicaciones: crear el archivo dentro de la carpeta login.
