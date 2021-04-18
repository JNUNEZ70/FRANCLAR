<?php
    session_start();

    include 'conexion.php';
    require_once 'MPDF/vendor/autoload.php';
?>

<?php
          if(isset($_POST)){      

            date_default_timezone_set('America/Tegucigalpa');
                $id_factura = $_POST['id_factura'];
                $num_factura = $_POST['num_factura'];       
                $fecha = date('d-m-Y');
                $hora = date('H:i:s');
                $Nombre_pac=$_POST['Nombre_pac'];
                $id_cita=$_POST['id_cita'];
                $doctor=$_POST['doctor'];
                
                
                
            //   echo $id_cita;
            //     return false;

            $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 4 WHERE ID_Cita='$id_cita'") or die(mysqli_error());

$factura='<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Recibo No '.$id_factura.'</title>
 </head>
 <style type= "text/css">

    
     table, td {
        
        border-collapse: collapse;
        padding: 1px;
        font-size: 14px;
     }

     .contenedor{
        border: none;
     }

     .divisor{
        background-color: #D3D0CF;
        height: 50px;
     }
 

     .col1{
        width: 25%;
        
     }

     .col2{
        width: 25%;
     }
     .col3{
        width: 25%;
        
     }

     .col4{
        width: 25%;
     }
    
 </style>
 <body> 
     <div class="contenedor">   
     <table style="width: 100%">
     <tr style="text-align:center" >
            <td  style="text-align:center">
                <img src="img/franclar_logo.png">
                </td>
                <td colspan="2" style="text-align:center">
                <p style="font-size: 45px" >FRANCLAR</p>
                
                <p style="font-size: 15px" >Somos Instrumentos de Amor; Paz y Bien con Francisco y Clara al Servicio de Cristo.</p>
                <br>
                
                </td>
                <td  style="text-align:center">
                <img src="img/logo_receta.png" style="width: 15%">
            </td>               
     </tr>
     <tr>
             <td  colspan="4" style="text-align:right">
                 <p>Recibo Número '.$id_factura.'</p>                 
             </td>            
         </tr>
         <tr>
             <td  colspan="4" style="text-align:right">
                 <p>Factura Número '.$num_factura.'</p>                 
             </td>            
         </tr>         
         <tr>
             <td colspan="4" class="divisor" style="text-align:center">                 
             </td>          
         </tr>
         <tr>
             <td colspan="2"  style="text-align:left">
                 <p>Número de Cita</p>
             </td>   
             <td colspan="2" style="text-align:left">'.
             $id_cita
             .'</td>         
         </tr>
         <tr>
             <td colspan="2"  style="text-align:left">
                 <p>Nombre del Doctor</p>
             </td>   
             <td colspan="2" style="text-align:left">'.
             $doctor
             .'</td>         
         </tr>
         <tr>
             <td colspan="2" style="text-align:left">
                 <p>Fecha de emisión</p>
             </td>   
             <td colspan="2" style="text-align:left">'.
              $fecha
             .'</td>         
         </tr>
         <tr>
             <td colspan="2" style="text-align:left">
                 <p>Hora de emisión</p>
                 <td colspan="2" style="text-align:left">'.
                 $hora
                .'</td>          

         </tr>
         <tr>
             <td colspan="2" style="text-align:left">
                 <p>Nombre de Paciente</p>
             </td>   
             <td colspan="2" style="text-align:left">'.
             $Nombre_pac
             .'</td>         
         </tr>
         <tr>
             <td colspan="4" class="divisor" style="text-align:center">                 
             </td>          
         </tr>
         <tr class="divisor">
             <td colspan="4" style="text-align:center">                 
             </td>          
         </tr>
         <tr>
             <td colspan="2" class="col1" style="text-align:center">
                <p>Descripción</p>
             </td>
             <td class="col2" style="text-align:center">
                <p>Importe</p>
             </td>  
             <td class="col3" style="text-align:center">
                 <p>Subtotal</p>
             </td>  
                      
             </tr>';
             $total = 0;
             $isv = 0;
             $subtotal = 0;
             $sql3 = mysqli_query($con, "SELECT * FROM tbl_detalle_factura WHERE ID_Factura='$id_factura'");
             while($row3 = mysqli_fetch_assoc($sql3)){  
                $cobro = $row3['Cobro'];
                $subtotal = $subtotal + $cobro;
                // $isv = $subtotal * 0.15;
                $total = $subtotal;                
                $factura.='<tr>                
                                <td colspan="2" class="col1" style="text-align:left">'.
                                    $row3['Descripcion']
                                .'</td>
                                <td class="col2" style="text-align:center">
                                    L. '.$row3['Cobro']
                                .'</td>  
                                <td class="col3" style="text-align:center">
                                    L. '.$subtotal
                            .'</td>';                           
                }
                   
             $factura.='</tr>
             <tr class="divisor">
             <td colspan="4" style="text-align:center">                 
             </td>          
         <tr>
             <td colspan="4" class="divisor" style="text-align:center">                 
             </td>          
         </tr>
         </tr>
             <tr>              
             <td colspan="2" class="col1" style="text-align:left">                 
             </td>
             <td class="col2" style="text-align:center">
                Subtotal
             </td>  
             <td class="col3" style="text-align:center">
                <p>L.'.$subtotal.'</p>
             </td>  
                      
         </tr>
         
         <tr>
             <td colspan="4" class="divisor" style="text-align:center">                 
             </td>          
         </tr>
         <tr>
             <td colspan="2" class="col1" style="text-align:left">
                 
             </td>
             <td class="col2" style="text-align:center">
                TOTAL
             </td>  
             <td class="col3" style="text-align:center">
                <p>L.'.$total.'</p>
             </td>  
                      
         </tr>
         
     </table>
     </div>
 </body>
 </html>';

        $mpdf3 = new \Mpdf\Mpdf();

        $mpdf3->SetHTMLHeader('
        <div style="text-align: right; font-weight: bold;">
            Comprobante de Pago
        </div>');
        $mpdf3->SetHTMLFooter('
        <table width="100%">
            <tr>
                <td width="33%">{DATE j-m-Y}</td>
                <td width="33%" align="center">Página {PAGENO} de {nbpg}</td>
                <td width="33%" style="text-align: right;">Recibo Número '.$id_factura.'</td>
            </tr>
            <tr>
                <td  colspan="4" style="text-align:center">
                    <br>               
                    <p>Este comprobante de pago no reemplaza la factura original emitida por el negocio.</p>
                    <br>                    
                </td>   
            </tr>
        </table>');


        $mpdf3->WriteHTML($factura);
        ob_clean();
        $mpdf3->Output('Expedientes/factura'.$Nombre_pac.''.$id_cita.'.pdf', \Mpdf\Output\Destination::FILE);
    
        $mpdf3 ->output();
            
    
    }     
    
    
    ?>