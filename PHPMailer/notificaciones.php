<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">





<?php

$a=true;


 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'Exception.php';
require 'PHPMailer.php';
require 'SMTP.php';
include '../conexion.php';   
if ($a) {
    date_default_timezone_set('America/Mexico_City');
    $fecha = date('Y-m-d');
    $hora = date('H:i:s');
   
     $query="SELECT tbl_especialidad.Descripcion_espec ,tbl_pacientes.Nom_Paciente, tbl_pacientes.Email,tbl_citas.ID_Cita,tbl_citas.Fec_Atencion,tbl_citas.Hora_Atencion FROM tbl_citas INNER JOIN tbl_pacientes ON tbl_citas.ID_Paciente=tbl_pacientes.ID_Paciente 
     INNER JOIN tbl_especialidad ON
     tbl_citas.ID_Especialidad=tbl_especialidad.ID_especialidad
     WHERE tbl_citas.Fec_Atencion='$fecha'";
    $sql = mysqli_query($con, $query);
   
 
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 0;                      // Enable verbose debug output
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'complejomedicofranclar2020@gmail.com';                     // SMTP username
    $mail->Password   = 'proyecto#2020';                               // SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
 
    $no = 1;
    
    while( $row = mysqli_fetch_assoc($sql)){
       
        
        
        //Recipients
$mail->setFrom('complejomedicofranclar2020@gmail.com', utf8_decode('Complejo Médico Francl6ar'));
$mail->addAddress($row['Email'],$row['Nom_Paciente'] );

$mail->isHTML(true);                                  // Set email format to HTML
$mail->Subject = utf8_decode('Notificación de Cita');
$mail->Body    = utf8_decode('Complejo médico Franclar le envía un cordial saludo  <br></br> ');
$mail->Body    .= utf8_decode('Notificando que el día de hoy tiene cita <br></br> <br></br> ');
$mail->Body    .= utf8_decode('Cita: '.$row['ID_Cita'] .'<br></br>');

$mail->Body    .= utf8_decode('Paciente: '.$row['Nom_Paciente'] .'<br></br>');
$mail->Body    .= utf8_decode('Especialidad: '.$row['Descripcion_espec'] .'<br></br>');
$mail->Body    .= utf8_decode('Fecha de atención: '.$row['Fec_Atencion'] .'<br></br>');
$mail->Body    .= utf8_decode('Hora de atención: '.$row['Hora_Atencion'] .'<br></br>');


$mail->send();
$mail->clearAddresses();
$no++;
}


    
        // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        
        echo "<script type='text/javascript'>
        alert('Correos enviados con éxito');
        window.location.href= '../Cita.php';
        </script>";
    } catch (Exception $e) {
        echo "error al enviar correo. Mailer Error: {$mail->ErrorInfo}";
    }
}
?>
</html>