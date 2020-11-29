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
                            <h2>Factura Pendiente</h2>
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
            tbl_citas.Fec_Creacion,
            tbl_especialidad.Descripcion_espec,
            tbl_empleado.Nom_Empleado,
            tbl_citas.Fec_Atencion,	
            tbl_citas.Hora_Atencion,	
            tbl_estado_cita.Descripcion_est_cita, 
            timestampdiff(YEAR,tbl_pacientes.Fec_Nacimiento,now()) AS Edad FROM tbl_citas 
            INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
            INNER JOIN tbl_especialidad on tbl_citas.ID_especialidad = tbl_especialidad.ID_especialidad
            INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
            INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado WHERE ID_Cita='$nik'");
            
            $row = mysqli_fetch_assoc($sql);

            $sql2 = mysqli_query($con, "SELECT * FROM tbl_facturas WHERE ID_Cita='$nik'");
            $row2 = mysqli_fetch_assoc($sql2);
            $id_factura = $row2['ID_factura'];
            
            

			
			if(isset($_POST['save'])){

				$pa = mysqli_real_escape_string($con,(strip_tags($_POST['PA'],ENT_QUOTES)));
                $fc = mysqli_real_escape_string($con,(strip_tags($_POST['FC'],ENT_QUOTES)));
                $fr = mysqli_real_escape_string($con,(strip_tags($_POST['FR'],ENT_QUOTES)));
                $temp = mysqli_real_escape_string($con,(strip_tags($_POST['Temp'],ENT_QUOTES)));
                $pam = mysqli_real_escape_string($con,(strip_tags($_POST['PAM'],ENT_QUOTES)));
                $glucom = mysqli_real_escape_string($con,(strip_tags($_POST['Glucom'],ENT_QUOTES)));
                $peso = mysqli_real_escape_string($con,(strip_tags($_POST['peso'],ENT_QUOTES)));
                $talla = mysqli_real_escape_string($con,(strip_tags($_POST['talla'],ENT_QUOTES)));
                
				
				// $insert = mysqli_query($con, "INSERT INTO tbl_preclinica (ID_Cita, PA, FC, FR, Temp, PAM, Glucometria, Peso, Talla) 
                //                        VALUES ( '$nik' , '$pa' , '$fc' , '$fr' , '$temp' , '$pam' , '$glucom' , '$peso' , '$talla')") or die(mysqli_error());
                // $update = mysqli_query($con, "UPDATE tbl_citas SET ID_Estado= 2 WHERE ID_Cita='$nik'") or die(mysqli_error());
                // if($insert and $update){                    
                //     // $id_usuario= $_SESSION['ID_Usuario'];
                //     // $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                //     // VALUES ('$id_usuario',9,'Update','SE ACTUALIZÓ UNA ESPECIALIDAD')") or die(mysqli_error());
                //     echo "<script type='text/javascript'>
                //         alert('Pre-clínica almacenada correctamente');
                //         window.location.href= 'Preclinica.php';
                //     </script>";
				// }else{
				// 	echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, Preclínica fallida</div>';
                // }
			}
		?>

    <!--::regervation_part start::-->
    <section class="our_depertment section_padding single_pepertment_page">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-xl-12">
                    <div class="depertment_content">
                        <div class="row justify-content-center">
                            <div class="col-xl-8">
                            <form id="factura" method="POST" action="FacturaCliente.php" target="_blank" autocomplete="off">                                                      
                            <div class="form-row">
                            <h2 class="col-md-12">Datos del Paciente</h2>                                  
                                <p class="col-md-12">Paciente:</p>                                                           
                                <div class="form-group col-md-12">                                    
                                    <input type="text" class="form-control" name="Nombre_pac" value="<?php echo $row ['Nom_Paciente']; ?>" id="Nombre_pac" readonly>
                                </div>
                                <p class="col-md-6">Identidad:</p> 
                                <p class="col-md-6">Edad:</p>    
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" value="<?php echo $row ['cedula']; ?>" id="ID_pac" readonly>
                                </div>                                
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Edad_pac" value="<?php echo $row ['Edad'] ." Años"; ?>" readonly>
                                </div>
                                <p class="col-md-6">Especialidad:</p>
                                <p class="col-md-6">Doctor Asignado:</p>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Especialidad" value="<?php echo $row ['Descripcion_espec']; ?>" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Doctor" value="<?php echo $row ['Nom_Empleado']; ?>" readonly>
                                </div>   
                                <h2 class="col-md-12">Cobros a Realizar</h2>
                                
                                
                                <form class="form-inline my-2 my-lg-0 float-left">
                                    <?php echo'<a href="agregarcobro.php?nik='.$id_factura.'" class="genric-btn info circle">Agregar Cobro Adicional</a>
                                '?>
                                </form>
                                
                                <br>
                                <br>


                                <table class="table table-striped table-hover">
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
                                                
                                    </tr>
                                <?php
                                $total = 0;
                                $isv = 0;
                                $subtotal = 0;
                                $sql3 = mysqli_query($con, "SELECT * FROM tbl_detalle_factura WHERE ID_Factura='$id_factura'");
                                
                                    while($row3 = mysqli_fetch_assoc($sql3)){
                                        $cobro = $row3['cobro'];
                                        $subtotal = $subtotal + $cobro;
                                        $isv = $subtotal * 0.15;
                                        $total = $subtotal + $isv;

                                    echo'
                                    <tr>                                        
                                        <td colspan="2" class="col1" style="text-align:left">'.
                                            $row3['descripcion']
                                        .'</td>
                                        <td class="col2" style="text-align:left">
                                            L. '.$row3['cobro']
                                        .'</td>  
                                        <td class="col3" style="text-align:left">
                                            L. '.$row3['cobro']
                                        .'</td>  
                                    </tr>
                                    ';
                                    };
                                ?>            
                                    
                                    <tr>
                                        <td colspan="2" class="col1" style="text-align:left">                                            
                                        </td>
                                        <td class="col2" style="text-align:left">
                                            Subtotal
                                        </td>  
                                        <td class="col3" style="text-align:left">
                                            <p>L. <?php echo $subtotal; ?></p>
                                        </td>  
                                                
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="col1" style="text-align:left">
                                            
                                        </td>
                                        <td class="col2" style="text-align:left">
                                            ISV 15%
                                        </td>  
                                        <td class="col3" style="text-align:left">
                                        <p>L. <?php echo $isv; ?></p>
                                        </td>  
                                                
                                    </tr>
                                    <tr class="divisor">
                                        <td colspan="4" style="text-align:center">                 
                                        </td>          
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="col1" style="text-align:left">
                                            
                                        </td>
                                        <td class="col2" style="text-align:left">
                                            TOTAL
                                        </td>  
                                        <td class="col3" style="text-align:left">
                                        <p>L. <?php echo $total; ?></p>
                                        </td>  
                                                
                                    </tr>
                                    
                                </table>

                                <input type="text"  class="d-none" name="id_cita" value="<?php echo $nik; ?>">    
                                <input type="text"  class="d-none" name="id_factura" value="<?php echo $id_factura; ?>">
                                    

                                <div class="regerv_btn col-md-12">
                                        <a><button onclick="envio()" type="submit" name="save" class="btn_2">Cobrar</button></a>
                                        <a href="Caja.php" ><button type=button class="btn_2" style="color: #FFFF;">Cancelar</button></a>     
                                </div>
                            </div>
                        </form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::regervation_part end::-->
<script>
   function envio() {

  const $ok=  window.confirm('Factura creada con Éxito');
    setTimeout(() => {
        
    console.log($ok);
    if ($ok) {
        window.location.href= 'Caja.php';
    }else{
        window.location.href= 'Caja.php';
    }

    }, 1000);
    }
</script>
    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
</body>

</html>