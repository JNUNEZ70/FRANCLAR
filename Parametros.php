<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php'
?>
<?php
include 'conexion.php'
?>

<body>
    <!--::header part start::-->
    <?php
    include 'header.php';
    ?>
    <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                            <h2>Parámetros</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
    <?php
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM tbl_parametros WHERE id_parametro='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM tbl_parametros WHERE id_parametro='$nik'");
					if($delete){
                        $id_usuario= $_SESSION['ID_Usuario'];
							$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                            VALUES ('$id_usuario',3,'Delete','SE ELIMINÓ UN PARAMETRO DE SEGURIDAD')") or die(mysqli_error());
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
	 ?>
    
    
    <form class="form-inline my-2 my-lg-0 float-left">
		<a class="genric-btn btn-danger circle" onclick="pdfDinamico(this)" id="pdf_parametros_seguridad" href="#">
		<i class="fas fa-file-pdf fa-lg"> </i> Generar Reporte</a>
    </form>	
   <br>
    
	<br>
	<br>
			
		<div class="table-responsive">
			<table id="datatableUsuarios" class="table table-striped table-hover" cellspacing="0" width="100%">
            <thead>    
                <tr>
                    <th>No</th>
					<th>Nombre Parámetro</th>
					<th>Valor</th>
                    <th>Acciones</th>
					
                    
                </tr>
                </thead>
                <tbody>
				<?php
				$sql = mysqli_query($con, "SELECT * FROM tbl_parametros");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
                            <td>'.$row['id_parametro'].'</td>
                            <td>'.$row['parametro'].'</td>		
                            <td>'.$row['valor'].'</td>	
							<td>							
								<a href="EditarParametro.php?nik='.$row['id_parametro'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
								
							</td>
						</tr>
						';
						$no++;
					}
				}
                ?>
                </tbody>
			</table>
		 </div>
            
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
</body>

</html>