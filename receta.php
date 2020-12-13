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
        $num_cita = $_POST['id_cita'];
        $doctor = $_POST['doctor'];

        date_default_timezone_set('America/Mexico_City');
        $fecha = date('d-m-Y');
        $hora = date('H:i:s'); 

        
        $sql = mysqli_query($con, "SELECT * FROM tbl_expediente WHERE ID_cita='$num_cita'");
        $row = mysqli_fetch_assoc($sql);
        $Fecha_atencion = $row['Fec_atencion'];
                   


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
                 
            $receta='<!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Receta Médica Cita No '.$num_cita.'</title>
            </head>
            <style type= "text/css">
            
                table .borde {
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
            
                .divisor{
                    background-color: #D3D0CF;
                    height: 45px;
                }
            
                .firma{        
                    height: 150px;
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
                <table style="width: 100%">
                    <tr style="text-align:center" >
                        <td  style="text-align:center">
                            <img src="img/franclar_logo.png">
                            </td>
                            <td colspan="2" style="text-align:center">
                            <p style="font-size: 45px" >FRANCLAR</p>
                            
                            <p style="font-size: 15px" >Somos Instrumentos de Amor; Paz y Bien con Francisco y Clara al Servicio de Cristo</p>
                            <br>
                            
                            </td>
                            <td  style="text-align:center">
                            <img src="img/logo_receta.png" style="width: 15%">
                        </td>               
                    </tr>
                    <tr >
                        <td class="borde" colspan="4" style="text-align:center">
                            <p>RECETA MÉDICA CITA No '.$num_cita.'</p>
                        </td>          
                    </tr>
                    <tr>
                        <td  colspan="4" style="text-align:left">
                            <p>Fecha y Hora de Atención:</p><p>'.$Fecha_atencion.'</p>
                        </td>      
                    </tr>
                    <tr>
                        <td  class="borde divisor" colspan="4" style="text-align:center" >                 
                        </td>          
                    </tr>
                    <tr>
                        <td class="col1" style="text-align:left">
                            <p>Paciente:</p>
                        </td>   
                        <td colspan="3" style="text-align:center">
                            '.$nombre_pac.'
                        </td>         
                    </tr>
                    <tr>
                        <td class="col1" style="text-align:left">
                            <p>Doctor:</p>
                        </td>   
                        <td colspan="3" style="text-align:center">
                            '.$doctor.'
                        </td>         
                    </tr>
                    <tr>
                        <td class="borde divisor" colspan="4" style="text-align:center" >                 
                        </td>          
                    </tr>
                    <tr>
                        <td colspan="4" style="text-align:center">
                            <p>DETALLE DE LA RECETA</p>
                        </td>          
                    </tr>
                    <tr class="divisor">
                        <td class="col1" style="text-align:left">
                            <p>MEDICAMENTO</p>
                        </td>
                        <td class="col2" style="text-align:left">
                            <p>DOSIS</p>
                        </td>  
                        <td class="col3" style="text-align:left">
                            <p>DURACIÓN</p>
                        </td>  
                        <td class="col4" style="text-align:left">
                            <p>CANTIDAD</p>
                        </td>          
                    </tr>';
                    $n=0;
                    foreach ($medicamento as $value) {                    
                    $receta.='<tr>                
                        <td>'.$medicamento[$n].'</td>	
                        <td>'.$dosis[$n].'</td>
                        <td>'.$duracion[$n].'</td>	
                        <td>'.$cantidad[$n].'</td>';
                    $n++;                           
                    }
                        
                    $receta.='</tr>                    
                    <tr>
                        <td style="text-align:left">
                            <p>Firma y sello de médico</p>
                        </td>  
                        <td Class="borde firma" colspan="3" style="text-align:center">                 
                        </td>      
                    </tr>
                    
                </table>
            </body>';         
            
            
                
            $mpdf2 = new \Mpdf\Mpdf();

            $mpdf2->SetHTMLHeader('
            <div style="text-align: right; font-weight: bold;">
                Receta original
            </div>');
            $mpdf2->SetHTMLFooter('
            <table class="tabla_inferior" width="100%">
                <tr class="tabla_inferior">
                    <td class="tabla_inferior" width="33%">{DATE j-m-Y}</td>
                    <td class="tabla_inferior" width="33%" align="center">Página {PAGENO} de {nbpg}</td>
                    <td class="tabla_inferior" width="33%" style="text-align: right;">Receta</td>
                </tr>
            </table>');


            $mpdf2->WriteHTML($receta);
            ob_clean();
            $mpdf2->Output('Expedientes/receta'.$nombre_pac.''.$num_cita.'.pdf', \Mpdf\Output\Destination::FILE);
            
            
            $mpdf2 ->output();
                    
            
            }     
        
        
        ?>
