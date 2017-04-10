<?php
//cotejamiento
header('Content-Type: text/html; charset=ISO-8859-1'); 
//conexion base de datos
//$conexion = mysqli_connect("localhost","root","") OR die ("No se pudo conectar al servidor");
$conexion = mysqli_connect("localhost","gincomex_admin","Arpas2015") OR die ("No se pudo conectar al servidor");
mysqli_select_db ($conexion,"gincomex_studentland") OR die ("No se puede conectar a studentland");
//variables tomadas del form
$nbc=$_POST["select_programa"]; 
$departamento=$_POST["select_ciudad"];
$tipoi=$_POST["select_tipo_institucion"];
$tipoc=$_POST["select_tipo_carrera"];
//consulta sql
/*
$sql="SELECT DISTINCT c.Nombre AS programa, a.Nombre AS universidad, g.Nombre AS ciudad FROM universidades a, sedes b, programas c, nucleos_basicos_conocimiento d, niveles_formacion e, departamentos f, ciudades g, areas_conocimiento h WHERE f.id=g.Departamento AND b.ciudad=g.id AND c.Sede=b.id AND c.Universidad=a.id ";
if($nbc!=0){$sql.="AND c.nucleo_basico_conocimiento=".$nbc."";}
if ($tipoc!=0) {$sql.=" AND c.nivel_formacion=".$tipoc."";}
if($departamento!=0){$sql.="AND f.id=".$departamento."";}
if($tipoi!=0){$sql.="AND a.Caracter_institucion=".$tipoi."";}
*/

$sql="SELECT DISTINCT c.Nombre AS programa, a.Nombre AS universidad, g.Nombre AS ciudad, b.nombre AS sede, b.direccion AS direccion, c.codigo_SNIES AS snies, h.nombre AS area_del_conocimiento, c.modalidad AS metodologia, c.numero_semestres AS Semestres, c.costos AS Valor_semestre, c.correo_contacto AS Contacto, c.id AS codigo, a.logo AS logo
FROM universidades a, sedes b, programas c, nucleos_basicos_conocimiento d, niveles_formacion e, departamentos f, ciudades g, areas_conocimiento h
WHERE f.id = g.Departamento
AND b.ciudad = g.id
AND c.Sede = b.id
AND c.Universidad = a.id
AND d.area_conocimiento=h.id
AND c.nucleo_basico_conocimiento=d.id";
if($nbc!=0){$sql.="AND c.nucleo_basico_conocimiento=".$nbc."";}
if ($tipoc!=0) {$sql.=" AND c.nivel_formacion=".$tipoc."";}
if($departamento!=0){$sql.="AND f.id=".$departamento."";}
if($tipoi!=0){$sql.="AND a.Caracter_institucion=".$tipoi."";}
/*
AND c.nucleo_basico_conocimiento=".$nbc." 
AND f.id=".$departamento." 
AND a.Caracter_institucion=".$tipoi." 
AND c.nivel_formacion=".$tipoc."";
*/
$datos=mysqli_query($conexion,$sql);
//echo "consulta realizada: ".$sql;
unset($nbc);
unset($departamento);
unset($tipoi);
unset($tipoc);
$arrDatos = array();
while ($rs=mysqli_fetch_array($datos))
{
  $arrDatos[] = array_map('utf8_encode', $rs);
}

echo json_encode($arrDatos);
?>