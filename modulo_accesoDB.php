<?php
include 'configuracion/config.php';


//PROBAR LA CONEXION
if (isset($_POST['probar_conexion'])){
    $servidor=$_POST['server'];
     $db=$_POST['DB'];
     $usuario=$_POST['user'];
     $contraseña=$_POST['password'];
echo $_POST['probar_conexion'];
    
    
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
//$cmd = "mysqldump -h {$db_host} -u {$db_username} --password={$db_password} {$db_database}   > {$dir}{$filename}";

function exportarTablas($host, $usuario, $password, $nombreDeBaseDeDatos){
    include 'configuracion/config.php';
    
    
    if($host===$server && $nombreDeBaseDeDatos===$database && $usuario===$user && $password===$password){
 
        $dir = "respaldos/";
        $fecha=date("Ymd-His");
        $filename = "backup_" . date("Y-m-d-H-i-s") . ".sql";
        $db_host = $host;
        $db_username = $usuario;
        $db_password = $password;
        $db_database = $nombreDeBaseDeDatos;

        $cmd = "mysqldump -h {$db_host} -u {$db_username} --password={$db_password} {$db_database}  > {$dir}{$filename}";
        exec($cmd);
//pasar el respaldo a zip
$zip= new ZipArchive();
$respaldo_zip=$db_database.'_'.$fecha.'.zip';
if($zip->open($respaldo_zip,ZipArchive::CREATE)===true){
$zip->addFile($filename);
$zip->close();

/*header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=\"$respaldo_zip\"");

passthru("cat {$dir}{$respaldo_zip}");*/
}
    }else{
        return false;
    }
    return true;
}
function restoreBD($host, $usuario, $password, $nombreDeBaseDeDatos, $filePath)
{
    include 'configuracion/config.php';
    
    
 if($host===$server && $nombreDeBaseDeDatos===$database && $usuario===$user && $password===$password){

           // Conectar y seleccionar bas ede datos
        $db = new mysqli($host, $usuario, $password, $nombreDeBaseDeDatos); 
            $db_host = $host;
            $db_username = $usuario;
            $db_password = $password;
            $db_database = $nombreDeBaseDeDatos;
            $filename= $filePath;
            $cmd = "mysql  -u {$db_username} --password={$db_password} -h {$db_host} {$db_database} < {$filename}";
            exec($cmd);
 }else{
        return false;
    }
    return true;
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
    }else{
        echo "<script type='text/javascript'>
        alert('Respaldo falló');
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
    
    $prueba2=restoreBD($servidor,$usuario,$password,$db,$respaldo);
    
   
    
    if ($prueba2){
          echo "<script type='text/javascript'>
          alert('Base de datos restaurada con Éxito');
          window.location.href= 'acceso_DB.php';
          </script>";
  }else{
    echo "<script type='text/javascript'>
    alert('error al restaurar base de datos');
    window.location.href= 'acceso_DB.php';
    </script>";
  }
   
    
}
?>