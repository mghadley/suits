$(document).ready(function() {
	$('#measurements-step').show();
	$('#measurements-button').click(function(e) {
		e.preventDefault();
		$('#measurements-step').hide();
		$('#customize-step').show();
	});

});