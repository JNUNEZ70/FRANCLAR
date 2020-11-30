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
                            <h2> Ver Expedientes</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
    <?php
	$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
	$sql = mysqli_query($con, "SELECT tbl_expediente.ID_expediente,	
	tbl_pacientes.Nom_Paciente,
	tbl_pacientes.cedula,
	tbl_citas.ID_Cita,
	tbl_expediente.Fec_atencion,
	tbl_expediente.historia_clinica,
	tbl_expediente.tipo_imagen,
	tbl_expediente.imagen FROM tbl_expediente 
	INNER JOIN tbl_pacientes on tbl_expediente.ID_Paciente = tbl_pacientes.ID_Paciente
	INNER JOIN tbl_citas on tbl_expediente.ID_Cita = tbl_citas.ID_Cita WHERE tbl_expediente.ID_paciente='$nik'");

			
	$cita = mysqli_real_escape_string($con,(strip_tags($_GET["cita"],ENT_QUOTES)));
	
	
	?>
    	<form class="form-inline my-2 my-lg-0 float-left">
			<?php echo '<a href="agregarconsulta.php?nik='.$cita.'" class="genric-btn info circle">Regresar a Consulta</a>' ?>
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
					<th>Cédula</th>
					<th>Número de Cita</th>
					<th>Fecha de Atención</th>
                    <th>Ficha de Cita</th>
					<th>Receta</th>
					<th>Factura</th>
                    <th>Imagen de la cita</th>
				</tr>
				</thead>
				<tbody>
				<?php
				// $sql = mysqli_query($con, "SELECT tbl_expediente.ID_expediente,	
				// tbl_pacientes.Nom_Paciente,
				// tbl_pacientes.cedula,
				// tbl_citas.ID_Cita,
				// tbl_expediente.Fec_atencion,
				// tbl_expediente.historia_clinica,
				// tbl_expediente.tipo_imagen,
				// tbl_expediente.imagen FROM tbl_expediente 
				// INNER JOIN tbl_pacientes on tbl_expediente.ID_Paciente = tbl_pacientes.ID_Paciente
				// INNER JOIN tbl_citas on tbl_expediente.ID_Cita = tbl_citas.ID_Cita");
				
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
								<img width="100" src="data:<?php echo $row['tipo_imagen']; ?>;base64,<?php echo base64_encode($row['imagen']); ?>" >								
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
		 	<br>
            <br>
            <br>
    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
</body>

</html>