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
<?php

if (isset($_POST['enviar'])) {
    $fechaInicial=$_POST['inicio_fecha'];
    $fechaFinal=$_POST['final_fecha'];

   
    
    $sql = mysqli_query($con, "SELECT tbl_bitacora_evento.id_bitacora_evento,	
    tbl_usuario.Nom_Usuario,
    tbl_objetos.objeto,
    tbl_bitacora_evento.Accion,	
    tbl_bitacora_evento.Descripcion,	
    tbl_bitacora_evento.fecha_evento FROM tbl_bitacora_evento
    INNER JOIN tbl_usuario on tbl_bitacora_evento.id_usuario = tbl_usuario.ID_Usuario
    INNER JOIN tbl_objetos on tbl_bitacora_evento.id_objeto = tbl_objetos.id_objeto
    WHERE tbl_bitacora_evento.fecha_evento BETWEEN '$fechaInicial' AND '$fechaFinal' ");

}

if (isset($_POST['depuraraBitacora'])){

    $sql= mysqli_query($con, "TRUNCATE TABLE tbl_bitacora_evento");


    echo "<script type='text/javascript'>
    alert('Bitácora Depurada con éxito');
    window.location.href= 'bitacora.php';
    </script>";
}

?>
    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                            <h2>Consulta Bitacora</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    <!-- footer part start-->
        <!-- <div class="form-group col-md-4">
             ../FRANCLAR/Reportes-PDF/ReporteBitacora.php
            <a class="genric-btn btn-danger circle" href="../FRANCLAR/Reportes-PDF/ReporteConsultaBitacora.php">
            <i class="fas fa-file-pdf fa-lg"> </i> Generar Reporte</a>
        </div>	 -->
        <form class="form-inline my-2 my-lg-0 float-left">
			<a href="bitacora.php" class="genric-btn info circle">Volver a bitacora</a>
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