<?php
require('../Reportes-PDF/fpdf.php');

date_default_timezone_set('America/Tegucigalpa');
        $fecha = date('d-m-Y');
        $hora = date('H:i:s');
class PDF extends FPDF
{
// Cabecera de página
function myCell($w,$h,$x,$t){
    $height = $h/3;
    $first = $height+2;
    $second = $height+$height+$height+3;
    $len = strlen($t);

}
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
    $this->Cell(170,10,utf8_decode('REPORTE DE PERSONAL'),0,0,'C');
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

    $query = "SELECT tbl_empleado.ID_Empleado,	
    tbl_empleado.Nom_Empleado,
    tbl_empleado.Cedula,
    tbl_empleado.Fec_Nacimiento,	
    tbl_empleado.Tel_Empleado,	
    tbl_empleado.Cel_Empleado,
    tbl_empleado.Dir_Empleado,
    tbl_sexo.Descripcion_sexo,	
    tbl_estado_civil.Descripcion_est_civil,
    tbl_cargo.nomb_cargo,
    tbl_empleado.Salario,
    tbl_especialidad.Descripcion_espec FROM tbl_empleado 
    INNER JOIN tbl_sexo on tbl_empleado.ID_Sexo = tbl_sexo.ID_Sexo
    INNER JOIN tbl_estado_civil on tbl_empleado.ID_Est_Civil = tbl_estado_civil.ID_Est_Civil
    INNER JOIN tbl_cargo on tbl_empleado.ID_Cargo = tbl_cargo.ID_Cargo
    INNER JOIN tbl_especialidad on tbl_empleado.ID_Especialidad = tbl_especialidad.ID_especialidad
    WHERE
    tbl_empleado.ID_Empleado LIKE '%".$buscar."%' OR
    tbl_empleado.Nom_Empleado LIKE '%".$buscar."%' OR
    tbl_empleado.Cedula LIKE '%".$buscar."%' OR
    tbl_empleado.Fec_Nacimiento LIKE '%".$buscar."%' OR
    tbl_empleado.Tel_Empleado LIKE '%".$buscar."%' OR
    tbl_empleado.Cel_Empleado LIKE '%".$buscar."%' OR
    tbl_sexo.Descripcion_sexo LIKE '%".$buscar."%' OR
    tbl_estado_civil.Descripcion_est_civil LIKE '%".$buscar."%' OR
    tbl_cargo.nomb_cargo LIKE '%".$buscar."%' OR
    tbl_empleado.Salario LIKE '%".$buscar."%' OR
    tbl_especialidad.Descripcion_espec LIKE '%".$buscar."%'";

