$(document).ready(function(){

	setTimeout(function(){
		$('[data-notify-hide]').slideUp(400)
	}, 1000);

	$('[data-notify-hide]').dblclick(function(){
		$(this).slideUp(400)
	})
    
});