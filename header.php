<?php

include ('conexion.php');
$usuario=$_SESSION['Nom_Usuario'];
$rolUsuario=$_SESSION['ID_Rol'];

?>

<?php
switch ($rolUsuario) {
    case '1':?>

       <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.php"> <img src="img/franclar_logo.png" srcset="img/franclar_logo.png 800w" sizes= "(min-width: 1000px) 50vw, (min-width: 800px) 80vw, (min-width: 600px) 100vw, (min-width: 300px) 145vw, , (min-width: 250px) 100vw, (min-width: 100px) 100vw" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                              
                                
                                <li class="nav-item active">
                                    <a class="nav-link" href="Index.php">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Preclínica
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Preclinica.php">Preclínica General</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pacientes
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Pacientes.php">Ingresar Pacientes</a>
                                        <a class="dropdown-item" href="Cita.php">Citas</a>
                                        <a class="dropdown-item" href="Consulta.php">Consultas</a>
                                        <a class="dropdown-item" href="Expediente.php">Expediente</a>
                                    </div>
                                </li>
                                

                                <li class="nav-item active">
                                    <a class="nav-link" href="Caja.php">Caja</a>
                                </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Mantenimiento
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <form action="accesos.php" method="post">
                                    
                                        <button type="submit" name="personal" class="dropdown-item">
                                            Personal
                                        </button>
                                        <button type="submit" name="usuarios" class="dropdown-item">
                                            Usuarios
                                        </button>
                                        
                                        <button type="submit" name="cargos" class="dropdown-item">
                                            Cargos
                                        </button>
                                        <button type="submit" name="especialidades" class="dropdown-item">
                                        Especialidades
                                        </button>
                                        <button type="submit" name="estado_civil" class="dropdown-item">
                                        Estado Civil
                                        </button>
                                        <button type="submit" name="genero" class="dropdown-item">
                                        Género
                                        </button>
                                        <button type="submit" name="religion" class="dropdown-item">
                                        Religión
                                        </button>
                                        <button type="submit" name="tipo_sangre" class="dropdown-item">
                                        Tipos de Sangre
                                        </button>
                                        <button type="submit" name="parentesco" class="dropdown-item">
                                        Parentesco
                                        </button>
                                        <button type="submit" name="diagnostico" class="dropdown-item" >
                                        Diagnósticos
                                        </button>
                                        <button type="submit" name="cobros_adicionales" class="dropdown-item">
                                        Cobros Adicionales
                                        </button>    
                                        </form>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Seguridad y Administración
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <form action="accesos.php" method="post">
                                            
                                            <p class="dropdown-item" >--SEGURIDAD--</p>
                                            <button type="submit" name="roles" class="dropdown-item">
                                                Roles
                                            </button>
                                            
                                            
                                            <button type="submit" name="rol_y_permiso" class="dropdown-item">
                                                Permisos
                                            </button>
                                            
                                            <button type="submit" name="P_seguridad" class="dropdown-item">
                                                Parámetros de seguridad
                                            </button>
                                            
                                            <button type="submit" name="p_sistema" class="dropdown-item">
                                                Parámetros del sistema
                                            </button>

                                            <button type="submit" name="p_preguntas" class="dropdown-item">
                                                Preguntas Secretas
                                            </button>
                                            
                                            <p class="dropdown-item" >--ADMINISTRACION--</p>
                                            
                                            <button type="submit" name="gestion_bd" class="dropdown-item">
                                               Respaldo DB
                                            </button>
                                            
                                            <button type="submit" name="restablecer_bd" class="dropdown-item" >
                                                Restablecer DB
                                            </button>
                                            
                                            <button type="submit" name="bitacora" class="dropdown-item">
                                                Bitacora
                                            </button>
                                            
                                        </form>
                                    </div>
                                </li>
                                
                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item glyphicon glyphicon-off "  href="cerrar.php" > Salir</a>
                                        <a class="dropdown-item glyphicon glyphicon-cog" href="Administrar_Usuario.php"> Cambiar Contraseña</a>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header> 
     
<?php 
        break;
        ?>
   
 
   <?php
   case '2':?>
      
      <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.php"> <img src="img/franclar_logo.png" srcset="img/franclar_logo.png 800w" sizes= "(min-width: 1000px) 50vw, (min-width: 800px) 80vw, (min-width: 600px) 100vw, (min-width: 300px) 145vw, , (min-width: 250px) 100vw, (min-width: 100px) 100vw" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                              
                                
                                <li class="nav-item active">
                                    <a class="nav-link" href="Index.php">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Preclínica
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Preclinica.php">Preclínica General</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pacientes
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Pacientes.php">Ingresar Pacientes</a>
                                        <a class="dropdown-item" href="Cita.php">Citas</a>
                                        <a class="dropdown-item" href="Consulta.php">Consultas</a>
                                    </div>
                                </li>
                                

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Reportes
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="RPacientes.php">Pacientes</a>
                                    <a class="dropdown-item" href="RCitas.php">Citas</a>
                                    <a class="dropdown-item" href="RConsultas.php">Consultas</a>
                                    <a class="dropdown-item" href="RPagos.php">Pagos</a>
                                    <a class="dropdown-item" href="RMantenimiento.php">Mantenimiento</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Mantenimiento
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <form action="accesos.php" method="post">
                                    <a href="personal.php">
                                        <button type="submit" name="personal" class="dropdown-item">
                                            Personal
                                        </button></a>
                                        <a href="usuarios.php" class="dropdown-item">Usuarios</a>
                                        <a href="Parametros.php" class="dropdown-item">Parámetros</a>
                                        <a href="cargos.php" class="dropdown-item">Cargos</a>
                                        <a href="Especialidades.php" class="dropdown-item">Especialidades</a>
                                        <a href="Estado_Civil.php" class="dropdown-item">Estado Civil</a>
                                        <a href="Sexo.php" class="dropdown-item">Sexos</a>
                                        <a href="Religiones.php" class="dropdown-item">Religiones</a>
                                        <a href="Tipo_Sangre.php" class="dropdown-item">Tipos de Sangre</a>
                                        <a href="Diagnosticos.php"  >
                                            <button type="submit" name="diagnostico" class="dropdown-item" >Diagnosticos</button></a>
                                        </form>
                                    </div>
                                </li>
                               
                                
                                <li class="nav-item dropdown  ">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item glyphicon glyphicon-off "  href="cerrar.php" > Salir</a>
                                        <a class="dropdown-item glyphicon glyphicon-cog" href="Administrar_Usuario.php"> Cambiar Contraseña</a>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>       
        <?php break;
        ?>

  
  <?php
   case '4':?>
      
      <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.php"> <img src="img/franclar_logo.png" srcset="img/franclar_logo.png 800w" sizes= "(min-width: 1000px) 50vw, (min-width: 800px) 80vw, (min-width: 600px) 100vw, (min-width: 300px) 145vw, , (min-width: 250px) 100vw, (min-width: 100px) 100vw" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                              
                                
                                <li class="nav-item active">
                                    <a class="nav-link" href="Index.php">Home</a>
                                </li>
                               
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   Caja
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Caja.php">Cobrar</a>
                                    
                                </div>
                            </li>

                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item glyphicon glyphicon-off "  href="cerrar.php" > Salir</a>
                                        <a class="dropdown-item glyphicon glyphicon-cog" href="Administrar_Usuario.php"> Cambiar Contraseña</a>
                                    </div>
                                </li>

                         
                               
                                
                              
                                
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>       
        <?php break;?>
<?php }?>


