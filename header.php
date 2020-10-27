
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
    </header>