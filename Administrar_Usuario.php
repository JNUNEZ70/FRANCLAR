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
                $contrasenia_actual = mysqli_real_escape_string($con,(strip_tags($_POST['contra_actual'],ENT_QUOTES)));
                $contrasenia = mysqli_real_escape_string($con,(strip_tags($_POST['Ncontraseña'],ENT_QUOTES)));
               
                $consulta=mysqli_query($con,"SELECT * FROM tbl_usuario WHERE Contraseña='$contrasenia_actual' AND  ID_Usuario='$nik'");
                $row = mysqli_fetch_assoc($consulta);
               if (mysqli_num_rows($consulta) == 0 ) {
                echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>La Contraseña actual no coincide con nuestros registros</div>';
                
               }else{

                  
                   
                    $update = mysqli_query($con, "UPDATE tbl_usuario SET Contraseña='$contrasenia' WHERE ID_Usuario='$nik'");
                   if($update){
                    $id_usuario= $_SESSION['ID_Usuario'];
                      $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                       VALUES ('$id_usuario',2,'Update','SE ACTUALIZÓ UN USUARIO')");
                        echo "<script type='text/javascript'>
                           alert('Prueba Tú nueva contraseña');
                            window.location.href= 'login/Login.php';
                        </script>";
                     }else{
                 	echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'.$contrasenia.'</div>';
                     }
               }
			}
		?>
    <!--::regervation_part start::-->
<section class="regervation_part section_padding">
        <div class="container">
            <div class="row align-items-center regervation_content">
                <div class="col-lg-7">
                    <div class="regervation_part_iner">
                        <form method="POST" action="" autocomplete="off"  >
                            <h2>Cambio de Contraseña</h2>
                            <div class="form-row">
                                
                               
                            <div class="form-group col-md-6">
                            <input type="text" class="form-control" name="nombre_usuario" title="Nombre de usuario" value="<?php echo $row['Nom_Usuario']?>" placeholder="Ingrese una contraseña Actual" readonly>
                                </div>                                          
                                <div class="input-group col-md-6">    
                                    <input id="contra_actual" type="password" class="form-control"  name="contra_actual" placeholder="INGRESE SU CONTRASEÑA ACTUAL"  autocomplete="off" >
                                    <input type="checkbox" onclick="myfunctio()"><a>Ver contraseña</a>
                                </div>                                          
                                <div class="input-group col-md-6">
                                    <input id="contra_nueva" type="password" class="form-control" name="Ncontraseña" minlength="8" maxlength="15" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúsculas, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15." minlength="8" maxlength="15" placeholder="INGRESE SU NUEVA CONTRASEÑA"  autocomplete="off" >
                                    <input type="checkbox" onclick="myfunction()"><a>Ver contraseña</a>
                                </div>
                                <div class="input-group col-md-6">
                                    <input id="confirmar_contra" type="password" class="form-control" name="Ccontraseña" minlength="8" maxlength="15"  pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" onkeyup="validar()" title="Debe contener letras mayúsculas, minúsculas, números numeros y caracteres especiales. Mínimo de 8 y máximo de 15." minlength="8" maxlength="15"  placeholder="CONFIRME SU NUEVA CONTRASEÑA "  autocomplete="off" >
                                    <input type="checkbox" onclick="myfuncti()"><a>Ver contraseña</a>
                                    <p  id="confirmar" class="text-danger d-none">Contraseña no coinciden</p>
                                </div>
                                <br>
                                <br>
                                <br>
                    
                                <div class="regerv_btn">
                                    <button id="btn_guarda" type="submit" name="save" class="btn_2 d-none"  >Guardar</button>
                                    <a href="Index.php" class="btn_2">Cancelar</a>
                                    
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
    <script type="text/javascript">
        function myfunction(){
            var x = document.getElementById("contra_nueva");
            if (x.type==="password") {
                x.type="text";
            } else {
                x.type="password";
            }
        }
    </script>   

    <script type="text/javascript">
        function myfunctio(){
            var x = document.getElementById("contra_actual");
            if (x.type==="password") {
                x.type="text";
            } else {
                x.type="password";
            }
        }
    </script>  

    <script type="text/javascript">
        function myfuncti(){
            var x = document.getElementById("confirmar_contra");
            if (x.type==="password") {
                x.type="text";
            } else {
                x.type="password";
            }
        }
    </script>  

    <script>
    document.getElementById("contra_actual").addEventListener('keyup', contaseña);
    document.getElementById("contra_nueva").addEventListener('keyup', contaseña);
    document.getElementById("confirmar_contra").addEventListener('keyup', contaseña);
    function contaseña(e) {
      let contenido = e.target.value;
      e.target.value = contenido.replace(" ", "");
    }
    </script>
</body>

</html>