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
                            <h2>Agregar Paciente</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
  
    <!--::regervation_part start::-->
    <section class="regervation_part section_padding">
        <div class="container">
            <div class="row align-items-center regervation_content">
                <div class="col-lg-7">
                    <div class="regervation_part_iner">
                        <form method="POST" action="GuardarPaciente.php" autocomplete="off"> 
                            <h2>Datos Personales</h2>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="Nombre" name="NomPac" onkeypress="return soloLetras(event)" maxlength="255" placeholder="Nombre" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NumeroID" name="NumIDPac" onkeypress="return solonumeros(event)" maxlength="13" placeholder="Número de identidad" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" id="FechaN" name="FecPac" class="input-group date form-control" date="" data-date-format="dd-mm-yyyy" placeholder="Fecha de nacimiento" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Edad" name="EdadPac" onkeypress="return solonumeros(event)" maxlength="3" placeholder="Edad" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" id="Email" name="EmailPac" maxlength="50" placeholder="Email" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="tel" class="form-control" id="Teléfono" name="TelPac" onkeypress="return solonumeros(event)" maxlength="8" placeholder="Teléfono fijo">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Celular" name="CelPac" onkeypress="return solonumeros(event)" maxlength="8" placeholder="Celular" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="Direccion" name="DirPac" maxlength="255" placeholder="Dirección" required>
                                </div>
                                <h2>Datos Generales</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Genero" name="GenPac" required>
                                        <option value="" selected>Seleccione el Genero</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_sexo");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Sexo']."'>".$fila['Descripcion_sexo']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="EstadoC" name="CivilPac" required>
                                        <option value="" selected>Seleccione el estado civil</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_estado_civil");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Est_Civil']."'>".$fila['Descripcion_est_civil']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="Religion" name="RelPac" required>
                                        <option value="" selected>Seleccione la religión</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_religion");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Religion']."'>".$fila['Descripcion_Religion']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="TSangre" name="SangrePac" required>
                                        <option value="" selected>Seleccione el tipo de sangre</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_tipo_sangre");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Tipo_Sangre']."'>".$fila['Descripcion_Sangre']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <select class="form-control" id="TPaciente" name="TipPac" required>
                                        <option value="" selected>Seleccione el tipo de pacientes</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_tipo_paciente");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_TipoPaciente']."'>".$fila['Descripcion_Tipo']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                
                                <h2>Contacto de emergencia</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NombreEmer" name="ConEmerg" maxlength="40" placeholder="Nombre de contacto" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Parentesco" name="Parentesco_Em" maxlength="20" placeholder="Parentesco" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Telefono" name="TelEmer" maxlength="8" placeholder="Teléfono fijo">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Celular" name="CelEmer" maxlength="8" placeholder="Celular" required>
                                </div>

                                <h2>Antecedentes</h2>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Personales" name="AntPersonales" rows="2"
                                    maxlength="500" placeholder="Personales"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Hospitalarios" name="AntHospitalarios" rows="2"
                                    maxlength="500" placeholder="Hospitalarios"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Alergicos" name="AntAlergicos" rows="2"
                                    maxlength="500" placeholder="Alérgicos"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Familiares" name="AntFamiliares" rows="2"
                                    maxlength="500" placeholder="Familiares"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Habitos" name="Habito" rows="2"
                                    maxlength="500" placeholder="Hábitos"></textarea>
                                </div>
                                <div class="regerv_btn">
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
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
</body>

</html>