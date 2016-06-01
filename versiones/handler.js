$(document).on("ready",ini);

function ini()
{	
	$("#btsubmit").on("click",consultarEstudiantes);    
}

function consultarEstudiantes()
{
	cc = $("#select_programa").val();
	ca = $("select_ciudad").val();
	traerDatos();
}

function traerDatos()
{

        var strHtml = "";
		$.ajax({
				global: false,
				dataType: "html",
				async: false,
                type: "POST",
                url: $("#formulario").attr('action'),
                data: $("#formulario").serialize(),
            }).done(function (resultado) {
            	var datosRecibidos = JSON.parse(resultado);
				var lista = "";
                $.each( datosRecibidos, function( key, value ) {
                        lista += "<li>";
                        lista += "<div id='infoUs'>";
                        lista += "programa: " + value.programa + "<br>";
                        lista += "Universidad: " + value.universidad + "<br>";
                        lista += "ciudad: " + value.ciudad;
                        lista += "</div>";
                        lista += "</li>";
                });
                $("#listaDatos").html(lista);
                $("#listaDatos").listview().listview('refresh');
        });
    
}
