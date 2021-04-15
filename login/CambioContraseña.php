<!DOCTYPE html>
<html>
    <head>
        <title>Cambio de Contraseña | Usuarios</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href ="css/RPreguntaS.css">
    </head>
    <body>

    <?php
    session_start();
    include ("conexionPDO.php");
    ?>

    <?php			

    if(isset($_POST['save'])){
                
        $contr_anterior = mysqli_real_escape_string($conn,(strip_tags($_POST['contr_ant'],ENT_QUOTES)));
        $contr_nueva = mysqli_real_escape_string($conn,(strip_tags($_POST['contr_nueva'],ENT_QUOTES)));
        $conf_nueva_cont = mysqli_real_escape_string($conn,(strip_tags($_POST['contr_conf_nueva'],ENT_QUOTES)));        
        $id_usuario= $_SESSION['ID_Usuario']; 
        $contr_nueva_encr = password_hash($contr_nueva, PASSWORD_DEFAULT);       

        $obtener_dato = mysqli_query($conn, "SELECT * FROM tbl_usuario WHERE ID_Usuario='$id_usuario'");
        $row = mysqli_fetch_assoc($obtener_dato);                        
        $dato = $row['Contraseña'];
        
            if(password_verify($contr_anterior,$dato) == 0){
                echo "<script type='text/javascript'>
                alert('Favor ingrese correctamente su contraseña anterior');
                window.location.href= 'CambioContraseña.php';
                </script>";
            }else{
                if($contr_nueva <> $conf_nueva_cont){
                    echo "<script type='text/javascript'>
                    alert('La contraseña no coincide con su confirmación, favor ingrese el mismo dato en ambos campos');
                    window.location.href= 'CambioContraseña.php';
                    </script>";
                }else{
                    $update = mysqli_query($conn, "UPDATE tbl_usuario SET Contraseña='$contr_nueva_encr', Primer_Ingreso=0, ID_Estado=1  WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
                        if($update){
                            // $obtener_dato = mysqli_query($conn, "SELECT * FROM tbl_usuario WHERE ID_Usuario='$id_usuario'");
                            // $row = mysqli_fetch_assoc($obtener_dato);                        
                            // $dato = $row['preguntas_contestadas'];    
                            // $dato_act = $dato + 1;      
                            // $update_campo =  mysqli_query($conn, "UPDATE tbl_usuario SET preguntas_contestadas='$dato_act'  WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
                            // //  $id_usuario= $_SESSION['ID_Usuario'];
                            // //  $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                            // //  VALUES ('$id_usuario',1,'Update','SE ACTUALIZÓ UN EMPLEADO')") or die(mysqli_error());
                            // $obtener_parametro = mysqli_query($conn, "SELECT * FROM tbl_parametros WHERE id_parametro=2");
                            // $row = mysqli_fetch_assoc($obtener_parametro);                        
                            // $parametro = $row['valor'];
                            
                                echo "<script type='text/javascript'>
                                    alert('Contraseña Modificada exitosamente, favor inicie sesión nuevamente');
                                    window.location.href= 'login.php';
                                </script>";                        
                        }else{
                            echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
                        }   
                    }
                }
    }
    ?>
        
        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Ahora solo debe configurar su nueva contraseña </h1>
            <form action="" method="POST" class="login100-form validate-form">
                <!-----Contraseña anterior---->
                <label for="Answer">Contraseña Anterior</label>
                <input type="text" name="contr_ant" placeholder="Ingrese su respuesta">
                <!-----Nueva Contraseña---->
                <label for="Password">Nueva Contraseña</label>
                <input type="password" name="contr_nueva" placeholder="Ingrese una contraseña nueva">
                <!-----Confirmación nueva contraseña----->                
                <label for="Password">Confirmar Nueva Contraseña</label>
                <input type="password" name="contr_conf_nueva" placeholder="Confirme su contraseña">
                
                <input type="submit" name="save" value="Cambiar" >
                </input>
                
            </form>
        </div>
    </body>
</html>