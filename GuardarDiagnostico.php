<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES)));
       
	
	$insert = mysqli_query($con, "INSERT INTO tbl_diagnosticos (Descripcion) 
                                       VALUES ('$nombre')") or die(mysqli_error());
    
    if($insert){
        echo "<script type='text/javascript'>
            alert('El nuevo diagnóstico ha sido registrado exitosamente');
            window.location.href= 'Diagnosticos.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>