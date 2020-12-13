<?php
include 'conexion.php'
?>

<?php

    if(isset($_POST['id'])){
        $id_docu = $_POST['id'];
        $cadena = '<input type="text" class="form-control" id="NumeroID" name="NumIDPac" onkeypress="return solonumeros(event)" onkeyup="return sanear(event)" maxlength="13" placeholder="Número de cédula" required>';
        $cadena2 = '<input type="text" class="form-control" id="NumeroID" name="NumIDPac" onkeypress="return alfanumerica(event)" onkeyup="return sanear(event)" maxlength="15" placeholder="Número de pasaporte" required>';
        $cadena3 = '<input type="text" class="form-control" id="NumeroID" name="NumIDPac" onkeypress="return alfanumerica(event)" maxlength="15" placeholder="Seleccione antes un tipo de documento" readonly>';

        switch ($id_docu) {
            case '1':
                echo $cadena;
                break;
            case '2':
                echo $cadena2;
                break;
            
            default:
                echo $cadena3;
                break;
        }
        
        
    }

    
?>
