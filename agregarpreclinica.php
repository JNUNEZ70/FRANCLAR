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
                            <h2>Preclínica</h2>
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
			if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){

				$pa = mysqli_real_escape_string($con,(strip_tags($_POST['PA'],ENT_QUOTES)));
                $fc = mysqli_real_escape_string($con,(strip_tags($_POST['FC'],ENT_QUOTES)));
                $fr = mysqli_real_escape_string($con,(strip_tags($_POST['FR'],ENT_QUOTES)));
                $temp = mysqli_real_escape_string($con,(strip_tags($_POST['Temp'],ENT_QUOTES)));
                $pam = mysqli_real_escape_string($con,(strip_tags($_POST['PAM'],ENT_QUOTES)));
                $glucom = mysqli_real_escape_string($con,(strip_tags($_POST['Glucom'],ENT_QUOTES)));
                $peso = mysqli_real_escape_string($con,(strip_tags($_POST['peso'],ENT_QUOTES)));
                $talla = mysqli_real_escape_string($con,(strip_tags($_POST['talla'],ENT_QUOTES)));
                
				
				$insert = mysqli_query($con, "INSERT INTO tbl_preclinica (ID_Cita, PA, FC, FR, Temp, PAM, Glucometria, Peso, Talla) 
                                       VALUES ( '$nik' , '$pa' , '$fc' , '$fr' , '$temp' , '$pam' , '$glucom' , '$peso' , '$talla')") or die(mysqli_error());
                $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 2 WHERE ID_Cita='$nik'") or die(mysqli_error());
                if($insert and $update){                    
                     $id_usuario= $_SESSION['ID_Usuario'];
                     $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                     VALUES ('$id_usuario',6,'Insert','SE REALIZO PRECLINICA')") or die(mysqli_error());
                    echo "<script type='text/javascript'>
                        alert('Pre-clínica almacenada correctamente');
                        window.location.href= 'Preclinica.php';
                    </script>";
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, Preclínica fallida</div>';
                }
			}
		?>

    <!--::regervation_part start::-->
    <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                            <form method="POST" action="" autocomplete="off">                                                      
                            <div class="form-row">
                            <h2 class="col-md-12">Datos del Paciente</h2>                                  
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
                            <h2 class="col-md-12">Datos de la Preclínica</h2>                                
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="PA" id="PA" placeholder="Presión Arterial(mmHg)" onkeypress="return solonumeros_conpuntoypleca(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="FC" id="FC" placeholder="Frecuencia Cardiaca(Lpm)" onkeypress="return solonumeros_conpunto(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="FR" id="FR" placeholder="Frecuencia Respiratoria(Rpm)" onkeypress="return solonumeros_conpunto(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="Temp" id="Temperatura" placeholder="Temperatura(°C)" onkeypress="return solonumeros_conpunto(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="PAM" id="PAM" placeholder="Presión Arterial Media" onkeypress="return solonumeros_conpunto(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="Glucom" id="Glucometria" placeholder="Glucometría(Mg/dl)" onkeypress="return solonumeros_conpuntoypleca(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="peso" id="Peso" placeholder="Peso(Kg)" onkeypress="return solonumeros_conpunto(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" name="talla" id="Talla" placeholder="Talla(Mts)" onkeypress="return solonumeros_conpunto(event)" required>
                                </div>
                                <div class="regerv_btn col-md-12">
                                    <a><button type="submit" name="save" class="btn_2">Guardar</button></a>
                                    <a href="Preclinica.php" ><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a>     
                                </div>
                            </div>
                        </form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::regervation_part end::-->

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