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
                            <h2>Expedientes</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
    <?php
			// if(isset($_GET['aksi']) == 'delete'){
			// 	// escaping, additionally removing everything that could be (html/javascript-) code
			// 	$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
			// 	$cek = mysqli_query($con, "SELECT * FROM tbl_empleado WHERE ID_Empleado='$nik'");
			// 	if(mysqli_num_rows($cek) == 0){
			// 		echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
			// 	}else{
			// 		$delete = mysqli_query($con, "DELETE FROM tbl_empleado WHERE ID_Empleado='$nik'");
			// 		if($delete){
			// 			$id_usuario= $_SESSION['ID_Usuario'];
			// 				$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
            //                 VALUES ('$id_usuario',1,'Delete','SE ELIMINÓ UN EMPLEADO')") or die(mysqli_error());
			// 			echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
			// 		}else{
			// 			echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
			// 		}
			// 	}
			// }
	 ?>
    
	<br>
	<br>
   <div class="table-responsive">
			<table id="datatableUsuarios" class="table table-striped table-hover" cellspacing="0" width="100%">
            	<thead>    
				<tr>
					<th>No</th>
					<th>Paciente</th>
					<th>Cédula</th>
					<th>Número de Cita</th>
					<th>Fecha de Atención</th>
                    <th>Ficha de Cita</th>
					<th>Receta</th>
					<th>Factura</th>
                    <th>Fotos de la cita</th>
				</tr>
				</thead>
				<tbody>
				<?php
				$sql = mysqli_query($con, "SELECT tbl_expediente.ID_expediente,	
				tbl_pacientes.Nom_Paciente,
				tbl_pacientes.cedula,
				tbl_citas.ID_Cita,
				tbl_expediente.Fec_atencion FROM tbl_expediente 
				INNER JOIN tbl_pacientes on tbl_expediente.ID_Paciente = tbl_pacientes.ID_Paciente
				INNER JOIN tbl_citas on tbl_expediente.ID_Cita = tbl_citas.ID_Cita");
				
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){	
					?>					
						<tr>
							<td><?php echo $row['ID_expediente']; ?></td>
							<td><?php echo $row['Nom_Paciente']; ?></td>
							<td><?php echo $row['cedula']; ?></td>
							<td><?php echo $row['ID_Cita']; ?></td>
							<td><?php echo $row['Fec_atencion']; ?></td>
							<td><a href="Expedientes/ficha<?php echo $row['Nom_Paciente'].$row['ID_Cita']; ?>.pdf" target="_blank">Ficha de Cita</a></td>
							<td><a href="Expedientes/receta<?php echo $row['Nom_Paciente'].$row['ID_Cita']; ?>.pdf" target="_blank">Receta</a></td>	
							<td><a href="Expedientes/factura<?php echo $row['Nom_Paciente'].$row['ID_Cita']; ?>.pdf" target="_blank">Factura</a></td>								
							<td>
								<?php echo '<a target="_blank" href="ver_imagen_exp.php?nik='.$row['ID_Cita'].'" title="Ver Imagen" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span></a>'; ?>							
								<p>Ver Fotos</p>
							</td>							
						</tr>						
						<?php
						$no++;
						}
						
					}
					?>
				
				
				<tbody>
			</table>
		 </div>
		 <br><br><br><br>	
   
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
</body>

</html>