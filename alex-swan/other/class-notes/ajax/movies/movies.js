var searchOMDB = function (event) {

	var displayResults = function (result) {
		if (! result['Poster']) {
			$title.text('Poster not found').addClass('error');
			$plot.empty();
			$poster.removeAttr('src');
			$bg.css('background-image', '');
		} else {
			$title.text(result['Poster']).removeClass('error');
			$plot.text(result['Plot']);
			$poster.attr('src', result['Poster']);
			$bg.css('background-image', ['url(', result[;Poster], ')'].join(''));
		}
	};

	event.preventDefault();

	var searchTitle = $('#search_title').val();
	$('#search_title').val('').focus();

	var $title = $('#title');
	var $poster = $('#poster');
	var $plot = $('#plot');
	var $bg = $('#bg');

	$.ajax({
		url: 'http://omdbapi.com/?t=' + encodeURIComponent(searchTitle)
	}).done(displayResults);
};

$(document).ready(function () {
	$('#search').on('submit', searchOMDB);
});