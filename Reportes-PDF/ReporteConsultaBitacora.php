<?php
require('../Reportes-PDF/fpdf.php');
require('../conexion.php');
if (isset($_POST['enviar'])) {
    $fechaInicial=$_POST['inicio_fecha'];
    $fechaFinal=$_POST['final_fecha'];
    $consulta = mysqli_query($con, "SELECT tbl_bitacora_evento.id_bitacora_evento,	
    tbl_usuario.Nom_Usuario,
    tbl_objetos.objeto,
    tbl_bitacora_evento.Accion,	
    tbl_bitacora_evento.Descripcion,	
    tbl_bitacora_evento.fecha_evento FROM tbl_bitacora_evento
    INNER JOIN tbl_usuario on tbl_bitacora_evento.id_usuario = tbl_usuario.ID_Usuario
    INNER JOIN tbl_objetos on tbl_bitacora_evento.id_objeto = tbl_objetos.id_objeto
    WHERE tbl_bitacora_evento.fecha_evento BETWEEN '$fechaInicial' AND '$fechaFinal' ");
    $resultado = mysqli_num_rows($consulta);
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
    $this->Cell(180,10,utf8_decode('COMPLEJO MÉDICO FRANCLAR'),0,0,'C');
    // Salto de línea
    $this->Ln(15);
    // Movernos a la derecha
    $this->Cell(50);
    // Título
    $this->Cell(180,10,utf8_decode('REPORTE DE BITACORA'),0,0,'C');
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
$pdf = new PDF();
// Carga de datos
$pdf->AliasNbPages();
$pdf->AddPage('L');
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Times','',12);

$pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
$pdf->Cell(40, 10, utf8_decode('Nombre de usuario'), 1, 0, 'C', 1);
$pdf->Cell(40, 10, utf8_decode('Objeto'), 1, 0, 'C', 1);
$pdf->Cell(40, 10, utf8_decode('Acción'), 1, 0, 'C', 1);
$pdf->Cell(100, 10, utf8_decode('Descripción'), 1, 0, 'C', 1);
$pdf->Cell(40, 10, 'Fecha del evento', 1, 1, 'C', 1);

while($row = mysqli_fetch_assoc($consulta)){
    $pdf->Cell(8, 10, $row['id_bitacora_evento'], 1, 0, 'C', 0);
    $pdf->Cell(40, 10, utf8_decode($row['Nom_Usuario']), 1, 0, 'C', 0);
    $pdf->Cell(40, 10, utf8_decode($row['objeto']), 1, 0, 'C', 0);
    $pdf->Cell(40, 10, utf8_decode($row['Accion']), 1, 0, 'C', 0);
    $pdf->Cell(100, 10, utf8_decode($row['Descripcion']), 1, 0, 'C', 0);
    $pdf->Cell(40, 10, $row['fecha_evento'], 1, 1, 'C', 0);
}

$pdf->Output('Reporte_Consulta_Bitacora.pdf', 'I');
}
?>