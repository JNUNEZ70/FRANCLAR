<!doctype html>
<html lang="es">

<?php
session_start();
include 'head.php'
?>

<?php
include 'conexion.php'
?>

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
                            <h2>Pacientes</h2>
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
			$cek = mysqli_query($con, "SELECT * FROM tbl_pacientes WHERE ID_Paciente='$nik'");
			if(mysqli_num_rows($cek) == 0){
				echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
			}else{
				$delete = mysqli_query($con, "DELETE FROM tbl_pacientes WHERE ID_Paciente='$nik'");
				if($delete){
					$id_usuario= $_SESSION['ID_Usuario'];
						$insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
						VALUES ('$id_usuario',4,'Delete','SE ELIMINÓ UN PACIENTE')") or die(mysqli_error());
					echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminados correctamente.</div>';
				}else{
					echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
				}
			}
		}
	 ?>
    <form class="form-inline my-2 my-lg-0 float-left">
			<a href="agregarpaciente.php" class="genric-btn info circle">Agregar</a>
	</form>	
    <form class="form-inline my-2 my-lg-0 float-left">
        <a class="genric-btn btn-danger circle" onclick="buscar_paciente()" href="#">
        <i class="fas fa-file-pdf fa-lg"> </i> Generar Reporte</a>
	</form>	
	<br>
    <br>
    <br>
        <div class="table-responsive">
            <table id="datatableUsuarios" class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Acciones</th>
                    <th>No</th>
                    <th>Nombre</th>
                    <th>Tipo de documento</th>
                    <th>Identidad</th>
                    <th>Fecha de nacimiento</th>
                    <th>Edad</th>
                    <th>Email</th>
                    <th>Teléfono Fijo</th>
                    <th>Celular</th>
                    <th>Dirección</th>
                    <th>Género</th>
                    <th>Estado Civil</th>
                    <th>Religión</th>
                    <th>Tipo de Sangre</th>
                    <th>Contacto</th>
                    <th>Parentesco</th>
                    <th>Teléfono Fijo</th>
                    <th>Celular</th>
                    <th>Antecendentes Personales</th>
                    <th>Antecendentes Hospitalarios</th>
                    <th>Antecendentes Alérgicos</th>
                    <th>Antecendentes Familiares</th>
                    <th>Hábitos</th>                    
                </tr>
                </thead>
                <tbody>
                    <?php
                        $sql = mysqli_query($con, "SELECT tbl_pacientes.ID_Paciente,
                        tbl_tipo_documento.ID_tipo_documento,
                        tbl_tipo_documento.Descripcion_tipo_documento,	
                        tbl_pacientes.Nom_Paciente,
                        tbl_pacientes.cedula,
                        tbl_pacientes.Fec_Nacimiento,
                        tbl_pacientes.Edad,	
                        tbl_pacientes.Email,	
                        tbl_pacientes.Tel_Paciente,	
                        tbl_pacientes.Cel_Paciente,
                        tbl_pacientes.Dir_Paciente,
                        tbl_sexo.Descripcion_sexo,	
                        tbl_estado_civil.Descripcion_est_civil,
                        tbl_religion.Descripcion_Religion,
                        tbl_tipo_sangre.Descripcion_Sangre,
                        tbl_pacientes.Contacto_Emergencia,	
                        tbl_parentesco.ID_Parentesco,
                        tbl_parentesco.Parentesco,
                        tbl_pacientes.Tel_Emergencia,	
                        tbl_pacientes.Cel_Emergencia,
                        tbl_pacientes.Antecedentes_Personales,
                        tbl_pacientes.Antecedentes_Hospitalarios,	
                        tbl_pacientes.Antecedentes_Alergicos,
                        tbl_pacientes.Antecedentes_Familiares,
                        tbl_pacientes.Habitos FROM tbl_pacientes 
                        INNER JOIN tbl_tipo_documento on tbl_pacientes.ID_tipo_documento = tbl_tipo_documento.ID_tipo_documento
                        INNER JOIN tbl_sexo on tbl_pacientes.ID_Sexo = tbl_sexo.ID_Sexo
                        INNER JOIN tbl_estado_civil on tbl_pacientes.ID_Est_Civil = tbl_estado_civil.ID_Est_Civil
                        INNER JOIN tbl_parentesco on tbl_pacientes.ID_Parentesco = tbl_parentesco.ID_Parentesco
                        INNER JOIN tbl_religion on tbl_pacientes.ID_Religion = tbl_religion.ID_Religion
                        INNER JOIN tbl_tipo_sangre on tbl_pacientes.ID_Tipo_Sangre = tbl_tipo_sangre.ID_Tipo_Sangre");
                       
                           error_reporting(0);
                        if(mysqli_num_rows($sql) == 0){
                          
                            echo '<tr><td colspan="8">No hay datos.</td></tr>';
                        }else{
                            $no = 1;
                            while($row = mysqli_fetch_assoc($sql)){
                                echo '
                                <tr>
                                    <td>							
                                        <a href="EditarPaciente.php?nik='.$row['ID_Paciente'].'" title="Editar datos" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                        <a href="ver_expediente.php?nik='.$row['ID_Paciente'].'" title="ver expediente" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span></a>                                        
                                        <a href="Pacientes.php?aksi=delete&nik='.$row['ID_Paciente'].'" title="Eliminar" onclick="return confirm(\'¿Está seguro de borrar los datos del paciente '.$row['Nom_Paciente'].'?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                    </td>
                                    <td>'.$row['ID_Paciente'].'</td>
                                    <td>'.$row['Nom_Paciente'].'</td>
                                    <td>'.$row['Descripcion_tipo_documento'].'</td>
                                    <td>'.$row['cedula'].'</td>
                                    <td>'.$row['Fec_Nacimiento'].'</td>
                                    <td>'.$row['Edad'].'</td>
                                    <td>'.$row['Email'].'</td>
                                    <td>'.$row['Tel_Paciente'].'</td>
                                    <td>'.$row['Cel_Paciente'].'</td>
                                    <td>'.$row['Dir_Paciente'].'</td>
                                    <td><span class="label label-info">'.$row['Descripcion_sexo'].'</span></td>
                                    <td><span class="label label-success">'.$row['Descripcion_est_civil'].'</span></td>
                                    <td><span class="label label-warning">'.$row['Descripcion_Religion'].'</span></td>
                                    <td><span class="label label-danger">'.$row['Descripcion_Sangre'].'</span></td>
                                    <td>'.$row['Contacto_Emergencia'].'</td>
                                    <td><span class="label label-default">'.$row['Parentesco'].'</span></td>
                                    <td>'.$row['Tel_Emergencia'].'</td>
                                    <td>'.$row['Cel_Emergencia'].'</td>
                                    <td>'.$row['Antecedentes_Personales'].'</td>
                                    <td>'.$row['Antecedentes_Hospitalarios'].'</td>
                                    <td>'.$row['Antecedentes_Alergicos'].'</td>	
                                    <td>'.$row['Antecedentes_Familiares'].'</td>
                                    <td>'.$row['Habitos'].'</td>                                    			
                                </tr>
                                ';
                                $no++;
                            }
                        }
                      
                    ?>
                </tbody>
            </table>
        </div>
        <br><br><br><br><br><br><br>
    <!-- footer part end-->

    <!-- jquery plugins here-->

    <?php
        include 'script.php'
    ?>
</body>

</html>