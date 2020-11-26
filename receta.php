<?php
    session_start();

    include 'conexion.php';
    require_once 'MPDF/vendor/autoload.php';
?>

<?php
          if(isset($_POST)){     
   

            
                $medicamento=$_POST['medicamento'];
                 $duracion=$_POST['duracion'];
                 $cantidad=$_POST['cantidad'];
                 $dosis=$_POST['dosis'];
                 $nombre_pac=$_POST['nombre_pac'];     


$n=0;
foreach ($medicamento as $value) {
    echo '<td>
        <input type="text" class="form-control" value="'.$medicamento[$n].'" >
      </td>	

      <td>
        <input type="text" class="form-control" value="'.$cantidad[$n].'" >
      </td>
      <td>
        <input type="text" class="form-control" value="'.$dosis[$n].'" >
      </td>	
      <td>
        <input type="text" class="form-control" value="'.$duracion[$n].'" >
      </td> <br>

';
$n++;
}
    }


          
    
        // $receta='<!DOCTYPE html>
        // <html lang="en">
        // <head>
        //     <meta charset="UTF-8">
        //     <meta name="viewport" content="width=device-width, initial-scale=1.0">
        //     <title>prueba</title>
        // </head>
        // <style type= "text/css">
        
        //     table, td {
        //         border: 1px solid black;
        //         border-collapse: collapse;
        //         padding: 1px;
        //         font-size: 14px;
        //     }
        
        //     .divisor{
        //        background-color: #D3D0CF;
        //        height: 45px;
        //     }
        
        //     .firma{        
        //        height: 150px;
        //     }
        
        
        //     .col1{
        //         width: 25%;
                
        //     }
        
        //     .col2{
        //         width: 25%;
        //     }
        //     .col3{
        //         width: 25%;
                
        //     }
        
        //     .col4{
        //         width: 25%;
        //     }
           
        // </style>
        // <body>    
        //     <table style="width: 100%">
        //         <tr>
        //             <td  colspan="4" style="text-align:center">
        //                 <p>COMPLEJO MÉDICO FRANCLAR</p>
        //                 <br>
        //                 <img src="img/franclar_logo.png">
        //             </td>            
        //         </tr>
        //         <tr>
        //             <td colspan="4" style="text-align:center">
        //                 <p>RECETA MÉDICA</p>
        //             </td>          
        //         </tr>
        //         <tr>
        //             <td class="divisor" colspan="4" style="text-align:center" >                 
        //             </td>          
        //         </tr>
        //         <tr>
        //             <td class="col1" style="text-align:left">
        //                 <p>NOMBRE DE PACIENTE</p>
        //             </td>   
        //             <td colspan="3" style="text-align:center">
        //                '.$nombre_pac.'
        //             </td>         
        //         </tr>
        //         <tr>
        //             <td class="divisor" colspan="4" style="text-align:center" >                 
        //             </td>          
        //         </tr>
        //         <tr>
        //             <td colspan="4" style="text-align:center">
        //                 <p>DETALLE DE RECETA</p>
        //             </td>          
        //         </tr>
        //         <tr class="divisor">
        //             <td class="col1" style="text-align:left">
        //                 <p>MEDICAMENTO</p>
        //             </td>
        //             <td class="col2" style="text-align:left">
        //                <p>DOSIS</p>
        //             </td>  
        //             <td class="col3" style="text-align:left">
        //                 <p>DURACIÓN</p>
        //             </td>  
        //             <td class="col4" style="text-align:left">
        //                <p>CANTIDAD</p>
        //             </td>'.          
        //         </tr>         
        //            <td colspan="4" style="text-align:left">
        //                <p>CANTIDAD</p>
        //             </td>     
        //         <tr>
                           
        //         .'</tr>
        //         <tr>
        //            <td colspan="4" style="text-align:right">
        //                 <p>Fecha:</p>
        //             </td>      
        //         </tr>
        //         <tr>
        //            <td style="text-align:left">
        //                 <p>Firma y sello de Médico</p>
        //            </td>  
        //            <td Class="firma" colspan="3" style="text-align:center">                 
        //            </td>      
        //         </tr>
                
        //     </table>
        // </body>';
         
        
        
       
        // $mpdf2 = new \Mpdf\Mpdf();
        // $mpdf2->WriteHTML($receta);
        // ob_clean();
        // $mpdf2->Output('fichas_citas/receta'.$nombre_pac.''.$num_cita.'.pdf', \Mpdf\Output\Destination::FILE);
        
        
        // $mpdf2 ->output();
                
        
     
        
        
        ?>
