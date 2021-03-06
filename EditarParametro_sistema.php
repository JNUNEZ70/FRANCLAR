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
                            <h2>Editar Parámetro</h2>
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
			$sql = mysqli_query($con, "SELECT * FROM tbl_parametro_sistema WHERE id_parametro='$nik'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){
				$valor = mysqli_real_escape_string($con,(strip_tags($_POST['Valor_Parametro'],ENT_QUOTES))); 
				
				$update = mysqli_query($con, "UPDATE tbl_parametro_sistema SET valor='$valor' WHERE id_parametro='$nik'") or die(mysqli_error());
				if($update){
                    $id_usuario= $_SESSION['ID_Usuario'];
                    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                    VALUES ('$id_usuario',20,'Update','SE ACTUALIZÓ UN PARÁMETRO DEL SISTEMA')") or die(mysqli_error());
                    echo "<script type='text/javascript'>
                        alert('Ha sido modificado exitosamente');
                        window.location.href= 'Parametros_sistema.php';
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
                            <h2>Editar Parámetros</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NomP" value="<?php echo $row ['parametro']; ?>" name="Parametro" onkeypress="return soloLetras(event)" placeholder="Nombre del parámetro" readonly>
                                </div>

                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="ValP" value="<?php echo $row ['valor']; ?>" name="Valor_Parametro" maxlength="25" placeholder="Valor" required>
                                </div>

                                <div class="regerv_btn col-md-8">
                                    <button type="submit" name="save" class="btn_2">Guardar</button>
                                    <a href="Parametros_sistema.php" class="btn_2">Cancelar</a>
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
    <script>
    document.getElementById("ValP").addEventListener('keydown',impedirEspacios);
    
    </script>
</body>

</html>