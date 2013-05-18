$('document').ready(function(){

$('.step_submit').hide();

$("[name='step[complete]']").click(function(){
  $(this).closest('form').submit();
});
});