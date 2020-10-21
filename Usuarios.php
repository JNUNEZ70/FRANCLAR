<!doctype html>
<html lang="es">
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="js/peticion.js"></script>
</head>
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
                            <h2>Usuarios</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
    <?php
			if(isset($_GET['aksi']) == 'bloquear'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM tbl_usuario WHERE ID_Usuario='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$update = mysqli_query($con, "UPDATE tbl_usuario SET ID_Estado= 2 WHERE ID_Usuario='$nik'");
					if($update){
                        echo "<script type='text/javascript'>
                        alert('El Usuario ha sido bloqueado exitosamente');
                        window.location.href= 'Usuarios.php';
                        </script>";
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo deshabilitar usuario.</div>';
					}
				}
            }
            if(isset($_GET['akno']) == 'activar'){
                $nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM tbl_usuario WHERE ID_Usuario='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$update = mysqli_query($con, "UPDATE tbl_usuario SET ID_Estado= 1 WHERE ID_Usuario='$nik'");
					if($update){
						echo "<script type='text/javascript'>
                        alert('El Usuario ha sido activado exitosamente');
                        window.location.href= 'Usuarios.php';
                        </script>";
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo activar usuario.</div>';
					}
				}
            }
            
	 ?>
    
    <form class="form-inline my-2 my-lg-0 float-left">
        <a href="agregarusuario.php" class="genric-btn info circle">Agregar</a>
    </form>
   <br>
  <!-- insertar campo busqueda dinámica -->
  <section class="form-inline my-2 my-lg-0 float-right" >
        <input  class="right-align " type="text" name="busqueda" id="busqueda" placeholder="Buscar...">
  </section>

    <section id="tabla_resultado">
        <!-- AQUI SE DESPLEGARA NUESTRA TABLA DE CONSULTA -->
    </section>
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