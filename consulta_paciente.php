<?php
include 'conexion.php'
?>

<?php

if(isset($_POST['id'])){
    $id = $_POST['id'];
    // echo $id;
    $sql = mysqli_query($con, "SELECT * FROM tbl_pacientes WHERE cedula='$id'");
    if(mysqli_num_rows($sql) == 0){
        echo 'La identidad no existe';
        }else{
            $row = mysqli_fetch_assoc($sql);                        
            $nombre = $row['Nom_Paciente'];
            echo $nombre;
    }
}

if(isset($_POST['id2'])){
    $id2 = $_POST['id2'];
    // echo $id;
    $sql2 = mysqli_query($con, "SELECT * FROM tbl_pacientes WHERE cedula='$id2'");
    if(mysqli_num_rows($sql2) == 0){
        echo 'La identidad no existe';
        }else{
            $row2 = mysqli_fetch_assoc($sql2);                        
            $id_paciente = $row2['ID_Paciente'];
            echo $id_paciente;
    }
}

if(isset($_POST['id_espec_precio'])){
    $id_espec_precio = $_POST['id_espec_precio'];
    //echo $id_espec_precio;
    $sql3 = mysqli_query($con, "SELECT * FROM tbl_especialidad WHERE ID_especialidad='$id_espec_precio'");
    if(mysqli_num_rows($sql3) == 0){
        echo 'Especialidad no tiene precio asignado';
        }else{
            $row3 = mysqli_fetch_assoc($sql3);                        
            $precio = $row3['Precio'];
            echo $precio;
    }
}

if(isset($_POST['id_espec_doctor'])){
    $id_espec_doctor = $_POST['id_espec_doctor'];
    //echo $id_espec_doctor;
    $sql4 = mysqli_query($con, "SELECT * FROM tbl_empleado WHERE ID_Especialidad='$id_espec_doctor'");
    $cadena ='<select class="form-control" id="doctor" name="doctor" required>';

    if(mysqli_num_rows($sql4) == 0){
        $cadena = $cadena.'<option value="0">No hay Doctor asignado a esa Especialidad</option>';
        echo $cadena.'</select>';
    }else{
        while($fila=mysqli_fetch_assoc($sql4)){
            $cadena = $cadena.'<option value= '.$fila['ID_Empleado'].'>'.$fila['Nom_Empleado'].'</option>';
        }
        echo $cadena.'</select>';
    }

    
}

?>
