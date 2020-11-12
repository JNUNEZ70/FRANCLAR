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
                        <h2>Configuracion DB</h2>
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
                        <form method="POST" action="modulo_accesoDB.php" autocomplete="off">
                            <h2> Base de Datos</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                        <input type="text" class="form-control" id="Nombre_Rol" maxlength="50" name="server" placeholder="Servidor" required>
                                </div> 

                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Nombre_Rol" maxlength="50" name="DB" placeholder="Base de Datos" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="Nombre_Rol" maxlength="50" name="user" placeholder="Usuario" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control " id="Nombre_Rol" maxlength="50" value="" name="password" placeholder="Password">
                                </div>
                              
                               
                                <div class="regerv_btn col-md-8" >
                                    <button type="submit" name="probar_conexion" class="btn_2">Conexión</button>
                                    <button type="submit" name="respaldo" class="btn_2">respaldo</button>
                                    
                                </div>
                                
                                <a href="pruebas.php"class="btn_2" >Puebas</a>
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
    
</body>

</html>