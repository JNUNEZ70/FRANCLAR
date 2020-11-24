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
                            <h2>Consultas</h2>
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
            tbl_pacientes.cedula,
            tbl_pacientes.ID_Paciente,
            tbl_citas.Fec_Creacion,
            tbl_especialidad.Descripcion_espec,
            tbl_empleado.Nom_Empleado,
            tbl_citas.Fec_Atencion,	
            tbl_citas.Hora_Atencion,	
            tbl_estado_cita.Descripcion_est_cita, 
            timestampdiff(YEAR,tbl_pacientes.Fec_Nacimiento,now()) AS Edad FROM tbl_citas 
            INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
            INNER JOIN tbl_especialidad on tbl_citas.ID_especialidad = tbl_especialidad.ID_especialidad
            INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
            INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado WHERE ID_Cita='$nik'");
            $sql2 = mysqli_query($con, "SELECT * FROM tbl_preclinica WHERE ID_Cita='$nik'");
			if(mysqli_num_rows($sql) == 0 or mysqli_num_rows($sql2) == 0){
				echo"error al hacer consulta";
			}else{
                $row = mysqli_fetch_assoc($sql);
                $row2 = mysqli_fetch_assoc($sql2);
            }
            
            

			// if(isset($_POST['save'])){
            //     if(isset($_FILES['foto']['name'])){
            //         $diagnostico = mysqli_real_escape_string($con,(strip_tags($_POST['diagnostico'],ENT_QUOTES)));
            //         $anamnesis = mysqli_real_escape_string($con,(strip_tags($_POST['anamnesis'],ENT_QUOTES)));
            //         $exam_fisico = mysqli_real_escape_string($con,(strip_tags($_POST['exam_fisico'],ENT_QUOTES)));
            //         $tratamiento = mysqli_real_escape_string($con,(strip_tags($_POST['tratamiento'],ENT_QUOTES)));
            //         $paciente = $row['ID_Paciente'];
            //         $tipoimagen = $_FILES['foto']['type'];
            //         $tamañoarchivo = $_FILES['foto']['size'];
            //         $imagensubida = fopen($_FILES['foto']['tmp_name'],'r');
            //         $binariosimagen = fread($imagensubida,$tamañoarchivo);
            //         $binariosimagen = mysqli_real_escape_string($con,$binariosimagen);
                                
                    
            //         $insert = mysqli_query($con, "INSERT INTO tbl_consultas (ID_Cita, Diagnostico, Anamnesis, Exam_Fisico, Tratamiento) 
            //                             VALUES ( '$nik' , '$diagnostico' , '$anamnesis' , '$exam_fisico' , '$tratamiento')") or die(mysqli_error());
            //         $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 3 WHERE ID_Cita='$nik'") or die(mysqli_error());
            //         $insert_expe = mysqli_query($con, "INSERT INTO tbl_expediente (ID_paciente, ID_Cita, imagen, tipo_imagen) 
            //                             VALUES ( '$paciente' , '$nik' , '$binariosimagen' , '$tipoimagen')") or die(mysqli_error());
            //         if($insert and $update and $insert_expe){                    
            //             // $id_usuario= $_SESSION['ID_Usuario'];
            //             // $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
            //             // VALUES ('$id_usuario',9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD')") or die(mysqli_error());
            //             echo "<script type='text/javascript'>
            //                 alert('Consulta almacenada correctamente');
            //                 window.location.href= 'Consulta.php';
            //             </script>";
            //         }else{
            //             echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, Preclínica fallida</div>';
            //         }
            //     }
			// }
		?>
    
    <!-- our depertment part start-->
    <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                            <form method="POST" action="historia_clinica.php" autocomplete="off" enctype="multipart/form-data">
                            <h2>Datos de la consulta</h2>
                                <p class="col-md-12">Paciente:</p>                                                           
                                <div class="form-group col-md-12">                                    
                                    <input type="text" class="form-control" value="<?php echo $row ['Nom_Paciente']; ?>" id="Nombre_pac" readonly>
                                </div>
                                <p class="col-md-6">Identidad:</p> 
                                <p class="col-md-6">Edad:</p>    
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" value="<?php echo $row ['cedula']; ?>" id="ID_pac" readonly>
                                </div>                                
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Edad_pac" value="<?php echo $row ['Edad'] ." Años"; ?>" readonly>
                                </div>
                                <p class="col-md-6">Especialidad:</p>
                                <p class="col-md-6">Doctor Asignado:</p>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Especialidad" value="<?php echo $row ['Descripcion_espec']; ?>" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Doctor" value="<?php echo $row ['Nom_Empleado']; ?>" readonly>
                                </div>
                                <p class="col-md-4">PA:</p>
                                <p class="col-md-4">FC:</p>
                                <p class="col-md-4">FR:</p>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="PA" id="PA" value="<?php echo $row2 ['PA']; ?>" readonly>
                                </div>                                
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="FC" id="FC" value="<?php echo $row2 ['FC']; ?>" readonly>
                                </div>                                
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="FR" id="FR" value="<?php echo $row2 ['FR']; ?>" readonly>
                                </div>
                                <p class="col-md-4">Temperatura:</p>
                                <p class="col-md-4">PAM:</p>
                                <p class="col-md-4">Glucometría:</p>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="Temp" id="Temperatura" value="<?php echo $row2 ['Temp']; ?>" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="PAM" id="PAM" value="<?php echo $row2 ['PAM']; ?>" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="Glucom" id="Glucometria" value="<?php echo $row2 ['Glucometria']; ?>" readonly>
                                </div>
                                <p class="col-md-6">Peso:</p>
                                <p class="col-md-6">Talla:</p>                                
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="peso" id="Peso" value="<?php echo $row2 ['Peso']; ?>" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="talla" id="Talla" value="<?php echo $row2 ['Talla']; ?>" readonly>
                                </div>
                                                        
                                
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Anamnesis" name="anamnesis" rows="4"
                                        placeholder="Anamnesis"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                <textarea class="form-control" id="Examenfisico" name="exam_fisico" rows="4"
                                        placeholder="Examen Físico"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                <textarea class="form-control" id="diagnostico" name="diagnostico" rows="4"
                                        placeholder="Diagnóstico"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Tratamiento" name="tratamiento" rows="4"
                                        placeholder="Tratamiento"></textarea>
                                </div>
                                <p style="color: black;">Imagen:</p>
                                <div class="form-group col-md-12">
                                    <input type="file" name="foto">
                                </div>
                                
                                <!-- <div class="form-group col-md-4">
                                    <input type="text" class="form-control" id="ProCita" placeholder="Próxima Consulta">
                                </div> -->
                                <!-- <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="IDConsulta" placeholder="Id Consulta">
                                </div> -->
                            
                                <div class="regerv_btn">
                                    <a><button type="submit" name="save" class="btn_2">Guardar</button></a>
                                    <a href="Consulta.php" ><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a> 
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
</body>

</html>