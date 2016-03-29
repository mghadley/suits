$(document).ready(function() {
	$('#measurements-step').show();
	$('#measurements-next').click(function(e) {
		e.preventDefault();
		$('#measurements-step').hide();
		$('#customize-step').show();
		$('#suit-submit').show();
	});
	$('#customize-back').click(function(e) {
		e.preventDefault();
		$('#customize-step').hide();
		$('#measurements-step').show();
		$('#suit-submit').hide();
	});
});