<?php

require 'funcs/conexion.php';
require 'funcs/funcs.php';

$errors = array();

if (!empty ($_POST))
{
$email = $mysqli->real_escape_string($_POST['email']);
    if(!isEmail($email))
    {
        $errors[]= "Debe ingresar un correo electronico valido";
    }
        if(emailExiste($email))
        {

            $user_id = getValor('ID_Usuario','email',$email);
            $nombre = getValor('Nom_Usuario','email',$email);

            $token = generaTokenPass($user_id);

            $url = 'http://'.$_SERVER["SERVER_NAME"].'/FRANCLAR/login/contraseñacorreo.php?user_id='.$user_id.'&token='.$token;
            $asunto = 'Recuperar Contrasena -Sistema de Usuarios';
            $cuerpo = "Hola  $nombre <br/>Se ha solicitado un reinicio de 
            contrasena, visita la siguiente direccion: <a href='
            $url'>Cambiar Contrasena</a>";

			$GLOBALS['enviarEmail'] = enviarEmail($email, $nombre,$asunto,$cuerpo);

            if ($GLOBALS['enviarEmail'])
            {

                //SE MUESTRA AHORA EL MENSAJE EN LA MISMA PAGINA, MAS ABAJO
                //exit;
            } else {

                $errors[] = "Error al enviar el correo";
            }
        }else {

            $errors[] = "No existe el correo electronico";
        }
}
?>
<!doctype html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Recuperar Contrasena</title>
		<link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        

		<!-- Booststrap -->
		<!-- 
		<link rel="stylesheet" href="../css/bootstrap.min.css" >
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >
		<script src="../js/bootstrap.min.js" ></script>
		-->
		
		<link rel="stylesheet" href ="css/RCorreo.css">


		
		
	</head>
	
	<body>
		
		<div class="container">    
			<div id="login-box" style="margin-top:50px;" class="login-box mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"> 
			                 
				<div class="panel panel-info" >
					    
					
					<div style="padding-top:30px" class="panel-body" >
						
						<!--<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div> -->
						<img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">  
						<h1> Recuperación por Correo Electrónico </h1>
            			<h5> Por favor ingrese su correo electrónico asociado a su cuenta <h5>

						<?php 
							if(isset($GLOBALS['enviarEmail']) && $GLOBALS['enviarEmail']){ 
								echo "<p>Hemos enviado un correo electronico a la direccion $email para 
								reestablecer tu contraseña</p>";
								echo "<a href='login.php' >Iniciar sesion</a>";
							}
						?>

						<form id="loginform" class="login100-form validate-form" role="form" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off">
							
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<input id="email" type="email" class="form-control" name="email" placeholder="Ingrese su correo electrónico" required style="<?php if($GLOBALS['enviarEmail']){ echo "display:none;"; }else{ echo "display:none;"; }?>" >                                        
							</div>
							
							<div style="margin-top:10px" class="form-group">
								<div class="col-sm-12 controls">
									<button id="btn-login" type="submit" class="btn btn-success" style="<?php if($GLOBALS['enviarEmail']){ echo "display:none;"; }else{ echo "display:none;"; }?>">Enviar</a>
								</div>
							</div>
							
							   
						</form>
                        <?php
                            echo resultBlock($errors);
                        ?>
					</div>                     
				</div>  
			</div>
		</div>
	</body>
    </html>