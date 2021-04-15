<!DOCTYPE html>
<html>
    <head>
        <title>Preguntas | Usuarios</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href ="css/preguntas.css">
    </head>
    <body>

    <?php
    session_start();
    include ("conexionPDO.php");
    ?>

    <?php
			
			 if(isset($_POST['save'])){
                 
                $pregunta = mysqli_real_escape_string($conn,(strip_tags($_POST['preguntas'],ENT_QUOTES)));
                $respuesta = mysqli_real_escape_string($conn,(strip_tags($_POST['respuesta'],ENT_QUOTES)));
                $id_usuario= $_SESSION['ID_Usuario'];
                $respuesta_encr = password_hash($respuesta, PASSWORD_DEFAULT);
                

                $validar = mysqli_query($conn, "SELECT * FROM tbl_pregunta_usuario WHERE ID_Pregunta='$pregunta' AND ID_Usuario='$id_usuario'");

                if(mysqli_num_rows($validar) > 0){
                    echo "<script type='text/javascript'>
                    alert('Esta pregunta ya fue seleccionada, favor seleccione otra');
                    window.location.href= 'Preguntas.php';
                    </script>";
                }else{
			 	$insert = mysqli_query($conn, "INSERT INTO tbl_pregunta_usuario (ID_Pregunta, ID_Usuario, Respuesta) 
                                          VALUES ( '$pregunta' , '$id_usuario' , '$respuesta_encr')") or die(mysqli_error());
			 	if($insert){
                    $obtener_dato = mysqli_query($conn, "SELECT * FROM tbl_usuario WHERE ID_Usuario='$id_usuario'");
                    $row = mysqli_fetch_assoc($obtener_dato);                        
                    $dato = $row['preguntas_contestadas'];    
                    $dato_act = $dato + 1;      
                    $update_campo =  mysqli_query($conn, "UPDATE tbl_usuario SET preguntas_contestadas='$dato_act'  WHERE ID_Usuario='$id_usuario'") or die(mysqli_error());
                    //  $id_usuario= $_SESSION['ID_Usuario'];
                    //  $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                    //  VALUES ('$id_usuario',1,'Update','SE ACTUALIZÓ UN EMPLEADO')") or die(mysqli_error());
                    $obtener_parametro = mysqli_query($conn, "SELECT * FROM tbl_parametros WHERE id_parametro=2");
                    $row = mysqli_fetch_assoc($obtener_parametro);                        
                    $parametro = $row['valor'];
                    if($dato_act >= $parametro){
                        echo "<script type='text/javascript'>
                        alert('Total de repuestas ingresadas exitosamente');
                        window.location.href= 'CambioContraseña.php';
                    </script>";
                    }else{
                    echo "<script type='text/javascript'>
                        alert('Respuesta ingresada exitosamente, favor ingrese la siguiente');
                        window.location.href= 'Preguntas.php';
                    </script>";
                    }
			 	}else{
			 		echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
                 }
             }
            }
		?>


        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Preguntas Secretas</h1>
            <h5>¡Es su primera vez en el sistema! Ayúdenos a responder una de las siguientes preguntas para poder ayudarle cuando necesite recuperar su contraseña:</h5>
            <form action="" method="POST" class="login100-form validate-form">
                <!-----Username---->
                <select class="form-control" id="Pregunta1" name="preguntas" required>
                    <option value="0" selected>Seleccione una pregunta</option>
                    <?php
                        $sql=mysqli_query($conn,"SELECT * FROM tbl_preguntas");
                        
                        while($fila=$sql->fetch_array()){
                            echo "<option value='".$fila['ID_Pregunta']."'>".$fila['Pregunta']."</option>";
                        }     
                    ?>
                </select>
                <input type="text" id="respuesta" name="respuesta" onkeypress="return alfanumerica(event)" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese su respuesta" required>
                <!-- <select class="form-control" id="Pregunta2" name="preguntas" required>
                    <option value="0" selected>Seleccione una pregunta</option>
                </select>
                <input type="text" name="Respuesta2" placeholder="Ingrese su respuesta">
                <select class="form-control" id="Pregunta2" name="preguntas" required>
                    <option value="0" selected>Seleccione una pregunta</option>
                </select>
                <input type="text" name="Respuesta3" placeholder="Ingrese su respuesta"> -->
                
                
                <input type="submit" name="save" value="Ingresar" >
                </input>
            </form>
        </div>
    </body>
    
    <?php
        include '../script.php';
    ?>

    <script>
        document.getElementById("respuesta").addEventListener('keyup', sanear2);
        
        function sanear2(e) {
        let contenido = e.target.value;
        e.target.value = contenido.toUpperCase().replace("  ", " ");
        }
    </script>

</html>