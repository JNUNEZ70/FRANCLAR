<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $Parentesco = mysqli_real_escape_string($con,(strip_tags($_POST['Parentesco'],ENT_QUOTES)));
       
	
	$insert = mysqli_query($con, "INSERT INTO tbl_parentesco (Parentesco) 
                                       VALUES ('$Parentesco')") or die(mysqli_error());
    
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',18,'Insert','SE INGRESÓ UN PARENTESCO')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('El Parentesco se ha sido registrado exitosamente');
            window.location.href= 'Parentesco.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>