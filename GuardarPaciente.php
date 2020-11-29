<?php
session_start();
include ("conexion.php");
?>
<?php
    
	if(isset($_POST['add'])){

        $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['NomPac'],ENT_QUOTES)));
        $numeroid = mysqli_real_escape_string($con,(strip_tags($_POST['NumIDPac'],ENT_QUOTES)));
        $fechan = mysqli_real_escape_string($con,(strip_tags($_POST['FecPac'],ENT_QUOTES)));
        $edad = mysqli_real_escape_string($con,(strip_tags($_POST['EdadPac'],ENT_QUOTES)));
        $email = mysqli_real_escape_string($con,(strip_tags($_POST['EmailPac'],ENT_QUOTES)));
        $telefono = mysqli_real_escape_string($con,(strip_tags($_POST['TelPac'],ENT_QUOTES)));
        $celular = mysqli_real_escape_string($con,(strip_tags($_POST['CelPac'],ENT_QUOTES)));
        $direccion = mysqli_real_escape_string($con,(strip_tags($_POST['DirPac'],ENT_QUOTES)));
        $sexo = mysqli_real_escape_string($con,(strip_tags($_POST['GenPac'],ENT_QUOTES)));
        $estado_civil = mysqli_real_escape_string($con,(strip_tags($_POST['CivilPac'],ENT_QUOTES)));
        $religion = mysqli_real_escape_string($con,(strip_tags($_POST['RelPac'],ENT_QUOTES)));
        $sangre = mysqli_real_escape_string($con,(strip_tags($_POST['SangrePac'],ENT_QUOTES)));
        $tipo = mysqli_real_escape_string($con,(strip_tags($_POST['TipPac'],ENT_QUOTES)));
        $contacto = mysqli_real_escape_string($con,(strip_tags($_POST['ConEmerg'],ENT_QUOTES)));
        $parentesco = mysqli_real_escape_string($con,(strip_tags($_POST['Parentesco_Em'],ENT_QUOTES)));
        $tel_emergencia = mysqli_real_escape_string($con,(strip_tags($_POST['TelEmer'],ENT_QUOTES)));
        $cel_emergencia = mysqli_real_escape_string($con,(strip_tags($_POST['CelEmer'],ENT_QUOTES)));
        $ant_personales = mysqli_real_escape_string($con,(strip_tags($_POST['AntPersonales'],ENT_QUOTES)));
        $ant_hospitalarios = mysqli_real_escape_string($con,(strip_tags($_POST['AntHospitalarios'],ENT_QUOTES)));
        $ant_alergicos = mysqli_real_escape_string($con,(strip_tags($_POST['AntAlergicos'],ENT_QUOTES)));
        $ant_familiares = mysqli_real_escape_string($con,(strip_tags($_POST['AntFamiliares'],ENT_QUOTES)));
        $habitos = mysqli_real_escape_string($con,(strip_tags($_POST['Habito'],ENT_QUOTES)));
        $usuario = $_SESSION['Nom_Usuario'];
        
	$insert = mysqli_query($con, "INSERT INTO tbl_pacientes (Nom_Paciente, cedula, Fec_Nacimiento, Edad, Email, Tel_Paciente, Cel_Paciente, Dir_Paciente, ID_Sexo, ID_Est_Civil, ID_Religion, ID_Tipo_Sangre, ID_TipoPaciente, Contacto_Emergencia, ID_Parentesco, Tel_Emergencia, Cel_Emergencia, Antecedentes_Personales, Antecedentes_Hospitalarios, Antecedentes_Alergicos, Antecedentes_Familiares, Habitos) 
                                       VALUES ('$nombre', '$numeroid', '$fechan', '$edad', '$email', '$telefono', '$celular', '$direccion', '$sexo', '$estado_civil', '$religion', '$sangre', '$tipo', '$contacto', '$parentesco', '$tel_emergencia', '$cel_emergencia', '$ant_personales', '$ant_hospitalarios', '$ant_alergicos', '$ant_familiares', '$habitos')") or die(mysqli_error());
    if($insert){
        $id_usuario= $_SESSION['ID_Usuario'];
                        $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
                        VALUES ('$id_usuario',4,'Insert','SE INGRESÓ UN NUEVO PACIENTE')") or die(mysqli_error());
        echo "<script type='text/javascript'>
            alert('El paciente se ha sido registrado exitosamente');
            window.location.href= 'Pacientes.php';
        </script>";
    }else{
        echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error, no se pudo guardar los datos.</div>';
    }
}
?>