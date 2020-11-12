<?php
include 'configuracion/config.php';


//PROBAR LA CONEXION
if (isset($_POST['probar_conexion'])){
    $servidor=$_POST['server'];
    $db=$_POST['DB'];
    $usuario=$_POST['user'];
    $contraseña=$_POST['password'];
    if($servidor==$server && $db==$database && $usuario==$user && $contraseña==$password){

        echo "<script type='text/javascript'>
        alert('Conexión Éxitosa');
        window.location.href= 'acceso_DB.php';
    </script>";

    
    }else{
        echo "<script type='text/javascript'>
        alert('Conexión Falló');
        window.location.href= 'acceso_DB.php';
    </script>";
    }

}

//FUNCION PARA CREAR EL RESPALDO

function exportarTablas($host, $usuario, $pasword, $nombreDeBaseDeDatos)
{
    include 'configuracion/config.php';
    

    if($host===$server && $nombreDeBaseDeDatos===$database && $usuario===$user && $password===$password){

      
        set_time_limit(3000);

    $tablasARespaldar = [];
        $mysqli = new mysqli($host, $usuario, $pasword, $nombreDeBaseDeDatos);
             
        $mysqli->select_db($nombreDeBaseDeDatos);
        $mysqli->query("SET NAMES 'utf8'");
        $tablas = $mysqli->query('SHOW TABLES');
    
    
    while ($fila = $tablas->fetch_row()) {
        $tablasARespaldar[] = $fila[0];
    }
    $contenido = "SET SQL_MODE = \"NO_AUTO_VALUE_ON_ZERO\";\r\nSET time_zone = \"+00:00\";\r\n\r\n\r\n/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\r\n/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\r\n/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\r\n/*!40101 SET NAMES utf8 */;\r\n--\r\n-- Database: `" . $nombreDeBaseDeDatos . "`\r\n--\r\n\r\n\r\n";
    foreach ($tablasARespaldar as $nombreDeLaTabla) {
        if (empty($nombreDeLaTabla)) {
            continue;
        }
        $datosQueContieneLaTabla = $mysqli->query('SELECT * FROM `' . $nombreDeLaTabla . '`');
        $cantidadDeCampos = $datosQueContieneLaTabla->field_count;
        $cantidadDeFilas = $mysqli->affected_rows;
        $esquemaDeTabla = $mysqli->query('SHOW CREATE TABLE ' . $nombreDeLaTabla);
        $filaDeTabla = $esquemaDeTabla->fetch_row();
        $contenido .= "\n\n" . $filaDeTabla[1] . ";\n\n";
        for ($i = 0, $contador = 0; $i < $cantidadDeCampos; $i++, $contador = 0) {
            while ($fila = $datosQueContieneLaTabla->fetch_row()) {
                //La primera y cada 100 veces
                if ($contador % 100 == 0 || $contador == 0) {
                    $contenido .= "\nINSERT INTO " . $nombreDeLaTabla . " VALUES";
                }
                $contenido .= "\n(";
                for ($j = 0; $j < $cantidadDeCampos; $j++) {
                    $fila[$j] = str_replace("\n", "\\n", addslashes($fila[$j]));
                    if (isset($fila[$j])) {
                        $contenido .= '"' . $fila[$j] . '"';
                    } else {
                        $contenido .= '""';
                    }
                    if ($j < ($cantidadDeCampos - 1)) {
                        $contenido .= ',';
                    }
                }
                $contenido .= ")";
                # Cada 100...
                if ((($contador + 1) % 100 == 0 && $contador != 0) || $contador + 1 == $cantidadDeFilas) {
                    $contenido .= ";";
                } else {
                    $contenido .= ",";
                }
                $contador = $contador + 1;
            }
        }
        $contenido .= "\n\n\n";
    }
    $contenido .= "\r\n\r\n/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;\r\n/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;\r\n/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;";
    
    # Se guardará dependiendo del directorio, en una carpeta llamada respaldos
    $carpeta = __DIR__ . "/respaldos";
    if (!file_exists($carpeta)) {
        mkdir($carpeta);
    }
    
    # Calcular un ID único
    $id = uniqid();
    
    # También la fecha
    $fecha = date("Y-m-d");
    
    # Crear un archivo que tendrá un nombre como respaldo_2018-10-22_asd123.sql
    $nombreDelArchivo = sprintf('%s/respaldo_%s_%s.sql', $carpeta, $fecha, $id);
    
    #Escribir todo el contenido. Si todo va bien, file_put_contents NO devuelve FALSE
    echo "<script> alert('Creando Backup ') </script>";
    file_put_contents($nombreDelArchivo, $contenido) !== false;
    return true;

}else{
    echo "<script type='text/javascript'>
    alert('Base de datos No encontrada');
    window.location.href= 'acceso_DB.php';
    </script>";
    
    
}
}
function restoreBD($dbHost, $dbUsername, $dbPassword, $dbName, $filePath){
    // Conectar y seleccionar bas ede datos
  $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName); 

  $DROP = mysqli_query($db, "DROP TABLE tbl_bitacora_evento,
  tbl_cargo,tbl_citas,tbl_consultas,tbl_detalle_factura,tbl_diagnosticos,
  tbl_empleado,tbl_especialidad,tbl_estado_cita,tbl_estado_civil,tbl_estado_usuario,
  tbl_expediante,tbl_facturas,tbl_hist_contra,tbl_objetos,tbl_pacientes,tbl_parametros,
  tbl_parametros_sistema,tbl_permisos,tbl_preclinica,tbl_preguntas,tbl_pregunta_usuario,
  tbl_religion,tbl_roles,tbl_sevicio,tbl_sexo,tbl_tipo_paciente,tbl_tipo_sangre,
  tbl_usuario") ;
    if(!$DROP){
        echo "<script type='text/javascript'>
        alert('ocurrió un error');
        window.location.href= 'acceso_DB.php';
        </script>";
        // // Variable temporal, utilizada para almacenar la consulta actual
    }else{

        $templine = '';
        
        //    // Leer en archivo completo
        $lines = file($filePath);
        
        $error = '';
    
//     // Recorre cada línea
        foreach ($lines as $line){
                // Omitirlo si es un comentario
                if(substr($line, 0, 2) == '--' || $line == ''){
                    continue;
                }
                
                //         //Agrega esta línea al segmento actual
                $templine .= $line;
        
//         // Si tiene un punto y coma al final, es el final de la consulta.
        if (substr(trim($line), -1, 1) == ';'){
        //             // Realizar la consulta
                    if(!$db->query($templine)){
                        $error .= 'Error al realizar la consulta "<b>' . $templine . '</b>": ' . $db->error . '<br /><br />';
                        }
                        
                        //             // Restablecer la variable temporal a vacía
                        $templine = '';
                    }
                }
        return !empty($error)?$error:true;
    }
}

 




