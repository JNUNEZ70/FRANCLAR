<!DOCTYPE html>
<html>
    <head>
        <title>Login | Recuperación</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href ="css/recuperacion.css">
    </head>
    <body>

    <?php
    session_start();
    include ("conexionPDO.php");
    ?>

    <?php			

    if(isset($_POST['rpreguntas'])){
                
        $nomusuario = mysqli_real_escape_string($conn,(strip_tags($_POST['usuario'],ENT_QUOTES)));
               
        //$id_usuario= $_SESSION['ID_Usuario']; 
        
        $obtener_id = mysqli_query($conn, "SELECT * FROM tbl_usuario WHERE Nom_Usuario='$nomusuario'");
        $row = mysqli_num_rows($obtener_id);                        
        $row2 = mysqli_fetch_assoc($obtener_id);

        if($row == 0 or $row2['ID_Usuario'] == 1){
            echo "<script type='text/javascript'>
            alert('Favor ingrese correctamente su usuario');
            window.location.href= 'Recuperacion.php';
            </script>";
        }else{
            $dato = mysqli_fetch_assoc($obtener_id);
            $id_usuario = $dato['ID_Usuario'];
            $_SESSION['ID_Usuario'] = $id_usuario;
            $update = mysqli_query($conn, "UPDATE tbl_usuario SET ID_Estado=3 WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
            if($update){
                echo "<script type='text/javascript'>
                alert('Usuario encontrado, proceda a recuperar su contraseña');
                window.location.href= 'RPreguntas.php';
                </script>";
            }
        }               

    }

    if(isset($_POST['rcorreo'])){
                
        $nomusuario = mysqli_real_escape_string($conn,(strip_tags($_POST['usuario'],ENT_QUOTES)));
               
        //$id_usuario= $_SESSION['ID_Usuario']; 
        
        $obtener_id = mysqli_query($conn, "SELECT * FROM tbl_usuario WHERE Nom_Usuario='$nomusuario'");
        $row = mysqli_num_rows($obtener_id);       
        $row2 = mysqli_fetch_assoc($obtener_id);                 
        
        if($row == 0 or $row2['ID_Usuario'] == 1){
            echo "<script type='text/javascript'>
            alert('Favor ingrese correctamente su usuario');
            window.location.href= 'Recuperacion.php';
            </script>";
        }else{
            $dato = mysqli_fetch_assoc($obtener_id);
            $id_usuario = $dato['ID_Usuario'];
            $_SESSION['ID_Usuario'] = $id_usuario;
            $update = mysqli_query($conn, "UPDATE tbl_usuario SET ID_Estado=3 WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
            if($update){
                echo "<script type='text/javascript'>
                alert('Usuario encontrado, proceda a recuperar su contraseña');
                window.location.href= 'Rcorreo.php';
                </script>";
            }
        }               

    }

    ?>

        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Olvidó su contraseña </h1>
            <h5> ¿Olvidaste tú contraseña? escribe tú nombre de usuario y escoge entre las opciones de abajo para cambiar la contraseña <h5>
            <form action="" method="POST" autocomplete="off" class="login100-form validate-form">
                <!-----Username---->
                
                <input type="text" name="usuario" title="Ingrese su usuario" placeholder="Ingrese su Usuario" maxlength="50" onkeypress="return soloLetras(event)" onkeyup="javascript:this.value=this.value.toUpperCase();" required>
                
                
                <input type="submit" name="rcorreo"  value="Recuperación por correo electrónico">
                
                </input>

                <input type="submit" name="rpreguntas"  value="Recuperación por preguntas secretas" >
                
                </input>
            </form>
        </div>
    </body>
    <script>
        function soloLetras(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            letras = " áéíóúabcdefghijklmnñopqrstuvwxyz",
            especiales = [8],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
        document.getElementById("usuario").addEventListener('keyup', sanear);
        function sanear(e) {
            let contenido = e.target.value;
            e.target.value = contenido.replace(" ", "");
        }
    </script>
</html>