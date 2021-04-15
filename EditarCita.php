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
                            <h2>Editar Citas</h2>
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
            $sql = mysqli_query($con, "SELECT tbl_citas.ID_Cita,	
				tbl_pacientes.Nom_Paciente,
				tbl_citas.Fec_Creacion,
                tbl_especialidad.ID_Especialidad,
				tbl_especialidad.Descripcion_Espec,
				tbl_empleado.Nom_Empleado,
				tbl_citas.Fec_Atencion,	
				tbl_citas.Hora_Atencion,	
                tbl_citas.Precio,
				tbl_estado_cita.Descripcion_Est_cita,
				tbl_estado_cita.ID_Estado FROM tbl_citas 
				INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
				INNER JOIN tbl_especialidad on tbl_citas.ID_Especialidad = tbl_especialidad.ID_especialidad
				INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
				INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado WHERE ID_Cita='$nik'");
				if(mysqli_num_rows($sql) == 0){
                    header("Location: Cita.php");
                }else{
                    $row = mysqli_fetch_assoc($sql);
                }
                if(isset($_POST['save'])){
                    $fecha_atenc = mysqli_real_escape_string($con,(strip_tags($_POST['fecha_atenc'],ENT_QUOTES)));
                    $hora_atenc = mysqli_real_escape_string($con,(strip_tags($_POST['hora_atenc'],ENT_QUOTES)));
                    $precio = mysqli_real_escape_string($con,(strip_tags($_POST['precio'],ENT_QUOTES)));

                    $update = mysqli_query($con, "UPDATE tbl_citas SET Fec_Atencion='$fecha_atenc', Hora_Atencion='$hora_atenc', Precio='$precio' WHERE ID_Cita='$nik'") or die(mysqli_error());
                    if($update){
                        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',7,'Update','SE ACTUALIZÓ UNA CITA')") or die(mysqli_error());
                        echo "<script type='text/javascript'>
                            alert('La cita ha sido modificada exitosamente');
                            window.location.href= 'Cita.php';
                        </script>";
                    }else{
                        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
                    }
                }
            ?>
    <!-- our depertment part start-->
    <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                            <form method="POST" action="" autocomplete="off">
                            <h2>Editar una cita</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NomPac" rows="6" value="<?php echo $row ['Nom_Paciente'];?>" placeholder="Nombre de Paciente" readonly name="NombPaciente">
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="CargoEm" name="Especialidad" disabled="true" required>
                                        <option value="<?php echo $row ['ID_Especialidad']; ?>"><?php echo $row ['Descripcion_Espec']; ?></option>
                                        <?php
                                          $dato= $row ['ID_Especialidad'];
                                          $sql=mysqli_query($con,"SELECT * FROM tbl_especialidad WHERE ID_Especialidad<>'$dato'");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Especialidad']."'>".$fila['Descripcion_Espec']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="input-group date form-control" value="<?php echo $row ['Fec_Atencion']; ?>" date="" data-date-format="dd-mm-yyyy" id="FechaAten" onkeypress="return solonumerosfecha(event)" maxlength="10" placeholder="Fecha de atención" name="fecha_atenc" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="time" id="default-picker" class="form-control" value="<?php echo $row ['Hora_Atencion']; ?>" onkeypress="return solonumeros(event)" placeholder="Seleccione la hora" name="hora_atenc" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" id="Precio" value="<?php echo $row ['Precio'];?>" maxlength="5" onkeypress="return solonumeros(event)" placeholder="Precio" name="precio" required>
                                </div>
                            </div>
                            <div class="regerv_btn">
                                <a><button type="submit" name="save" class="btn_2" style="color: #FFFF;">Ingresar</button></a>
                                <a href="Cita.php" ><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a>                                
                            </div>
                            
                            </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- our depertment part end-->

    <!-- footer part start-->
    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    <script>
    document.getElementById("Precio").addEventListener('keyup', sanear);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace(" ", "");
    }
    </script>
</body>

</html>