<!-- <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.php"> <img src="img/franclar_logo.png" srcset="img/franclar_logo.png 800w" sizes= "(min-width: 1000px) 50vw, (min-width: 800px) 80vw, (min-width: 600px) 100vw, (min-width: 300px) 145vw, , (min-width: 250px) 100vw, (min-width: 100px) 100vw" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Bienvenido <?php echo $_SESSION['Nom_Usuario']; ?></a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="Index.php">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Preclínica
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Preclinica.php">Preclínica General</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pacientes
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="Pacientes.php">Ingresar Pacientes</a>
                                        <a class="dropdown-item" href="Cita.php">Citas</a>
                                        <a class="dropdown-item" href="Consulta.php">Consultas</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Mantenimiento
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a href="personal.php" class="dropdown-item">Personal</a>
                                        <a href="usuarios.php" class="dropdown-item">Usuarios</a>
                                        <a href="Parametros.php" class="dropdown-item">Parámetros</a>
                                        <a href="cargos.php" class="dropdown-item">Cargos</a>
                                        <a href="Especialidades.php" class="dropdown-item">Especialidades</a>
                                        <a href="Servicios.php" class="dropdown-item">Servicios</a>
                                        <a href="Estado_Civil.php" class="dropdown-item">Estado Civil</a>
                                        <a href="Sexo.php" class="dropdown-item">Sexos</a>
                                        <a href="Religiones.php" class="dropdown-item">Religiones</a>
                                        <a href="Tipo_Sangre.php" class="dropdown-item">Tipos de Sangre</a>
                                        <a href="Diagnosticos.php" class="dropdown-item">Diagnósticos</a>
                                    </div>
                                </li>


                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Reportes
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="RPacientes.php">Pacientes</a>
                                        <a class="dropdown-item" href="RCitas.php">Citas</a>
                                        <a class="dropdown-item" href="RConsultas.php">Consultas</a>
                                        <a class="dropdown-item" href="RPagos.php">Pagos</a>
                                        <a class="dropdown-item" href="RMantenimiento.php">Mantenimiento</a>
                                    </div>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="cerrar.php">Cerrar Sesión</a>
                                </li>

                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header> -->