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
                            <h2>Administrar Cuenta</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    <?php
			// escaping, additionally removing everything that could be (html/javascript-) code
            
            $nik = $_SESSION['ID_Usuario'];
			$sql = mysqli_query($con, "SELECT tbl_usuario.ID_Usuario,
            tbl_empleado.Nom_Empleado,
            tbl_usuario.email,
            tbl_usuario.Nom_Usuario,
            tbl_estado_usuario.Descripcion,
            tbl_roles.Rol,
            tbl_roles.ID_Rol FROM tbl_usuario
            INNER JOIN tbl_empleado on tbl_usuario.ID_Empleado = tbl_empleado.ID_Empleado
            INNER JOIN tbl_estado_usuario on tbl_usuario.ID_Estado = tbl_estado_usuario.ID_Estado
            INNER JOIN tbl_roles on tbl_usuario.ID_Rol = tbl_roles.ID_Rol WHERE ID_Usuario='$nik'");
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){
                $corrreo = mysqli_real_escape_string($con,(strip_tags($_POST['Email'],ENT_QUOTES)));
                $contrasenia = mysqli_real_escape_string($con,(strip_tags($_POST['Ncontraseña'],ENT_QUOTES)));
				
				$update = mysqli_query($con, "UPDATE tbl_usuario SET email='$corrreo', Contraseña='$contrasenia' WHERE ID_Usuario='$nik'");
				if($update){
                    $id_usuario= $_SESSION['ID_Usuario'];
                    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                    VALUES ('$id_usuario',2,'Update','SE ACTUALIZÓ UN USUARIO')");
                    echo "<script type='text/javascript'>
                        alert('Prueba Tú nueva contraseña');
                        window.location.href= 'login/Login.php';
                    </script>";
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
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
                            <h2>Datos del usuario</h2>
                            <div class="form-row">
                                
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" id="EmailU" value="<?php echo $row ['email']; ?>" name="Email" placeholder="Email" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text"  class="form-control" id="NomU" value="<?php echo $row ['Nom_Usuario']; ?>" name="Nom_Usuario"  placeholder="Nombre de usuario" readonly>                                    
                                </div>                                           
                                <div class="form-group col-md-6">
                                <input type="password" class="form-control" name="Ncontraseña" placeholder="Ingrese una contraseña nueva">
                                </div>
                                <div class="form-group col-md-4">
                                <input type="password" class="form-control" name="Ccontraseña" placeholder="Confirme su contraseña">
                                </div>
                                <br>
                                <br>
                    
                                <div class="regerv_btn">
                                    <button type="submit" name="save" class="btn_2">Guardar</button>
                                    <a href="Usuarios.php" class="btn_2">Cancelar</a>
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