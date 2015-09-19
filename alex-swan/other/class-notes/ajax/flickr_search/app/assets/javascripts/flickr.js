var displayResults = function (photos) {
	for (var i = 0; i < photos.length; i++) {
		displayPhoto(photos[i]);
	}
};

var displayPhoto = function(photo) {
	var url = [
	'https://farm',
	photo.farm,
	'.staticflickr.com/',
	photo.server,
	'/',
	photo.id,
	'_',
	photo.secret,
	'_q.jpg'
	].join('');

	var $img = $('<img>').attr('src', url);
	$img.appendTo('#results');
};

var searchFlickr = function (query, page) {

  
  var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';
  
  $.getJSON(flickrUrl, {

    method: 'flickr.photos.search',
    api_key: '2f5ac274ecfac5a455f38745704ad084',
    text: query,
    format: 'json',
    page: page

  }).done(function (result) {
  	var photos = result.photos.photo;
  	displayResults(photos);
  }).fail(function () {
  	$('body').css('background-color', 'red');
  });
};

$(document).ready(function () {

	$('#search').on('submit', function (event) {
	  event.preventDefault();
	  var query = $('#query').val();
	  var currentPage = 1;
	  searchFlickr(query, currentPage);
	});

	var currentPage = 1;

	$(window).on('scroll', function (){		
		var windowHeight = $(window).height();
		var documentHeight = $(document).height();
		var scrollTop = $(window).scrollTop();

		if ((scrollTop + windowHeight) > documentHeight - 10){
			currentPage++;
			searchFlickr($("#query").val(), currentPage);
		}; 
	});

});




