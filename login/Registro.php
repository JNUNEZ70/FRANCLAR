<!DOCTYPE html>
<html>
<?php
session_start();
include ("conexionPDO.php");
?>
    <head>
        <title>Registro | Usuarios</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <link rel="stylesheet" href ="css/bootstrap.css">
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
                
                
                <input type="text" id="usuario" name="Nom_Usuario" maxlength="50" onkeypress="return soloLetras(event)" placeholder="Ingrese su usuario" autocomplete="off" required>

                <!-----Password----->
                <label for="Password">Contraseña</label>
                <div class="input-group">
                <input type="password" id="password" name="Contraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15." minlength="8" maxlength="15" placeholder="Ingrese una Contraseña">
                <span id="show-hide-passwd" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>  

                <label for="RPassword">Confirmar contraseña</label>
                <div class="input-group">
                <input type="password" id="confirm_password" name="Rcontraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15." minlength="8" maxlength="15" placeholder="Ingrese de nuevo la Contraseña">
                <span id="show-hide-passw" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>  
                
                <label for="Email">Correo Electrónico</label>
                <input type="email"  name="email" placeholder="Ingrese un correo electrónico">
                
                <input type="submit"  value="Registrar" name="add" >
                
                </input>
                
                <p> Ya tienes una cuenta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="../login/Login.php">Inicie sesión aquí</a></p> <br>
            </form>
        </div>

 <script>
  var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("contraseña no coinciden");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
<script>
        function soloLetras(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            letras = " áéíóúabcdefghijklmnñopqrstuvwxyz",
            especiales = [8, 37, 39, 46],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
    <script>
    document.getElementById("usuario").addEventListener('keyup', sanear);
    document.getElementById("password").addEventListener('keyup', sanear2);
    document.getElementById("confirm_password").addEventListener('keyup', sanear2);
    function sanear(e) {
        let contenido = e.target.value;
        e.target.value = contenido.toUpperCase().replace(" ", "");
    }
    function sanear2(e) {
        let contenido = e.target.value;
        e.target.value = contenido.replace(" ", "");
    }
    </script> 
    <script>
        $(document).on('ready', function(){
            $('#show-hide-passwd').on('click', function(e) {

                var current = $(this).attr('action');

                if (current == 'hide'){
                    $(this).prev().attr('type','text');
                    $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action','show');
                }
                if (current == 'show'){
                    $(this).prev().attr('type','password');
                    $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action','hide');
                }
            })
        })
      </script>
      <script>
        $(document).on('ready', function(){
            $('#show-hide-passw').on('click', function(e) {

                var current = $(this).attr('action');

                if (current == 'hide'){
                    $(this).prev().attr('type','text');
                    $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action','show');
                }
                if (current == 'show'){
                    $(this).prev().attr('type','password');
                    $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action','hide');
                }
            })
        })
      </script>
    </body>
</html>