<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php'
?>
<?php
include 'conexion.php'
?>
<?php

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
                            <h2>Agregar Usuario</h2>
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
                    <!-- action="GuardarUsuario.php" -->
                        <form id="Form_registrar_usuario" method="POST" action="GuardarUsuario.php"  autocomplete="off">
                            <h2>Datos del usuario</h2>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <select class="form-control select_buscador"  id="ColaboradorU" name="Colaborador" required data-toggle="tooltip" data-placement="top" title="Seleccione al Colaborador">
                                        <option value="0">Seleccione al Colaborador</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_empleado");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Empleado']."'>".$fila['Nom_Empleado']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" id="email" name="EmailU" maxlength="50" onkeypress="return Correo(event)" placeholder="Correo Electrónico" required data-toggle="tooltip" data-placement="top" title="Correo Electrónico">
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="text" class="form-control" id="NomU" name="Nom_Usuario" maxlength="20" onkeypress="return soloLetras(event)" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Nombre de usuario"  required data-toggle="tooltip" data-placement="bottom" title="Nombre de usuario">
                                    
                                </div>                                
                                <div class="input-group col-md-4">
                                    <input value= "<?php echo generar_password_complejo(3) ?>" type="text" class="form-control" id="passwordU" name="Password"  minlength="8" maxlength="30" placeholder="Contraseña" readonly required data-toggle="tooltip" data-placement="bottom" title="Contraseña">
                                </div>               
                                <div class="form-group col-md-4">
                                    <select class="form-control" id="RolU" name="Rol" required data-toggle="tooltip" data-placement="bottom" title="Seleccione el rol">
                                        <option value="">Seleccione el rol</option>
                                        <?php
                                          $sql=$con -> query("Select * from tbl_roles WHERE ID_Rol <> 5");

                                          while($fila=$sql->fetch_array()){
                                              echo "<option value='".$fila['ID_Rol']."'>".$fila['Rol']."</option>";
                                          }
                                        ?>
                                    </select>
                                </div>
                    
                                <div class="regerv_btn">
                                    <button type="submit" name="add" class="btn_2">Guardar</button>
                                    <a href="Usuarios.php" class="btn_2">Cancelar</a>
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
    function generar_password_complejo($largo){
        $mayusc = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $minusc = 'abcdefghijklmnopqrstuvwxyz';
        $num = '0123456789';
        $carac = '!"#$%&()=?*+';

        $password = '';
        $limite_mayusc = strlen($mayusc) - 1;
        $limite_minusc = strlen($minusc) - 1;
        $limite_num = strlen($num) - 1;
        $limite_carac = strlen($carac) - 1;

        for ($i=0; $i < $largo; $i++)

            $password .= $mayusc[rand(0, $limite_mayusc)] . $minusc[rand(0, $limite_minusc)] . $num[rand(0, $limite_num)] . $carac[rand(0, $limite_carac)];

        return $password;
    }

    ?>            

    <?php
        include 'script.php'
    ?>

      
    <script>

    document.getElementById("email").addEventListener('keydown',impedirEspacios);
    $('[data-toggle="tooltip"]').tooltip()
    </script> 


    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    
</body>

</html>