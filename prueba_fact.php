<?php
    session_start();

    include 'conexion.php';
    require_once 'MPDF/vendor/autoload.php';
?>

<?php
          if(isset($_POST)){      

                $id_factura = $_POST['id_factura']; 
                $fecha = date('d-m-Y');
                $hora = date('H:i:s');
                $Nombre_pac=$_POST['Nombre_pac'];
                $id_cita=$_POST['id_cita'];
            //   echo $id_cita;
            //     return false;

            $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 4 WHERE ID_Cita='$id_cita'") or die(mysqli_error());

$factura='<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>ejemplo historia clínica</title>
 </head>
 <style type= "text/css">

    
     table, td {
        
        border-collapse: collapse;
        padding: 1px;
        font-size: 14px;
     }

     .contenedor{
        border: 1px solid black;
     }

     .divisor{
        background-color: #D3D0CF;
        height: 80px;
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
         <tr>
             <td  colspan="4" style="text-align:center">
                 <p>FACTURA</p>
                 <br>
                 <p>COMPLEJO MÉDICO FRANCLAR</p>
                 <br>
                 <img src="img/franclar_logo.png">
             </td>            
         </tr>
         <tr class="divisor">
             <td colspan="4" style="text-align:center">                 
             </td>          
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>Factura No</p>
             </td>   
             <td colspan="3" style="text-align:center">'.
             $id_factura
             .'</td>         
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>Fecha</p>
             </td>   
             <td colspan="3" style="text-align:center">'.
              $fecha
             .'</td>         
         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>Hora</p>
                 <td colspan="3" style="text-align:center">'.
                 $hora
                .'</td>          

         </tr>
         <tr>
             <td class="col1" style="text-align:left">
                 <p>Nombre de Paciente</p>
             </td>   
             <td colspan="3" style="text-align:center">'.
             $Nombre_pac
             .'</td>         
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
                $cobro = $row3['cobro'];
                $subtotal = $subtotal + $cobro;
                $isv = $subtotal * 0.15;
                $total = $subtotal + $isv;                
                $factura.='<tr>                
                                <td colspan="2" class="col1" style="text-align:left">'.
                                    $row3['descripcion']
                                .'</td>
                                <td class="col2" style="text-align:center">
                                    L. '.$row3['cobro']
                                .'</td>  
                                <td class="col3" style="text-align:center">
                                    L. '.$row3['cobro']
                            .'</td>';                           
                }
                   
             $factura.='</tr>
             <tr class="divisor">
             <td colspan="4" style="text-align:center">                 
             </td>          
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
             <td colspan="2" class="col1" style="text-align:left">
                 
             </td>
             <td class="col2" style="text-align:center">
                ISV 15%
             </td>  
             <td class="col3" style="text-align:center">
                <p>L.'.$isv.'</p>
             </td>  
                      
         </tr>
         <tr class="divisor">
             <td colspan="4" style="text-align:center">                 
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
        $mpdf3->WriteHTML($factura);
        ob_clean();
        $mpdf3->Output('fichas_citas/factura'.$Nombre_pac.''.$id_cita.'.pdf', \Mpdf\Output\Destination::FILE);
    
    
        $mpdf3 ->output();
            
    
    }     
    
    
    ?>