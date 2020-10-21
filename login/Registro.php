<!DOCTYPE html>
<html lang="es">
<?php
session_start();
include ("conexionPDO.php");
?>
    <head>
        <title>Registro | Usuarios</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href ="css/registro.css">
    </head>
    <body>
        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Registro </h1>
            <form action="login_GuardarUsuario.php" autocomplete="off" method="POST" class="login100-form validate-form">
                <!-----Username---->
                <label for="Username">Usuario</label>
                <?php  $id=$_SESSION['variable']; ?>
                <!-----valores por defecto en autoregistro---->
                <input type="hidden"   name="ID_Empleado"  value='<?php echo $id;?>' class="d-none">
                <input type="hidden"   name="ID_Estado"    value="4" >
                <input type="hidden"   name="Primer_Ingreso"    value="1">
                <input type="hidden"   name="ID_Rol"    value="5">
                
                
                <input type="text" name="Nom_Usuario" style="text-transform:uppercase;" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese su usuario" autocomplete="off" required>

                <!-----Password----->
                <label for="Password">Contraseña</label>
                <input type="password" id="con1" name="Contraseña" placeholder="Ingrese una Contraseña">

                <label for="RPassword">Confirmar contraseña</label>
                <input type="password" name="Rcontraseña" placeholder="Ingrese de nuevo la Contraseña" onkeyup="conf_pass(value)">
                <p id="aviso"></p>

                <label for="Email">Correo Electrónico</label>
                <input type="email"  name="email" placeholder="Ingrese un correo electrónico">
                
                <input type="submit"  value="Registrar" name="add" >
                
                </input>
                
                <p> Ya tienes una cuenta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="../login/Login.php">Ingresar</a></p> <br>
            </form>
        </div>
    </body>

<script>	
    function conf_pass(valor){
        var contraseña1 = document.getElementById('con1').value;
        var contraseña2 = valor 

        if(contraseña1!=contraseña2){
            document.getElementByID('aviso').innerHTML = "sdsdsd";
        }
        
    }

</script>

</html>


