<?php
 require_once('Citas/bdd.php');


 $sql = "SELECT id, title, start, end, color FROM events ";

 $req = $bdd->prepare($sql);
 $req->execute();

 $events = $req->fetchAll();

?>
<?php
session_start();
?>
<?php
include 'conexion.php'
?>
<!DOCTYPE html>
<html lang="es">

<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FRANCLAR</title>
    <link rel="icon" href="img/franclar.png">	
	<!-- FullCalendar -->
	<link href="Citas/css/fullcalendar.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <!-- magnific popup CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- nice select CSS -->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="css/slick.css">
	<!-- glyphicon -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet">
    <!-- Custom CSS -->

</head>

<body>
    <?php
    include 'header.php';
    ?>
    <div class="container">
                <div id="calendar" class="col-md-12">
            </div>
			
        <!-- /.row -->
		
		<div class="modal" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<form class="form-horizontal" method="POST" action="GuardarCalendario.php">
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
												<span class="input-group-addon glyphicon glyphicon-search"></span>
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
								<input type="text" class="form-control" id="start" name="fecha_atenc" readonly>
								</div>
							</div>
							<div class="form-group">
								<label for="hour" class="col-sm-2 control-label">Hora</label>
								<div class="col-sm-10">
								<input type="time" id="default-picker" class="form-control" placeholder="Seleccione la hora" name="hora_atenc" required>
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
		
		
		
		<!-- Modal -->
		<div class="modal" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			<form class="form-horizontal" method="POST" action="editEventTitle.php">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Modificar Evento</h4>
			  </div>
			  <div class="modal-body">
				
				  <div class="form-group">
					<label for="title" class="col-sm-2 control-label">Titulo</label>
					<div class="col-sm-10">
					  <input type="text" name="title" class="form-control" id="title" placeholder="Titulo">
					</div>
				  </div>
				  <div class="form-group">
					<label for="color" class="col-sm-2 control-label">Color</label>
					<div class="col-sm-10">
					  <select name="color" class="form-control" id="color">
						  <option value="">Seleccionar</option>
						  <option style="color:#0071c5;" value="#0071c5">&#9724; Azul oscuro</option>
						  <option style="color:#40E0D0;" value="#40E0D0">&#9724; Turquesa</option>
						  <option style="color:#008000;" value="#008000">&#9724; Verde</option>						  
						  <option style="color:#FFD700;" value="#FFD700">&#9724; Amarillo</option>
						  <option style="color:#FF8C00;" value="#FF8C00">&#9724; Naranja</option>
						  <option style="color:#FF0000;" value="#FF0000">&#9724; Rojo</option>
						  <option style="color:#000;" value="#000">&#9724; Negro</option>
						  
						</select>
					</div>
				  </div>
				    <div class="form-group"> 
						<div class="col-sm-offset-2 col-sm-10">
						  <div class="checkbox">
							<label class="text-danger"><input type="checkbox"  name="delete"> Eliminar Evento</label>
						  </div>
						</div>
					</div>
				  
				  <input type="hidden" name="id" class="form-control" id="id">
				
				
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
				<button type="submit" class="btn btn-primary">Guardar</button>
			  </div>
			</form>
			</div>
		  </div>
		</div>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.1 -->
    <script src="Citas/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Citas/js/bootstrap.min.js"></script>
	
	<!-- FullCalendar -->
	<script src="Citas/js/moment.min.js"></script>
	<script src="Citas/js/fullcalendar/fullcalendar.min.js"></script>
	<script src="Citas/js/fullcalendar/fullcalendar.js"></script>
	<script src="Citas/js/fullcalendar/locale/es.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
    <script>
    $('.date').datepicker({
		format: 'yyyy-mm-dd',
	})
    </script>
	
	<script>

	$(document).ready(function() {

		var date = new Date();
       var yyyy = date.getFullYear().toString();
       var mm = (date.getMonth()+1).toString().length == 1 ? "0"+(date.getMonth()+1).toString() : (date.getMonth()+1).toString();
       var dd  = (date.getDate()).toString().length == 1 ? "0"+(date.getDate()).toString() : (date.getDate()).toString();
		
		$('#calendar').fullCalendar({
			header: {
				 language: 'es',
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay',

			},
			defaultDate: yyyy+"-"+mm+"-"+dd,
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			selectable: true,
			selectHelper: true,
			select: function(start, end) {
				
				$('#ModalAdd #start').val(moment(start).format('YYYY-MM-DD'));
				$('#ModalAdd').modal();
			},
			eventRender: function(event, element) {
				element.bind('dblclick', function() {
					$('#ModalEdit #id').val(event.id);
					$('#ModalEdit #title').val(event.title);
					$('#ModalEdit #color').val(event.color);
					$('#ModalEdit').modal('show');
				});
			},
			eventDrop: function(event, delta, revertFunc) { // si changement de position

				edit(event);

			},
			eventResize: function(event,dayDelta,minuteDelta,revertFunc) { // si changement de longueur

				edit(event);

			},
			events: [
			<?php foreach($events as $event): 
			
				$start = explode(" ", $event['start']);
				$end = explode(" ", $event['end']);
				if($start[1] == '00:00:00'){
					$start = $start[0];
				}else{
					$start = $event['start'];
				}
				if($end[1] == '00:00:00'){
					$end = $end[0];
				}else{
					$end = $event['end'];
				}
			?>
				{
					id: '<?php echo $event['id']; ?>',
					title: '<?php echo $event['title']; ?>',
					start: '<?php echo $start; ?>',
					end: '<?php echo $end; ?>',
					color: '<?php echo $event['color']; ?>',
				},
			<?php endforeach; ?>
			]
		});
		
		function edit(event){
			start = event.start.format('YYYY-MM-DD HH:mm:ss');
			if(event.end){
				end = event.end.format('YYYY-MM-DD HH:mm:ss');
			}else{
				end = start;
			}
			
			id =  event.id;
			
			Event = [];
			Event[0] = id;
			Event[1] = start;
			Event[2] = end;
			
			$.ajax({
			 url: 'editEventDate.php',
			 type: "POST",
			 data: {Event:Event},
			 success: function(rep) {
					if(rep == 'OK'){
						alert('Evento se ha guardado correctamente');
					}else{
						alert('No se pudo guardar. Inténtalo de nuevo.'); 
					}
				}
			});
		}
		
	});

</script>
<script>
    document.getElementById("Precio").addEventListener('keyup', sanear);
    document.getElementById("IDPac").addEventListener('keyup', sanear);
    function sanear(e) {
      let contenido = e.target.value;
      e.target.value = contenido.toUpperCase().replace(" ", "");
    }
</script>
    <script>
        function solonumeros(e) {
            var key = e.keyCode || e.which,
            tecla = String.fromCharCode(key).toLowerCase(),
            numeros = " 1234567890",
            especiales = [8, 37, 39, 46],
            tecla_especial = false;

            for (var i in especiales) {
            if (key == especiales[i]) {
                tecla_especial = true;
                break;
            }
            }

            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
            return false;
            }
        }
    </script>
</body>

</html>
