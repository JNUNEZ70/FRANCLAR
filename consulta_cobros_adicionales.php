<?php
include 'conexion.php'
?>

<?php

    if(isset($_POST['id'])){
        $id_cobro = $_POST['id'];
        // echo $id;
        $sql = mysqli_query($con, "SELECT * FROM tbl_cobros_adicionales WHERE ID_cobro_adicional='$id_cobro'");
        if(mysqli_num_rows($sql) == 0){
            echo 'No tiene precio';
            }else{
                $row = mysqli_fetch_assoc($sql);                        
                $precio = $row['Precio_cobro'];
                echo $precio;
        }
    }

    if(isset($_POST['descripcion']) AND isset($_POST['precio'])){
        $descripcion = $_POST['descripcion'];
        $precio = $_POST['precio'];
        //echo 'se reciben variables';
        if (empty($descripcion) or empty($precio)) {
            echo 'Complete ambos campos';
        }else{
         $sql2 = mysqli_query($con, "INSERT INTO tbl_cobros_adicionales (Descripcion_cobro, Precio_cobro) 
                            VALUES ('$descripcion', '$precio')") or die(mysqli_error());

         if($sql2){
             echo 'Cobro registrado';
         }

        }
    }

    if(isset($_POST['listar'])){
        // $id_cargo = $_POST['id'];
        // echo $id_cargo;
        $sql3 = mysqli_query($con, "SELECT * FROM tbl_cobros_adicionales");
        $cadena ='<select class="form-control" id="cobro_adic" name="cobro_adic" onchange="doctores_precio(value)" required>';
                  
        if(mysqli_num_rows($sql3) == 0){
            $cadena = $cadena.'<option value="9">No Aplica</option>';
            echo $cadena.'</select>';
        }else{
            $cadena = $cadena.'<option value="0" selected>Seleccione un cobro</option>';
            while($fila=mysqli_fetch_assoc($sql3)){
                $cadena = $cadena.'<option value= '.$fila['ID_cobro_adicional'].'>'.$fila['Descripcion_cobro'].'</option>';
            }
            echo $cadena.'</select>';
        }
    
        
    }
    if(isset($_POST['id_para_descripcion'])){
        $id_para_descr = $_POST['id_para_descripcion'];
        // echo $id;
        $sql4 = mysqli_query($con, "SELECT * FROM tbl_cobros_adicionales WHERE ID_cobro_adicional='$id_para_descr'");
        if(mysqli_num_rows($sql4) == 0){
            echo 'No tiene precio';
            }else{
                $row4 = mysqli_fetch_assoc($sql4);                        
                $descr_cobro = $row4['Descripcion_cobro'];
                echo $descr_cobro;
        }
    }

    
    

?>
