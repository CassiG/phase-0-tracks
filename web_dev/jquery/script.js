$("#button").click(function(){
    $("#div").class.animate({
    	opacity: 0.4,    	
    	height: "70%"
    }, 1500);
});

$('#save-message').click(function(){
	document.write($('#secret-msg').val());
});