<?php
    session_start();

    include 'conexion.php';
    require_once 'MPDF/vendor/autoload.php';
?>


    <!-- breadcrumb start-->

    <?php
          if(isset($_POST)){     
             if(isset($_FILES['foto']['name'])){    
        
                //   escaping, additionally removing everything that could be (html/javascript-) code
                //  $nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
                //  $sql = mysqli_query($con, "SELECT tbl_citas.ID_Cita,	
                //  tbl_pacientes.Nom_Paciente,
                //  tbl_pacientes.cedula,
                //  tbl_pacientes.ID_Paciente,
                //  tbl_citas.Fec_Creacion,
                //  tbl_especialidad.Descripcion_espec,
                //  tbl_empleado.Nom_Empleado,
                //  tbl_citas.Fec_Atencion,	
                //  tbl_citas.Hora_Atencion,	
                //  tbl_estado_cita.Descripcion_est_cita, 
                //  timestampdiff(YEAR,tbl_pacientes.Fec_Nacimiento,now()) AS Edad FROM tbl_citas 
                //  INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
                //  INNER JOIN tbl_especialidad on tbl_citas.ID_especialidad = tbl_especialidad.ID_especialidad
                //  INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
                //  INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado WHERE ID_Cita='$nik'");
                //  $sql2 = mysqli_query($con, "SELECT * FROM tbl_preclinica WHERE ID_Cita='$nik'");
                //  if(mysqli_num_rows($sql) == 0 or mysqli_num_rows($sql2) == 0){
                //      echo"error al hacer consulta";
                //  }else{
                //      $row = mysqli_fetch_assoc($sql);
                //      $row2 = mysqli_fetch_assoc($sql2);
                //  }


                $num_cita = mysqli_real_escape_string($con,(strip_tags($_POST['id_cita'],ENT_QUOTES)));
                $nombre_pac = mysqli_real_escape_string($con,(strip_tags($_POST['nombre_pac'],ENT_QUOTES)));
                $fecha_nac = mysqli_real_escape_string($con,(strip_tags($_POST['fec_nac'],ENT_QUOTES)));
                $cedula = mysqli_real_escape_string($con,(strip_tags($_POST['cedula'],ENT_QUOTES)));
                $edad = mysqli_real_escape_string($con,(strip_tags($_POST['edad_pac'],ENT_QUOTES)));
                $fec_atencion = mysqli_real_escape_string($con,(strip_tags($_POST['fec_atencion'],ENT_QUOTES)));
                $sexo = mysqli_real_escape_string($con,(strip_tags($_POST['sexo'],ENT_QUOTES)));
                $est_civil = mysqli_real_escape_string($con,(strip_tags($_POST['est_civil'],ENT_QUOTES)));
                $domicilio = mysqli_real_escape_string($con,(strip_tags($_POST['direccion'],ENT_QUOTES)));
                $id_paciente = mysqli_real_escape_string($con,(strip_tags($_POST['id_paciente'],ENT_QUOTES)));
                $id_especialidad = mysqli_real_escape_string($con,(strip_tags($_POST['id_especialidad'],ENT_QUOTES)));
                $descrip_espec = mysqli_real_escape_string($con,(strip_tags($_POST['descrip_espec'],ENT_QUOTES))); 
                
                               

                $pa = mysqli_real_escape_string($con,(strip_tags($_POST['PA'],ENT_QUOTES)));
                $fc = mysqli_real_escape_string($con,(strip_tags($_POST['FC'],ENT_QUOTES)));
                $fr = mysqli_real_escape_string($con,(strip_tags($_POST['FR'],ENT_QUOTES)));
                $temp = mysqli_real_escape_string($con,(strip_tags($_POST['Temp'],ENT_QUOTES)));
                $pam = mysqli_real_escape_string($con,(strip_tags($_POST['PAM'],ENT_QUOTES)));
                $glucom = mysqli_real_escape_string($con,(strip_tags($_POST['Glucom'],ENT_QUOTES)));
                $peso = mysqli_real_escape_string($con,(strip_tags($_POST['peso'],ENT_QUOTES)));
                $talla = mysqli_real_escape_string($con,(strip_tags($_POST['talla'],ENT_QUOTES)));
                    
                $anamnesis = mysqli_real_escape_string($con,(strip_tags($_POST['anamnesis'],ENT_QUOTES)));
                $exam_fisico = mysqli_real_escape_string($con,(strip_tags($_POST['exam_fisico'],ENT_QUOTES)));
                $diagnostico = mysqli_real_escape_string($con,(strip_tags($_POST['diagnostico'],ENT_QUOTES)));                
                $tratamiento = mysqli_real_escape_string($con,(strip_tags($_POST['tratamiento'],ENT_QUOTES)));
                
                $tipoimagen = $_FILES['foto']['type'];
                $tamañoarchivo = $_FILES['foto']['size'];
                $imagensubida = fopen($_FILES['foto']['tmp_name'],'r');
                $binariosimagen = fread($imagensubida,$tamañoarchivo);
                $binariosimagen = mysqli_real_escape_string($con,$binariosimagen);

                $medicamento=$_POST['medicamento'];
                $dosis=$_POST['dosis'];
                $duracion=$_POST['duracion'];
                $cantidad=$_POST['cantidad'];
                        
                
                $sql = mysqli_query($con, "SELECT * FROM tbl_especialidad WHERE ID_especialidad='$id_especialidad'");
                $row = mysqli_fetch_assoc($sql);
                $cobro = $row['Precio'];


                $insert = mysqli_query($con, "INSERT INTO tbl_consultas (ID_Cita, Diagnostico, Anamnesis, Exam_Fisico, Tratamiento) 
                                    VALUES ( '$num_cita' , '$diagnostico' , '$anamnesis' , '$exam_fisico' , '$tratamiento')") or die(mysqli_error());
                $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 3 WHERE ID_Cita='$num_cita'") or die(mysqli_error());
                $insert_expe = mysqli_query($con, "INSERT INTO tbl_expediente (ID_paciente, ID_Cita, imagen, tipo_imagen) 
                                    VALUES ( '$id_paciente' , '$num_cita' , '$binariosimagen' , '$tipoimagen')") or die(mysqli_error());
                
                
                
                $insert_fact = mysqli_query($con, "INSERT INTO tbl_facturas (ID_cita, ID_Paciente, ID_Especialidad, Pago) 
                                    VALUES ( '$num_cita' , '$id_paciente' , '$id_especialidad' , '$cobro')") or die(mysqli_error());                    
                
                $sql2 = mysqli_query($con, "SELECT * FROM tbl_facturas WHERE ID_cita='$num_cita'");
                $row2 = mysqli_fetch_assoc($sql2);
                $num_fact = $row2['ID_factura'];
                

                $insert_detalle_fact = mysqli_query($con, "INSERT INTO tbl_detalle_factura (ID_Factura, descripcion, cobro) 
                                    VALUES ( '$num_fact' , '$descrip_espec' , '$cobro')") or die(mysqli_error());   
                

                
                // if($insert and $update and $insert_expe){                    
                // //   $id_usuario= $_SESSION['ID_Usuario'];
                // //   $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                // //   VALUES ('$id_usuario',9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD')") or die(mysqli_error());
                //     echo "<script type='text/javascript'>
                //         alert('Consulta almacenada correctamente');
                //         window.location.href= 'Consulta.php';
                //     </script>";
                // }else{
                //     echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, Preclínica fallida</div>';
                // }
            }
        }
    



$ficha= '<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>ejemplo historia clínica</title>
 </head>
 <style type= "text/css">

     table, td {
         border: 1px solid black;
         border-collapse: collapse;
         padding: 1px;
         font-size: 14px;
     }

     .col1{
         width: 25%;
         background-color: #D3D0CF;
     }

     .col2{
         width: 25%;
     }
     .col3{
         width: 25%;
         background-color: #D3D0CF;
     }

     .col4{
         width: 25%;
     }
    
 </style>
 <body>    
     <table style="width: 100%">
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>COMPLEJO MÉDICO FRANCLAR</p>
                 <br>
                 <img src="img/franclar_logo.png">
             </td>            
         </tr>
         <tr>
             <td colspan="4" style="text-align:center">
                 <p>FICHA DE CITA</p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>NÚMERO DE CITA</p>
             </td>   
             <td colspan="3" style="text-align:center">
                '.$num_cita.'
             </td>         
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>NOMBRE DE PACIENTE</p>
             </td>   
             <td colspan="3" style="text-align:center">
                '.$nombre_pac.'
             </td>         
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>FECHA DE NACIMIENTO</p>
             </td>
             <td class="col2" style="text-align:left">
                '.$fecha_nac.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>IDENTIDAD</p>
             </td>  
             <td class="col4" style="text-align:left">
                '.$cedula.'
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>EDAD</p>
             </td>
             <td class="col2" style="text-align:left">
                '.$edad.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>FECHA DE ATENCIÓN</p>
             </td>  
             <td class="col4" style="text-align:left">
                '.$fec_atencion.'
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>GÉNERO</p>
             </td>
             <td class="col2" style="text-align:left">
                '.$sexo.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>ESTADO CIVIL</p>
             </td>  
             <td class="col4" style="text-align:left">
                '.$est_civil.'
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>DOMICILIO</p>
             </td>   
             <td colspan="3" style="text-align:center">
                '.$domicilio.'
             </td>         
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>SIGNOS VITALES</p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>PRESIÓN ARTERIAL</p>
             </td>
             <td class="col2" style="text-align:left">
                 '.$pa.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>FRECUENCIA CARDIACA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 '.$fc.'
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>FRECUENCIA RESPIRATORIA</p>
             </td>
             <td class="col2" style="text-align:left">
                 '.$fr.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>TEMPERATURA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 '.$temp.'
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>PRESIÓN ARTERIAL MEDIA</p>
             </td>
             <td class="col2" style="text-align:left">
                 '.$pam.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>GLUCOMETRÍA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 '.$glucom.'
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>PESO</p>
             </td>
             <td class="col2" style="text-align:left">
                 '.$peso.'
             </td>  
             <td class="col3" style="text-align:left">
                 <p>TALLA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 '.$talla.'
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>DETALLE DE LA CONSULTA</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>ANAMNESIS</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center;">
                 '.$anamnesis.'
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>EXAMEN FÍSICO</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 '.$exam_fisico.'
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>DIAGNÓSTICO</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 '.$diagnostico.'
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>TRATAMIENTO</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 '.$tratamiento.'
             </td>          
         </tr>
     </table>
 </body>
 </html>'; 


$mpdf = new \Mpdf\Mpdf();
$mpdf->WriteHTML($ficha);
ob_clean();
$mpdf->Output('fichas_citas/ficha'.$nombre_pac.''.$num_cita.'.pdf', \Mpdf\Output\Destination::FILE);
$mpdf->output();




?>