var fetchBrother = function () {
	var client = new XMLHttpRequest();
	client.open('GET', '/brother.txt');
	
	client.onreadystatechange = function() {
		if ( client.readyState !== 4 ) {
			return;
		}

		var content = document.getElementById('content');
		content.innerHTML += client.responseText;
	};

	client.send();

};

setInterval(fetchBrother, 4000);