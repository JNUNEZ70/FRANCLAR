<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php'
?>

<?php

include ('conexion.php');
$usuario=$_SESSION['Nom_Usuario'];
$rolUsuario=$_SESSION['ID_Rol'];

?>

<body>
    <!--::header part start::-->
    <?php
    include 'header.php';
    ?>
    <!-- Header part end-->

    <!-- banner part start-->
    <?php
    if ($rolUsuario == 2 or $rolUsuario == 4 or $rolUsuario == 5) {?>
    
    <div class="container d-none" id="botones" > 
    <div class="container">
        <br>        
        <a href="Pacientes.php" class="btn_2">Ingresar Paciente</a>
        <a href="Cita.php" class="btn_2">Ingresar Cita</a>
    </div>
    </div> 

    <?php
     if ($rolUsuario == 5) {?>

        <div class="container"> 
        <div class="container ">
            <br>
            <br>
            <p>Su usuario aún no tiene un rol asignado dentro del sistema, comuníquese con el administrador.</p>
        </div>
        </div>
        
    <?php
     }       
    }else{?>
        <div class="container" id="botones" > 
        <div class="container">
        <br>
        <br>
        <a href="Pacientes.php" class="btn_2">Ingresar Paciente</a>
        <a href="Cita.php" class="btn_2">Ingresar Cita</a>
    </div>
    </div> 

    <?php    
    }
    ?>
    
    
    
    <section class="about_us padding_top">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-6 col-lg-6">
                    <div class="about_us_img">
                        <img src="img/top_service.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="about_us_text">
                        <h2>Sobre nosotros</h2>
                        <p>Somos un equipo de trabajo brindando una atención médica integral con calidad y calidez, satisfaciendo las necesidades en las diferentes áreas que el complejo médico ofrece.</p>
                        <div class="banner_item">
                            <div class="single_item">
                                <img src="img/icon/banner_1.svg" alt="">
                                <h5>Salud</h5>
                            </div>
                            <div class="single_item">
                                <img src="img/icon/banner_2.svg" alt="">
                                <h5>Citas</h5>
                            </div>
                            <div class="single_item">
                                <img src="img/icon/banner_3.svg" alt="">
                                <h5>Servicio Calificado</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about us part end-->

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