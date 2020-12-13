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
                            <h2>Religión</h2>
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
				$cek = mysqli_query($con, "SELECT * FROM tbl_religion WHERE ID_Religion='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM tbl_religion WHERE ID_Religion='$nik'");
					if($delete){
						$id_usuario= $_SESSION['ID_Usuario'];
							$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                            VALUES ('$id_usuario',13,'Delete','SE ELIMINÓ UNA RELIGIÓN')") or die(mysqli_error());
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
	 ?>
	 <?php
	  $rolUsuario=$_SESSION['ID_Rol'];
	 $sql=("SELECT * FROM tbl_permisos WHERE id_objeto=13 AND id_rol=$rolUsuario");
		$query=mysqli_query($con,$sql);
		if(mysqli_num_rows($query)>0){
			
			$row = mysqli_fetch_assoc($query);
			$permiso= $row['permiso_insertar'];
			$permiso_eliminar= $row['permiso_eliminar'];
			$permiso_actualizar=$row['permiso_actualizar'];
		}if ($permiso==0){
			
		 echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>"usuario no tiene permisos para agregar nuevo"</div>';
		

		}else{?>
		
		
	
		
		<form class="form-inline my-2 my-lg-0 float-left">
			<a href="agregarreligion.php" class="genric-btn info circle">Agregar</a>
		</form>
		<form class="form-inline my-2 my-lg-0 float-left">
			<a class="genric-btn btn-danger circle" href="../FRANCLAR/Reportes-PDF/ReporteReligion.php">
			<i class="fas fa-file-pdf fa-lg"> </i> Generar Reporte</a>
    	</form>	
	   <br>
		<br>
		<br>
		<?php } ?>
			
		<div class="table-responsive">
			<table id="datatableUsuarios"  class="table table-striped table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Descripción</th>
						<th>Acciones</th>
						
						
					</tr>
				</thead>
				<tbody>
				<?php
				$sql = mysqli_query($con, "SELECT * FROM tbl_religion");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						($permiso_eliminar==1)?$boton='<a href="Religiones.php?aksi=delete&nik='.$row['ID_Religion'].'" title="Eliminar" onclick="return confirm(\'¿Está seguro de borrar los datos del la religión '.$row['Descripcion_Religion'].'?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>':$boton='<a  title="Eliminar"  onClick="permiso()" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>';
						($permiso_actualizar==1)?$boton2='<a href="EditarReligion.php?nik='.$row['ID_Religion'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>':$boton2='<a  title="Editar datos" onClick="permiso()" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>';	
						
						echo '
						<tr>
                            <td>'.$row['ID_Religion'].'</td>
							<td>'.$row['Descripcion_Religion'].'</td>	
							<td>'.$boton2.' '.$boton.'</td>
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