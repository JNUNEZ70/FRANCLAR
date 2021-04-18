<?php 
include '../configuracion/config.php';
/*$server = "localhost";
$user = "franclar";
$password = "Franclar#2020";
$database = "sistema_franclar";*/ 

$conn = mysqli_connect($server, $user, $password, $database);

// Check connection
if (!$conn) {
    die("Conexion fallida: " . mysqli_connect_error());
}

?>