    $consulta = mysqli_query($con,$query);
    $data = mysqli_num_rows($consulta);

$pdf = new PDF();
// Carga de datos
$pdf->AliasNbPages();
$pdf->AddPage('L');
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Times','',8);

$pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
$pdf->Cell(52, 10, 'Nombre del colaborador', 1, 0, 'C', 1);
$pdf->Cell(25, 10, 'Identidad', 1, 0, 'C', 1);
$pdf->Cell(22, 10, 'Fecha Nacimiento', 1, 0, 'C', 1);
$pdf->Cell(15, 10, utf8_decode('Teléfono'), 1, 0, 'C', 1);
$pdf->Cell(15, 10, 'Celular', 1, 0, 'C', 1);
$pdf->Cell(70, 10, utf8_decode('Dirección'), 1, 0, 'C', 1);
$pdf->Cell(15, 10, utf8_decode('Género'), 1, 0, 'C', 1);
$pdf->Cell(15, 10, utf8_decode('Estado civil'), 1, 0, 'C', 1);
$pdf->Cell(18, 10, utf8_decode('Cargo'), 1, 0, 'C', 1);
$pdf->Cell(9, 10, 'Salario', 1, 0, 'C', 1);
$pdf->Cell(20, 10, utf8_decode('Especialidad'), 1, 1, 'C', 1);
while($row = mysqli_fetch_assoc($consulta)){
    $pdf->Cell(8, 10, $row['ID_Empleado'], 1, 0, 'C', 0);
    $pdf->Cell(52, 10, utf8_decode($row['Nom_Empleado']), 1, 0, 'C', 0);
    $pdf->Cell(25, 10, $row['Cedula'], 1, 0, 'C', 0);
    $pdf->Cell(22, 10, $row['Fec_Nacimiento'], 1, 0, 'C', 0);
    $pdf->Cell(15, 10, $row['Tel_Empleado'], 1, 0, 'C', 0);
    $pdf->Cell(15, 10, $row['Cel_Empleado'], 1, 0, 'C', 0);
    $pdf->Cell(70, 10, utf8_decode($row['Dir_Empleado']), 1, 0, 'C', 0);
    $pdf->Cell(15, 10, utf8_decode($row['Descripcion_sexo']), 1, 0, 'C', 0);
    $pdf->Cell(15, 10, utf8_decode($row['Descripcion_est_civil']), 1, 0, 'C', 0);
    $pdf->Cell(18, 10, utf8_decode($row['nomb_cargo']), 1, 0, 'C', 0);
    $pdf->Cell(9, 10, $row['Salario'], 1, 0, 'C', 0);
    $pdf->Cell(20, 10, utf8_decode($row['Descripcion_espec']), 1, 1, 'C', 0);
}

$pdf->Output('Reporte_Personal.pdf', 'I');

}else{
    $consulta = mysqli_query($con, "SELECT tbl_empleado.ID_Empleado,	
    tbl_empleado.Nom_Empleado,
    tbl_empleado.Cedula,
    tbl_empleado.Fec_Nacimiento,	
    tbl_empleado.Tel_Empleado,	
    tbl_empleado.Cel_Empleado,
    tbl_empleado.Dir_Empleado,
    tbl_sexo.Descripcion_sexo,	
    tbl_estado_civil.Descripcion_est_civil,
    tbl_cargo.nomb_cargo,
    tbl_empleado.Salario,
    tbl_especialidad.Descripcion_espec FROM tbl_empleado 
    INNER JOIN tbl_sexo on tbl_empleado.ID_Sexo = tbl_sexo.ID_Sexo
    INNER JOIN tbl_estado_civil on tbl_empleado.ID_Est_Civil = tbl_estado_civil.ID_Est_Civil
    INNER JOIN tbl_cargo on tbl_empleado.ID_Cargo = tbl_cargo.ID_Cargo
    INNER JOIN tbl_especialidad on tbl_empleado.ID_Especialidad = tbl_especialidad.ID_especialidad");
    $resultado = mysqli_num_rows($consulta);

    $pdf = new PDF();
    // Carga de datos
    $pdf->AliasNbPages();
    $pdf->AddPage('L');
    $pdf->SetFillColor(232,232,232);
    $pdf->SetFont('Times','',8);

    $pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
    $pdf->Cell(52, 10, 'Nombre del colaborador', 1, 0, 'C', 1);
    $pdf->Cell(25, 10, 'Identidad', 1, 0, 'C', 1);
    $pdf->Cell(22, 10, 'Fecha Nacimiento', 1, 0, 'C', 1);
    $pdf->Cell(15, 10, utf8_decode('Teléfono'), 1, 0, 'C', 1);
    $pdf->Cell(15, 10, 'Celular', 1, 0, 'C', 1);
    $pdf->Cell(70, 10, utf8_decode('Dirección'), 1, 0, 'C', 1);
    $pdf->Cell(15, 10, utf8_decode('Género'), 1, 0, 'C', 1);
    $pdf->Cell(15, 10, utf8_decode('Estado civil'), 1, 0, 'C', 1);
    $pdf->Cell(18, 10, utf8_decode('Cargo'), 1, 0, 'C', 1);
    $pdf->Cell(9, 10, 'Salario', 1, 0, 'C', 1);
    $pdf->Cell(20, 10, utf8_decode('Especialidad'), 1, 1, 'C', 1);
    while($row = mysqli_fetch_assoc($consulta)){
        $pdf->Cell(8, 10, $row['ID_Empleado'], 1, 0,'C', 0);
        $pdf->Cell(52, 10, utf8_decode($row['Nom_Empleado']), 1, 0,'C', 0);
        $pdf->Cell(25, 10, $row['Cedula'], 1, 0,'C', 0);
        $pdf->Cell(22, 10, $row['Fec_Nacimiento'], 1, 0,'C', 0);
        $pdf->Cell(15, 10, $row['Tel_Empleado'], 1, 0,'C', 0);
        $pdf->Cell(15, 10, $row['Cel_Empleado'], 1, 0,'C', 0);
        $pdf->Cell(70, 10, utf8_decode($row['Dir_Empleado']), 1, 0,'C', 0);
        $pdf->Cell(15, 10, utf8_decode($row['Descripcion_sexo']), 1, 0,'C', 0);
        $pdf->Cell(15, 10, utf8_decode($row['Descripcion_est_civil']), 1, 0,'C', 0);
        $pdf->Cell(18, 10, utf8_decode($row['nomb_cargo']), 1, 0,'C', 0);
        $pdf->Cell(9, 10, $row['Salario'], 1, 0,'C', 0);
        $pdf->Cell(20, 10, utf8_decode($row['Descripcion_espec']), 1, 1, 'C', 0);
    }

    $pdf->Output('Reporte_Personal.pdf', 'I');

}
?>