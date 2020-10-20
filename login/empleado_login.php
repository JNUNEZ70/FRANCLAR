<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FRANCLAR</title>
    <link rel="icon" href="../img/franclar.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="../css/style_nav.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- animate CSS -->
    <link rel="stylesheet" href="../css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="../css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="../css/flaticon.css">
    <!-- magnific popup CSS -->
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <!-- nice select CSS -->
    <link rel="stylesheet" href="../css/nice-select.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="../css/slick.css">
    <!-- glyphicon -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <link href="../css/bootstrap-datepicker.css" rel="stylesheet">
    <!-- search CSS -->
    <link rel="stylesheet" type="../text/css" href="css/search.css">
    
    
</head>
<?php
session_start();

?>
<?php
include 'conexionPDO.php'
?>

<body>

    <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
                        <h2>Auto Registro</h2>
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
                        <form method="POST" action="login_GuardarPersonal.php" autocomplete="off">
                            <h2>Datos Personales</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="NombreEm" maxlength="50" onkeypress="return soloLetras(event)" name="Nombre" placeholder="Nombre" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" maxlength="13" onkeypress="return solonumeros(event)" id="NumeroIDEm" name="NumeroID" placeholder="N�mero de identidad" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" id="FechaNEm" name="FechaN" class="input-group date form-control" date="" data-date-format="dd-mm-yyyy" placeholder="Fecha de nacimiento" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="tel" class="form-control" maxlength="8" onkeypress="return solonumeros(event)" id="TelefonoEm" name="Telefono" placeholder="Tel�fono fijo">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="tel" class="form-control" maxlength="8" onkeypress="return solonumeros(event)" id="CelularEm" name="Celular" placeholder="Celular" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control" id="DireccionEm" name="Direccion" placeholder="Direcci�n" required>
                                </div>
                                <h2>Datos Generales</h2>
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control" id="SexoEm" name="Sexo" required>
                                        <option value="0">Seleccione el sexo</option>
                                        <?php
                                          $sql=$conn -> query("Select * from tbl_sexo");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Sexo']."'>".$fila['Descripcion_sexo']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6" required>
                                    <select class="form-control" id="EstadoCEm" name="EstadoC">
                                        <option value="0" selected>Seleccione su estado civil</option>
                                        <?php
                                          $sql=$conn -> query("Select * from tbl_estado_civil");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Est_Civil']."'>".$fila['Descripcion_est_civil']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <!-- <h2>Datos Espec�ficos</h2> -->
                                <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control d-none" id="CargoEm" name="Cargo" required>
                                        <option value="6" selected>Seleccione un cargo</option>
                                       
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="text" class="form-control d-none" id="SalarioEm" value="0" name="Salario" maxlength="6" onkeypress="return solonumeros(event)" placeholder="Salario" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <select class="form-control d-none" id="EspecialidadEm" name="Especialidad" required>
                                        <option value="8" selected>Seleccione una especialidad</option>
                                        
                                    </select>
                                </div>
                                <div class="regerv_btn">
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <a href="Login.php" class="btn_2">Cancelar</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
        include '../Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'validator_login/scrip.php'
    ?>
    
</body>

</html>
