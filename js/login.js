var userHandler = {
    username : '',
    status : ''
}
 
$(document).on('pagecontainershow', function (e, ui) {
    var activePage = $(':mobile-pagecontainer').pagecontainer('getActivePage');
    if(activePage.attr('id') === 'login') {
        $(document).on('click', '#loginsubmit', function() { // catch the form's submit event
            if($('#username').val().length > 0 && $('#password').val().length > 0){
             
                userHandler.username = $('#username').val();
             
                // Send data to server through the Ajax call
                // action is functionality we want to call and outputJSON is our data
                $.ajax({url: 'php/login.php',
                    data: {action : 'authorization', formData : $('#check-user').serialize()},
                    type: 'post',                  
                    async: 'true',
                    dataType: 'json',
                    beforeSend: function() {
                        // This callback function will trigger before data is sent
                        $.mobile.loading('show'); // This will show Ajax spinner
                    },
                    complete: function() {
                        // This callback function will trigger on data sent/received complete   
                        $.mobile.loading('hide'); // This will hide Ajax spinner
                    },
                    success: function (result) {
                        // Check if authorization process was successful
                        if(result.status == 'success') {
                            userHandler.status = result.status;
                            $.mobile.changePage("#menu");                        
                        } else {
                            alert('Logon unsuccessful!');
                        }
                    },
                    error: function (request,error) {
                        // This callback function will trigger on unsuccessful action               
                        alert('Network error has occurred please try again!');
                    }
                });                  
            } else {
                alert('Please fill all necessary fields');
            }          
            return false; // cancel original event to prevent form submitting
        });  
    } else if(activePage.attr('id') === 'principal') {
        activePage.find('.ui-content').text('Wellcome ' + userHandler.username);
    }
});
 
$(document).on('pagecontainerbeforechange', function (e, ui) {
    var activePage = $(':mobile-pagecontainer').pagecontainer('getActivePage');
    if(activePage.attr('id') === 'menu') {
        var to = ui.toPage;
         
        if (typeof to  === 'string') {
            var u = $.mobile.path.parseUrl(to);
            to = u.hash || '#' + u.pathname.substring(1);
              
            if (to === '#login' && userHandler.status === 'success') {
                alert('You cant open a login page while youre still logged on!');
                e.preventDefault();
                e.stopPropagation();
                  
                // remove active status on a button if a transition was triggered with a button
                $('#back-btn').removeClass('ui-btn-active ui-shadow').css({'box-shadow':'0 0 0 #3388CC'});
            } 
        }
    }
});