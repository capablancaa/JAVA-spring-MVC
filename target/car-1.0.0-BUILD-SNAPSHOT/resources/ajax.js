function getLocationBySelectedCity() {
	$('#loading').html('<img src="./resources/img/ajax-loader.gif">');
	var city = $('#city1').val();
	console.log(city);
	$.ajax({
		url : 'byCity',
		type : 'GET',
		ContentType : 'json',
		data : {
			city : city
		},
		success : function(response) {
			var options = '';
			if (response != null) {
				$(response).each(function(index, value) {
					options = options + '<option>' + value + '</option>';
				});
				$('#location1').html(options);
				console.log(location1);
			}
			$('#loading').html('');
		}
	});
}

function getLocationBySelectedCity2() {
	$('#loading').html('<img src="./resources/img/ajax-loader.gif">');
	var city = $('#city2').val();
	$.ajax({
		url : 'byCity',
		type : 'get',
		ContentType : 'json',
		data : {
			city : city
		},
		success : function(response) {
			var options = '';
			if (response != null) {
				$(response).each(function(index, value) {
					options = options + '<option>' + value + '</option>';
				});
				$('#location2').html(options);
			}
			$('#loading').html('');
		}
	});
}
