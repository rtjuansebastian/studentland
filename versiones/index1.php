<?php
header('Content-Type: text/html; charset=ISO-8859-1'); 
$conexion = mysql_connect("localhost","root","");
mysql_select_db ("studentland", $conexion) OR die ("No se puede conectar a studentland"); 
//consultas sql
//consulta ciudades
$sql1="SELECT id, nombre FROM ciudades";
$valor1="Seleccione una ciudad";
$nombre1="select_ciudad";
//consulta programas
$sql2="SELECT id, nucleo_basico_conocimiento FROM nucleos_basicos_conocimiento ORDER BY nucleos_basicos_conocimiento.nucleo_basico_conocimiento ASC";
$valor2="Seleccione un programa";
$nombre2="select_programa";
//funcion menus desplegables
function saca_menu_desplegable($ssql,$valor,$nombre){ 
  	echo "<select name='$nombre' id='$nombre' data-theme=a>"; 
  	$resultado=mysql_query($ssql); 
  	while ($fila=mysql_fetch_row($resultado)){ 
    	if ($fila[0]==$valor){ 
      	echo "<option selected value='$fila[0]'>$fila[1]";	
    	} 
    	else{ 
      	echo "<option value='$fila[0]'>$fila[1]";	
    	} 
  } 
  	echo "</select>";	
}
?>
<!DOCTYPE html> 
<html> 
<head> 
   <title>StudentLand</title> 
   <meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1" />
   <meta name="viewport" content="width=device-width, initial-scale=1"> 
   <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.css" />
   <link rel="stylesheet" href="css/student.css" />
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
   <script type="text/javascript" src="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.js"></script> 
</head> 

<body> 
	<div data-role="page"> 
		<div data-role="header" data-position="fixed" data-theme="a">
		<h1>StudentLand</h1>
		</div> 
		<div data-role="content">
			<div data-role="fieldcontain">
			<label for="select_tc" class="select">Tipo de carrera:</label>
			<select name="select_tipo_carrera" id="select_tipo_carrera" data-theme="a">
				<option value="Cualquiera">Cualquiera</option>
				<option value="Tecnica">Tecnica</option>
				<option value="Profesional">Profesional</option>
				<option value="Posgrado">Posgrado</option>
			</select>
			</div><!-- /fieldcontain -->
			<div data-role="fieldcontain">
			<label for="select_ti" class="select" >Tipo de Insitucion:</label>
			<select name="select_tipo_institucion" id="select_tipo_institucion" data-theme="a">
				<option value="Cualquiera">Cualquiera</option>
				<option value="Publica">Publica</option>
				<option value="Privada">Privada</option>
			</select>
			</div><!-- /fieldcontain -->
			<div data-role="fieldcontain">
				<label for="select_programa" class="select">Seleccione un programa:</label>
	            <?php 
	            	saca_menu_desplegable($sql2,$valor2,$nombre2); 
	            ?>
			</div><!-- /fieldcontain -->
			<div data-role="fieldcontain">
				<label for="select_ciudad" class="select">Seleccione una ciudad:</label>
	            <?php 
	            	saca_menu_desplegable($sql1,$valor1,$nombre1); 
	            ?>
			</div><!-- /fieldcontain -->
			<a href="#" data-role="button" data-icon="arrow-r" data-theme="a">Consultar</a>
		</div> <!-- /content -->
		<div data-role="footer" data-position="fixed" data-theme="a">		
			<div data-role="navbar">
			<ul>
				<li><a href="#" data-icon="back">Atras</a></li>
				<li><a href="#" data-icon="home">Inicio</a></li>
				<li><a href="#" data-icon="gear">Ajustes</a></li>
			</ul>
			</div><!-- /navbar -->
		</div><!-- /footer -->
	</div> <!-- /page -->
</body>
</html>