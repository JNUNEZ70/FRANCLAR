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
    include 'header.php'
    ?>
    <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                            <h2>Consultas</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
    <?php
		$id_usuario = $_SESSION['ID_Usuario'];
		$sql2 = mysqli_query($con, "SELECT tbl_empleado.ID_Especialidad FROM tbl_usuario 
		INNER JOIN tbl_empleado on tbl_usuario.ID_Empleado = tbl_empleado.ID_Empleado WHERE tbl_usuario.ID_Usuario = '$id_usuario'");
		$row2 = mysqli_fetch_assoc($sql2);
		$id_espec = $row2['ID_Especialidad'];

	?>
    
    <br>
	<br>
	
    <div class="table-responsive">
			<table id="datatableUsuarios" class="table table-striped table-hover" cellspacing="0" width="100%">
            	<thead>    
				<tr>
					<th>No</th>
					<th>Paciente</th>
					<th>Teléfono</th>
					<th>Fecha de Ingreso</th>
					<th>Especialidad</th>
                    <th>Doctor</th>
                    <th>Fecha de Atención</th>
                    <th>Hora de Atención</th>
                    <th>Estado</th>					
				    <th>Acción</th>
				</tr>
				</thead>
				<tbody>
				<?php
				$sql = mysqli_query($con, "SELECT tbl_citas.ID_Cita,	
				tbl_pacientes.Nom_Paciente,
				tbl_pacientes.Cel_Paciente,
				tbl_citas.Fec_Creacion,
				tbl_especialidad.Descripcion_espec,
				tbl_empleado.Nom_Empleado,
				tbl_citas.Fec_Atencion,	
				tbl_citas.Hora_Atencion,	
				tbl_estado_cita.Descripcion_est_cita FROM tbl_citas 
				INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
				INNER JOIN tbl_especialidad on tbl_citas.ID_Especialidad = tbl_especialidad.ID_Especialidad
				INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
				INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado WHERE tbl_estado_cita.ID_Estado = 2 AND tbl_especialidad.ID_Especialidad = '$id_espec'  ORDER BY tbl_citas.Fec_Creacion DESC");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
						<td>'.$row['ID_Cita'].'</td>
						<td>'.$row['Nom_Paciente'].'</td>
						<td>'.$row['Cel_Paciente'].'</td>
						<td>'.$row['Fec_Creacion'].'</td>
						<td>'.$row['Descripcion_espec'].'</td>
						<td>'.$row['Nom_Empleado'].'</td>
						<td>'.$row['Fec_Atencion'].'</td>
						<td>'.$row['Hora_Atencion'].'</td>
						<td><span class="label label-success">'.$row['Descripcion_est_cita'].'</span></td>					
						<td>							
                            <a href="agregarconsulta.php?nik='.$row['ID_Cita'].'" title="Realizar Consulta" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-open" aria-hidden="true"></span></a>
                            
						</td>
						</tr>
						';
						$no++;
					}
				}
				?>
				<tbody>
			</table>
		 </div>
		
    
    <!-- footer part end-->
	
    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>

</body>

	
	
</html>