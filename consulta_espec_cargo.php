<?php
include 'conexion.php'
?>

<?php

if(isset($_POST['id'])){
    $id_cargo = $_POST['id'];
    // echo $id_cargo;
    $sql = mysqli_query($con, "SELECT * FROM tbl_especialidad WHERE ID_Especialidad <> 8 AND ID_Especialidad <> 9");
    $cadena ='<select class="form-control"  id="EspecialidadEm" name="Especialidad" required>';
              

    if($id_cargo <> 1){
        $cadena = $cadena.'<option value="9">No Aplica</option>';
        echo $cadena.'</select>';
    }else{
        $cadena = $cadena.'<option value="0" selected>Seleccione una especialidad</option>';
        while($fila=mysqli_fetch_assoc($sql)){
            $cadena = $cadena.'<option value= '.$fila['ID_Especialidad'].'>'.$fila['Descripcion_Espec'].'</option>';
        }
        echo $cadena.'</select>';
    }

    
}

?>
