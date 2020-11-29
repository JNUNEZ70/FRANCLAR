<?php

require_once('vendor/autoload.php');

require_once('../Reporte/index.php');

$mpdf = new \Mpdf\Mpdf([

]);

$plantilla = getPlantilla();
$mpdf->writeHTML($plantilla, \Mpdf\HTMLParserMode::HTML_BODY);

$mpdf->Output();
?>