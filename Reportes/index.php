<?php

require_once('vendor/autoload.php');

//Plantilla HTML
require_once('App/Plantilla/Reporte/index.php');

//Codigo CSS de la plantilla
$css = file_get_contents('App/Plantilla/Reporte/style.css');

//base de datos

$mpdf = new \Mpdf\Mpdf([

]);

$plantilla = getPlantilla();

$mpdf->writeHTML($css, \Mpdf\HTMLParserMode::HEADER_CSS);
$mpdf->writeHTML($plantilla, \Mpdf\HTMLParserMode::HTML_BODY);

$mpdf->Output();
?>