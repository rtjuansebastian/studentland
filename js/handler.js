$(document).on("ready",ini);

function ini()
{	
	$("#btsubmit").on("click",consultarEstudiantes);
        
        $('#formulariologin').submit(function() { 
	
	 
	// recolecta los valores que inserto el usuario
	var datosUsuario = $("#nombredeusuario").val()
	var datosPassword = $("#clave").val()
	
  	archivoValidacion = "http://gincomex.com/siacomex/studentland/login.php?jsoncallback=?"

	$.getJSON( archivoValidacion, { usuario:datosUsuario ,password:datosPassword})
	.done(function(respuestaServer) {
		
		alert(respuestaServer.mensaje + "\nGenerado en: " + respuestaServer.hora + "\n" +respuestaServer.generador)
		
		if(respuestaServer.validacion == "ok"){
		  
		 	/// si la validacion es correcta, muestra la pantalla "home"
			$.mobile.changePage("#buscarprograma")
		  
		}else{
		  $.mobile.changePage("#login")
		  /// ejecutar una conducta cuando la validacion falla
                  $("#respuestalogin").html("usuario incorrecto");
		}
  
	})
	return false;
})
}

function consultarEstudiantes()
{
	cc = $("#select_programa").val();
	ca = $("#select_ciudad").val();
	traerDatos();
}

function traerDatos()
{

    var strHtml = "";
    var lista = "";
    var lista1 = "";
	$.ajax(
	{
		global: false,
		dataType: "html",
		async: false,
        type: "POST",
        url: $("#formulario").attr('action'),
        data: $("#formulario").serialize(),
    }
    ).done(function (resultado) 
    	{
           	var datosRecibidos = JSON.parse(resultado);
			var i=0;
            $.each( datosRecibidos, function( key, value ) 
            	{
		           	i=i+1;
		           	if(value.logo=="nofoto.jpg")
		           		{
		                	lista +="<li><div id='avatarUs' align='center'><img src= \"images/small/nofoto.jpg\" alt=\"Smiley face\" height=\"60\" width=\"80\"></div>";
		                }
		                else
		                {
		                	lista += "<li><div id='avatarUs' align=\"center\" ><img src= \"http://gincomex.com/siacomex/studentland/images/" + value.logo + "\" height=\"60\" width=\"80\" ></div>";
		                }
	                        //lista += "<li>";
	                lista += "<div id='infoUs'>";
	                lista += value.programa + "<br>";
	                lista += value.universidad + "<br>";
	                lista += value.ciudad + "<br>";
	                lista += "<form action='http://gincomex.com/siacomex/studentland/consultarPrograma.php' method='POST' id='formulario" + i +"'>";                        
	                lista += "<input type='hidden' name='codigo' id='codigo' value=" + value.codigo + ">";
	                lista += "<a href='#resultado' onclick=\"traerDatosProgramas("+i+")\"> Ver mas";
	                //lista += "<input type='button' value='ver mas' name='ver_mas' id='ver_mas' data-role='button' data-mini='true' data-icon='plus' data-iconpos='notext' onclick=\"traerDatosProgramas("+i+")\">";
	                lista += "</a>";
	                lista += "</form>";                        
	                lista += "</div>";
	                lista += "</li>";

	            }
                );
            	lista1 +="<p>total de registros encontrados:" +i+ "</p>";
            	$("#total").html(lista1);
                $("#listaDatos").html(lista);
                $("#listaDatos").listview().listview('refresh');
                return i; 
        });
}


function traerDatosProgramas(i)
{
	slider1(); 
	var strHtml = "";
		$.ajax({
				global: false,
				dataType: "html",
				async: false,
                type: "POST",
                url: $("#formulario"+i).attr('action'),
                data: $("#formulario"+i).serialize(),
            }).done(function (resultado) {
            	var datosRecibidos = JSON.parse(resultado);
				var lista = "";
                $.each( datosRecibidos, function( key, value ) {
                	lista += "<div id=\"slider\">";
                	lista += "<div><img src=\"images/sedes/"+value.slider+"1.jpg\" alt=\"\"></div>";
                	lista += "<div><img src=\"images/sedes/"+value.slider+"2.jpg\" alt=\"\"></div>";
                	lista += "<div><img src=\"images/sedes/"+value.slider+"3.jpg\" alt=\"\"></div>";
                	lista += "</div>";
                	lista += "<li>";
                    lista += "Nombre del programa: " + value.programa + "<br><br>";
                    lista += "Universidad: " + value.universidad + "<br><br>";
                    lista += "Domicilio: " + value.sede + ", "+ value.direccion + ", " + value.ciudad + "<br><br>";
                    lista += "Codigo Snies: " + value.snies + "<br><br>";
                    lista += "Areal del conocimiento: " + value.area_del_conocimiento + "<br><br>";
                    lista += "Metodologia: " + value.metodologia + "<br><br>";
                    lista += "Numero de semestres: " + value.Semestres + "<br><br>";
                    lista += "Valor semestre: " + value.Valor_semestre + "<br><br>";
                    lista += "Contacto: " + value.Contacto + "<br><br>";
                    lista += "</li>";
                });
                $("#listaDatosPrograma").html(lista);
                $("#listaDatosPrograma").listview().listview('refresh');
        });          
}


function slider1()
{
    $('#slider div:gt(0)').hide();
    setInterval(function(){
    $('#slider div:first-child').fadeOut(5000)
    .next('div').fadeIn(5000)
    .end().appendTo('#slider');}, 6000);
}	
