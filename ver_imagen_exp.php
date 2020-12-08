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
    
    
    
    <?php
    $sql = mysqli_query($con, "SELECT * FROM tbl_fotos_consultas WHERE ID_Cita='$nik'");

    if(mysqli_num_rows($sql) == 0){
			echo '<h2>No hay fotos asociadas a esta cita.</h2>';
        }else{
            $no = 1;
            while($row = mysqli_fetch_assoc($sql)){	
            ?>
                <div >
                    <img width="400" src="data:<?php echo $row['tipo_imagen']; ?>;base64,<?php echo base64_encode($row['imagen']); ?>" >			
                    <br>
                    <br>
                    <br>
                </div>
                						
                <?php
                $no++;
                }
                
            }
	?>


	
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
</body>

<?php
        include 'Copyright.php'
?>

</html>