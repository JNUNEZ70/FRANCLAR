<!doctype html>
<html lang="es">

<link rel="stylesheet" href="css/galeria_fotos.css">
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
    <?php
	$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				
	 ?>

    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                            <?php echo '<h3 style="color: #ffff;"> Imagenes tomadas en la cita Número '.$nik.' </h3>' ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
   
    <div class="galeria">
	 
        <?php
        $sql = mysqli_query($con, "SELECT tbl_citas.ID_Cita, 
        tbl_pacientes.Nom_Paciente,
        tbl_citas.Fec_Atencion,
        tbl_fotos_consultas.URL_Foto FROM tbl_fotos_consultas 
        INNER JOIN tbl_citas ON tbl_fotos_consultas.ID_Cita = tbl_citas.ID_Cita
        INNER JOIN tbl_pacientes ON tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente WHERE tbl_fotos_consultas.ID_Cita='$nik'");

            if(mysqli_num_rows($sql) == 0){
                echo '<h2>No hay fotos asociadas a esta cita.</h2>';
                }else{
                    $no = 1;
                    $n=1;
                    while($row = mysqli_fetch_assoc($sql)){	
                        $id= "btnControle".$n
                    ?>
                    
                        <div>
                            <input type="checkbox" id="<?php echo $id?>"/>
                            <label for="<?php echo $id?>">
                            <span> 
                            <p>Cita numero <?php echo $row['ID_Cita'];?></p>    
                            <p><?php echo $row['Nom_Paciente'];?></p>
                            <p> Fecha <?php echo $row['Fec_Atencion'];?></p>
                            </span>
                                <img width="500" hight="500" src="<?php echo $row['URL_Foto'];?>" alt="Foto_consulta" >			
                            </label>
                            <div>
                                
                            </div> 
                        </div>
                                        
                    <?php
                    $no++;
                    $n++;
                    }
                                    
                    }
        ?>

</div>

<!-- footer part end-->

<!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
    <script>
        // Tentei não usar JS, mas... ( -.-')
// I try not use JS, but... ( -.-')

jQuery('input[type="checkbox"]').on('change', function() {
   jQuery('input[type="checkbox"]').not(this).prop('checked', false);
});
    </script>

</body>

<br><br><br><br><br>	

</html>