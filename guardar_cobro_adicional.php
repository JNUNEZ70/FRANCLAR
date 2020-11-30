<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES)));
        $precio = mysqli_real_escape_string($con,(strip_tags($_POST['precio'],ENT_QUOTES)));
       
	
	$insert = mysqli_query($con, "INSERT INTO tbl_cobros_adicionales (Descripcion_cobro,Precio_cobro) 
                                       VALUES ('$nombre','$precio')");
    
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',9,'Insert','SE INGRESÓ UNA NUEVA ESPECIALIDAD')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('El nuevo Cobro adicional ha sido registrado exitosamente');
            window.location.href= 'cobros_adicionales.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>