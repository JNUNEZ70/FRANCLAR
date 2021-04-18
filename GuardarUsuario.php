<?php
session_start();
include ("conexion.php");
?>
<?php
require './login/funcs/conexion.php';
require './login/funcs/funcs.php';
    

	if(isset($_POST)){

        $id_empleado = mysqli_real_escape_string($con,(strip_tags($_POST['Colaborador'],ENT_QUOTES)));
        $nom_usuario = mysqli_real_escape_string($con,(strip_tags($_POST['Nom_Usuario'],ENT_QUOTES)));
        $email = mysqli_real_escape_string($con,(strip_tags($_POST['EmailU'],ENT_QUOTES)));
        $contraseña = mysqli_real_escape_string($con,(strip_tags($_POST['Password'],ENT_QUOTES)));
        $id_rol = mysqli_real_escape_string($con,(strip_tags($_POST['Rol'],ENT_QUOTES)));
        $id_estado = 1;
        $primer_ingreso = 1;

        //? encriptar la contraseña
        $contrasenaEncriptada= password_hash($contraseña,PASSWORD_BCRYPT);

        $validar = mysqli_query($con, "SELECT * from tbl_usuario WHERE Nom_Usuario='$nom_usuario'");

        if(mysqli_num_rows($validar) > 0){
            echo "<script type='text/javascript'>
            alert('El Usuario ya existe, favor ingrese otro nombre');
            window.location.href= 'agregarusuario.php';
            </script>";
        }else{
	
                $insert = mysqli_query($con, "INSERT INTO tbl_usuario (ID_Empleado, ID_Estado, Nom_Usuario, email, Contraseña, ID_Rol, Primer_Ingreso) 
                                                VALUES ( '$id_empleado' , '$id_estado' , '$nom_usuario' , '$email' , '$contrasenaEncriptada' , '$id_rol' , '$primer_ingreso')") or die(mysqli_error());
                
                if($insert){
                    $id_usuario= $_SESSION['ID_Usuario'];
                                    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                                    VALUES ('$id_usuario',2,'Insert','ADMIN CREÓ UN NUEVO USUARIO')") or die(mysqli_error());
                   
                    $asunto = 'Creación de usuario mediante Admin -Sistema Franclar';
                    $cuerpo = "Hola  $nom_usuario <br/>Bienvenido al sistema Franclar,
                    estas son tus credenciales:<br> Usuario:  '$nom_usuario'<br>
                    Contrasena: '$contraseña'";

                    $correo= enviarEmail_RegistoAdmin($email, $nom_usuario,$asunto,$cuerpo);
                    if ($correo) {
                        # code...
                        echo "<script type='text/javascript'>
                        alert('El Usuario ha sido registrado exitosamente, revisa tu correo electrónico');
                        window.location.href= 'Usuarios.php';
                    </script>";
                    }else{
                        echo "<script type='text/javascript'>
                        alert('Error al enviar el correo electrónico');
                        window.location.href= 'Usuarios.php';
                    </script>";
                    }

                }else{
                    echo "<script> alert('El Usuario no se ha podido registrar');window.history.go(-1);
                        </script>";
        }
        }
    }else{
        echo "<script type='text/javascript'>
        alert('este es el else del primer if');
        window.location.href= 'agregarusuario.php';
        </script>";
    }

?>