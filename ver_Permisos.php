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
                            VALUES ('$id_usuario',11,'Delete','SE ELIMINÓ UN DIAGNÓSTICO')") ;
						echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
					}
				}
			}
	 ?>
	
	
	<form action="modulo_permisos.php" method="post" >
  
	<button id="btn_confirmar" type="submit" name="update_permisos" class="genric-btn info circle" >Confirmar</button>
   
  
	<br>
	<br>
		
		
		
		<div class="table-responsive">
			<table id="datatableUsuarios"  class="table table-striped table-hover">
				<input class="d-none"  type="text" value="<?php echo $row['Rol']; ?>" > 
				<input  class="d-none" type="text" value="<?php echo $row['ID_Rol']; ?>" name="id_rol" > 
				<thead>
					<tr>
						<th>ID</th>
						<th>Vistas</th>
						<th>Rol</th>
						<th>Insertar</th>
						<th>Eliminar</th>
						<th>Actualizar</th>
						<th>Consultar</th>
						
					</tr>
				</thead>
				<tbody>
								
				<?php
				$sql = mysqli_query($con, "SELECT tbl_roles.ID_Rol,tbl_roles.Rol,tbl_objetos.id_objeto,tbl_objetos.objeto,
				tbl_permisos.permiso_insertar,tbl_permisos.permiso_eliminar,tbl_permisos.permiso_actualizar,
				tbl_permisos.permiso_consultar,tbl_permisos.id_permiso FROM tbl_permisos INNER JOIN tbl_roles 
				ON tbl_permisos.id_rol=tbl_roles.ID_Rol INNER JOIN tbl_objetos
				ON tbl_permisos.id_objeto=tbl_objetos.id_objeto
				WHERE tbl_roles.ID_Rol=$nik");
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">No hay datos.</td></tr>';
					//($row['permiso_insertar']==1) ? $boton='<button     type="button" class="btn btn-success btn-xs glyphicon glyphicon-ok"></button>' : $boton='<button   type="button" class="btn btn-danger btn-xs glyphicon glyphicon-remove"></button>';
				}else{
					$no = 1;
					$n1=1;
					
					
				
											
					while($row = mysqli_fetch_assoc($sql)){
						$btnIn="btn-".$n1;
						$btnupdate="btnup-".$n1;
						$btndel="btndel-".$n1;
						$btnquery="btnquery-".$n1;
						$id_vista="id_objeto-".$n1;

					($row['permiso_insertar']==1) ? $boton='<button     type="button"   onclick="activar(this)" id='."$btnIn".'     class="btn btn-success btn-xs glyphicon glyphicon-ok"></button>' : $boton='<button   type="button" onclick="activar(this)" id='."$btnIn".'     class="btn btn-danger btn-xs glyphicon glyphicon-remove"></button>';
					($row['permiso_eliminar']==1) ? $boton2='<button    type="button"   onclick="activar(this)" id='."$btndel".'    class="btn btn-success btn-xs glyphicon glyphicon-ok"></button>' : $boton2='<button  type="button" onclick="activar(this)" id='."$btndel".'    class="btn btn-danger btn-xs glyphicon glyphicon-remove"></button>';
					($row['permiso_actualizar']==1) ? $boton3='<button  type="button"   onclick="activar(this)" id='."$btnupdate".' class="btn btn-success btn-xs glyphicon glyphicon-ok"></button>' : $boton3='<button  type="button" onclick="activar(this)" id='."$btnupdate".' class="btn btn-danger btn-xs glyphicon glyphicon-remove"></button>';
					($row['permiso_consultar']==1) ? $boton4='<button   type="button"   onclick="activar(this)" id='."$btnquery".'  class="btn btn-success btn-xs glyphicon glyphicon-ok"></button>' : $boton4='<button  type="button" onclick="activar(this)" id='."$btnquery".'  class="btn btn-danger btn-xs glyphicon glyphicon-remove"></button>';

					echo'
					<tr>
					<td>'.$row["id_permiso"].'
					<input type="text" class="d-none" value="'.$row['id_permiso'] .'" name="id_permiso['.$row['id_permiso'] .']">
					</td>
					<td>'.$row["objeto"].'</td>
					<td>'.$row["Rol"].'</td>
					<td>'.$boton.'
					<input type="text" class="d-none '.$btnIn.'" value="'.$row['permiso_insertar'].'" name="permiso_insertar['.$row['id_permiso'] .']">
					<input type="text" class="d-none" value="'.$row['id_objeto'] .'" name="id_vista[]">
					</td>
					<td>'.$boton2.'
					<input type="text" class="d-none '.$btndel.'" value="'.$row['permiso_eliminar'].'" name="permiso_eliminar['.$row['id_permiso'] .']">
					</td>
					<td>'.$boton3.'
					<input type="text" class="d-none '.$btnupdate.'" value="'.$row['permiso_actualizar'].'" name="permiso_actualizar['.$row['id_permiso'] .']">
					</td>
					<td>'.$boton4.'
					<input type="text" class="d-none '.$btnquery.'" value="'.$row['permiso_consultar'].'" name="permiso_consultar['.$row['id_permiso'] .']">
					</td>';
					

					/*	echo'
						<tr>
						<td>'.$row["id_permiso"].'</td>
						<td>'.$row["objeto"].'</td>
						<td>'.$row["Rol"].'</td>
						<td>'.$row["permiso_insertar"].'</td>
						<td>'.$row["permiso_eliminar"].'</td>
						<td>'.$row["permiso_actualizar"].'</td>
						<td>'.$row["permiso_consultar"].'</td>
						
							';*/
							
					
					 $no++;
					 $n1++;
					}
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
	const $btn_confirmar=document.getElementById("btn_confirmar");
	let clase="."+id;
	const $input=document.querySelector(clase);
	
	console.log($input);
	 let siExiste1=$btn_insert.classList.contains("glyphicon-ok"),
	 siExiste2=$btn_insert.classList.contains("btn-success");

	 	if (siExiste1 && siExiste2) {
	 		$btn_insert.classList.replace("glyphicon-ok","glyphicon-remove");
	 		$btn_insert.classList.replace("btn-success","btn-danger");
			/**cambio de color del boton confirmar */
			 $btn_confirmar.classList.remove("info");
			$btn_confirmar.classList.add("danger"); 
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
</body>


</html>