<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['save'])){

        $nomb_pac = mysqli_real_escape_string($con,(strip_tags($_POST['NombPaciente'],ENT_QUOTES)));
        $especialidad = mysqli_real_escape_string($con,(strip_tags($_POST['Especialidad'],ENT_QUOTES)));
        $fecha_atenc = mysqli_real_escape_string($con,(strip_tags($_POST['fecha_atenc'],ENT_QUOTES)));
        $hora_atenc = mysqli_real_escape_string($con,(strip_tags($_POST['hora_atenc'],ENT_QUOTES)));
        $precio = mysqli_real_escape_string($con,(strip_tags($_POST['precio'],ENT_QUOTES)));
        $id_empleado = mysqli_real_escape_string($con,(strip_tags($_POST['doctor'],ENT_QUOTES)));
        $id_paciente = mysqli_real_escape_string($con,(strip_tags($_POST['id_paciente'],ENT_QUOTES)));

        $id_usuario= $_SESSION['ID_Usuario'];

        
	$insert = mysqli_query($con, "INSERT INTO tbl_citas (ID_Paciente, ID_Usuario, ID_Empleado, ID_Especialidad, ID_Estado, Fec_Atencion, Hora_Atencion, Precio) 
                                       VALUES ( '$id_paciente' , '$id_usuario' , '$id_empleado' , '$especialidad' , 1 , '$fecha_atenc' , '$hora_atenc' , '$precio')") or die(mysqli_error());
    
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
             $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
             VALUES ('$id_usuario',7,'Insert','SE INGRESÓ UNA NUEVA CITA')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('La cita ha sido registrada exitosamente');
            window.location.href= 'Cita.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, No se pudo guardar los datos.</div>';
    }
}
?>