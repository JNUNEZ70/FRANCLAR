<?php
header('Content-Type: application/json');
$pdo=new PDO("mysql:dbname=sistema_franclar;host=127.0.0.1","root","");

session_start();
$consulta="SELECT tbl_citas.ID_Cita as cita,tbl_empleado.Nom_Empleado as title,CONCAT_WS(' ' ,tbl_citas.Fec_Atencion ,tbl_citas.Hora_Atencion) as start,tbl_pacientes.Nom_Paciente as paciente, tbl_especialidad.Descripcion_espec as especialidad from tbl_citas INNER JOIN tbl_pacientes 
ON tbl_citas.ID_Paciente=tbl_pacientes.ID_Paciente INNER JOIN tbl_especialidad
ON tbl_citas.ID_Especialidad=tbl_especialidad.ID_especialidad INNER JOIN tbl_empleado
ON tbl_citas.ID_Empleado=tbl_empleado.ID_Empleado WHERE tbl_citas.ID_Estado=1";
$sql=$pdo->prepare($consulta);
//$sql=$pdo->prepare("SELECT * FROM tbl_citas");
$sql->execute();

$resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($resultado);

//echo '['.json_encode($resultado).']';
 
?>