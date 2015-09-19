var getInfo = function () {
	var client = new XMLHttpRequest();
	client.onreadystatechange = function (){
		if (client.readyState !== 4 ) {
			return;
		}

		var info = JSON.parse(client.responseText);
		var p = document.getElementById('time');
			p.innerHTML = info['time'];

		var p = document.getElementById('lucky_numbers');
		p.innerHTML += info['lucky_number'] + ', ';

		var p = document.getElementById('uptime');
		p.innerHTML = info['uptime'];
	};	

	client.open('GET', '/info');
	client.send();
};

setInterval(getInfo, 4000);

var getTime = function () {
  var client = new XMLHttpRequest();

  client.onreadystatechange = function () {
  	if (client.readyState !== 4) {
  		return;
  	}

  	var p = document.getElementById('time');
  		p.innerHTML = (client.responseText['uptime']);
  };

  client.open('GET', '/time');
  client.send();
};

// setInterval(getTime, 3000);

var getNumber = function() {
	var client = new XMLHttpRequest();
	client.onreadystatechange = function () {
		if (client.readyState != 4) {
			return;
		}
		var p = document.getElementById('lucky_numbers');
		p.innerHTML += client.responseText + ', ';
	};
	client.open('GET', '/lucky');
	client.send();
};

var button = document.getElementById('fetch_number');
	button.addEventListener('click', getNumber)