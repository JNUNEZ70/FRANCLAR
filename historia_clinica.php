<?php
// session_start();

// include 'conexion.php'
?>


    <!-- breadcrumb start-->

    <?php
        //  if(isset($_POST['save'])){     
        //     if(isset($_FILES['foto']['name'])){    
        
        //         // escaping, additionally removing everything that could be (html/javascript-) code
        //         $nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
        //         $sql = mysqli_query($con, "SELECT tbl_citas.ID_Cita,	
        //         tbl_pacientes.Nom_Paciente,
        //         tbl_pacientes.cedula,
        //         tbl_pacientes.ID_Paciente,
        //         tbl_citas.Fec_Creacion,
        //         tbl_especialidad.Descripcion_espec,
        //         tbl_empleado.Nom_Empleado,
        //         tbl_citas.Fec_Atencion,	
        //         tbl_citas.Hora_Atencion,	
        //         tbl_estado_cita.Descripcion_est_cita, 
        //         timestampdiff(YEAR,tbl_pacientes.Fec_Nacimiento,now()) AS Edad FROM tbl_citas 
        //         INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
        //         INNER JOIN tbl_especialidad on tbl_citas.ID_especialidad = tbl_especialidad.ID_especialidad
        //         INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
        //         INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado WHERE ID_Cita='$nik'");
        //         $sql2 = mysqli_query($con, "SELECT * FROM tbl_preclinica WHERE ID_Cita='$nik'");
        //         if(mysqli_num_rows($sql) == 0 or mysqli_num_rows($sql2) == 0){
        //             echo"error al hacer consulta";
        //         }else{
        //             $row = mysqli_fetch_assoc($sql);
        //             $row2 = mysqli_fetch_assoc($sql2);
        //         }
        //                 $diagnostico = mysqli_real_escape_string($con,(strip_tags($_POST['diagnostico'],ENT_QUOTES)));
        //                 $anamnesis = mysqli_real_escape_string($con,(strip_tags($_POST['anamnesis'],ENT_QUOTES)));
        //                 $exam_fisico = mysqli_real_escape_string($con,(strip_tags($_POST['exam_fisico'],ENT_QUOTES)));
        //                 $tratamiento = mysqli_real_escape_string($con,(strip_tags($_POST['tratamiento'],ENT_QUOTES)));
        //                 $paciente = $row['ID_Paciente'];
        //                 $tipoimagen = $_FILES['foto']['type'];
        //                 $tamañoarchivo = $_FILES['foto']['size'];
        //                 $imagensubida = fopen($_FILES['foto']['tmp_name'],'r');
        //                 $binariosimagen = fread($imagensubida,$tamañoarchivo);
        //                 $binariosimagen = mysqli_real_escape_string($con,$binariosimagen);
                                    
                        
        //                 $insert = mysqli_query($con, "INSERT INTO tbl_consultas (ID_Cita, Diagnostico, Anamnesis, Exam_Fisico, Tratamiento) 
        //                                     VALUES ( '$nik' , '$diagnostico' , '$anamnesis' , '$exam_fisico' , '$tratamiento')") or die(mysqli_error());
        //                 $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 3 WHERE ID_Cita='$nik'") or die(mysqli_error());
        //                 $insert_expe = mysqli_query($con, "INSERT INTO tbl_expediente (ID_paciente, ID_Cita, imagen, tipo_imagen) 
        //                                     VALUES ( '$paciente' , '$nik' , '$binariosimagen' , '$tipoimagen')") or die(mysqli_error());
        //                 if($insert and $update and $insert_expe){                    
        //                     // $id_usuario= $_SESSION['ID_Usuario'];
        //                     // $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
        //                     // VALUES ('$id_usuario',9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD')") or die(mysqli_error());
        //                     echo "<script type='text/javascript'>
        //                         alert('Consulta almacenada correctamente');
        //                         window.location.href= 'Consulta.php';
        //                     </script>";
        //                 }else{
        //                     echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, Preclínica fallida</div>';
        //                 }
        //             }
        //         }
    ?>

<?php
require_once 'MPDF/vendor/autoload.php';
$html= '<!DOCTYPE html>
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
                 <p>HISTORIA CLÍNICA</p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>NÚMERO DE CITA</p>
             </td>   
             <td colspan="3" style="text-align:center">
                
             </td>         
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>NOMBRE DE PACIENTE</p>
             </td>   
             <td colspan="3" style="text-align:center">
                
             </td>         
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>FECHA DE NACIMIENTO</p>
             </td>
             <td class="col2" style="text-align:left">
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>IDENTIDAD</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>EDAD</p>
             </td>
             <td class="col2" style="text-align:left">
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>FECHA DE ATENCIÓN</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>SEXO</p>
             </td>
             <td class="col2" style="text-align:left">
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>ESTADO CIVIL</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>DOMICILIO</p>
             </td>   
             <td colspan="3" style="text-align:center">
                
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
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>FRECUENCIA CARDIACA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>FRECUENCIA RESPIRATORIA</p>
             </td>
             <td class="col2" style="text-align:left">
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>TEMPERATURA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>PRESIÓN ARTERIAL MEDIA</p>
             </td>
             <td class="col2" style="text-align:left">
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>GLUCOMETRÍA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>PESO</p>
             </td>
             <td class="col2" style="text-align:left">
                 <p> </p>
             </td>  
             <td class="col3" style="text-align:left">
                 <p>TALLA</p>
             </td>  
             <td class="col4" style="text-align:left">
                 <p> </p>
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
                 <p>sdfgsdfgsdfgdsfgsdfgsdfgsdfgsdfgsdfgdsfgdsfgdsfgsdf</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>EXAMEN FÍSICO</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>dsfgsdfgdsfgdfgsdfgsdfgsdfgsdfgdsfgdsfgdsfgdsfg</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>DIAGNÓSTICO</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>sdfgsdfgsdfgsdfgsdfgdsfgsdfgsdfgsdfgsdfgdsfgdsfgdsfg</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center; background-color: #D3D0CF;">
                 <p>TRATAMIENTO</p>
             </td>          
         </tr>
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>sdofnjsdfsdfgbpoisdfnisdjfnbisdfjbnsdi0fjbsdnfibsdfijnbsdfsdfgsdfgdsfgdsfgdfgdfgdfgdsf</p>
             </td>          
         </tr>
     </table>
 </body>
 </html>'; 




$mpdf = new \Mpdf\Mpdf();
$mpdf->WriteHTML($html);
$mpdf->Output();

?>