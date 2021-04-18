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
    $this->Cell(170,10,utf8_decode('REPORTE DE PACIENTES'),0,0,'C');
    // Salto de línea
    $this->Ln(20);
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

    $query = "SELECT tbl_pacientes.ID_Paciente,	
    tbl_pacientes.Nom_Paciente,
    tbl_tipo_documento.ID_tipo_documento,
    tbl_tipo_documento.Descripcion_tipo_documento,
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
    INNER JOIN tbl_tipo_sangre on tbl_pacientes.ID_Tipo_Sangre = tbl_tipo_sangre.ID_Tipo_Sangre
    WHERE
    tbl_pacientes.ID_Paciente LIKE '%".$buscar."%' OR
    tbl_pacientes.Nom_Paciente LIKE '%".$buscar."%' OR
    tbl_tipo_documento.Descripcion_tipo_documento LIKE '%".$buscar."%' OR
    tbl_pacientes.cedula LIKE '%".$buscar."%' OR
    tbl_pacientes.Fec_Nacimiento LIKE '%".$buscar."%' OR
    tbl_pacientes.Edad LIKE '%".$buscar."%' OR
    tbl_pacientes.Email LIKE '%".$buscar."%' OR
    tbl_pacientes.Tel_Paciente LIKE '%".$buscar."%' OR
    tbl_pacientes.Cel_Paciente LIKE '%".$buscar."%' OR
    tbl_pacientes.Dir_Paciente LIKE '%".$buscar."%' OR
    tbl_sexo.Descripcion_sexo LIKE '%".$buscar."%' OR
    tbl_estado_civil.Descripcion_est_civil LIKE '%".$buscar."%' OR
    tbl_religion.Descripcion_Religion LIKE '%".$buscar."%' OR
    tbl_tipo_sangre.Descripcion_Sangre LIKE '%".$buscar."%' OR
    tbl_pacientes.Contacto_Emergencia LIKE '%".$buscar."%' OR
    tbl_parentesco.Parentesco LIKE '%".$buscar."%' OR
    tbl_pacientes.Tel_Emergencia LIKE '%".$buscar."%' OR
    tbl_pacientes.Cel_Emergencia LIKE '%".$buscar."%' OR
    tbl_pacientes.Antecedentes_Personales LIKE '%".$buscar."%' OR
    tbl_pacientes.Antecedentes_Hospitalarios LIKE '%".$buscar."%' OR
    tbl_pacientes.Antecedentes_Alergicos  LIKE '%".$buscar."%' OR
    tbl_pacientes.Antecedentes_Familiares LIKE '%".$buscar."%' OR
    tbl_pacientes.Habitos LIKE '%".$buscar."%'";
    
    $consulta = mysqli_query($con,$query);
    $data = mysqli_num_rows($consulta);

$pdf = new PDF();
// Carga de datos
$pdf->AliasNbPages();
$pdf->AddPage('L');
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Times','',8);

$pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
$pdf->Cell(50, 10, 'Nombre del paciente', 1, 0, 'C', 1);
$pdf->Cell(25, 10, 'Identidad', 1, 0, 'C', 1);
$pdf->Cell(22, 10, 'Fecha Nacimiento', 1, 0, 'C', 1);
$pdf->Cell(8, 10, 'Edad', 1, 0, 'C', 1);
$pdf->Cell(50, 10, 'Email', 1, 0, 'C', 1);
$pdf->Cell(15, 10, utf8_decode('Teléfono'), 1, 0, 'C', 1);
$pdf->Cell(15, 10, 'Celular', 1, 0, 'C', 1);
$pdf->Cell(75, 10, utf8_decode('Dirección'), 1, 1, 'C', 1);
while($row = mysqli_fetch_assoc($consulta)){
    $pdf->Cell(8, 10, $row['ID_Paciente'], 1, 0, 'C', 0);
    $pdf->Cell(50, 10, utf8_decode($row['Nom_Paciente']), 1, 0, 'C', 0);
    $pdf->Cell(25, 10, $row['cedula'], 1, 0, 'C', 0);
    $pdf->Cell(22, 10, $row['Fec_Nacimiento'], 1, 0, 'C', 0);
    $pdf->Cell(8, 10, $row['Edad'], 1, 0, 'C', 0);
    $pdf->Cell(50, 10, $row['Email'], 1, 0, 'C', 0);
    $pdf->Cell(15, 10, $row['Tel_Paciente'], 1, 0, 'C', 0);
    $pdf->Cell(15, 10, $row['Cel_Paciente'], 1, 0, 'C', 0);
    $pdf->MultiCell(75, 10, utf8_decode($row['Dir_Paciente']), 1, 1, 'C', 0);
}

$pdf->Output('Reporte_Pacientes.pdf', 'I');

}else{
    $consulta = mysqli_query($con, "SELECT tbl_pacientes.ID_Paciente,	
    tbl_pacientes.Nom_Paciente,
    tbl_tipo_documento.ID_tipo_documento,
    tbl_tipo_documento.Descripcion_tipo_documento,
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
    $resultado = mysqli_num_rows($consulta);

    $pdf = new PDF();
    // Carga de datos
    $pdf->AliasNbPages();
    $pdf->AddPage('L');
    $pdf->SetFillColor(232,232,232);
    $pdf->SetFont('Times','',8);

    $pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
    $pdf->Cell(50, 10, 'Nombre del paciente', 1, 0, 'C', 1);
    $pdf->Cell(25, 10, 'Identidad', 1, 0, 'C', 1);
    $pdf->Cell(22, 10, 'Fecha Nacimiento', 1, 0, 'C', 1);
    $pdf->Cell(8, 10, 'Edad', 1, 0, 'C', 1);
    $pdf->Cell(50, 10, 'Email', 1, 0, 'C', 1);
    $pdf->Cell(15, 10, utf8_decode('Teléfono'), 1, 0, 'C', 1);
    $pdf->Cell(15, 10, 'Celular', 1, 0, 'C', 1);
    $pdf->Cell(75, 10, utf8_decode('Dirección'), 1, 1, 'C', 1);
    while($row = mysqli_fetch_assoc($consulta)){
        $pdf->Cell(8, 10, $row['ID_Paciente'], 1, 0, 'C', 0);
        $pdf->Cell(50, 10, utf8_decode($row['Nom_Paciente']), 1, 0, 'C', 0);
        $pdf->Cell(25, 10, $row['cedula'], 1, 0, 'C', 0);
        $pdf->Cell(22, 10, $row['Fec_Nacimiento'], 1, 0, 'C', 0);
        $pdf->Cell(8, 10, $row['Edad'], 1, 0, 'C', 0);
        $pdf->Cell(50, 10, $row['Email'], 1, 0, 'C', 0);
        $pdf->Cell(15, 10, $row['Tel_Paciente'], 1, 0, 'C', 0);
        $pdf->Cell(15, 10, $row['Cel_Paciente'], 1, 0, 'C', 0);
        $pdf->MultiCell(75, 10, utf8_decode($row['Dir_Paciente']), 1, 1, 'C', 0);
    }

    $pdf->Output('Reporte_Pacientes.pdf', 'I');
}
?>