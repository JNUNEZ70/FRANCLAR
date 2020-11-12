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
                            <h2>Bitacora</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
		<div class="table-responsive">
			<table id="datatable" class="table table-striped table-hover">
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
				tbl_objetos.id_objeto,
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
                            <td>'.$row['id_usuario'].'</td>
                            <td>'.$row['id_objeto'].'</td>
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