<!DOCTYPE html>
<html>
    <head>
        <title>Login | Usuarios</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- glyphicon -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href ="css/master.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
    </head>
    <body>
        <div class = "login-box">
            <img class="avatar" src="img/Logo_franclar.png" alt="Logo De Perfil">
            <h1> Iniciar Sesión </h1>
            <form action="iniciologin.php" method="POST" autocomplete="off" class="login100-form validate-form">
                <!-----Username---->
                <label for="Username">Usuario</label>
                <input type="text" id="LUsuario" name="usuario" maxlength="50" onkeypress="return soloLetras(event)" style="text-transform:uppercase;" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="Ingrese su usuario" autocomplete="off" required>
                
                <!-----Password----->
                <div class="input-group">
                    <label for="Password">Contraseña</label>
                    <input type="password" id="LContraseña" name="contraseña" placeholder="INGRESE SU CONTRASEÑA"  autocomplete="off" required>
                    <span id="show-hide-passwd" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>
                <input type="submit"  value="Entrar" >
                
                </input>
                
                <p> ¿Olvidó su Contraseña? ->> &nbsp; <a href="../login/Recuperacion.php">Recuperar</a> </p>
                <p> ¿No tiene usuario? ->> &nbsp; <a href="empleado_login.php">Regístrese aquí</a> </p><br>
            </form>
        </div>
    </body>
    <script>
        document.getElementById("LUsuario").addEventListener('keyup', sanear);
        document.getElementById("LContraseña").addEventListener('keyup', sanear);
        function sanear(e) {
            let contenido = e.target.value;
            e.target.value = contenido.replace(" ", "");
        }
    </script>
</html>