//PASANDO LOS DATOS PARA CREAR EL RESPALDO
if(isset($_POST['respaldo']) ){
    // session_start();
    // $id_usuario= $_SESSION['ID_Usuario'];
    // $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    // VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
    
    $servidor=$_POST['server'];
    $db=$_POST['DB'];
    $usuario=$_POST['user'];
    $contraseña=$_POST['password'];
    //PASO DE PARAMETROS A LA FUNCION Y CREAR EL RESPALDO
    $prueba=exportarTablas($servidor,$usuario,$password,$db);

    if ($prueba){
        echo "<script type='text/javascript'>
        alert('Respaldo creado con Éxito');
        window.location.href= 'acceso_DB.php';
        </script>";
    }
    
}
if(isset($_POST['restablecer']) ){
    // session_start();
    // $id_usuario= $_SESSION['ID_Usuario'];
    // $insert_bitacora = mysqli_query($con, "INSERT INTO tbl_bitacora_evento (id_usuario,id_objeto,Accion,Descripcion)
    // VALUES ('$id_usuario',3,'Acceso','INGRESO A PANTALLA PARAMETROS')");
    
    $servidor=$_POST['server'];
    $db=$_POST['DB'];
    $usuario=$_POST['user'];
    $password=$_POST['password'];
    $copia=$_POST['restablecer_db'];
    $respaldo='respaldos/'.$copia;
    //PASO DE PARAMETROS A LA FUNCION Y CREAR EL RESPALDO
    
    $prueba=restoreBD($servidor,$usuario,$password,$db,$respaldo);
    
   echo $prueba;
    
    //  if (!$prueba){
    //      echo "<script type='text/javascript'>
    //      alert('Base de datos restaurada con Éxito');
    //      window.location.href= 'acceso_DB.php';
    //      </script>";
    //  }
   
    
}





     


?>