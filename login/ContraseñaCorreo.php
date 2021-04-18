<!DOCTYPE html>
<html>
    <head>
        <title>Recuperación Correo | Usuarios</title>
        <link rel="shortcut icon" href="img/franclar.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- glyphicon -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href ="css/ContraseñaCorreo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
        <script>
        $(document).on('ready', function(){
            $('#show-hide-pass').on('click', function(e) {

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
            <h1> Cambio de contraseña </h1>
            <form action="iniciologin.php" method="POST" class="login100-form validate-form">
                <!-----Password----->
                <div class="input-group">
                    <label for="Password">Contraseña generada</label>
                    <input type="password" id="contra_generada" name="Gcontraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15."  minlength="8" maxlength="15" placeholder="Ingrese la contraseña generada">
                    <span id="show-hide-passwd" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>
                <div class="input-group">
                    <label for="Password">Nueva contraseña</label>
                    <input type="password" id="nue_contra" name="Ncontraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15."  minlength="8" maxlength="15" placeholder="Ingrese una contraseña nueva">
                    <span id="show-hide-passw" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>
                <div class="input-group">
                    <label for="Password">Confirmar contraseña</label>
                    <input type="password" id="conf_contra" name="Ccontraseña" pattern="^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,30}$" title="Debe contener letras mayúscula, minúsculas, números y caracteres especiales. Mínimo de 8 y máximo de 15."  minlength="8" maxlength="15" placeholder="Confirme su contraseña">
                    <span id="show-hide-pass" action="hide" class="input-group-addon glyphicon glyphicon glyphicon-eye-open"></span>
                </div>
                
                <input type="submit"  value="Aceptar" >
                
                </input>
                
            </form>
        </div>
    </body>
    <script>
        document.getElementById("contra_generada").addEventListener('keyup', sanear);
        document.getElementById("nue_contra").addEventListener('keyup', sanear);
        document.getElementById("conf_contra").addEventListener('keyup', sanear);
        function sanear(e) {
            let contenido = e.target.value;
            e.target.value = contenido.replace(" ", "");
        }
    </script>
</html>