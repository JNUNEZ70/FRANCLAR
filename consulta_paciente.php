<?php
include 'conexion.php'
?>

<?php

$id = $_POST['id'];
// echo $id;
$sql = mysqli_query($con, "SELECT * FROM tbl_pacientes WHERE cedula='$id'");
if(mysqli_num_rows($sql) == 0){
    echo 'La identidad no existe';
    }else{
        $row = mysqli_fetch_assoc($sql);                        
        $nombre = $row['Nom_Paciente'];
        echo $nombre;
}
?>
