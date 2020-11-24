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
                            <h2>Agregar Cita</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    <!-- our depertment part start-->
    <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                            <form method="POST" action="GuardarCita.php" autocomplete="off">
                            <h2>Ingresar una cita</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="IDPac" placeholder="Identidad del Paciente(sin guiones)" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NomPac" rows="4" placeholder="Nombre de Paciente" readonly name="NombPaciente">
                                </div>
                                <div class="regerv_btn col-md-12">
                                    <a type="button" class="btn_2" id="identidad" style="color: #FFFF;" onclick="consultar_paciente()" >Consultar</a>
                                </div>

                                <script type="text/javascript" src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
                                <script type="text/javascript">
                                
                                    function consultar_paciente() {
                                        var identidad = document.getElementById('IDPac').value;
                                        var enlace='consulta_paciente.php';
                                        $.ajax({
                                            type:'POST',
                                            url:enlace,
                                            data: 'id='+identidad,
                                            success:function(response){
                                                document.getElementById('NomPac').value = response;
                                                // alert(response);
                                            }

                                        });
                                    }
                                
                                </script>

                                <br>
                                <br>
                                <br>
                                <br>
                                <div class="form-group col-md-12">
                                    <select class="form-control" id="CargoEm" name="Especialidad" required>
                                        <option value="0" selected>Seleccione un Servicio</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_especialidad where ID_Especialidad <> 8");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_especialidad']."'>".$fila['Descripcion_espec']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="input-group date form-control" date="" data-date-format="dd-mm-yyyy" id="FechaAten" placeholder="Fecha de atención" name="fecha_atenc" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="time" id="default-picker" class="form-control" placeholder="Seleccione la hora" name="hora_atenc" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Precio" placeholder="Precio" name="precio" required>
                                </div>
                            </div>
                            <div class="regerv_btn">
                                <a><button type="submit" name="add" class="btn_2" style="color: #FFFF;">Ingresar</button></a>
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
</body>

</html>