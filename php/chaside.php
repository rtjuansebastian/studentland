<?php
header('Content-Type: text/html; charset=ISO-8859-1'); 
$conexion = mysqli_connect("localhost","gincomex_admin","Arpas2015") OR die ("No se pudo conectar al servidor");
mysqli_select_db ($conexion,"gincomex_studentland") OR die ("No se puede conectar a studentland");

$c=0;$h=0;$a=0;$s=0;$i=0;$d=0;$e=0;$mayor="";$area=0;
if(isset($_POST))
{
   foreach($_POST as $clave=>$valor)
   {
       if($valor>0)
       {
           if($clave=='slider98' || $clave=='slider12' || $clave=='slider64' || $clave=='slider53' || $clave=='slider85' || $clave=='slider1' || $clave=='slider78' || $clave=='slider20' || $clave=='slider71' || $clave=='slider91' || $clave=='slider15' || $clave=='slider51' || $clave=='slider2' || $clave=='slider46')
           {
                $c++;
           }
           elseif($clave=='slider9' || $clave=='slider34' || $clave=='slider80' || $clave=='slider25' || $clave=='slider95' || $clave=='slider67' || $clave=='slider41' || $clave=='slider74' || $clave=='slider56' || $clave=='slider89' || $clave=='slider63' || $clave=='slider30' || $clave=='slider72' || $clave=='slider86')
           {
                $h++;
           }
           elseif($clave=='slider21' || $clave=='slider45' || $clave=='slider96' || $clave=='slider57' || $clave=='slider28' || $clave=='slider11' || $clave=='slider5' || $clave=='slider3' || $clave=='slider81' || $clave=='slider36' || $clave=='slider22' || $clave=='slider39' || $clave=='slider76' || $clave=='slider82')
           {
                $a++;
           }           
           elseif($clave=='slider33' || $clave=='slider92' || $clave=='slider70' || $clave=='slider8' || $clave=='slider87' || $clave=='slider62' || $clave=='slider23' || $clave=='slider44' || $clave=='slider16' || $clave=='slider52' || $clave=='slider69' || $clave=='slider40' || $clave=='slider29' || $clave=='slider4')
           {
                $s++;
           }                      
           elseif($clave=='slider75' || $clave=='slider6' || $clave=='slider19' || $clave=='slider38' || $clave=='slider60' || $clave=='slider27' || $clave=='slider83' || $clave=='slider54' || $clave=='slider47' || $clave=='slider97' || $clave=='slider26' || $clave=='slider59' || $clave=='slider90' || $clave=='slider10')
           {
                $i++;
           }           
           elseif($clave=='slider84' || $clave=='slider31' || $clave=='slider48' || $clave=='slider73' || $clave=='slider5' || $clave=='slider65' || $clave=='slider14' || $clave=='slider37' || $clave=='slider58' || $clave=='slider24' || $clave=='slider13' || $clave=='slider66' || $clave=='slider18' || $clave=='slider43')
           {
                $d++;
           }           
           elseif($clave=='slider77' || $clave=='slider42' || $clave=='slider88' || $clave=='slider17' || $clave=='slider93' || $clave=='slider32' || $clave=='slider68' || $clave=='slider49' || $clave=='slider35' || $clave=='slider61' || $clave=='slider94' || $clave=='slider7' || $clave=='slider79' || $clave=='slider55')
           {
                $e++;
           }                      
       }
   }
   //$usuario=$_POST['usuario'];
   $sql='INSERT INTO test_vocacional (c,h,a,s,i,d,e) VALUES('.$c.','.$h.','.$a.','.$s.','.$i.','.$d.','.$e.');';
   $datos=mysqli_query($conexion,$sql);
   $chaside=array("C"=>$c, "H"=>$h,"A"=>$a, "S"=>$s, "I"=>$i, "D"=>$d, "E"=>$e);
   $mayor=  array_search(max($chaside),$chaside);
   if ($mayor=="C")
   {
       $area=6;
       $area2=0;
   }
   elseif ($mayor=="H") 
    {
       $area=3;
       $area2=5;
    }
   elseif ($mayor=="A") 
    {
       $area=2;
       $area2=0;
    }
   elseif ($mayor=="S") 
    {
       $area=4;
       $area2=0;
    }
   elseif ($mayor=="I") 
    {
       $area=7;
       $area2=0;
    }
   elseif ($mayor=="D") 
    {
       $area=5;
       $area2=0;
    }
   elseif ($mayor=="E") 
    {
       $area=1;
       $area2=8;
    }
          $sql="SELECT d.Nombre AS Universidad, a.Nombre AS Programa
        FROM programas a, areas_conocimiento b, nucleos_basicos_conocimiento c, universidades d, niveles_formacion e
        WHERE a.Universidad = d.id
        AND a.nucleo_basico_conocimiento = c.id
        AND c.area_conocimiento = b.id
        AND a.nivel_formacion = e.id
        AND (
        a.nivel_formacion = '1'
        OR a.nivel_formacion = '2'
        OR a.nivel_formacion = '3'
        )
        AND (b.id = '".$area."' ";
          
    if($area2>0)
    {
        $sql.=" OR b.id = '".$area2."') ";
    }
    else 
    {
        $sql.=") ";
    }
    $datos=mysqli_query($conexion,$sql);
    $arrDatos = array();
    while ($rs=mysqli_fetch_array($datos))
    {
      $arrDatos[] = array_map('utf8_encode', $rs);
    }

    echo json_encode($arrDatos);
    }
?>
