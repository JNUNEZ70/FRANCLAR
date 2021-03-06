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
                                <div class="input-group col-md-6">
                                    <input onkeyup="consultar_paciente()" type="text" class="form-control" id="IDPac" onkeypress="return solonumeros(event)" maxlength="13" title="Identidad del Paciente (sin guiones)" placeholder="Identidad del Paciente (sin guiones)" required>
                                    <!-- <span class="input-group-btn">
                                        <button type="button" id="identidad" class="btn btn-default" onclick="consultar_paciente()">
                                            <span class="input-group-addon glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>  -->
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NomPac" name="NombPaciente" rows="4" title="Nombre del paciente" placeholder="Nombre del Paciente" readonly>
                                </div>

                                <script type="text/javascript" src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
                                                         
                                <script>
                                    function consultar_paciente() {
                                            var identidad = document.getElementById('IDPac').value;
                                            var enlace='consulta_paciente.php';
                                            
                                            
                                            $.ajax({
                                                type:'POST',
                                                url:enlace,
                                                data: 'id='+identidad,
                                                success:function(response){
                                                    document.getElementById('NomPac').value = response;
                                                    //alert(response);
                                                    btnAgregar();
                                                }

                                            });
                                            $.ajax({
                                                type:'POST',
                                                url:enlace,
                                                data: 'id2='+identidad,
                                                success:function(response){
                                                    document.getElementById('id_paciente').value = response;
                                                    //alert(response);
                                        
                                                }

                                            });


                                    }
                                        
                                </script>

                                <script>

                                    function btnAgregar() {
                                                let identidad = document.getElementById('IDPac'),
                                                $nombre=document.getElementById('NomPac').value,
                                                $boton_paciente=document.getElementById('btn_registra_paciente'),
                                                $boton_guardar=document.getElementById('guardar');
                                                if ($nombre=="La identidad no existe") {
                                                        
                                                    $boton_paciente.classList.remove("d-none");
                                                    $boton_guardar.classList.add("d-none");
                                                
                                                    }else {
                                                        
                                                        $boton_guardar.classList.remove("d-none");
                                                        $boton_paciente.classList.add("d-none");
                                                    }
                                        }           

                                </script>

                                <br>

                                <div class="form-group col-md-12">
                                    <select class="form-control" id="espec" name="Especialidad" onchange="doctores_precio(value)" required>
                                        <option value="0" selected>Seleccione un Servicio</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_especialidad where ID_Especialidad <> 8 and ID_Especialidad <> 9");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Especialidad']."'>".$fila['Descripcion_Espec']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <p class="col-md-12">Seleccione el Doctor a asignar</p>
                                <div class="form-group col-md-12" id="selectdoctor">
                                    
                                </div>
                                
                                <script type="text/javascript">
                                    
                                    function doctores_precio(espec) {
                                        //alert(espec);
                                        var id_espec = espec;
                                        var enlace='consulta_paciente.php';
                                        
                                        var fila = 0;
                                    
                                        $.ajax({
                                            type:'POST',
                                            url:enlace,
                                            data: 'id_espec_precio='+id_espec,
                                            success:function(response){
                                                document.getElementById('Precio').value = response;
                                                //alert(response);
                                
                                            }

                                        });
                                         $.ajax({
                                             type:'POST',
                                             url:enlace,
                                             data: 'id_espec_doctor='+id_espec,
                                             success:function(response){                                                 
                                                 $('#selectdoctor').html(response);                                                 
                                             }

                                         });
                                    }
                                </script>

                                <div class="form-group col-md-4">
                                    <!-- <input type="text" class="input-group date form-control" date="" data-date-format="dd-mm-yyyy" id="FechaAten" onkeypress="return solonumerosfecha(event)" maxlength="10" placeholder="Fecha de atención" name="fecha_atenc" required> -->
                                    <input  type="date" class="input-group  form-control"   id="FechaAten" placeholder="Fecha de atención" title="Fecha de atención" name="fecha_atenc" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="time" id="default-picker" class="form-control" placeholder="Seleccione la hora" title="Seleccione la hora" name="hora_atenc" onkeypress="return solonumeros(event)" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" id="Precio" name="precio" maxlength="5" onkeypress="return solonumeros(event)" title="Precio" placeholder="Precio" required>
                                </div>
                                
                            </div>

                            <input type="text"  class="d-none" id="id_paciente" name="id_paciente">


                            <div class="regerv_btn">
                                    <a><button id="guardar" type="submit" name="save" class="btn_2">Guardar</button></a>
                                    <a href="Cita.php" ><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a> 
                                    <a href="agregarpaciente.php" ><button id="btn_registra_paciente" type="button" name="save" class="btn_2 btn-success d-none">Registrar Paciente</button></a>
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
    document.getElementById("IDPac").addEventListener('keyup', sanear);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.replace(" ", "");
    }

    </script>
    <script>
         const $fechaAtencion=  document.getElementById("FechaAten");
       $fechaAtencion.addEventListener("click",()=>{
        fechaMinima($fechaAtencion); 
        // fechaMaxima($fechaAtencion); 
        
        });
        // $fechaAtencion.addEventListener("click",()=>{
        // fechaMinima($fechaAtencion);  
        // });
    </script>
</body>

</html>