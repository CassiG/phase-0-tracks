$('#save-message').click(function(event){
	event.preventDefault();
	var formMsg = $('#secret-msg').val();
	$('#secret-msg-reveal').html("<p class='msg-style'>" + formMsg + "</p>");
	$('.msg-revealed').removeClass('hidden');
	$('form').hide();
});

$('#reveal').click(function(){
	$('#secret-msg-reveal').animate({
		backgroundColor: '#000'
	}, 1500);
});

$('#new-message').click(function(){
	$('#secret-msg-reveal').empty();
	$('#secret-msg').val('');
	$('.msg-revealed').addClass('hidden');
	$('form').show();

});