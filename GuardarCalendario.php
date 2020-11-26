<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nomb_pac = mysqli_real_escape_string($con,(strip_tags($_POST['NombPaciente'],ENT_QUOTES)));
        $especialidad = mysqli_real_escape_string($con,(strip_tags($_POST['Especialidad'],ENT_QUOTES)));
        $fecha_atenc = mysqli_real_escape_string($con,(strip_tags($_POST['fecha_atenc'],ENT_QUOTES)));
        $hora_atenc = mysqli_real_escape_string($con,(strip_tags($_POST['hora_atenc'],ENT_QUOTES)));
        $precio = mysqli_real_escape_string($con,(strip_tags($_POST['prec'],ENT_QUOTES)));
        
        $id_usuario= $_SESSION['ID_Usuario'];

        $sql = mysqli_query($con, "SELECT * FROM tbl_pacientes WHERE Nom_Paciente='$nomb_pac'");
        $row = mysqli_fetch_assoc($sql);                        
        $id_paciente = $row['ID_Paciente'];
        

        $consulta = mysqli_query($con, "SELECT * FROM tbl_empleado WHERE ID_Especialidad='$especialidad'");
        $dato = mysqli_fetch_assoc($consulta);                        
        $id_empleado = $dato['ID_Empleado'];

        
        
	$insert = mysqli_query($con, "INSERT INTO tbl_citas (ID_Paciente, ID_Usuario, ID_Empleado, ID_Especialidad, ID_Estado, Fec_Atencion, Hora_Atencion, Precio) 
                                       VALUES ( '$id_paciente' , '$id_usuario' , '$id_empleado' , '$especialidad' , 1 , '$fecha_atenc' , '$hora_atenc' , '$precio')") or die(mysqli_error());
    
    if($insert){
        // $id_usuario= $_SESSION['ID_Usuario'];
        //     $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
        //     VALUES ('$id_usuario',1,'Insert','SE INGRESÓ UN NUEVO EMPLEADO')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('La cita ha sido registrada exitosamente');
            window.location.href= 'CalendarioCitas.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, No se pudo guardar los datos.</div>';
    }
}
?>