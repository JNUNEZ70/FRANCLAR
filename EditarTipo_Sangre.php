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
                            <h2>Editar Tipo Sangre</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    <?php
			// escaping, additionally removing everything that could be (html/javascript-) code
			$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
			$sql = mysqli_query($con, "SELECT * FROM tbl_tipo_sangre WHERE ID_Tipo_Sangre='$nik'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){
				$nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES))); 
				
				$update = mysqli_query($con, "UPDATE tbl_tipo_sangre SET Descripción='$nombre' WHERE ID_Tipo_Sangre='$nik'") or die(mysqli_error());
				if($update){
                    echo "<script type='text/javascript'>
                        alert('Ha sido modificado exitosamente');
                        window.location.href= 'Tipo_Sangre.php';
                    </script>";
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, No se pudo actualizar el dato.</div>';
                }
			}
		?>
    <!--::regervation_part start::-->
    <section class="regervation_part section_padding">
        <div class="container">
            <div class="row align-items-center regervation_content">
                <div class="col-lg-7">
                    <div class="regervation_part_iner">
                        <form method="POST" action="" autocomplete="off">
                            <h2>Editar Cargo</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" value="<?php echo $row['Descripción']; ?>" id="Nombre_Tipo_Sangre" maxlength="50" name="Nombre" placeholder="Nombre del tipo de sangre" required>
                                </div>

                                <div class="regerv_btn col-md-8">
                                    <button type="submit" name="save" class="btn_2">Guardar</button>
                                    <a href="Cargos.php" class="btn_2">Cancelar</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
        include 'Copyright.php'
    ?>
<!-- jquery plugins here-->
    <?php
        include 'script.php'
    ?>

</body>

</html>