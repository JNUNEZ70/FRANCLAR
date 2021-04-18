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
                        <h2>Agregar Religión</h2>
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
                        <form method="POST" action="GuardarReligion.php" autocomplete="off">
                            <h2>Ingrese Nueva Religión</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" onkeyup="mayus(this);" id="Nombre_Religion" maxlength="20" name="Nombre" title="Nombre de nueva religión" placeholder="Nombre de nueva religión" required>
                                </div>
                               
                                <div class="regerv_btn col-md-8" >
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <a href="Religiones.php" class="btn_2">Cancelar</a>
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
    document.getElementById("Nombre_Religion").addEventListener('keydown',sinNumeros);
    document.getElementById("Nombre_Religion").addEventListener('keydown',sinCaracteres);
    document.getElementById("Nombre_Religion").addEventListener('keydown',permitirUnEspacio);
    
    </script>

</body>

</html>