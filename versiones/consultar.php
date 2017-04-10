<?php
//cotejamiento
header('Content-Type: text/html; charset=ISO-8859-1'); 
//conexion base de datos
$conexion = mysqli_connect("localhost","root","") OR die ("No se pudo conectar al servidor");
mysqli_select_db ($conexion,"studentland") OR die ("No se puede conectar a studentland");
//variables tomadas del form
$nbc=$_POST["select_programa"]; 
$ciudad=$_POST["select_ciudad"];
//consulta sql
$sql="SELECT a.nombre AS programa, b.nombre as universidad, c.nombre as ciudad FROM programas a, universidades b, ciudades c WHERE a.nucleo_basico_conocimiento=".$nbc." AND b.id=a.Universidad AND c.id=".$ciudad."";
$datos=mysqli_query($conexion,$sql);
//echo "consulta realizada: ".$sql;
$arrDatos = array();
while ($rs=mysqli_fetch_array($datos))
{
        $arrDatos[] = array_map('utf8_encode', $rs);
}

echo json_encode($arrDatos);
?>