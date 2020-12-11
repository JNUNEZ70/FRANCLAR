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
                            <h2>Editar Paciente</h2>
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
            $sql = mysqli_query($con, "SELECT tbl_pacientes.ID_Paciente,	
            tbl_pacientes.Nom_Paciente,
            tbl_pacientes.cedula,
            tbl_pacientes.Fec_Nacimiento,
            tbl_pacientes.Edad,	
            tbl_pacientes.Email,	
            tbl_pacientes.Tel_Paciente,	
            tbl_pacientes.Cel_Paciente,
            tbl_pacientes.Dir_Paciente,
            tbl_sexo.ID_Sexo,
            tbl_sexo.Descripcion_sexo,
            tbl_estado_civil.ID_Est_Civil,	
            tbl_estado_civil.Descripcion_est_civil,
            tbl_religion.ID_Religion,
            tbl_religion.Descripcion_Religion,
            tbl_tipo_sangre.ID_Tipo_Sangre,
            tbl_tipo_sangre.Descripcion_Sangre,
            tbl_pacientes.Contacto_Emergencia,	
            tbl_parentesco.ID_Parentesco,
            tbl_parentesco.Parentesco,
            tbl_pacientes.Tel_Emergencia,	
            tbl_pacientes.Cel_Emergencia,
            tbl_pacientes.Antecedentes_Personales,
            tbl_pacientes.Antecedentes_Hospitalarios,	
            tbl_pacientes.Antecedentes_Alergicos,
            tbl_pacientes.Antecedentes_Familiares,
            tbl_pacientes.Habitos FROM tbl_pacientes 
            INNER JOIN tbl_sexo on tbl_pacientes.ID_Sexo = tbl_sexo.ID_Sexo
            INNER JOIN tbl_estado_civil on tbl_pacientes.ID_Est_Civil = tbl_estado_civil.ID_Est_Civil
            INNER JOIN tbl_parentesco on tbl_pacientes.ID_Parentesco = tbl_parentesco.ID_Parentesco
            INNER JOIN tbl_religion on tbl_pacientes.ID_Religion = tbl_religion.ID_Religion
            INNER JOIN tbl_tipo_sangre on tbl_pacientes.ID_Tipo_Sangre = tbl_tipo_sangre.ID_Tipo_Sangre WHERE ID_Paciente='$nik'");
            if(mysqli_num_rows($sql) == 0){
				header("Location: index.php");
			}else{
				$row = mysqli_fetch_assoc($sql);
			}
			if(isset($_POST['save'])){
                $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['NomPac'],ENT_QUOTES)));
                $numeroid = mysqli_real_escape_string($con,(strip_tags($_POST['NumIDPac'],ENT_QUOTES)));
                $fechan = mysqli_real_escape_string($con,(strip_tags($_POST['FecPac'],ENT_QUOTES)));
                $edad = mysqli_real_escape_string($con,(strip_tags($_POST['EdadPac'],ENT_QUOTES)));
                $email = mysqli_real_escape_string($con,(strip_tags($_POST['EmailPac'],ENT_QUOTES)));
                $telefono = mysqli_real_escape_string($con,(strip_tags($_POST['TelPac'],ENT_QUOTES)));
                $celular = mysqli_real_escape_string($con,(strip_tags($_POST['CelPac'],ENT_QUOTES)));
                $direccion = mysqli_real_escape_string($con,(strip_tags($_POST['DirPac'],ENT_QUOTES)));
                $sexo = mysqli_real_escape_string($con,(strip_tags($_POST['GenPac'],ENT_QUOTES)));
                $estado_civil = mysqli_real_escape_string($con,(strip_tags($_POST['CivilPac'],ENT_QUOTES)));
                $religion = mysqli_real_escape_string($con,(strip_tags($_POST['RelPac'],ENT_QUOTES)));
                $sangre = mysqli_real_escape_string($con,(strip_tags($_POST['SangrePac'],ENT_QUOTES)));
                $contacto = mysqli_real_escape_string($con,(strip_tags($_POST['ConEmerg'],ENT_QUOTES)));
                $parentesco = mysqli_real_escape_string($con,(strip_tags($_POST['Parentesco_Em'],ENT_QUOTES)));
                $tel_emergencia = mysqli_real_escape_string($con,(strip_tags($_POST['TelEmer'],ENT_QUOTES)));
                $cel_emergencia = mysqli_real_escape_string($con,(strip_tags($_POST['CelEmer'],ENT_QUOTES)));
                $ant_personales = mysqli_real_escape_string($con,(strip_tags($_POST['AntPersonales'],ENT_QUOTES)));
                $ant_hospitalarios = mysqli_real_escape_string($con,(strip_tags($_POST['AntHospitalarios'],ENT_QUOTES)));
                $ant_alergicos = mysqli_real_escape_string($con,(strip_tags($_POST['AntAlergicos'],ENT_QUOTES)));
                $ant_familiares = mysqli_real_escape_string($con,(strip_tags($_POST['AntFamiliares'],ENT_QUOTES)));
                $habitos = mysqli_real_escape_string($con,(strip_tags($_POST['Habito'],ENT_QUOTES)));
 
                $update = mysqli_query($con, "UPDATE tbl_pacientes SET Nom_Paciente='$nombre', cedula='$numeroid', Fec_Nacimiento='$fechan', Edad='$edad', Email='$email', Tel_Paciente='$telefono', Cel_Paciente='$celular', Dir_Paciente='$direccion', ID_Sexo='$sexo', ID_Est_Civil='$estado_civil', ID_Religion='$religion', ID_Tipo_Sangre='$sangre', Contacto_Emergencia='$contacto', ID_Parentesco='$parentesco', Tel_Emergencia='$tel_emergencia', Cel_Emergencia='$cel_emergencia', Antecedentes_Personales='$ant_personales', Antecedentes_Hospitalarios='$ant_hospitalarios', Antecedentes_Alergicos='$ant_alergicos', Antecedentes_Familiares='$ant_familiares', Habitos='$habitos' WHERE ID_Paciente='$nik'") or die(mysqli_error($con));
                if($update){
                    $id_usuario= $_SESSION['ID_Usuario'];
                    $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                    VALUES ('$id_usuario',4,'Insert','SE EDITO UN PACIENTE')") or die(mysqli_error());
                    echo "<script type='text/javascript'>
                    alert('El paciente ha sido modificado exitosamente');
                    window.location.href= 'Pacientes.php';
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
                            <h2>Datos Personales</h2>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="Nombre" name="NomPac" value="<?php echo $row ['Nom_Paciente']; ?>" onkeypress="return soloLetras(event)" maxlength="255" placeholder="Nombre" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NumeroID" name="NumIDPac" value="<?php echo $row ['cedula']; ?>" onkeypress="return solonumeros(event)" maxlength="13" placeholder="Número de identidad" required readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" id="FechaN" name="FecPac" class="input-group date form-control" date="" data-date-format="dd-mm-yyyy" onkeypress="return solonumerosfecha(event)" maxlength="10" value="<?php echo $row ['Fec_Nacimiento']; ?>" placeholder="Fecha de nacimiento" required readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Edad" name="EdadPac" value="<?php echo $row ['Edad']; ?>" onkeypress="return solonumeros(event)" maxlength="3" placeholder="Edad" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" id="Email" name="EmailPac" value="<?php echo $row ['Email']; ?>" onkeypress="return Correo(event)" maxlength="50" placeholder="Email" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="tel" class="form-control" id="Telefono" name="TelPac" value="<?php echo $row ['Tel_Paciente']; ?>" onkeypress="return solonumeros(event)" maxlength="8" placeholder="Teléfono fijo">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Celular" name="CelPac" value="<?php echo $row ['Cel_Paciente']; ?>" onkeypress="return solonumeros(event)" maxlength="8" placeholder="Celular" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="Direccion" name="DirPac" value="<?php echo $row ['Dir_Paciente']; ?>" maxlength="255" placeholder="Dirección" required>
                                </div>
                                <h2>Datos Generales</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Genero" name="GenPac" readonly required>
                                    <option value="<?php echo $row ['ID_Sexo']; ?>"><?php echo $row ['Descripcion_sexo']; ?></option>
                                        <?php
                                          $dato= $row ['ID_Sexo'];
                                          $sql=mysqli_query($con,"SELECT * FROM tbl_sexo WHERE ID_Sexo<>'$dato'");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Sexo']."'>".$fila['Descripcion_sexo']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="EstadoC" name="CivilPac" required>
                                        <option value="<?php echo $row ['ID_Est_Civil']; ?>"><?php echo $row ['Descripcion_est_civil']; ?></option>
                                        <?php
                                          $dato= $row ['ID_Est_Civil'];
                                          $sql=mysqli_query($con,"SELECT * FROM tbl_estado_civil WHERE ID_Est_Civil<>'$dato'");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Est_Civil']."'>".$fila['Descripcion_est_civil']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Religion" name="RelPac" required>
                                        <option value="<?php echo $row ['ID_Religion']; ?>"><?php echo $row ['Descripcion_Religion']; ?></option> 
                                        <?php
                                          $dato= $row ['ID_Religion'];
                                          $sql=mysqli_query($con,"SELECT * FROM tbl_religion WHERE ID_Religion<>'$dato'");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Religion']."'>".$fila['Descripcion_Religion']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="TSangre" name="SangrePac" required>
                                        <option value="<?php echo $row ['ID_Tipo_Sangre']; ?>"><?php echo $row ['Descripcion_Sangre']; ?></option>
                                        <?php
                                          $dato= $row ['ID_Tipo_Sangre'];
                                          $sql=mysqli_query($con,"SELECT * FROM tbl_tipo_sangre WHERE ID_Tipo_Sangre<>'$dato'");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Tipo_Sangre']."'>".$fila['Descripcion_Sangre']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                
                                <h2>Contacto de emergencia</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NombreEmer" name="ConEmerg" value="<?php echo $row ['Contacto_Emergencia']; ?>" maxlength="40" onkeypress="return soloLetras(event)" placeholder="Nombre de contacto" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Parentesco" name="Parentesco_Em" required>
                                        <option value="<?php echo $row ['ID_Parentesco']; ?>"><?php echo $row ['Parentesco']; ?></option>
                                        <?php
                                          $dato= $row ['ID_Parentesco'];
                                          $sql=mysqli_query($con,"SELECT * FROM tbl_parentesco WHERE ID_Parentesco<>'$dato'");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Parentesco']."'>".$fila['Parentesco']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="TelefonoEmer" name="TelEmer" value="<?php echo $row ['Tel_Emergencia']; ?>" maxlength="8" onkeypress="return solonumeros(event)" placeholder="Teléfono fijo">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="CelularEmer" name="CelEmer" value="<?php echo $row ['Cel_Emergencia']; ?>" maxlength="8" onkeypress="return solonumeros(event)" placeholder="Celular" required>
                                </div>

                                <h2>Antecedentes</h2>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Personales" name="AntPersonales" 
                                    maxlength="500" placeholder="Personales"><?php echo $row ['Antecedentes_Personales'] ?></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Hospitalarios" name="AntHospitalarios"  
                                    maxlength="500" placeholder="Hospitalarios"><?php echo $row ['Antecedentes_Hospitalarios'] ?> </textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Alergicos" name="AntAlergicos"  
                                    maxlength="500" placeholder="Alérgicos"><?php echo $row ['Antecedentes_Alergicos'] ?> </textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Familiares" name="AntFamiliares"  
                                    maxlength="500" placeholder="Familiares"><?php echo $row ['Antecedentes_Familiares'] ?></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Habitos" name="Habito"  
                                    maxlength="500" placeholder="Hábitos"><?php echo $row ['Habitos'] ?></textarea>
                                </div>
                                <div class="regerv_btn">
                                    <button type="submit" name="save" class="btn_2">Guardar</button>
                                    <a href="Pacientes.php" class="btn_2">Cancelar</a>
                                </div>
                            </div>
                        </form>
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
    <script>
    document.getElementById("Nombre").addEventListener('keyup',sanear2);
    document.getElementById("Direccion").addEventListener('keyup', sanear2);
    document.getElementById("NombreEmer").addEventListener('keyup',sanear2);
    document.getElementById("Telefono").addEventListener('keyup', sanear);
    document.getElementById("Celular").addEventListener('keyup', sanear);
    document.getElementById("NumeroID").addEventListener('keyup', sanear);
    document.getElementById("Edad").addEventListener('keyup', sanear);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace(" ", "");
    }
    function sanear2(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace("  ", " ");
    }
    </script>
    <script>
    document.getElementById("NombreEmer").addEventListener('keyup',sanear2);
    document.getElementById("Parentesco").addEventListener('keyup', sanear2);
    document.getElementById("Personales").addEventListener('keyup',sanear2);
    document.getElementById("NombreEmer").addEventListener('keyup',sanear2);
    document.getElementById("Hospitalarios").addEventListener('keyup',sanear2);
    

    document.getElementById("Alergicos").addEventListener('keyup',sanear2);
    document.getElementById("Familiares").addEventListener('keyup',sanear2);
    
    document.getElementById("Habitos").addEventListener('keyup',sanear2);
    document.getElementById("TelefonoEmer").addEventListener('keyup', sanear);
    document.getElementById("CelularEmer").addEventListener('keyup', sanear);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace(" ", "");
    }
    function sanear2(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace("  ", " ");
    }
    </script>
    <script>
    document.getElementById("Email").addEventListener('keyup',sanear2);
    function sanear2(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace("  ", " ");
    }
    </script>
</body>

</html>  