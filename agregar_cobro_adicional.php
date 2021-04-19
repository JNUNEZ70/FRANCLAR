<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php'
?>
<?php
include 'conexion.php';
include 'script.php';
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
                        <h2>Agregar Cobro Adicional</h2>
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
                        <form method="POST" action="guardar_cobro_adicional.php" autocomplete="off">
                            <h2>Ingrese Nuevo Cobro</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input onkeyup="mayus(this);" type="text" class="form-control" id="nombre_cobro" maxlength="50" name="Nombre" title="Nombre del cobro" placeholder="Nombre del Cobro" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input onkeypress="return solonumeros(event)"  type="text" class="form-control" id="precio_cobro" maxlength="5" name="precio" title="Precio del cobro" placeholder="Precio del Cobro" required>
                                </div>
                                <div class="regerv_btn col-md-8" >
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <a href="cobros_adicionales.php" class="btn_2">Cancelar</a>
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

    document.getElementById("nombre_cobro").addEventListener('keydown',sinNumeros);
    document.getElementById("nombre_cobro").addEventListener('keydown',sinCaracteres);
    document.getElementById("nombre_cobro").addEventListener('keydown',permitirUnEspacio);
    
    
    document.getElementById("Precio_Cobro").addEventListener('keydown',impedirEspacios);    

    </script>
</body>

</html>