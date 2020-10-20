<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Parametro'],ENT_QUOTES)));
        $valor = mysqli_real_escape_string($con,(strip_tags($_POST['Valor_Parametro'],ENT_QUOTES)));
	
    $insert = mysqli_query($con, "INSERT INTO tbl_parametros (parametro, valor) 
                 VALUES ('$nombre', '$valor')") or die(mysqli_error());
    
    if($insert){
        echo "<script type='text/javascript'>
            alert('El nuevo parametro ha sido registrado exitosamente');
            window.location.href= 'Parametros.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>