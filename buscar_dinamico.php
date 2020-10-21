<?php
/////// CONEXIÓN A LA BASE DE DATOS /////////
$host = 'localhost';
$basededatos = 'sistema_franclar';
$usuario = 'root';
$contraseña = '';

$conexion = new mysqli($host, $usuario,$contraseña, $basededatos);
if ($conexion -> connect_errno)
{
	die("Fallo la conexion:(".$conexion -> mysqli_connect_errno().")".$conexion-> mysqli_connect_error());
}

//////////////// VALORES INICIALES ///////////////////////

$tabla="";
//$query="SELECT * FROM tbl_usuario ORDER BY ID_Usuario";
$query =  "SELECT tbl_usuario.ID_Usuario,
                tbl_empleado.Nom_Empleado,
                tbl_usuario.email,
                tbl_usuario.Nom_Usuario,
                tbl_estado_usuario.Descripcion,
                tbl_roles.Rol FROM tbl_usuario
                INNER JOIN tbl_empleado on tbl_usuario.ID_Empleado = tbl_empleado.ID_Empleado
                INNER JOIN tbl_estado_usuario on tbl_usuario.ID_Estado = tbl_estado_usuario.ID_Estado
                INNER JOIN tbl_roles on tbl_usuario.ID_Rol = tbl_roles.ID_Rol";




///////// LO QUE OCURRE AL TECLEAR SOBRE EL INPUT DE BUSQUEDA ////////////
if(isset($_POST['usuario']))
{
	$q=$conexion->real_escape_string($_POST['usuario']);
	$query="SELECT tbl_usuario.ID_Usuario,
	                tbl_empleado.Nom_Empleado,
	                tbl_usuario.email,
	                tbl_usuario.Nom_Usuario,
	                tbl_estado_usuario.Descripcion,
	                tbl_roles.Rol FROM tbl_usuario
	                INNER JOIN tbl_empleado on tbl_usuario.ID_Empleado = tbl_empleado.ID_Empleado
	                INNER JOIN tbl_estado_usuario on tbl_usuario.ID_Estado = tbl_estado_usuario.ID_Estado
	                INNER JOIN tbl_roles on tbl_usuario.ID_Rol = tbl_roles.ID_Rol
	WHERE
		ID_Usuario LIKE '%".$q."%' OR
		Nom_Empleado LIKE '%".$q."%' OR
		email LIKE '%".$q."%' OR
		Nom_Usuario LIKE '%".$q."%' OR
        Descripcion LIKE '%".$q."%' OR
		Rol LIKE '%".$q."%'";
}

$buscarAlumnos=$conexion->query($query);

if ($buscarAlumnos->num_rows > 0)
{
	$tabla.=
	'<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
					<th>No</th>
					<th>Nombre de empleado</th>
					<th>E-mail</th>
					<th>Nombre Usuario</th>
					<th>Estado</th>
					<th>Rol</th>
					<th>Acciones</th>

		</tr>';

	while($filaAlumnos= $buscarAlumnos->fetch_assoc())
	{
    if($filaAlumnos['Descripcion'] == 'Activo'){
    $tabla.= '
      <tr>
        <td>'.$filaAlumnos['ID_Usuario'].'</td>
        <td>'.$filaAlumnos['Nom_Empleado'].'</td>
        <td>'.$filaAlumnos['email'].'</td>
        <td>'.$filaAlumnos['Nom_Usuario'].'</td>
        <td><span class="label label-success">'.$filaAlumnos['Descripcion'].'</span></td>
        <td><span class="label label-warning">'.$filaAlumnos['Rol'].'</span></td>
        <td>
        <a href="EditarUsuario.php?nik='.$filaAlumnos['ID_Usuario'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
        <a href="Usuarios.php?aksi=bloquear&nik='.$filaAlumnos['ID_Usuario'].'" title="Bloquear Usuario" onclick="return confirm(\'¿Está seguro que desea bloquear al usuario '.$filaAlumnos['Nom_Usuario'].'?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
        </td>
     </tr>';
}else{

		$tabla.=
		'<tr>
			<td>'.$filaAlumnos['ID_Usuario'].'</td>
			<td>'.$filaAlumnos['Nom_Empleado'].'</td>
			<td>'.$filaAlumnos['email'].'</td>
			<td>'.$filaAlumnos['Nom_Usuario'].'</td>
			<td><span class="label label-danger">'.$filaAlumnos['Descripcion'].'</span></td>
			<td><span class="label label-warning">'.$filaAlumnos['Rol'].'</span></td>
			<td>
			<a href="EditarUsuario.php?nik='.$filaAlumnos['ID_Usuario'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
			<a href="Usuarios.php?akno=activar&nik='.$filaAlumnos['ID_Usuario'].'" title="Activar Usuario" onclick="return confirm(\'¿Está seguro que desea Activar al usuario '.$filaAlumnos['Nom_Usuario'].'?\')" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></a>
			</td>
		 </tr>';
	}
}

	$tabla.='
	</table>
	</div>';
} else
	{
		$tabla="respaldo conusulta.";
	}


echo $tabla;

?>
<br>
<br>