<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $NombrePregunta = mysqli_real_escape_string($con,(strip_tags($_POST['NombrePregunta'],ENT_QUOTES)));
       
	
	$insert = mysqli_query($con, "INSERT INTO tbl_preguntas (Pregunta) 
                                       VALUES ('$NombrePregunta')") or die(mysqli_error());
    
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',17,'Insert','SE INGRESÓ UNA PREGUNTA SECRETA')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('La nueva Pregunta se ha sido registrado exitosamente');
            window.location.href= 'Preguntas.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>