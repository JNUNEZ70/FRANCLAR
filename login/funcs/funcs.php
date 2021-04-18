<?php
	/*
	todo funciona correctamente, pero hay que hacer algunos ajustes cuando ya este en produccion 
	!abrir el correo en el servidor para que este pueda funcionar 
	!verificar que el puerto 587 no este ocupado
	!configurar la cuenta de gmail para permitir el acceso a la aplicacion de enviar correos electronicos
	*/
	function isNull($nombre, $user, $pass, $pass_con, $email){
		if(strlen(trim($nombre)) < 1 || strlen(trim($user)) < 1 || strlen(trim($pass)) < 1 || strlen(trim($pass_con)) < 1 || strlen(trim($email)) < 1)
		{
			return true;
			} else {
			return false;
		}		
	}
	
	function isEmail($email)
	{
		if (filter_var($email, FILTER_VALIDATE_EMAIL)){
			return true;
			} else {
			return false;
		}
	}
	
	function validaPassword($var1, $var2)
	{
		if (strcmp($var1, $var2) !== 0){
			return false;
			} else {
			return true;
		}
	}
	
	function minMax($min, $max, $valor){
		if(strlen(trim($valor)) < $min)
		{
			return true;
		}
		else if(strlen(trim($valor)) > $max)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	function usuarioExiste($usuario)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT 1 FROM tbl_usuario WHERE Nom_Usuario = ? LIMIT 1");
		$stmt->bind_param("s", $usuario);
		$stmt->execute();
		$stmt->store_result();
		$num = $stmt->num_rows;
		$stmt->close();
		
		if ($num > 0){
			return true;
			} else {
			return false;
		}
	}
	
	function emailExiste($email)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT Id_Usuario FROM tbl_usuario WHERE email = ? LIMIT 1");
		$stmt->bind_param("s", $email);
		$stmt->execute();
		$stmt->store_result();
		$num = $stmt->num_rows;
		$stmt->close();
		
		if ($num > 0){
			return true;
			} else {
			return false;	
		}
	}
	
	function generateToken()
	{
		$gen = md5(uniqid(mt_rand(), false));	
		return $gen;
	}
	
	function hashPassword($password) 
	{
		$hash = password_hash($password, PASSWORD_DEFAULT);
		return $hash;
	}
	
	function resultBlock($errors){
		if(count($errors) > 0)
		{
			echo "<div id='error' class='alert alert-danger' role='alert'>
			<a href='#' onclick=\"showHide('error');\">[X]</a>
			<ul>";
			foreach($errors as $error)
			{
				echo "<li>".$error."</li>";
			}
			echo "</ul>";
			echo "</div>";
		}
	}
	
	function registraUsuario($usuario, $pass_hash, $nombre, $email, $activo, $token, $tipo_usuario){
		
		global $mysqli;
		
		$stmt = $mysqli->prepare("INSERT INTO tbl_usuarios (usuario, password, nombre, correo, activacion, token, id_tipo) VALUES(?,?,?,?,?,?,?)");
		$stmt->bind_param('ssssisi', $usuario, $pass_hash, $nombre, $email, $activo, $token, $tipo_usuario);
		
		if ($stmt->execute()){
			return $mysqli->insert_id;
			} else {
			return 0;	
		}		
	}
	
	function enviarEmail($email, $nombre, $asunto, $cuerpo){
		
		require 'PHPMailer/src/Exception.php';
		require 'PHPMailer/src/PHPMailer.php';
		require 'PHPMailer/src/SMTP.php';
		
		$mail = new PHPMailer\PHPMailer\PHPMailer(true);
		$mail->isSMTP();
		$mail->SMTDebug=0;
		$mail->SMTPAuth = true;
		//$mail->SMTPSecure = 'ssl'; //Modificar
		$mail->SMTPSecure=PHPMailer\PHPMailer\PHPMailer::ENCRYPTION_STARTTLS;
		$mail->Host = 'smtp.gmail.com'; //Modificar
		$mail->Port = 587; //Modificar
		
		$mail->Username = 'complejomedicofranclar2020@gmail.com'; //Modificar
		$mail->Password = 'proyecto#2020'; //Modificar
		
		$mail->setFrom('complejomedicofranclar2020@gmail.com', 'Soporte Franclar'); //Modificar
		$mail->addAddress($email, $nombre);	
		$mail->Subject = $asunto;
		$mail->Body    = $cuerpo;
		$mail->IsHTML(true);
		
		if($mail->send())
		return true;
		else
		return false;
	
	}
	function enviarEmail_RegistoAdmin($email, $nombre, $asunto, $cuerpo){
		

		
		require './login/PHPMailer/src/Exception.php';
		require './login/PHPMailer/src/PHPMailer.php';
		require './login/PHPMailer/src/SMTP.php';
		
		
		
		$mail = new PHPMailer\PHPMailer\PHPMailer(true);
		$mail->isSMTP();
		$mail->SMTDebug=0;
		$mail->SMTPAuth = true;
		//$mail->SMTPSecure = 'ssl'; //Modificar
		$mail->SMTPSecure=PHPMailer\PHPMailer\PHPMailer::ENCRYPTION_STARTTLS;
		$mail->Host = 'smtp.gmail.com'; //Modificar
		$mail->Port = 587; //Modificar
		
		$mail->Username = 'complejomedicofranclar2020@gmail.com'; //Modificar
		$mail->Password = 'proyecto#2020'; //Modificar
		
		$mail->setFrom('complejomedicofranclar2020@gmail.com', 'Soporte Franclar'); //Modificar
		$mail->addAddress($email, $nombre);	
		$mail->Subject = $asunto;
		$mail->Body    = $cuerpo;
		$mail->IsHTML(true);
		
		if($mail->send())
		return true;
		else
		return false;
	
	}
	
	function validaIdToken($id, $token){
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT Activacion FROM tbl_usuario WHERE id_Usuario = ? AND token = ? LIMIT 1");
		$stmt->bind_param("is", $id, $token);
		$stmt->execute();
		$stmt->store_result();
		$rows = $stmt->num_rows;
		
		if($rows > 0) {
			$stmt->bind_result($activacion);
			$stmt->fetch();
			
			if($activacion == 1){
				$msg = "La cuenta ya se activo anteriormente.";
				} else {
				if(activarUsuario($id)){
					$msg = 'Cuenta activada.';
					} else {
					$msg = 'Error al Activar Cuenta';
				}
			}
			} else {
			$msg = 'No existe el registro para activar.';
		}
		return $msg;
	}
	
	function activarUsuario($id)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("UPDATE usuarios SET activacion=1 WHERE id = ?");
		$stmt->bind_param('s', $id);
		$result = $stmt->execute();
		$stmt->close();
		return $result;
	}
	
	function isNullLogin($usuario, $password){
		if(strlen(trim($usuario)) < 1 || strlen(trim($password)) < 1)
		{
			return true;
		}
		else
		{
			return false;
		}		
	}
	
	function login($usuario, $password)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT id, id_tipo, password FROM usuarios WHERE usuario = ? || correo = ? LIMIT 1");
		$stmt->bind_param("ss", $usuario, $usuario);
		$stmt->execute();
		$stmt->store_result();
		$rows = $stmt->num_rows;
		
		if($rows > 0) {
			
			if(isActivo($usuario)){
				
				$stmt->bind_result($id, $id_tipo, $passwd);
				$stmt->fetch();
				
				$validaPassw = password_verify($password, $passwd);
				
				if($validaPassw){
					
					lastSession($id);
					$_SESSION['id_usuario'] = $id;
					$_SESSION['tipo_usuario'] = $id_tipo;
					
					header("location: welcome.php");
					} else {
					
					$errors = "La contrase&ntilde;a es incorrecta";
				}
				} else {
				$errors = 'El usuario no esta activo';
			}
			} else {
			$errors = "El nombre de usuario o correo electr&oacute;nico no existe";
		}
		return $errors;
	}
	
	function lastSession($id)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("UPDATE usuarios SET last_session=NOW(), token_password='', password_request=0 WHERE id = ?");
		$stmt->bind_param('s', $id);
		$stmt->execute();
		$stmt->close();
	}
	
	function isActivo($usuario)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT activacion FROM usuarios WHERE usuario = ? || correo = ? LIMIT 1");
		$stmt->bind_param('ss', $usuario, $usuario);
		$stmt->execute();
		$stmt->bind_result($activacion);
		$stmt->fetch();
		
		if ($activacion == 1)
		{
			return true;
		}
		else
		{
			return false;	
		}
	}	
	
	function generaTokenPass($user_id)
	{

		global $mysqli;
		
		$token = generateToken();

		
		$stmt = $mysqli->prepare("UPDATE tbl_usuario SET token_password=?, password_request=1 WHERE ID_Usuario = ?");
		$stmt->bind_param('ss', $token, $user_id);
		$stmt->execute();
		$stmt->close();
		
		return $token;
	}
	
	function getValor($campo, $campoWhere, $valor)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT $campo FROM tbl_usuario WHERE $campoWhere = ? LIMIT 1");
		$stmt->bind_param('s', $valor);
		$stmt->execute();
		$stmt->store_result();
		$num = $stmt->num_rows;
		
		if ($num > 0)
		{
			$stmt->bind_result($_campo);
			$stmt->fetch();
			return $_campo;
		}
		else
		{
			return null;	
		}
	}
	
	function getPasswordRequest($id)
	{
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT password_request FROM usuarios WHERE id = ?");
		$stmt->bind_param('i', $id);
		$stmt->execute();
		$stmt->bind_result($_id);
		$stmt->fetch();
		
		if ($_id == 1)
		{
			return true;
		}
		else
		{
			return null;	
		}
	}
	
	function verificaTokenPass($user_id, $token){
		
		global $mysqli;
		
		$stmt = $mysqli->prepare("SELECT ID_Estado FROM tbl_usuario WHERE id_Usuario = ? AND token_password = ? AND password_request = 1 LIMIT 1");
		$stmt->bind_param('is', $user_id, $token);
		$stmt->execute();
		$stmt->store_result();
		$num = $stmt->num_rows;
		
		echo "<span style = 'background: red'>num: . $num .</span><br/>";

		if ($num > 0)
		{
			$stmt->bind_result($ID_Estado);
			$stmt->fetch();
			echo "<span style = 'background: red'>valor: . $ID_Estado .</span><br/>";
			if($ID_Estado == 1)
			{
				return true;
			}
			else 
			{
				return false;
			}
		}
		else
		{
			return false;	
		}
	}
	
	function cambiaPassword($password, $user_id, $token,$estado){
		
		global $mysqli;
		
		$stmt = $mysqli->prepare("UPDATE tbl_usuario SET contraseña = ?, token_password='', ID_Estado= '$estado', password_request=0 WHERE ID_Usuario = ? AND token_password = ?");
		$stmt->bind_param('sis', $password, $user_id, $token);
		
		if($stmt->execute()){
			return true;
			} else {
			return false;		
		}
	}
	
	
	function insertBitacora($user_id, $id_objeto,$accion,$descripcion){
		
		global $mysqli;
		
		$stmt = $mysqli->prepare("INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion) VALUES(?,?,?,?)");
		$stmt->bind_param('iiss',$user_id,$id_objeto,$accion,$descripcion);
		
		if ($stmt->execute()){
			return $mysqli->insert_id;
			} else {
			return 0;	
		}		
	}				