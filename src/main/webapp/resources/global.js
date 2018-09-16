$(document).ready(function(){
	$("#logout1").click(function(e){
		console.log("merhaba");
		e.preventDefault();
		$("#form-logout1").submit();
	});
});