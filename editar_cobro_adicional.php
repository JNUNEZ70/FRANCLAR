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
                            <h2>Editar Cobro</h2>
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
			$sql = mysqli_query($con, "SELECT * FROM tbl_cobros_adicionales WHERE ID_cobro_adicional='$nik'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){
                $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES))); 
                $precio = mysqli_real_escape_string($con,(strip_tags($_POST['precio'],ENT_QUOTES))); 
				
				$update = mysqli_query($con, "UPDATE tbl_cobros_adicionales SET Descripcion_cobro='$nombre',Precio_cobro='$precio' WHERE ID_cobro_adicional='$nik'");
				if($update){
                    $id_usuario= $_SESSION['ID_Usuario'];
                    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                    VALUES ('$id_usuario',10,'Update','SE ACTUALIZÓ EL CARGO')");
                    echo "<script type='text/javascript'>
                        alert('Ha sido modificado exitosamente');
                        window.location.href= 'cobros_adicionales.php';
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
                            <h2>Editar Cobro Adicional</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" value="<?php echo $row['Descripcion_cobro']; ?>" id="Nombre_Cargo" maxlength="50" name="Nombre" placeholder="Nombre del cobro" required readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input onkeypress="return solonumeros(event)" onkeyup="sanear2(this)" type="text" class="form-control" value="<?php echo $row['Precio_cobro']; ?>" id="precio_cobro" maxlength="50" name="precio" placeholder="precio del cobro" required>
                                </div>
                                <div class="regerv_btn col-md-8">
                                    <button type="submit" name="save" class="btn_2">Guardar</button>
                                    <a href="cobros_adicionales.php" class="btn_2">Cancelar</a>
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

function sanear2(e) {
      let id=e.id;
      
      let $cantidad=document.getElementById(id);

    let contenido = $cantidad.value;
    e.value = contenido.toUpperCase().replace("  ", " ");
    //contenido.toUpperCase().replace("  ", " ");
      
    
    }
</script>
</body>

</html>