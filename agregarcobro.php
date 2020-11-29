<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php';
include 'header.php';
?>
<?php
include 'conexion.php'
?>

<body>
    <!--::header part start::-->
    <?php

    $nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
    $sql = mysqli_query($con, "SELECT * FROM tbl_facturas WHERE ID_factura='$nik'");
    $row = mysqli_fetch_assoc($sql);
    $id_cita = $row['ID_cita'];    
   
        if(isset($_POST['add'])){
            
            $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['Nombre'],ENT_QUOTES)));
            $precio =mysqli_real_escape_string($con,(strip_tags($_POST['Precio'],ENT_QUOTES)));
        
        

        $insert = mysqli_query($con, "INSERT INTO tbl_detalle_factura (ID_Factura, descripcion, cobro) 
                                           VALUES ('$nik', '$nombre', '$precio')") or die(mysqli_error());
        
        if($insert){
            // $id_usuario= $_SESSION['ID_Usuario'];
            //                 $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
            //                 VALUES ('$id_usuario',14,'Insert','SE INGRESÓ UN NUEVO SERVICIO')") or die(mysqli_error());
            echo "<script type='text/javascript'>
                alert('El nuevo Servicio ha sido registrado exitosamente');
                window.location.href= 'factura.php?nik=".$id_cita."';
            </script>";
        }else{
            echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
        }
    }


    ?>
    <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                        <h2>Agregar Cobro</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

     <!--::regervation_part start::-->
     <section class="regervation_part section_padding">
        <div class="container">
            <div class="row align-items-center regervation_content">
                <div class="col-lg-7">
                    <div class="regervation_part_iner">
                        <form method="POST" action="" autocomplete="off">
                            <h2>Ingrese el cobro a realizar</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Descripción" maxlength="50" name="Nombre" placeholder="Descripción del cobro a realizar" onkeypress="return soloLetras(event)" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Precio" name="Precio" maxlength="11" placeholder="Precio del servicio" onkeypress="return solonumeros(event)" required>
                                </div>
                               
                                <div class="regerv_btn col-md-8" >
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <?php echo'<a href="factura.php?nik='.$id_cita.'" class="btn_2">Cancelar</a>
                                    '?>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::regervation_part end::-->
    <!-- footer part start-->
    
    
    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    <script>
    document.getElementById("Precio").addEventListener('keyup',sanear);
    document.getElementById("Descripción").addEventListener('keyup',sanear2);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.replace(" ", "");
    }
    function sanear2(e) {
      let contenido = e.target.value;
      e.target.value = contenido.replace("  ", " ");
    }
    </script>
</body>

</html>