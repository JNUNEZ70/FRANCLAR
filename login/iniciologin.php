<?php
//inicio de sesion de los distindos usuarios
 $alert ='';
 session_start();

if (!empty($_POST)) {
	if (!empty($_POST['usuario']) || !empty($_POST['contraseña'])) { // si las variables POST no estan vacias
		require_once "conexionPDO.php";   // llamando el archivo de la conexion
		$usuario = $_POST['usuario'];     
		$contraseña = $_POST['contraseña'];
		//Validacion del lado del servidor
		$uppercase = preg_match('@[A-Z]@', $contraseña);
		$lowercase = preg_match('@[a-z]@', $contraseña);
		$number    = preg_match('@[0-9]@', $contraseña);
		$specialChars = preg_match('@[^\w]@', $contraseña); 

		if(!ctype_upper ($usuario )){
			echo "<script> alert('Usuario no valido');window.history.go(-1);
			</script>";
			session_destroy();
		}

		// if(!$uppercase || !$lowercase || !$number || strlen($password) < 8 && strlen($password) > 30) {
		// 	echo "<script> alert('Contraseña incorrecta');window.history.go(-1);
		// 	</script>"; 
			


		// 	session_destroy();

				
		// }
		
		$query = mysqli_query($conn,"SELECT * FROM tbl_usuario WHERE Nom_Usuario = '$usuario' 
			                  AND Contraseña = '$contraseña'"); //consulta y comprobacion a la base de datos
		$result = mysqli_num_rows($query);


		if($result == 0) {
			$obtenerusu = mysqli_query($conn,"SELECT * FROM tbl_usuario WHERE Nom_Usuario = '$usuario'");
			$resultado = mysqli_num_rows($obtenerusu);
			
			if ($resultado == 0) {
				echo "<script> alert('El Usuario o la Contraseña están incorrectos');window.history.go(-1);
				</script>";
				session_destroy();
			}else{
				$data = mysqli_fetch_array($obtenerusu);
				if($data['ID_Estado'] == 2 or $data['ID_Estado'] == 3){
					echo "<script type='text/javascript'>
					alert('El Usuario está bloqueado, no puede acceder');
					window.location.href= 'Login.php';
					</script>";
					session_destroy();	
				}else{
				error_reporting(0);
				$id_user = $data['ID_Usuario'];				
				$_SESSION['intentos'] = $_SESSION['intentos'] + 1;
				$obtenerparametros = mysqli_query($conn,"SELECT * FROM tbl_parametros where id_parametro = 1");
				$data = mysqli_fetch_array($obtenerparametros);
				$intentosvalidos = $data['valor'];
				if($_SESSION['intentos'] < $intentosvalidos){
					echo "<script> alert('El Usuario o la Contraseña están incorrectos');window.history.go(-1);
					</script>";	
				}else{
					//UPDATE tbl_usuario SET ID_Estado=2 WHERE ID_Usuario=1 Query para actualizar el estado!
					echo "<script> alert('¡Máximo de intentos permitidos!; USUARIO BLOQUEADO');window.history.go(-1);
					</script>"; 
					$updateestado = mysqli_query($conn,"UPDATE tbl_usuario SET ID_Estado=2 WHERE ID_Usuario='$id_user'");
					session_destroy();
								
				}
			}	
		}
	    }else{			
			$data = mysqli_fetch_array($query); // recorrer el arreglo
			if($data['ID_Estado'] == 2 or $data['ID_Estado'] == 3){
				echo "<script type='text/javascript'>
				alert('El Usuario está bloqueado, no puede acceder');
				window.location.href= 'Login.php';
				</script>";
				session_destroy();	
			}else{
			//guardar los datos necesarios en variables SESSION
			$_SESSION['active'] = true;
			$_SESSION['ID_Usuario'] = $data['ID_Usuario'];
			$_SESSION['Nom_Usuario'] = $data['Nom_Usuario'];
			$_SESSION['ID_Rol'] = $data['ID_Rol'];
			$_SESSION['ID_Estado'] = $data['ID_Estado'];
			$_SESSION['Primer_Ingreso'] = $data['Primer_Ingreso'];

			if($_SESSION['Primer_Ingreso'] == 1){
				header("location: Preguntas.php");
				}else if($_SESSION['ID_Estado'] == 2 or $_SESSION['ID_Estado'] == 3){	
					echo "<script type='text/javascript'>
					alert('El Usuario está bloqueado, no puede acceder');
					window.location.href= 'Login.php';
					</script>";
					session_destroy();				
					}else if($_SESSION[("ID_Estado")] == 1){    
						$usuario = $_SESSION['Nom_Usuario'];
						$nik = $_SESSION['ID_Usuario'];
						$rol = $_SESSION['ID_Rol'];
							 switch ($rol) {
							 	case 1:
									header("location: ../Index.php");
								 break;
								 case 2:
								 	header("location: ../Index.php");
								 break;
								 case 3:
								 		header("location: ../Index.php");
								 	break;	
								 case 4:
								 		header("location: ../Index.php");
									 break;
								 case 5:
									header("location: ../Index.php");
									 break;	
									
								 default:
								 	break;

						}		
				 }
				}
			}

		}

	}


?>