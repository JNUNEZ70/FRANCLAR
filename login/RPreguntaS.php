<!DOCTYPE html>
<html>
    <head>
        <title>Recuperación Contraseña | Preguntas</title>
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

    if(isset($_POST['recuperar'])){
                
            $idpregunta = mysqli_real_escape_string($conn,(strip_tags($_POST['pregunta'],ENT_QUOTES)));
            $respuesta = mysqli_real_escape_string($conn,(strip_tags($_POST['respuesta'],ENT_QUOTES)));
            $nuevacont = mysqli_real_escape_string($conn,(strip_tags($_POST['Ncontraseña'],ENT_QUOTES)));
            $confnuevacont = mysqli_real_escape_string($conn,(strip_tags($_POST['Ccontraseña'],ENT_QUOTES)));
            $id_usuario= $_SESSION['ID_Usuario']; 
            
            $obtenerresp = mysqli_query($conn, "SELECT * FROM tbl_pregunta_usuario WHERE ID_Pregunta='$idpregunta' AND ID_Usuario='$id_usuario'");
            $dato = mysqli_fetch_assoc($obtenerresp);
            $resp_usu = $dato['Respuesta'];

            if($resp_usu <> $respuesta){
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
                $update = mysqli_query($conn, "UPDATE tbl_usuario SET Contraseña='$nuevacont', ID_Estado=1 WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
                if($update){
                    echo "<script type='text/javascript'>
                    alert('Contraseña modificada exitosamente, favor inicie sesión');
                    window.location.href= 'login.php';
                    </script>";
                }
            }         
    }

    ?>

        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Recuperación por preguntas secretas </h1>
            <form action="" method="POST" class="login100-form validate-form">
                <!-----Question---->
                <label for="Question">Pregunta</label>
                <select class="form-control" id="Pregunta" name="pregunta" required>
                    <option value="0" selected>Seleccione una pregunta</option>
                    <?php
                        $id_usuario= $_SESSION['ID_Usuario']; 
                        $sql=mysqli_query($conn,"SELECT tbl_pregunta_usuario.ID_Pregunta, tbl_preguntas.Pregunta FROM tbl_pregunta_usuario INNER JOIN tbl_preguntas on tbl_pregunta_usuario.ID_Pregunta = tbl_preguntas.ID_Pregunta WHERE tbl_pregunta_usuario.ID_Usuario ='$id_usuario'");                        
                        while($fila=$sql->fetch_array()){
                            echo "<option value='".$fila['ID_Pregunta']."'>".$fila['Pregunta']."</option>";
                        }     
                    ?>
                </select>
                <!-----Answer---->
                <label for="Answer">Respuesta</label>
                <input type="text" name="respuesta" placeholder="Ingrese su respuesta" required>
                <!-----Password----->
                <label for="Password">Contraseña nueva</label>
                <input type="password" name="Ncontraseña" placeholder="Ingrese una contraseña nueva" required> 
                <label for="Password">Confirmar contraseña</label>
                <input type="password" name="Ccontraseña" placeholder="Confirme su contraseña" required>
                
                <input type="submit" name="recuperar" value="Recuperar" >
                
                </input>
                
            </form>
        </div>
    </body>
</html>