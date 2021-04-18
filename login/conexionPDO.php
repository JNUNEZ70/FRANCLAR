<?php 
include '../configuracion/config.php';
/*$server = "localhost";
$user = "";
$password = "";
$database = "sistema_franclar_ok";*/ 

$conn = mysqli_connect($server, $user, $password, $database);

// Check connection
if (!$conn) {
    die("Conexion fallida: " . mysqli_connect_error());
}

?>