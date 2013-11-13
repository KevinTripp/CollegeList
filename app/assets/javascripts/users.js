//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){

	$('.college_submit').hide();



	$("[name='college[accepted]']").click(function(){
		$(this).closest('form').submit();
	});


var runProgressBars = function(){
	for (i = 0; i < gon.colleges.length; i++){
		console.log(gon.colleges[i].name)
		console.log(gon.colleges[i].percent_complete)
			$('.progress').css('width','0');
			$('.' + gon.colleges[i].name).animate({width:gon.colleges[i].percent_complete + '%'},5000,function(){
				//complete
			});
	}
}

runProgressBars();

});