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
    $this->Cell(100,10,utf8_decode('REPORTE DE USUARIOS'),0,0,'C');
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

    $query = "SELECT tbl_usuario.ID_Usuario,	
    tbl_empleado.Nom_Empleado,
    tbl_usuario.email,
    tbl_usuario.Nom_Usuario,
    tbl_estado_usuario.Descripcion,
    tbl_roles.Rol FROM tbl_usuario
    INNER JOIN tbl_empleado on tbl_usuario.ID_Empleado = tbl_empleado.ID_Empleado
    INNER JOIN tbl_estado_usuario on tbl_usuario.ID_Estado = tbl_estado_usuario.ID_Estado
    INNER JOIN tbl_roles on tbl_usuario.ID_Rol = tbl_roles.ID_Rol
    WHERE
    tbl_usuario.ID_Usuario LIKE '%".$buscar."%' OR
    tbl_empleado.Nom_Empleado LIKE '%" .$buscar."%' OR
    tbl_usuario.email LIKE '%" .$buscar."%' OR
    tbl_usuario.Nom_Usuario LIKE '%" .$buscar."%' OR
    tbl_estado_usuario.Descripcion LIKE '%" .$buscar."%' OR
    tbl_roles.Rol LIKE '%" .$buscar."%'";

    $consulta = mysqli_query($con,$query);
    $data = mysqli_num_rows($consulta);

$pdf = new PDF();
// Carga de datos
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Times','',8);

$pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
$pdf->Cell(55, 10, 'Nombre del colaborador', 1, 0, 'C', 1);
$pdf->Cell(52, 10, utf8_decode('Email'), 1, 0, 'C', 1);
$pdf->Cell(40, 10, utf8_decode('Nombre de usuario'), 1, 0, 'C', 1);
$pdf->Cell(20, 10, utf8_decode('Descripción'), 1, 0, 'C', 1);
$pdf->Cell(20, 10, utf8_decode('Rol'), 1, 1, 'C', 1);

$no = 1;
while($row = mysqli_fetch_assoc($consulta)){
    $pdf->Cell(8, 10, $no, 1, 0, 'C', 0);
    $pdf->Cell(55, 10, utf8_decode($row['Nom_Empleado']), 1, 0, 'C', 0);
    $pdf->Cell(52, 10, $row['email'], 1, 0, 'C', 0);
    $pdf->Cell(40, 10, utf8_decode($row['Nom_Usuario']), 1, 0, 'C', 0);
    $pdf->Cell(20, 10, utf8_decode($row['Descripcion']), 1, 0, 'C', 0);
    $pdf->Cell(20, 10, utf8_decode($row['Rol']), 1, 1, 'C', 0);
$no++;
}

$pdf->Output('Reporte_Usuarios.pdf', 'I');

}else{

    $consulta = mysqli_query($con, "SELECT tbl_usuario.ID_Usuario,	
    tbl_empleado.Nom_Empleado,
    tbl_usuario.email,
    tbl_usuario.Nom_Usuario,
    tbl_estado_usuario.Descripcion,
    tbl_roles.Rol FROM tbl_usuario
    INNER JOIN tbl_empleado on tbl_usuario.ID_Empleado = tbl_empleado.ID_Empleado
    INNER JOIN tbl_estado_usuario on tbl_usuario.ID_Estado = tbl_estado_usuario.ID_Estado
    INNER JOIN tbl_roles on tbl_usuario.ID_Rol = tbl_roles.ID_Rol");
    $resultado = mysqli_num_rows($consulta);

    $pdf = new PDF();
        // Carga de datos
        $pdf->AliasNbPages();
        $pdf->AddPage();
        $pdf->SetFillColor(232,232,232);
        $pdf->SetFont('Times','',8);

        $pdf->Cell(8, 10, 'No', 1, 0, 'C', 1);
        $pdf->Cell(55, 10, 'Nombre del colaborador', 1, 0, 'C', 1);
        $pdf->Cell(52, 10, utf8_decode('Email'), 1, 0, 'C', 1);
        $pdf->Cell(40, 10, utf8_decode('Nombre de usuario'), 1, 0, 'C', 1);
        $pdf->Cell(20, 10, utf8_decode('Descripción'), 1, 0, 'C', 1);
        $pdf->Cell(20, 10, utf8_decode('Rol'), 1, 1, 'C', 1);

        $no = 1;
        while($row = mysqli_fetch_assoc($consulta)){
            $pdf->Cell(8, 10, $no, 1, 0, 'C', 0);
            $pdf->Cell(55, 10, utf8_decode($row['Nom_Empleado']), 1, 0, 'C', 0);
            $pdf->Cell(52, 10, $row['email'], 1, 0, 'C', 0);
            $pdf->Cell(40, 10, utf8_decode($row['Nom_Usuario']), 1, 0, 'C', 0);
            $pdf->Cell(20, 10, utf8_decode($row['Descripcion']), 1, 0, 'C', 0);
            $pdf->Cell(20, 10, utf8_decode($row['Rol']), 1, 1, 'C', 0);
        $no++;
        }

    $pdf->Output('Reporte_Usuarios.pdf', 'I');
}

?>