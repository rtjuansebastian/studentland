$(document).ready(function(){
    $("#errorMsg").hide();
    $("#btnLogin").click(function(){
        var usu = $("#txtuser").val();
        var pass = $("#txtpassword").val();
        $.post("http://gincomex.com/siacomex/studentland/login.php",{ usu : usu, pass : pass},function(respuesta){
            if (respuesta == true) {
                $.mobile.changePage("#menu");
            }
            else{
                $.mobile.changePage('#principal');
                /*$("#errorMsg").fadeIn(300);
                $("#errorMsg").css("display", "block");*/
            }
        });
    });
});