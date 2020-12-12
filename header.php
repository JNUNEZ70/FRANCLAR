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
                                    Atención de Pacientes
                                </a>
                                
                                <form action="accesos.php" method="post"> 
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <button type="submit" name="pacientes" class="dropdown-item">
                                    Gestión de Pacientes
                                    </button>
                                    <button type="submit" name="citas" class="dropdown-item">
                                    Gestión de Citas
                                    </button>  
                                    <button type="submit" name="preclinica" class="dropdown-item">
                                        Preclínica
                                    </button>   
                                    <button type="submit" name="clinica" class="dropdown-item">
                                    Clínica
                                    </button>
                                    <button type="submit" name="expediente" class="dropdown-item">
                                    Expediente
                                    </button>  
                                    <button type="submit" name="caja" class="dropdown-item">
                                        Caja
                                    </button>
                                </li>
                                
                                
                               
                                

                                </form>
                            
                                </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Mantenimiento
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <form action="accesos.php" method="post">                                    
                                                                                              
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
                                            
                                            <p class="dropdown-item" >--ADMINISTRACIÓN--</p>
                                            <button type="submit" name="personal" class="dropdown-item">
                                                Administrar Personal
                                            </button> 

                                            <button type="submit" name="usuarios" class="dropdown-item">
                                                Administrar Usuarios
                                            </button>

                                            <button type="submit" name="gestion_bd" class="dropdown-item">
                                               Respaldo DB
                                            </button>
                                            
                                            <button type="submit" name="restablecer_bd" class="dropdown-item" >
                                                Restablecer DB
                                            </button>
                                            
                                            <button type="submit" name="bitacora" class="dropdown-item">
                                                Bitácora
                                            </button>
                                            
                                        </form>
                                    </div>
                                </li>
                                
                                
                                
                            </ul>
                        </div>
                        <div class="row">
                        <div class="col collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item dropdown float-right">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <form action="accesos.php" method="post">     
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-off " name="cerrar" > Salir</button>
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-cog" name="perfil"  > Cambiar Contraseña</button>
                                       
                                    </form>
                                    </div>
                                </li>  
                            </ul>                                  
                        </div>
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
                                                              
                                

                                <li class="nav-item active">
                                    <a class="nav-link" href="Cita.php">Gestión de Citas</a> 
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="Consulta.php">Gestión de Consultas</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="Expediente.php">Expediente</a>
                                </li>

                            </ul>                            
                        </div>
                        <div class="row">
                        <div class="col collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item dropdown float-right">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <form action="accesos.php" method="post">     
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-off " name="cerrar" > Salir</button>
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-cog" name="perfil"  > Cambiar Contraseña</button>
                                       
                                    </form>
                                    </div>
                                </li>  
                            </ul>                                  
                        </div>
                    </div>
                    </nav>
                </div>
            </div>
        </div>
    </header> 
           
        <?php break;
        ?>
   <?php

   case '3':?>
      
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
                                
                                
                                <li class="nav-item active">
                                    <a class="nav-link" href="Pacientes.php">Gestión de Pacientes</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="Preclinica.php">Preclínica</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="Cita.php">Gestión de Citas</a> 
                                </li>                            
                                <li class="nav-item active">
                                    <a class="nav-link" href="Expediente.php">Expediente</a>
                                </li>                               
                                                                       
                                
                                
                            </ul>
                        </div>

                        <div class="row">
                        <div class="col collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item dropdown float-right">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <form action="accesos.php" method="post">     
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-off " name="cerrar" > Salir</button>
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-cog" name="perfil"  > Cambiar Contraseña</button>
                                       
                                    </form>
                                    </div>
                                </li>  
                            </ul>                                  
                        </div>
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
                             
                             

                             <li class="nav-item active">
                                 <a class="nav-link" href="Caja.php">Caja</a>
                             </li>                                                                                                                           
                         </ul>
                     </div>

                    <div class="row">
                        <div class="col collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item dropdown float-right">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <form action="accesos.php" method="post">     
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-off " name="cerrar" > Salir</button>
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-cog" name="perfil"  > Cambiar Contraseña</button>
                                       
                                    </form>
                                    </div>
                                </li>  
                            </ul>                                  
                        </div>
                    </div>   
                </nav>
             </div>
         </div>
     </div>
 </header> 
        
     <?php break;
     ?>

<?php

case '5':?>
   
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
                            
                                                                                                                                                                                  
                         </ul>
                     </div>

                    <div class="row">
                        <div class="col collapse navbar-collapse main-menu-item justify-content-center" id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item dropdown float-right">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <?php echo $usuario?>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <form action="accesos.php" method="post">     
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-off " name="cerrar" > Salir</button>
                                    <button type="submit" class="dropdown-item glyphicon glyphicon-cog" name="perfil"  > Cambiar Contraseña</button>
                                       
                                    </form>
                                    </div>
                                </li>  
                            </ul>                                  
                        </div>
                    </div>   
                </nav>
             </div>
         </div>
     </div>
 </header> 
        
     <?php break;
     ?>
     


<?php }?>
