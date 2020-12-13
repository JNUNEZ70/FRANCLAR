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
                            <h2>Citas</h2>
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
			$cek = mysqli_query($con, "SELECT * FROM tbl_citas WHERE ID_Cita='$nik'");
			if(mysqli_num_rows($cek) == 0){
				echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
			}else{
				$delete = mysqli_query($con, "DELETE FROM tbl_citas WHERE ID_Cita='$nik'");
				if($delete){
					$id_usuario= $_SESSION['ID_Usuario'];
						$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
						VALUES ('$id_usuario',7,'Delete','SE ELIMINÓ UNA CITA')") or die(mysqli_error());
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminados correctamente.</div>';
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
				}
			}
		}
	 ?>
    <form class="form-inline my-2 my-lg-0 float-left">
        <a href="agregarcita.php" class="genric-btn info circle">Agregar</a>
    </form>	
    <form class="form-inline my-2 my-lg-0 float-left">
        <a href="CalendarioCitas.php" class="genric-btn info circle">
		<i class="fa fa-calendar-check-o fa-lg fa-lg"> </i> Ver Calendario  </a>
		
	</form>	
	<div class="form-inline my-2 my-lg-0 float-left" >
	<a class="genric-btn info circle" href="PHPMailer/notificaciones.php">
	<i class="fa fa-envelope fa-lg"> </i> Enviar Email  </a>
</div>

<form class="form-inline my-2 my-lg-0 float-left">
	<a class="genric-btn btn-danger circle" href="../FRANCLAR/Reportes-PDF/ReporteCitas.php">
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
					<th>Paciente</th>
					<th>Fecha de Ingreso</th>
					<th>Especialidad</th>
                    <th>Doctor</th>
                    <th>Fecha de Atención</th>
                    <th>Hora de Atención</th>
                    <th>Estado</th>					
				    <th>Acciones</th>
				</tr>
				</thead>
				<tbody>
					<?php
						$sql = mysqli_query($con, "SELECT tbl_citas.ID_Cita,	
						tbl_pacientes.Nom_Paciente,
						tbl_citas.Fec_Creacion,
						tbl_especialidad.Descripcion_espec,
						tbl_empleado.Nom_Empleado,
						tbl_citas.Fec_Atencion,	
						tbl_citas.Hora_Atencion,	
						tbl_estado_cita.Descripcion_est_cita,
						tbl_estado_cita.ID_Estado FROM tbl_citas 
						INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
						INNER JOIN tbl_especialidad on tbl_citas.ID_Especialidad = tbl_especialidad.ID_Especialidad
						INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
						INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado ORDER BY tbl_citas.Fec_Creacion DESC");
						if(mysqli_num_rows($sql) == 0){
							echo '<tr><td colspan="8">No hay datos.</td></tr>';
						}else{
							$no = 1;
							while($row = mysqli_fetch_assoc($sql)){
								if($row['ID_Estado'] == 1){
									echo '
									<tr>
									<td>'.$row['ID_Cita'].'</td>
									<td>'.$row['Nom_Paciente'].'</td>
									<td>'.$row['Fec_Creacion'].'</td>
									<td>'.$row['Descripcion_espec'].'</td>
									<td>'.$row['Nom_Empleado'].'</td>
									<td>'.$row['Fec_Atencion'].'</td>
									<td>'.$row['Hora_Atencion'].'</td>
									<td><span class="label label-success">'.$row['Descripcion_est_cita'].'</span></td>					
									<td>							
										<a href="EditarCita.php?nik='.$row['ID_Cita'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
										<a href="Cita.php?aksi=delete&nik='.$row['ID_Cita'].'" title="Eliminar" onclick="return confirm(\'¿Está seguro de borrar los datos de la cita\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
									</td>
									</tr>
									';
								}elseif($row['ID_Estado'] == 2){
									echo '
									<tr>
									<td>'.$row['ID_Cita'].'</td>
									<td>'.$row['Nom_Paciente'].'</td>
									<td>'.$row['Fec_Creacion'].'</td>
									<td>'.$row['Descripcion_espec'].'</td>
									<td>'.$row['Nom_Empleado'].'</td>
									<td>'.$row['Fec_Atencion'].'</td>
									<td>'.$row['Hora_Atencion'].'</td>
									<td><span class="label label-info">'.$row['Descripcion_est_cita'].'</span></td>
									<td>							
									<a href="EditarCita.php?nik='.$row['ID_Cita'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
									<a href="Cita.php?aksi=delete&nik='.$row['ID_Cita'].'" title="Eliminar" onclick="return confirm(\'¿Está seguro de borrar los datos de la cita\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
								    </td>
									</tr>
									';
								}elseif($row['ID_Estado'] == 3){
									echo '
									<tr>
									<td>'.$row['ID_Cita'].'</td>
									<td>'.$row['Nom_Paciente'].'</td>
									<td>'.$row['Fec_Creacion'].'</td>
									<td>'.$row['Descripcion_espec'].'</td>
									<td>'.$row['Nom_Empleado'].'</td>
									<td>'.$row['Fec_Atencion'].'</td>
									<td>'.$row['Hora_Atencion'].'</td>
									<td><span class="label label-primary">'.$row['Descripcion_est_cita'].'</span></td>
									<td>							
									<a href="EditarCita.php?nik='.$row['ID_Cita'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
									<a href="Cita.php?aksi=delete&nik='.$row['ID_Cita'].'" title="Eliminar" onclick="return confirm(\'¿Está seguro de borrar los datos de la cita\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
								    </td>
									</tr>
									';
								}elseif($row['ID_Estado'] == 4){
									echo '
									<tr>
									<td>'.$row['ID_Cita'].'</td>
									<td>'.$row['Nom_Paciente'].'</td>
									<td>'.$row['Fec_Creacion'].'</td>
									<td>'.$row['Descripcion_espec'].'</td>
									<td>'.$row['Nom_Empleado'].'</td>
									<td>'.$row['Fec_Atencion'].'</td>
									<td>'.$row['Hora_Atencion'].'</td>
									<td><span class="label label-warning">'.$row['Descripcion_est_cita'].'</span></td>					
									<td>							
									<a href="EditarCita.php?nik='.$row['ID_Cita'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
									<a href="Cita.php?aksi=delete&nik='.$row['ID_Cita'].'" title="Eliminar" onclick="return confirm(\'¿Está seguro de borrar los datos de la cita\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
								    </td>
									</tr>
									';
								}
								$no++;
							}
						}
					?>
				</tbody>
			</table>
		 </div>
		<br><br><br><br><br><br><br><br><br><br>
		 
  
    <!-- footer part end-->
	
    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
</body>

</html>