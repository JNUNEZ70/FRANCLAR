<!doctype html>
<html lang="es">


<?php
session_start();
include 'conexion.php'
?>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Citas | Calendario</title>
<link rel="icon" href="img/franclar.png">
<!-- calendario de prueba -->
 <link href='fullcalendar/core/main.css' rel='stylesheet' />
    <link href='fullcalendar/daygrid/main.css' rel='stylesheet' />
    <link href='fullcalendar/list/main.css' rel='stylesheet' />
    <link href='fullcalendar/timegrid/main.css' rel='stylesheet' />
    <script src='fullcalendar/core/main.js'></script>
    <script src='fullcalendar/daygrid/main.js'></script>
    <script src='fullcalendar/interaction/main.js'></script>
    <!-- plugins fullcalendar -->
    <script src='fullcalendar/list/main.js'></script>
    <script src='fullcalendar/timegrid/main.js'></script>
    <!-- boostrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- fin boostrap -->
    <!-- estlos css propios del sistema  -->
    <link href='css/style_nav.css' rel='stylesheet'>
    <link href='css/style.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet">
    <!-- fin de los estilos franclar -->
    <script src="js/franclar.js">
    <script src='fullcalendar/core/main.js'></script>
    <script src='fullcalendar/core/locales/es.js'></script>
    <?php
        if (!isset($_SESSION["Nom_Usuario"]))
        {
            header("Location: ../Franclar/login/login.php");
        } 
    ?>

</script>

    <!-- fin del calenario de prueba -->

</head>
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
                            <h2>Calendario</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    	
    <!-- footer part start-->
    
   
     
      <!-- modal -->
      <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="tituloEvento"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="tituloEvento"></div>
        <div id="descripcion"></div>
      </div>
      <div class="modal-footer">
      <button id="btn_agregar" class="btn btn-success " >Agregar</button>
      <button id="btn_actualizar" class="btn btn-warning" >Actualizar</button>
      <button id="btn_eliminar" class="btn btn-danger">Eliminar</button>
      <button id="btn_cancelar" class="btn btn-default">Cancelar</button>
  
      </div>
    </div>
  </div>
</div>
      <!-- fin del modal -->
      
      <!-- modal para modificar, eliminar y agregar -->
<!-- Modal -->
<div class="modal fade" id="ModalEventos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <form class="form-horizontal" method="POST" action="GuardarCalendario.php" autocomplete="off">
				<div class="modal-header">
				<h5 class="modal-title">Agregar Cita</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
							<div class="form-group">
								<label for="id" class="col-sm-2 control-label">Identidad</label>
								<div class="input-group col-sm-10">
									<input type="text" name="title" class="form-control" id="IDPac" onkeypress="return solonumeros(event)" maxlength="13" placeholder="Identidad del paciente">
										<span class="input-group-btn">
											<button type="button" id="identidad" class="btn btn-default" onclick="consultar_paciente()">
                      <i class="fa fa-search" aria-hidden="true"></i>
											</button>
										</span>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">Nombre</label>
								<div class="col-sm-10">
								<input type="text" class="form-control" id="NomPac" name="NombPaciente" placeholder="Nombre del paciente" readonly>
								</div>
							</div>
							<script type="text/javascript" src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
									<script type="text/javascript">
									
										function consultar_paciente() {
											var identidad = document.getElementById('IDPac').value;
											var enlace='consulta_paciente.php';
											$.ajax({
												type:'POST',
												url:enlace,
												data: 'id='+identidad,
												success:function(response){
													document.getElementById('NomPac').value = response;
													// alert(response);
												}

											});
										}
									</script>
							</script>
							<br>
							<div class="form-group">
								<label for="color" class="col-sm-2 control-label">Especialidad</label>
								<div class="col-sm-10">
								<select class="form-control" id="CargoEm" name="Especialidad">
										<option value="">Seleccionar</option>
										<?php
											$sql=$con -> query("Select * from tbl_especialidad where ID_Especialidad <> 8");

											while($fila=$sql->fetch_array()){
												echo "<option value='".$fila['ID_especialidad']."'>".$fila['Descripcion_espec']."</option>";
											}
											if (['Descripcion_espec'] == 'Medicina General'){
												'<option style="color:#0071c5;" value="#0071c5"></option>';
											}
										?>
										
								</select>
								</div>
							</div>
							<div class="form-group">
								<label for="start" class="col-sm-2 control-label">Fecha</label>
								<div class="col-sm-10">
								<input type="text" class="form-control" id="txt_fecha" name="fecha_atenc" readonly>
								</div>
							</div>
							<div class="form-group">
								<label for="hour" class="col-sm-2 control-label">Hora</label>
								<div class="col-sm-10">
								<input type="time" id="txt_hora" class="form-control" placeholder="Seleccione la hora" name="hora_atenc" required>
								</div>
							</div>
							<div class="form-group">
								<label for="price" class="col-sm-2 control-label">Precio</label>
								<div class="col-sm-10">
								<input type="text" class="form-control" id="Precio" onkeypress="return solonumeros(event)" maxlength="5" name="prec" placeholder="Precio">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-info" data-dismiss="modal">Cerrar</button>
							<button type="submit" name="add" class="btn btn-primary">Guardar</button>
						</div>
      </form>
    </div>
  </div>
</div>
      <!-- fin del modal para modificar, eliminar y agregar -->
    <form class="form-inline my-2 my-lg-0 float-left">
      <a href="Cita.php" class="genric-btn info circle">Ver tabla de citas</a>
    </form>	
    <br>   
   	<br>
	  <br>
    <div class="row">
        <div class="col"></div>
            <div class="col-10">

                <div id='calendar'>
                
                </div>
            </div>
        <div class="col"></div>
    </div>

    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->
<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script>
  $('.date').datepicker({
		format: 'yyyy-mm-dd',
	})
</script>
<script>
    document.getElementById("Precio").addEventListener('keyup', sanear);
    document.getElementById("IDPac").addEventListener('keyup', sanear);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace(" ", "");
    }
    </script>
</body>

</html>