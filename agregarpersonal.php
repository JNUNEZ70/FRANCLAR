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
                        <h2>Agregar Personal</h2>
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
                        <form method="POST" action="GuardarPersonal.php" autocomplete="off">
                            <h2>Datos Personales</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" onkeyup="mayus(this);" id="NombreEm" maxlength="50"  name="Nombre" title="Nombre" placeholder="Nombre" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" maxlength="13" onkeypress="return solonumeros(event)" id="NumeroIDEm" name="NumeroID" title="Número de identidad" placeholder="Número de identidad" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <!-- <input type="text" id="FechaNEm" name="FechaN" class="input-group date form-control" date="" data-date-format="dd-mm-yyyy" maxlength="10" onkeypress="return solonumerosfecha(event)" placeholder="Fecha de nacimiento" required> -->
                                    <input type="date"  id="FechaEmpleado" name="FechaN" class="input-group  form-control" title="Fecha de nacimiento" placeholder="Fecha de nacimiento" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="tel" class="form-control" maxlength="8" onkeypress="return solonumeros(event)" id="TelefonoEm" name="Telefono" title="Teléfono fijo" placeholder="Teléfono fijo">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="tel" class="form-control" maxlength="8" onkeypress="return solonumeros(event)" id="CelularEm" name="Celular" title="Celular" placeholder="Celular" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" onkeyup="mayus(this);"  maxlength="255" id="DireccionEm" name="Direccion" title="Dirección" placeholder="Dirección" required>
                                </div>
                                <h2>Datos Generales</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="SexoEm" name="Sexo" required>
                                        <option value="0">Seleccione el sexo</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_sexo");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Sexo']."'>".$fila['Descripcion_sexo']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6" required>
                                    <select class="form-control" id="EstadoCEm" name="EstadoC">
                                        <option value="0" selected>Seleccione su estado civil</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_estado_civil");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Est_Civil']."'>".$fila['Descripcion_est_civil']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <h2>Datos Específicos</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="CargoEm" name="Cargo" onchange="consulta_especialidad(value)" required>
                                        <option value="0" selected>Seleccione un cargo</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_cargo where ID_Cargo <> 6");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Cargo']."'>".$fila['Nomb_Cargo']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>

                                <script type="text/javascript" src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
                                                         
                                <script>
                                    function consulta_especialidad(id_cargo) {
                                            
                                            var id = id_cargo;
                                            var enlace='consulta_espec_cargo.php';                                            
                                            
                                            $.ajax({
                                                type:'POST',
                                                url:enlace,
                                                data: 'id='+id,
                                                success:function(response){
                                                    // document.getElementById('NomPac').value = response;
                                                    // alert(response);
                                                    $('#select_espec').html(response);                                                      
                                                }

                                            });                                            


                                    }
                                        
                                </script>





                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="SalarioEm" name="Salario" maxlength="6" onkeypress="return solonumeros(event)" title="Salario" placeholder="Salario" required>
                                </div>
                                <div class="form-group col-md-12" id="select_espec">
                                    <select class="form-control"  id="EspecialidadEm" name="Especialidad" required>
                                        <option value="" selected>Seleccione una especialidad</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_especialidad where ID_especialidad <> 8 and ID_especialidad <> 9");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_especialidad']."'>".$fila['Descripcion_espec']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="regerv_btn">
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <a href="Personal.php" class="btn_2">Cancelar</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::regervation_part end::-->
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
    document.getElementById("NombreEm").addEventListener('keydown',sinNumeros);
    document.getElementById("NombreEm").addEventListener('keydown',sinCaracteres);
    document.getElementById("NombreEm").addEventListener('keydown',permitirUnEspacio);
    
    document.getElementById("NumeroIDEm").addEventListener('keydown',impedirEspacios);
    document.getElementById("TelefonoEm").addEventListener('keydown',impedirEspacios);
    document.getElementById("CelularEm").addEventListener('keydown',impedirEspacios);
    document.getElementById("SalarioEm").addEventListener('keydown',impedirEspacios);
    
    
    document.getElementById("DireccionEm").addEventListener('keydown',permitirUnEspacio);
   
    
    </script>
    <script>
    const $fechaNacimiento=  document.getElementById("FechaEmpleado");
       $fechaNacimiento.addEventListener("click",()=>{
           fechaMaxima($fechaNacimiento);  
        });
        $fechaNacimiento.addEventListener("keypress",()=>{
            
            fechaMaxima($fechaNacimiento);  
        });
        $fechaNacimiento.addEventListener("blur",()=>{
            let campoEdad= document.getElementById("Edad");
            edad($fechaNacimiento.value,campoEdad) 
            
    });
    </script>
</body>

</html>