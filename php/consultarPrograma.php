<?php

header('Content-Type: text/html; charset=ISO-8859-1'); 
//conexion base de datos
//$conexion = mysqli_connect("localhost","root","") OR die ("No se pudo conectar al servidor");
$conexion = mysqli_connect("localhost","gincomex_admin","Arpas2015") OR die ("No se pudo conectar al servidor");
mysqli_select_db ($conexion,"gincomex_studentland") OR die ("No se puede conectar a studentland");

$codigo=$_POST["codigo"]; 

$sql="SELECT DISTINCT c.Nombre AS programa, a.Nombre AS universidad, g.Nombre AS ciudad, b.nombre AS sede, b.direccion AS direccion, c.codigo_SNIES AS snies, h.nombre AS area_del_conocimiento, i.modalidad AS metodologia, c.numero_semestres AS Semestres, c.costos AS Valor_semestre, c.correo_contacto AS Contacto, c.id AS codigo, CONCAT(a.id,b.id) AS slider
FROM universidades a, sedes b, programas c, nucleos_basicos_conocimiento d, niveles_formacion e, departamentos f, ciudades g, areas_conocimiento h, modalidades i
WHERE f.id = g.Departamento
AND b.ciudad = g.id
AND c.Sede = b.id
AND c.Universidad = a.id
AND d.area_conocimiento=h.id
AND c.nucleo_basico_conocimiento=d.id
AND c.modalidad=i.id
AND c.id=".$codigo."";

$datos=mysqli_query($conexion,$sql);

$arrDatos = array();
while ($rs=mysqli_fetch_array($datos))
{
  $arrDatos[] = array_map('utf8_encode', $rs);
}
echo json_encode($arrDatos);
?>