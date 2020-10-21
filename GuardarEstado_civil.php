<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES)));
       
	
	$insert = mysqli_query($con, "INSERT INTO tbl_estado_civil (Descripcion_est_civil) 
                                       VALUES ('$nombre')") or die(mysqli_error());
    
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',12,'Insert','SE INGRESÓ UN NUEVO ESTADO CIVIL')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('El nuevo Estado Civil ha sido registrado exitosamente');
            window.location.href= 'Estado_Civil.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>