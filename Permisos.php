<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php'
?>
<?php
include 'conexion.php';

?>

<body>
    <!--::header part start::-->
    <?php
    include 'header.php';
    ?>
    <!-- Header part end-->
	<?php
			$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
			$sql = mysqli_query($con, "SELECT * FROM tbl_roles WHERE ID_Rol='$nik'");
		
			$row = mysqli_fetch_assoc($sql);

			
		?>
    <!-- breadcrumb start-->
    <section class="breadcrumb_part breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item">
						<h2>Rol: <?php echo $row['Rol'];?></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
    </section>
    <!-- breadcrumb start-->

    <!-- footer part start-->
    <?php
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$nik = mysqli_real_escape_string($con,(strip_tags($_GET["nik"],ENT_QUOTES)));
				$cek = mysqli_query($con, "SELECT * FROM tbl_diagnosticos WHERE ID_Diagnostico='$nik'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
				}else{
					$delete = mysqli_query($con, "DELETE FROM tbl_diagnosticos WHERE ID_Diagnostico='$nik'");
					if($delete){
						$id_usuario= $_SESSION['ID_Usuario'];
							$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                            VALUES ('$id_usuario',11,'Delete','SE ELIMINÓ UN DIAGNÓSTICO')") or die(mysqli_error());
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
	 ?>
	
	
	<form action="modulo_permisos.php" method="post" >
  
	<button type="submit" name="permisos" class="genric-btn info circle" >Confirmar</button>
   
  
	<br>
	<br>
		
		
		<div class="container">
            <div class="row">
                <div class="col-lg-12">
		<input class="d-none" type="text"  value="<?php echo $row['Rol']; ?>" > 
		<input class="d-none" type="text" value="<?php echo $row['ID_Rol']; ?>" name="id_rol" > 
		</div>
		</div>
		</div>
		<div class="table-responsive">
			<table   class="table table-striped table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Vistas</th>
						<th>
							<button onclick="todos(this)" id="insert"type="button" class="btn btn-danger btn-xs glyphicon glyphicon-remove inser_todos insert"></button>		
							Insertar
						</th>
						<th>
							<button onclick="todos(this)" id="delet"  type="button" class="btn btn-danger btn-xs glyphicon glyphicon-remove delet "></button>		
							Eliminar
						</th>
						
						<th>
							<button onclick="todos(this)" id="update"  type="button" class="btn btn-danger btn-xs glyphicon glyphicon-remove update"></button>		
								Actualizar
						</th>
						<th>
							<button onclick="todos(this)" id="query" type="button" class="btn btn-danger btn-xs glyphicon glyphicon-remove query"></button>		
							Consultar
						</th>
					</tr>
				</thead>
				<tbody>
				
				
				<?php
				$sql="SELECT tbl_roles.ID_Rol,tbl_roles.Rol,tbl_objetos.id_objeto,tbl_objetos.objeto,tbl_permisos.permiso_insertar,tbl_permisos.permiso_eliminar,
				tbl_permisos.permiso_actualizar,tbl_permisos.permiso_consultar FROM tbl_permisos INNER JOIN tbl_objetos 
				ON tbl_permisos.id_objeto=tbl_objetos.id_objeto INNER JOIN tbl_roles 
				ON tbl_permisos.id_rol=tbl_roles.ID_Rol WHERE tbl_roles.ID_Rol=$nik";
				$query = mysqli_query($con, $sql);

				$consulta="SELECT * FROM tbl_objetos";
				$ejecutar=mysqli_query($con,$consulta);
				if(mysqli_num_rows($query) == 0){
				
					
					$no = 1;
					$n1=1;
					
					
					while($row = mysqli_fetch_assoc($ejecutar)){
						
						
						$btnIn="btn-".$n1;
						$btnupdate="btnup-".$n1;
						$btndel="btndel-".$n1;
						$btnquery="btnquery-".$n1;
						$id_vista="id_objeto-".$n1;

						
						echo '
						<tr>
						<td>'.$row['id_objeto'].'</td>
						<td>'.$row['objeto'].'</td>	
						
						<td>
						<button onclick="activar(this)" id='."$btnIn".'     type="button" class="btn btn-danger btn-sm glyphicon glyphicon-remove insert"></button>
						<input type="text" class="d-none '.$btnIn.' insert" value="0" name="id_permiso[]">
						<input type="text" class="d-none" value="'.$row['id_objeto'] .'" name="id_vista[]">
						</td>

						
						<td>
						<input type="text" class="d-none '.$btndel.' delet " value="0" name="id_permiso[]">
						<button onclick="activar(this)" id='."$btndel".'  type="button" class="btn btn-danger btn-sm glyphicon glyphicon-remove delet"></button>
						</td>
						
						<td>
						<input type="text" class="d-none '.$btnupdate.' update" value="0" name="id_permiso[]">
						<button onclick="activar(this)" id='."$btnupdate".'   type="button" class="btn btn-danger btn-sm glyphicon glyphicon-remove update"></button>
						</td>

						<td>
						<input type="text" class="d-none '.$btnquery.' query" value="0" name="id_permiso[]">
						<button onclick="activar(this)" id='."$btnquery".'    type="button" class="btn btn-danger btn-sm glyphicon glyphicon-remove query"></button>
						</td>
						
						</tr>
						';
						$n1++;
						
						$no++;
					}
				}else{
					echo '<tr><td colspan="8">Rol Ya tiene permisos.</td></tr>';
					
				}
				?>
				</tbody>
			</table>
		 </div>
	</form>
            <br>
            <br>
            <br>
    <?php
        include 'Copyright.php'
    ?>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
    
<script>
	

	function activar(insert){
	let id = insert.id;
	const $btn_insert=document.getElementById(id);
	let clase="."+id;
	const $input=document.querySelector(clase);
	
	console.log($input);
	 let siExiste1=$btn_insert.classList.contains("glyphicon-ok"),
	 siExiste2=$btn_insert.classList.contains("btn-success");

	 	if (siExiste1 && siExiste2) {
	 		$btn_insert.classList.replace("glyphicon-ok","glyphicon-remove");
	 		$btn_insert.classList.replace("btn-success","btn-danger");
	 		$input.setAttribute("value","0");
	 		$valor=$input.getAttribute("value");
 		console.log($valor);
	 	}else{
	 		$btn_insert.classList.replace("glyphicon-remove","glyphicon-ok");
	 		$btn_insert.classList.replace("btn-danger","btn-success");
	 		$input.setAttribute("value","1");
	 		$valor=$input.getAttribute("value");
 		console.log($valor)
	 	}
	}

	
</script>
<script>

function todos(boton){
	let id = boton.id;
	const $btn_insert=document.getElementById(id);
	let clase="."+id;
	const $input=document.querySelectorAll(clase);
	

	
	for (let index = 0; index < $input.length; index++) {
		const element = $input[index];
	 let siExiste1=element.classList.contains("glyphicon-ok"),
	 siExiste2=element.classList.contains("btn-success");

	console.log(siExiste2,siExiste1);
		
	  	if (siExiste1 && siExiste2) {
	  		element.classList.replace("glyphicon-ok","glyphicon-remove");
	  		element.classList.replace("btn-success","btn-danger");
	  		element.setAttribute("value","0");
	  		$valor=element.getAttribute("value");
 	 	console.log($valor);
	  	}else{
	  		element.classList.replace("glyphicon-remove","glyphicon-ok");
	  		element.classList.replace("btn-danger","btn-success");
	  		element.setAttribute("value","1");
	  		$valor=element.getAttribute("value");
 	 	console.log($valor)
	 	}
	};

}
</script>
</body>

</html>