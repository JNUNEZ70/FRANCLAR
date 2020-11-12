<?php 
include 'configuracion/config.php';

try {
   

} catch (\Throwable $th) {
   
}
$con = mysqli_connect($server, $user, $password, $database);
if (!$con) {
    die("Conexion fallida: " . mysqli_connect_error());
} 


// Check connection


?>