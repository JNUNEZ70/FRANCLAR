<?php
require('../Reportes-PDF/fpdf.php');

date_default_timezone_set('America/Tegucigalpa');
        $fecha = date('d-m-Y');
        $hora = date('H:i:s');
class PDF extends FPDF
{
// Cabecera de página
function Header()
{
    // Logo
    $this->Image('../Reportes-PDF/img/Logo_franclar.png',10,8,33);
    // Arial bold 15
    $this->SetFont('Times','B',15);
    // Movernos a la derecha
    $this->Cell(50);
    // Título
    $this->Cell(165,10,utf8_decode('COMPLEJO MÉDICO FRANCLAR'),0,0,'C');
    // Salto de línea
    $this->Ln(15);
    // Movernos a la derecha
    $this->Cell(50);
    // Título
    $this->Cell(170,10,utf8_decode('REPORTE DE CITAS'),0,0,'C');
    // Salto de línea
    $this->Ln(15);
}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',10);
    // Número de página
    $this->Cell(0,10,''. date('d') . ' / '. date('m'). ' / '. date('Y'). '                                                                                                         '. utf8_decode('Página ').$this->PageNo().' de {nb} '.'                                                                                                '. date('h:i:s'). ' '.date('A') ,0,0,'L');
}
}

require '../conexion.php';
if ($_GET['perl']) {
    $valor=$_GET['perl'];
    
    $buscar=base64_decode($valor);

    $query = "SELECT tbl_citas.ID_Cita,	
    tbl_pacientes.Nom_Paciente,
    tbl_citas.Fec_Creacion,
    tbl_especialidad.Descripcion_espec,
    tbl_empleado.Nom_Empleado,
    tbl_citas.Fec_Atencion,	
    tbl_citas.Hora_Atencion,	
    tbl_estado_cita.Descripcion_est_cita,
    tbl_estado_cita.ID_Estado FROM tbl_citas 
    INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
    INNER JOIN tbl_especialidad on tbl_citas.ID_Especialidad = tbl_especialidad.ID_Especialidad
    INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
    INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado
    WHERE
    tbl_citas.ID_Cita LIKE '%".$buscar."%' OR
    tbl_pacientes.Nom_Paciente LIKE '%".$buscar."%' OR
    tbl_citas.Fec_Creacion LIKE '%".$buscar."%' OR
    tbl_especialidad.Descripcion_espec LIKE '%".$buscar."%' OR
    tbl_empleado.Nom_Empleado LIKE '%".$buscar."%' OR
    tbl_citas.Fec_Atencion LIKE '%".$buscar."%' OR
    tbl_citas.Hora_Atencion LIKE '%".$buscar."%' OR
    tbl_estado_cita.Descripcion_est_cita LIKE '%".$buscar."%' OR
    tbl_estado_cita.ID_Estado LIKE '%".$buscar."%'";

    $consulta = mysqli_query($con,$query);
    $data = mysqli_num_rows($consulta);

$pdf = new PDF();
// Carga de datos
$pdf->AliasNbPages();
$pdf->AddPage('L');
// Salto de línea
$pdf->Ln(5);
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Times','',8);

$pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
$pdf->Cell(60, 10, 'Nombre del paciente', 1, 0, 'C', 1);
$pdf->Cell(28, 10, utf8_decode('Fecha de Creación'), 1, 0, 'C', 1);
$pdf->Cell(35, 10, utf8_decode('Especialidad'), 1, 0, 'C', 1);
$pdf->Cell(70, 10, utf8_decode('Especialista'), 1, 0, 'C', 1);
$pdf->Cell(25, 10, utf8_decode('Fecha de Atención'), 1, 0, 'C', 1);
$pdf->Cell(25, 10, utf8_decode('Hora de Atención'), 1, 0, 'C', 1);
$pdf->Cell(22, 10, utf8_decode('Estado de la Cita'), 1, 1, 'C', 1);
    while($row = mysqli_fetch_assoc($consulta)){
    $pdf->Cell(8, 10, $row['ID_Cita'], 1, 0, 'C', 0);
    $pdf->Cell(60, 10, utf8_decode($row['Nom_Paciente']), 1, 0, 'C', 0);
    $pdf->Cell(28, 10, $row['Fec_Creacion'], 1, 0, 'C', 0);
    $pdf->Cell(35, 10, utf8_decode($row['Descripcion_espec']), 1, 0, 'C', 0);
    $pdf->Cell(70, 10, utf8_decode($row['Nom_Empleado']), 1, 0, 'C', 0);
    $pdf->Cell(25, 10, utf8_decode($row['Fec_Atencion']), 1, 0, 'C', 0);
    $pdf->Cell(25, 10, utf8_decode($row['Hora_Atencion']), 1, 0, 'C', 0);
    $pdf->Cell(22, 10, utf8_decode($row['Descripcion_est_cita']), 1, 1, 'C', 0);
}
$pdf->Output('Reporte_Citas.pdf', 'I');

}else{
    $consulta = mysqli_query($con, "SELECT tbl_citas.ID_Cita,	
    tbl_pacientes.Nom_Paciente,
    tbl_citas.Fec_Creacion,
    tbl_especialidad.Descripcion_espec,
    tbl_empleado.Nom_Empleado,
    tbl_citas.Fec_Atencion,	
    tbl_citas.Hora_Atencion,	
    tbl_estado_cita.Descripcion_est_cita,
    tbl_estado_cita.ID_Estado FROM tbl_citas 
    INNER JOIN tbl_pacientes on tbl_citas.ID_Paciente = tbl_pacientes.ID_Paciente
    INNER JOIN tbl_especialidad on tbl_citas.ID_Especialidad = tbl_especialidad.ID_Especialidad
    INNER JOIN tbl_empleado on tbl_citas.ID_Empleado = tbl_empleado.ID_Empleado
    INNER JOIN tbl_estado_cita on tbl_citas.ID_Estado = tbl_estado_cita.ID_Estado");
    $resultado = mysqli_num_rows($consulta);

    $pdf = new PDF();
    // Carga de datos
    $pdf->AliasNbPages();
    $pdf->AddPage('L');
    // Salto de línea
    $pdf->Ln(5);
    $pdf->SetFillColor(232,232,232);
    $pdf->SetFont('Times','',8);

    $pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
    $pdf->Cell(60, 10, 'Nombre del paciente', 1, 0, 'C', 1);
    $pdf->Cell(28, 10, utf8_decode('Fecha de Creación'), 1, 0, 'C', 1);
    $pdf->Cell(35, 10, utf8_decode('Especialidad'), 1, 0, 'C', 1);
    $pdf->Cell(70, 10, utf8_decode('Especialista'), 1, 0, 'C', 1);
    $pdf->Cell(25, 10, utf8_decode('Fecha de Atención'), 1, 0, 'C', 1);
    $pdf->Cell(25, 10, utf8_decode('Hora de Atención'), 1, 0, 'C', 1);
    $pdf->Cell(22, 10, utf8_decode('Estado de la Cita'), 1, 1, 'C', 1);
        while($row = mysqli_fetch_assoc($consulta)){
        $pdf->Cell(8, 10, $row['ID_Cita'], 1, 0, 'C', 0);
        $pdf->Cell(60, 10, utf8_decode($row['Nom_Paciente']), 1, 0, 'C', 0);
        $pdf->Cell(28, 10, $row['Fec_Creacion'], 1, 0, 'C', 0);
        $pdf->Cell(35, 10, utf8_decode($row['Descripcion_espec']), 1, 0, 'C', 0);
        $pdf->Cell(70, 10, utf8_decode($row['Nom_Empleado']), 1, 0, 'C', 0);
        $pdf->Cell(25, 10, utf8_decode($row['Fec_Atencion']), 1, 0, 'C', 0);
        $pdf->Cell(25, 10, utf8_decode($row['Hora_Atencion']), 1, 0, 'C', 0);
        $pdf->Cell(22, 10, utf8_decode($row['Descripcion_est_cita']), 1, 1, 'C', 0);
    }
    $pdf->Output('Reporte_Citas.pdf', 'I');
}
?>