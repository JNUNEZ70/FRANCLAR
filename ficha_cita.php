<?php
    session_start();

    include 'conexion.php';
    require_once 'MPDF/vendor/autoload.php';
?>


    <!-- breadcrumb start-->

    <?php
            if(isset($_POST)){     
               if(isset($_FILES['foto']['name'])){    
                            
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
                        

                        
                         $num_archivos = count($_FILES['foto']['name']); 
                        
                         for ($i=0; $i <$num_archivos; $i++) { 
                             $tipoimagen = $_FILES['foto']['type'][$i];
                             $tamañoarchivo = $_FILES['foto']['size'][$i];
                             $imagensubida = fopen($_FILES['foto']['tmp_name'][$i],'r');
                             $binariosimagen = fread($imagensubida,$tamañoarchivo);
                             $binariosimagen = mysqli_real_escape_string($con,$binariosimagen);
                             $insert_foto = mysqli_query($con, "INSERT INTO tbl_fotos_consultas (ID_Cita, tipo_imagen, imagen) 
                                             VALUES ( '$num_cita' , '$tipoimagen' , '$binariosimagen' )") or die(mysqli_error());   
                         }
                                          
                        
                          $sql = mysqli_query($con, "SELECT * FROM tbl_especialidad WHERE ID_especialidad='$id_especialidad'");
                          $row = mysqli_fetch_assoc($sql);
                          $cobro = $row['Precio'];


                          $insert = mysqli_query($con, "INSERT INTO tbl_consultas (ID_Cita, Diagnostico, Anamnesis, Exam_Fisico, Tratamiento) 
                                              VALUES ( '$num_cita' , '$diagnostico' , '$anamnesis' , '$exam_fisico' , '$tratamiento')") or die(mysqli_error());
                          $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 3 WHERE ID_Cita='$num_cita'") or die(mysqli_error());
                          $insert_expe = mysqli_query($con, "INSERT INTO tbl_expediente (ID_paciente, ID_Cita) 
                                              VALUES ( '$id_paciente' , '$num_cita')") or die(mysqli_error());
                        
                        
                        
                          $insert_fact = mysqli_query($con, "INSERT INTO tbl_facturas (ID_cita, ID_Paciente, ID_Especialidad, Pago) 
                                              VALUES ( '$num_cita' , '$id_paciente' , '$id_especialidad' , '$cobro')") or die(mysqli_error());                    
                        
                          $sql2 = mysqli_query($con, "SELECT * FROM tbl_facturas WHERE ID_cita='$num_cita'");
                          $row2 = mysqli_fetch_assoc($sql2);
                          $num_fact = $row2['ID_factura'];
                        

                          $insert_detalle_fact = mysqli_query($con, "INSERT INTO tbl_detalle_factura (ID_Factura, descripcion, cobro) 
                                              VALUES ( '$num_fact' , '$descrip_espec' , '$cobro')") or die(mysqli_error());   
                        
                          $sql3 = mysqli_query($con, "SELECT * FROM tbl_expediente WHERE ID_cita='$num_cita'");
                          $row3 = mysqli_fetch_assoc($sql3);
                          $Fecha_atencion = $row3['Fec_atencion'];

                        
                        //   if($insert and $update and $insert_expe){                    
                        //      $id_usuario= $_SESSION['ID_Usuario'];
                        //      $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        //      VALUES ('$id_usuario',9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD')") or die(mysqli_error());
                        //       echo "<script type='text/javascript'>
                        //           alert('Consulta almacenada correctamente');
                        //           window.location.href= 'Consulta.php';
                        //       </script>";
                        //   }else{
                        //       echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, Preclínica fallida</div>';
                        //   }
                     
                     }
                  }
            



         $ficha= '<!DOCTYPE html>
         <html lang="en">
         <head>
             <meta charset="UTF-8">
             <meta name="viewport" content="width=device-width, initial-scale=1.0">
             <title>Ficha de Cita No '.$num_cita.'</title>
         </head>
         <style type= "text/css">

            
             .principal, td {
                 border: 1px solid black;
                 border-collapse: collapse;
                 padding: 1px;
                 font-size: 14px;
             }

             .tabla_inferior{
                 border: none;
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
             <table class="principal" style="width: 100%">
                 <tr>
                     <td  colspan="4" style="text-align:center">
                         <p>COMPLEJO MÉDICO FRANCLAR</p>
                         <br>
                         <p>FICHA DE CITA</p>
                         <br>
                         <img src="img/franclar_logo.png">
                     </td>            
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:center">
                         <p>DATOS DEL PACIENTE</p>
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
                         '.$Fecha_atencion.'
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
                     <td colspan="3" style="text-align:left">
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
                         <p>DETALLES DE LA CONSULTA</p>
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                         <p>ANAMNESIS</p>
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:left;">
                         '.$anamnesis.'
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                         <p>EXAMEN FÍSICO</p>
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:left">
                         '.$exam_fisico.'
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                         <p>DIAGNÓSTICO</p>
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:left">
                         '.$diagnostico.'
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                         <p>TRATAMIENTO</p>
                     </td>          
                 </tr>
                 <tr>
                     <td  colspan="4" style="text-align:left">
                         '.$tratamiento.'
                     </td>          
                 </tr>
             </table>
         </body>
         </html>'; 


         $mpdf = new \Mpdf\Mpdf();

         $mpdf->SetHTMLHeader('
         <div style="text-align: right; font-weight: bold;">
             Ficha de cita
         </div>');
         $mpdf->SetHTMLFooter('
         <table class="tabla_inferior" width="100%">
             <tr class="tabla_inferior">
                 <td class="tabla_inferior" width="33%">{DATE j-m-Y}</td>
                 <td class="tabla_inferior" width="33%" align="center">Página {PAGENO} de {nbpg}</td>
                 <td class="tabla_inferior" width="33%" style="text-align: right;">Ficha de cita</td>
             </tr>
         </table>');


         $mpdf->WriteHTML($ficha);
         ob_clean();
         $mpdf->Output('Expedientes/ficha'.$nombre_pac.''.$num_cita.'.pdf', \Mpdf\Output\Destination::FILE);
         $mpdf->output();




?>