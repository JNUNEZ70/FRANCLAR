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
                        <h2>Agregar Especialidad</h2>
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
                        <form method="POST" action="GuardarEspecialidad.php" autocomplete="off">
                            <h2>Ingrese Nueva Especialidad</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Nombre_Especialidad" onkeyup="mayus(this);" maxlength="30" name="Nombre" title="Nombre de la especialidad" placeholder="Nombre de la especialidad" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control"  id="Precio" maxlength="5" onkeypress="return solonumeros(event)" maxlength="30" name="Precio" title="Precio del servicio" placeholder="Precio del servicio" required>
                                </div>
                               
                                <div class="regerv_btn col-md-8" >
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <a href="Especialidades.php" class="btn_2">Cancelar</a>
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
    document.getElementById("Nombre_Especialidad").addEventListener('keydown',sinNumeros);
    document.getElementById("Nombre_Especialidad").addEventListener('keydown',sinCaracteres);
    document.getElementById("Nombre_Especialidad").addEventListener('keydown',permitirUnEspacio);

    document.getElementById("Precio").addEventListener('keydown',impedirEspacios);

    
    </script>
</body>

</html>