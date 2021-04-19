<?php


require 'funcs/conexion.php';
require 'funcs/funcs.php';

if(isset($_POST['password']) && isset($_POST['password'])){
	if($_POST['password'] == $_POST['con_password']){

		//UPDATE Y REDIRECION A LOGIN

		if(isset($_POST['user_id']) && $_POST['user_id'] != "" && isset($_POST['token']) && $_POST['token'] != ""){
			
			
			$password = $_POST['password'];
			$user_id = $_POST['user_id'];
			$token = $_POST['token'];
			$estado=1;

			$_validaUsuario = verificaTokenPass($user_id, $token);

			if($_validaUsuario){
				

				$ejecuta = cambiaPassword($password, $user_id,$token,$estado);
				if($ejecuta){
					echo "<script type='text/javascript'>alert('Cambia realizado de forma corecta, se redireccionara al login');</script>";
					header('Location: Login.php');
				}else {
					echo "<script type='text/javascript'>alert('Error al aplicar el cambio de comtraseña');</script>";
				}
			}

			
		}else{
			echo "<script type='text/javascript'>alert('Error, pagina cargada de forma inapropiada');</script>";
		}

		
	}else{
		echo "<script type='text/javascript'>alert('Contraseñas Incorrectas');</script>";
	}
}


?>

<!DOCTYPE html>
<!doctype html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Cambiar Password</title>
		<link rel="shortcut icon" href="img/franclar.png">
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href ="CSS/ContraseñaCorreo.css">
		
		<link rel="stylesheet" href="css/bootstrap.min.css" >
		<link rel="stylesheet" href="css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="../toastr/toastr.css">
		<link rel="stylesheet" href="css/master.css">
		<script src="js/bootstrap.min.js" ></script>
		
	</head>
	
	<body>
		
		<div class="container login-box">    
			<div id="login-box" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">                    
				<h1>Cambiar contraseña</h1>
				<div class="panel panel-info" >
					  
					
					<!--action="guarda_pass.php" -->
						
						<form id="loginform" class="form-horizontal" role="form" action= "guarda_pass.php" method="POST" autocomplete="off">
							
							<input type="hidden" id="user_id" name="user_id" value ="<?php  if(isset($_GET['user_id'])){ echo $_GET['user_id']; }else { echo "";} ?>" />
							
							<input type="hidden" id="token" name="token" value ="<?php if(isset($_GET['token'])){ echo $_GET['token']; }else { echo "";} ?>" />
							
							<div class="form-group">
								<label for="password" class="col-md-3 control-label">Nuevo Contraseña</label>
								<div class="col-md-9">
									<input type="password" id="password" class="form-control" name="password" placeholder="Contraseña" required>
								</div>
							</div>
							
							<div class="form-group">
								<label for="con_password" class="col-md-3 control-label">Confirmar Contraseña</label>
								<div class="col-md-9">
									<input type="password" id="con_password" class="form-control" name="con_password" placeholder="Confirmar Contraseña" required>
								</div>
							</div>
							
							<div style="margin-top:10px" class="form-group">
								 <!-- <div class="col-sm-12 controls">
									<button id="btn-login" type="submit" class="btn btn-success">Modificar</a>
								</div>  -->
									 <input type="submit"  value="Aceptar" >
							</div>   
						</form> 
					</div>                     
				</div>  
			</div>
		</div>
		<script src="../jquery/jquery-3.3.1.min.js"></script>
		<script src="../toastr/toastr.min.js"></script>
		<script src="../js/franclar_login.js"></script>
	</body>
</html>	