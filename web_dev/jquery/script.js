$('#save-message').click(function(event){
	event.preventDefault();
	var formMsg = $('#secret-msg').val();
	$('#secret-msg-reveal').html("<p>" + formMsg + "</p>");
	$('.msg-revealed').removeClass('hidden');
	$('form').hide();
});

$('#reveal').click(function(){
	$('#secret-msg-reveal').toggleClass('reveal-msg');
});

$('#new-message').click(function(){
	$('#secret-msg-reveal').empty();
	$('#secret-msg').val('');
	$('.msg-revealed').addClass('hidden');
	$('form').show();

});