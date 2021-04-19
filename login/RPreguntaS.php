<!DOCTYPE html>
<html>
    <head>
        <title>Recuperación Contraseña | Preguntas</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../toastr/toastr.css">
        <link rel="stylesheet" href ="css/RPreguntaS.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    </head>
    <body>

    <?php
    session_start();
    include ("conexionPDO.php");
    ?>

    <?php	
     require 'funcs/conexion.php';
     require 'funcs/funcs.php';		
/*
    if(isset($_POST['recuperar'])){
                
            $idpregunta = mysqli_real_escape_string($conn,(strip_tags($_POST['pregunta'],ENT_QUOTES)));
            $respuesta = mysqli_real_escape_string($conn,(strip_tags($_POST['respuesta'],ENT_QUOTES)));
            $nuevacont = mysqli_real_escape_string($conn,(strip_tags($_POST['Ncontraseña'],ENT_QUOTES)));
            $confnuevacont = mysqli_real_escape_string($conn,(strip_tags($_POST['Ccontraseña'],ENT_QUOTES)));
            $id_usuario= $_SESSION['ID_Usuario']; 
            $nuevacont_encr = password_hash($nuevacont, PASSWORD_DEFAULT);
            
            $obtenerresp = mysqli_query($conn, "SELECT * FROM tbl_pregunta_usuario WHERE ID_Pregunta='$idpregunta' AND ID_Usuario='$id_usuario'  ");
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
                $update = mysqli_query($conn, "UPDATE tbl_usuario SET Contraseña='$nuevacont_encr', ID_Estado=1 WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
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
    }
*/
    ?>

        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Recuperación por preguntas secretas </h1>
            <form id="recuperacion_pregunta" action="guarda_pass.php" method="POST" class="login100-form validate-form">
                <!-----Question---->
                <label for="Question">Pregunta</label>
                <select class="form-control" id="Pregunta" name="pregunta" onchange="activar_resp()" required>
                    <option value="0" selected>Seleccione una pregunta</option>
                    <?php
                        $id_usuario= $_SESSION['ID_Usuario']; 
                        $sql=mysqli_query($conn,"SELECT tbl_pregunta_usuario.ID_Pregunta, tbl_preguntas.Pregunta FROM tbl_pregunta_usuario INNER JOIN tbl_preguntas on tbl_pregunta_usuario.ID_Pregunta = tbl_preguntas.ID_Pregunta WHERE tbl_pregunta_usuario.ID_Usuario ='$id_usuario' limit 2 ");                        
                        while($fila=$sql->fetch_array()){
                            echo "<option selected value='".$fila['ID_Pregunta']."'>".$fila['Pregunta']."</option>";
                        }     
                    ?>
                </select>
                <!-----Answer---->
                <input type="hidden" name="recuperar" value="" >
                <label for="Answer">Respuesta</label>
                <input type="text" name="respuesta" placeholder="Ingrese su respuesta" required>
                <!-----Password----->
                <!-- <input type="hidden" id="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
                <label for="Password">Contraseña nueva</label>
                <input type="password" id="Ncontraseña" name="Ncontraseña" placeholder="Ingrese una contraseña nueva" required> 
                <label for="Password">Confirmar contraseña</label>
                <input type="password" id="Ccontraseña" name="Ccontraseña" placeholder="Confirme su contraseña" required>
                 -->
                <div class="input-group">
                    <input type="hidden" id="id_usuario" name="id_usuario" value="<?php echo $id_usuario ?>">
                    <label for="Password">Contraseña nueva</label>
                    <input type="password" id="Ncontraseña" name="Ncontraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15." minlength="8" maxlength="15" placeholder="Ingrese una contraseña nueva" required> 
                    <span id="show-hide-passwd" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>
                <div class="input-group">
                    <label for="Password">Confirmar contraseña</label>
                    <input type="password" id="Ccontraseña" name="Ccontraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15." minlength="8" maxlength="15" placeholder="Confirme su contraseña" required>
                    <span id="show-hide-passw" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>

                <input type="submit" name="recuperar" value="Recuperar" >
                
                </input>
                
            </form>            
        </div>
        <script src="../jquery/jquery-3.3.1.min.js"></script>
		<script src="../toastr/toastr.min.js"></script>
		<script src="../js/franclar_login.js"></script>
    </body>
    <script>
        $(document).on('ready', function(){
            $('#show-hide-passwd').on('click', function(e) {

                var current = $(this).attr('action');

                if (current == 'hide'){
                    $(this).prev().attr('type','text');
                    $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action','show');
                }
                if (current == 'show'){
                    $(this).prev().attr('type','password');
                    $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action','hide');
                }
            })
        })
        </script>
        <script>
        $(document).on('ready', function(){
            $('#show-hide-passw').on('click', function(e) {

                var current = $(this).attr('action');

                if (current == 'hide'){
                    $(this).prev().attr('type','text');
                    $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action','show');
                }
                if (current == 'show'){
                    $(this).prev().attr('type','password');
                    $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action','hide');
                }
            })
        })
        </script>
</html>