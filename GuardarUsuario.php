<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $id_empleado = mysqli_real_escape_string($con,(strip_tags($_POST['Colaborador'],ENT_QUOTES)));
        $nom_usuario = mysqli_real_escape_string($con,(strip_tags($_POST['Nom_Usuario'],ENT_QUOTES)));
        $email = mysqli_real_escape_string($con,(strip_tags($_POST['EmailU'],ENT_QUOTES)));
        $contraseña = mysqli_real_escape_string($con,(strip_tags($_POST['Password'],ENT_QUOTES)));
        $id_rol = mysqli_real_escape_string($con,(strip_tags($_POST['Rol'],ENT_QUOTES)));
        $id_estado = 1;
        $primer_ingreso = 1;

        $validar = mysqli_query($con, "SELECT * from tbl_usuario WHERE Nom_Usuario='$nom_usuario'");

        $contra_cifrada = password_hash($contraseña, PASSWORD_DEFAULT);

        if(mysqli_num_rows($validar) > 0){
            echo "<script type='text/javascript'>
            alert('El Usuario ya existe, favor ingrese otro nombre');
            window.location.href= 'agregarusuario.php';
            </script>";
        }else{
	
                $insert = mysqli_query($con, "INSERT INTO tbl_usuario (ID_Empleado, ID_Estado, Nom_Usuario, email, Contraseña, ID_Rol, Primer_Ingreso) 
                                                VALUES ( '$id_empleado' , '$id_estado' , '$nom_usuario' , '$email' , '$contra_cifrada' , '$id_rol' , '$primer_ingreso')") or die(mysqli_error());
                
                if($insert){
                    $id_usuario= $_SESSION['ID_Usuario'];
                                    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                                    VALUES ('$id_usuario',2,'Insert','SE INGRESÓ UN NUEVO USUARIO')") or die(mysqli_error());
                    echo "<script type='text/javascript'>
                        alert('El Usuario ha sido registrado exitosamente');
                        window.location.href= 'Usuarios.php';
                    </script>";
                }else{
                    echo "<script> alert('El Usuario no se ha podido registrar');window.history.go(-1);
                        </script>";
        }
        }
    }

?>