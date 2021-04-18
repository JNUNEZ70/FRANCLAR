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
                            <h2>Roles y Permisos</h2>
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
				$cek = mysqli_query($con, "SELECT * FROM tbl_roles WHERE ID_Rol='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM tbl_roles WHERE ID_Rol='$nik'");
					if($delete){
						$id_usuario= $_SESSION['ID_Usuario'];
							$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                            VALUES ('$id_usuario',9,'Delete','SE ELIMINÓ UNA ESPECIALIDAD')");

						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
	 ?>
    
 
   <br>
   <form class="form-inline my-2 my-lg-0 float-right">
        <input name="buscarpor" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
    </form>
	<br>
	<br>
    <br>
    
			
		<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
                    <th>No</th>
					<th>Descripción De Rol</th>
                    <th>Agregar Permisos</th>
                    <th>Ver Permisos</th>
					
                    
				</tr>
				<?php
				$sql = mysqli_query($con, "SELECT * FROM tbl_roles");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
                        if ($row['Rol']=="ADMIN") {
                            continue;
                        }
						echo '
						<tr>
                            <td>'.$row['ID_Rol'].'</td>
							<td>'.$row['Rol'].'</td>		
                            <td>							
                            <a href="permisos.php?nik='.$row['ID_Rol'].'" title="Agregar permisos" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a>
                            
            
                            </td>
                            <td> 
                            <a href="ver_permisos.php?nik='.$row['ID_Rol'].'" title="Ver permisos" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
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