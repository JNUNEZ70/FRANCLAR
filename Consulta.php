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
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM tbl_preclinica WHERE ID_Preclinica='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM empleado WHERE ID_Empleado='$nik'");
					if($delete){
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
	 ?>
    <h2>Consultas</h2>
    <form class="form-inline my-2 my-lg-0 float-left">
        <a href="agregarconsulta.php" class="genric-btn info circle">Agregar</a>
    </form>
    <br>
    <form class="form-inline my-2 my-lg-0 float-right">
        <input name="buscarpor" class="form-control mr-sm-2" type="search" placeholder="Buscar por nombre" aria-label="Search">
        <a href=""><button class="btn btn-success my-2 my-sm-0" type="submit">Buscar</button></a>
    </form><br>
    <br>
			<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
                    <th>No</th>
					<th>Anamnesis</th>
					<th>Examen Físico</th>
                    <th>Tratamiento</th>
                    <th>Próxima Consulta</th>
                    <th>Acciones</th>
				</tr>
				<?php
				$sql = mysqli_query($con, "SELECT * FROM tbl_consultas ORDER BY ID_Consulta ASC");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
                            <td>'.$row['ID_Consulta'].'</td>
                            <td>'.$row['Anamnesis'].'</td>
                            <td>'.$row['Exam_Fisico'].'</td>
                            <td>'.$row['Tratamiento'].'</td>
                            <td>'.$row['Prox_Cita'].'</td>
							<td>

							<a href="EditarPersonal.php?nik='.$row['ID_Consulta'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
							<a href="Personal.php?aksi=delete&nik='.$row['ID_Consulta'].'" title="Eliminar" onclick="return confirm(\'¿Esta seguro de borrar los datos?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
							</td>
						</tr>
						';
						$no++;
					}
				}
				?>
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