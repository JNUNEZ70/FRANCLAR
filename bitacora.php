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
                            <h2>Bitácora</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
        <form method="POST" action="bitacora_por_fecha.php" autocomplete="off">
        <br>
            <div class="form-group col-md-4" > 
                <label for="inicio_fecha">Fecha Inicial</label>
                <input type="date" id="inicio_fecha" name="inicio_fecha" value="">
                </div>

                <div class="form-group col-md-4" >
                <label for="final_fecha">Fecha Final</label>
                <input type="date" id="final_fecha" name="final_fecha" value="">
                </div>
                <div class="form-group col-md-4" >
                <input type="submit" id="btn_submit" class="genric-btn info circle" name="enviar" value="Consultar" >
                </div>
                <div class="form-group col-md-4">
                <a class="genric-btn btn-danger circle" href="../FRANCLAR/Reportes-PDF/ReporteBitacora.php">
                <i class="fas fa-file-pdf fa-lg"> </i> Generar Reporte</a>
                </div>	
                <div class="form-group col-md-4">
               
                <input type="submit" id="btn_submit" class="genric-btn btn-danger circle" name="depuraraBitacora" value="Depurar Bitácora" >  
            </div>	
            </div>    
        </form>
	    <br>
		<br>
		<br>
		<div class="table-responsive">
			<table id="datatableUsuarios" class="table table-striped table-hover">
			    <thead>
				<tr>
				    <th>No</th>
                    <th>Usuario</th>
					<th>Objeto</th>
					<th>Acción</th>
                    <th>Descripción</th>
                    <th>Fecha</th>
				</tr>
				</thead>
				<tbody>
				<?php
				$sql = mysqli_query($con, "SELECT tbl_bitacora_evento.id_bitacora_evento,	
				tbl_usuario.id_usuario,
                tbl_usuario.Nom_Usuario,
				tbl_objetos.id_objeto,
                tbl_objetos.objeto,
				tbl_bitacora_evento.Accion,	
				tbl_bitacora_evento.Descripcion,	
				tbl_bitacora_evento.fecha_evento FROM tbl_bitacora_evento
				INNER JOIN tbl_usuario on tbl_bitacora_evento.id_usuario = tbl_usuario.ID_Usuario
				INNER JOIN tbl_objetos on tbl_bitacora_evento.id_objeto = tbl_objetos.id_objeto");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
                            <td>'.$row['id_bitacora_evento'].'</td>
                            <td>'.$row['Nom_Usuario'].'</td>
                            <td>'.$row['objeto'].'</td>
                            <td>'.$row['Accion'].'</td>
                            <td>'.$row['Descripcion'].'</td>
                            <td>'.$row['fecha_evento'].'</td>			
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