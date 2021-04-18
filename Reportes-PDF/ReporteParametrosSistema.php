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
    $this->Cell(100,10,utf8_decode('COMPLEJO MÉDICO FRANCLAR'),0,0,'C');
    // Salto de línea
    $this->Ln(15);
    // Movernos a la derecha
    $this->Cell(50);
    // Título
    $this->Cell(100,10,utf8_decode('REPORTE DE PARÁMETROS DEL SISTEMA'),0,0,'C');
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
    $this->Cell(0,10,''. date('d') . ' / '. date('m'). ' / '. date('Y'). '                                                              '. utf8_decode('Página ').$this->PageNo().' de {nb} '.'                                                           '. date('h:i:s'). ' '.date('A') ,0,0,'L');
}
}

require '../conexion.php';
if ($_GET['perl']) {
    $valor=$_GET['perl'];
    
    $buscar=base64_decode($valor);
    $carg="SELECT * FROM tbl_parametro_sistema WHERE id_parametro LIKE '%".$buscar."%' OR parametro LIKE '%".$buscar."%' OR valor LIKE '%".$buscar."%'";
    
    $consulta = mysqli_query($con,$carg);
    $data = mysqli_num_rows($consulta);

$pdf = new PDF();
// Carga de datos
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Times','',12);

$pdf->Cell(20, 10, 'No', 1, 0, 'C', 1);
$pdf->Cell(130, 10, utf8_decode('Parámetro'), 1, 0, 'C', 1);
$pdf->Cell(40, 10, 'Valor', 1, 1, 'C', 1);

while($row = mysqli_fetch_assoc($consulta)){
    $pdf->Cell(20, 10, $row['id_parametro'], 1, 0, 'C', 0);
    $pdf->Cell(130, 10, utf8_decode($row['parametro']), 1, 0, 'C', 0);
    $pdf->Cell(40, 10, $row['valor'], 1, 1, 'C', 0);
}

$pdf->Output('Reporte_Parametros_Sistema.pdf', 'I');
} else {
    $query = "SELECT * FROM tbl_parametro_sistema";
    $consulta = mysqli_query($con,$query);
    $data = mysqli_num_rows($consulta);

    $pdf = new PDF();
        // Carga de datos
        $pdf->AliasNbPages();
        $pdf->AddPage();
        $pdf->SetFillColor(232,232,232);
        $pdf->SetFont('Times','',12);

        $pdf->Cell(20, 10, 'No', 1, 0, 'C', 1);
        $pdf->Cell(130, 10, utf8_decode('Parámetro'), 1, 0, 'C', 1);
        $pdf->Cell(40, 10, 'Valor', 1, 1, 'C', 1);

        while($row = mysqli_fetch_assoc($consulta)){
            $pdf->Cell(20, 10, $row['id_parametro'], 1, 0, 'C', 0);
            $pdf->Cell(130, 10, utf8_decode($row['parametro']), 1, 0, 'C', 0);
            $pdf->Cell(40, 10, $row['valor'], 1, 1, 'C', 0);
        }

        $pdf->Output('Reporte_Parametros_Sistema.pdf', 'I');
}
?>