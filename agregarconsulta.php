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
    include 'script.php'
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
            tbl_pacientes.Fec_Nacimiento,
            tbl_pacientes.Dir_Paciente,
            tbl_citas.Fec_Creacion,
            tbl_especialidad.Descripcion_espec,
            tbl_especialidad.ID_especialidad,
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

            $id_paciente = $row['ID_Paciente'];
            $sql3 = mysqli_query($con, "SELECT tbl_Sexo.Descripcion_sexo, 
            tbl_estado_civil.Descripcion_est_civil FROM tbl_pacientes
            INNER JOIN tbl_sexo on tbl_pacientes.ID_Sexo = tbl_Sexo.ID_Sexo 
            INNER JOIN tbl_estado_civil on tbl_pacientes.ID_Est_Civil = tbl_estado_civil.ID_Est_Civil WHERE ID_Paciente='$id_paciente'");
            $row3 = mysqli_fetch_assoc($sql3);
            
            date_default_timezone_set('America/Mexico_City');
            $fecha = date("d-m-Y");

            $id_cita = $row['ID_Cita'];

            $expediente = ["$id_paciente","$id_cita"];

			
		?>
    
    <!-- our depertment part start-->
    <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                            <form method="POST" action="ficha_cita.php" target="h_blank" autocomplete="off" enctype="multipart/form-data" name="ficha" >
                            <h2>Datos de la consulta</h2>
                                <p class="col-md-12">Paciente:</p>                                                           
                                <div class="form-group col-md-12">                                    
                                    <input type="text" class="form-control" name="nombre_pac" value="<?php echo $row ['Nom_Paciente']; ?>" id="Nombre_pac" readonly>
                                    <p>Ver historial de paciente</p>
                                    <?php echo '<a href="ver_expediente_consulta.php?nik='.$id_paciente.'&cita='.$id_cita.'" title="ver expediente" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span></a>' ?>
                                </div>
                                <p class="col-md-6">Identidad:</p> 
                                <p class="col-md-6">Edad:</p>    
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="cedula" value="<?php echo $row ['cedula']; ?>" id="ID_pac" readonly>
                                </div>                                
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="edad_pac" id="Edad_pac" value="<?php echo $row ['Edad'] ." Años"; ?>" readonly>
                                </div>
                                <p class="col-md-6">Especialidad:</p>
                                <p class="col-md-6">Doctor Asignado:</p>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="descrip_espec" id="Especialidad" value="<?php echo $row ['Descripcion_espec']; ?>" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" name="doctor" id="Doctor" value="<?php echo $row ['Nom_Empleado']; ?>" readonly>
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
                                    <textarea class="form-control" id="Anamnesis" name="anamnesis" onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" rows="4"
                                        placeholder="Anamnesis"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                <textarea class="form-control" id="Examenfisico" name="exam_fisico" onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" rows="4"
                                        placeholder="Examen Físico"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                <textarea class="form-control" id="diagnostico" name="diagnostico" onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" rows="4"
                                        placeholder="Diagnóstico"></textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea class="form-control" id="Tratamiento" name="tratamiento" onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" rows="4"
                                        placeholder="Tratamiento"></textarea>
                                </div>
                                <p style="color: black;">Imagenes:</p>
                                <div class="form-group col-md-8" id="foto_add">
                                    <input type="file" name="foto[]">
                                </div>                                
                                <div class="form-group col-md-4">
                                    <p>Agregar otro foto</p><button type="button" id="agregar_foto" title="Agregar medicamento" class="btn btn-success btn-sm" ><span class="glyphicon glyphicon-plus" aria-hidden="true" color:white ></span></button>
                                </div>
                               
                                <!-- <div class="form-group col-md-4">
                                    <input type="text" class="form-control" id="ProCita" placeholder="Próxima Consulta">
                                </div> -->
                                <!-- <div class="form-group col-md-12">
                                    <input type="text" class="form-control" id="IDConsulta" placeholder="Id Consulta">
                                </div> -->

                                <input type="text"  class="d-none" id="id_cita" name="id_cita" value="<?php echo $nik; ?>">
                                <input type="text"  class="d-none" name="fec_nac" value="<?php echo $row ['Fec_Nacimiento']; ?>">
                                <input type="text"  class="d-none" name="fec_atencion" value="<?php echo $fecha; ?>">
                                <input type="text"  class="d-none" name="sexo" value="<?php echo $row3 ['Descripcion_sexo']; ?>">
                                <input type="text"  class="d-none" name="est_civil" value="<?php echo $row3 ['Descripcion_est_civil']; ?>">
                                <input type="text"  class="d-none" name="direccion" value="<?php echo $row ['Dir_Paciente']; ?>">
                                <input type="text"  class="d-none" name="id_paciente" value="<?php echo $id_paciente; ?>">
                                <input type="text"  class="d-none" name="id_especialidad" value="<?php echo $row ['ID_especialidad']; ?>">
                                
                                                                                               
                                <br>
                                <br>
                                
                                </form>
                                <form method="POST" action="receta.php" target="_blank" autocomplete="off" id="receta" name="receta">
                                <div class="form-group col-md-12">                              
                                <p>Agregar Medicamento</p><button type="button" id="bt_add" title="Agregar medicamento" class="btn btn-success btn-sm" ><span class="glyphicon glyphicon-plus" aria-hidden="true" color:white ></span></button>    
                                </div> 
                                <input type="text" class="form-control d-none " name="nombre_pac" value="<?php echo $row ['Nom_Paciente']; ?>" id="Nombre_pac" >
                                <input type="text" class="form-control d-none " name="nombre_pac" value="<?php echo $row ['Nom_Paciente']; ?>" id="Nombre_pac" >
                                <input type="text"  class="d-none" name="id_cita" value="<?php echo $nik; ?>">
                                <input type="text" class="form-control d-none " name="doctor" value="<?php echo $row ['Nom_Empleado']; ?>" id="doctor" >
                                

                                <table id="datatable" class="table table-striped table-hover">
                                        <thead>
                                        <tr>
                                            <th>Borrar</th>
                                            <th>Medicamento</th>
                                            <th>Dosis</th>
                                            <th>Duración</th>
                                            <th>Cantidad</th>                                                                                      
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr id="fila1">
                                            <td>
                                            
                                            <button type="button" id="bt_del" title="Eliminar medicamento" class="btn btn-danger btn-sm" ><span class="glyphicon glyphicon-trash" aria-hidden="true" color:wite ></span></a></button>
                                            </td>
                                            <td>
                                                <input onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control" name="medicamento[]" id="medicamento1">
                                            </td>		
                                            <td>
                                                <input onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control" name="dosis[]" id="dosis1">
                                            </td>
                                            <td>
                                                <input onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control" name="duracion[]" id="duracion1">  
                                            </td>
                                            <td>
                                                <input onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control cantidad" name="cantidad[]" id="cantidad">
                                            </td>
                                        
                                        </tr>
                                        </tbody>
                                    </table>
                                                                       


                                <script type="text/javascript" src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
                                
                                <script>

                                    $(document).ready(function(){
                                        $('#bt_add').click(function(){
                                            agregar_fila();
                                            });
                                        // $('#bt_del').click(function(){
                                        //     eliminar_fila(num_fila);
                                        // });
                                        $('#agregar_foto').click(function(){
                                            agregar_input();
                                            });
                                        });
                                        
                                    
                                    var cont=1;
                                    function agregar_fila() {
                                        cont++;
                                        var fila='<tr id="fila'+cont+'"><td><button type="button" id="bt_del" onclick="eliminar_fila('+cont+')" title="Eliminar medicamento" class="btn btn-danger btn-sm" ><span class="glyphicon glyphicon-trash" aria-hidden="true" color:wite ></span></a></button></td><td><input  onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control" name="medicamento[]" id="medicamento'+cont+'"></td><td><input onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control" name="dosis[]" id="dosis'+cont+'"></td><td><input  onkeypress="return alfanumerica(event)" onkeyup="sanear2(this)" type="text" class="form-control" name="duracion[]" id="duracion'+cont+'"></td><td><input onkeypress="return alfanumerica(event)"  onkeyup="sanear2(this)" type="text" class="form-control cantidad " name="cantidad[]" id="cantidad'+cont+'"></td></tr>';
                                        $('#datatable').append(fila);
                                        
                                        
                                    }

                                    function eliminar_fila(id_fila) {                                     
                                        //alert(cont);
                                        $('#fila'+id_fila).remove();
                                    }                                    
            
                                    var cont2=1;
                                    function agregar_input() {
                                        cont2++;
                                        var input='<input type="file" name="foto[]">';
                                        $('#foto_add').append(input);                                                                         
                                    }
                                
                                </script>

                                </form>

                                <div class="regerv_btn">
                                    <a><button onclick="envio()" type="submit"  class="btn_2">Guardar</button></a>
                                    <a href="Consulta.php"><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a> 
                                </div>
                                
                            <script>

                                function envio() {

                                    
                                        

                                    let $formulario1=document.ficha.submit();
                                    const $ok=  window.confirm('Expediente y ficha médica creadas con Éxito');
                                            setTimeout(() => {
                                                document.receta.submit();    
                                            console.log($ok);
                                            if ($ok) {
                                                window.location.href= 'agregarcita.php';
                                            }else{
                                                window.location.href= 'agregarcita.php';
                                            }

                                            }, 1000);
                                }


                            </script>    
                            
                            
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
    // document.getElementById("Anamnesis").addEventListener('keyup',sanear2);
    // document.getElementById("Examenfisico").addEventListener('keyup',sanear2);
    // document.getElementById("diagnostico").addEventListener('keyup',sanear2);
    // document.getElementById("Tratamiento").addEventListener('keyup',sanear2);
    // document.getElementById("medicamento").addEventListener('keyup',sanear2);
    // document.getElementById("dosis").addEventListener('keyup',sanear2);
    // document.getElementById("duracion").addEventListener('keyup',sanear2);
    
    
    function sanear2(e) {
      let id=e.id;
      
      let $cantidad=document.getElementById(id);

    let contenido = $cantidad.value;
    e.value = contenido.toUpperCase().replace("  ", " ");
    contenido.toUpperCase().replace("  ", " ");
      
    
    }
    </script>





</body>

</html>