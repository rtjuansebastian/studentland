<?php

$conexion = mysqli_connect("localhost","gincomex_admin","Arpas2015") OR die ("No se pudo conectar al servidor");
mysqli_select_db ($conexion,"gincomex_studentland") OR die ("No se puede conectar a studentland");


/* Extrae los valores enviados desde la aplicacion movil */
$usuarioEnviado = $_GET['usuario'];
$passwordEnviado = $_GET['password'];

$sql="SELECT * FROM usuarios WHERE usuario=".$usuarioEnviado." AND clave=".$passwordEnviado." ";

$datos=mysqli_query($conexion,$sql);

$rs=  mysqli_fetch_row($datos);

$usuarioValido=$rs[0];
$passwordValido=$rs[1];


/* crea un array con datos arbitrarios que seran enviados de vuelta a la aplicacion */
$resultados = array();
$resultados["hora"] = date("F j, Y, g:i a"); 
$resultados["generador"] = "Enviado desde estudiaYapp" ;


/* verifica que el usuario y password concuerden correctamente */
if(  $usuarioEnviado == $usuarioValido  && $passwordEnviado == $passwordValido ){
	/*esta informacion se envia solo si la validacion es correcta */
	$resultados["mensaje"] = "Validacion Correcta";
	$resultados["validacion"] = "ok";

}else{
	/*esta informacion se envia si la validacion falla */
	$resultados["mensaje"] = "Usuario y password incorrectos";
	$resultados["validacion"] = "error";
}


/*convierte los resultados a formato json*/
$resultadosJson = json_encode($resultados);

/*muestra el resultado en un formato que no da problemas de seguridad en browsers */
echo $_GET['jsoncallback'] . '(' . $resultadosJson . ');';

?>