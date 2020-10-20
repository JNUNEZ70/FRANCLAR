<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES)));
       
	
	$insert = mysqli_query($con, "INSERT INTO tbl_especialidad (Descripcion_espec) 
                                       VALUES ('$nombre')") or die(mysqli_error());
    
    if($insert){
        echo "<script type='text/javascript'>
            alert('La nueva especialidad ha sido registrado exitosamente');
            window.location.href= 'Especialidades.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>