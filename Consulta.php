<!doctype html>
<html lang="en">

<?php
session_start();
include 'head.php'
?>
<?php
include 'conexion.php'
?>
<body>
    <!--::header part start::-->
  <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.php"> <img src="img/franclar_logo.png" srcset="img/franclar_logo.png 800w" sizes= "(min-width: 1000px) 50vw, (min-width: 800px) 80vw, (min-width: 600px) 100vw, (min-width: 300px) 145vw, , (min-width: 250px) 100vw, (min-width: 100px) 100vw" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Bienvenido <?php echo $_SESSION['Nom_Usuario']; ?></a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="Index.php">Home</a>
                                </li>
                               
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pacientes
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Pacientes.php">Ingresar Pacientes</a>
                                        <a class="dropdown-item" href="Cita.php">Citas</a>
                                        <a class="dropdown-item" href="Consulta.php">Consultas</a>
                                    </div>
                                </li>
                               


                              
                                <li class="nav-item active">
                                    <a class="nav-link" href="cerrar.php">Cerrar Sesión</a>
                                </li>

                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
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