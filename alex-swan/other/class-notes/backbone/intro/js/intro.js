var Animal = Backbone.Model.extend({
	defaults: {
		type: 'animal',
		ecosystem: '',
		stripes: 0
	},

	initialize: function () {
		console.log('a new wild animal appears!');

		this.on('change:type', function (model) {
			var type = model.get('type');
			console.log('I am now a', type)
		});
	}

});

var Zoo = Backbone.Collection.extend({
	model: Animal
});

var a1 = new Animal({type: 'giraffe', ecosystem: 'savannah'});
var a2 = new Animal({type: 'zebra', ecosystem: 'savannah', stripes: 30});
var a3 = new Animal({type: 'horse', ecosystem: 'praries'});

var zoo = new Zoo([ a1, a2, a3 ]);

var ZooView = Backbone.View.extend({
	el: '#main',

	events: {
		'click h2': 'easterEgg'
		'click li': 'animal info'
	},

	initialize: function (options) {
		console.log('initializing Zooview');
		this.collection = options.collection;
	},

	render: function() {
		this.$el.html('<h2>Welcome to our zoo</h2>');
		this.$el.append('<ul id="animals"/>')

		this.collection.each(function (model) {
			var $li = $('<li/>').text( model.get('type'));
			$li.appendTo('#animals');
		});
	},

	easterEgg: function () {
		this.$el.find('h2').hide().fadeIn(4000);
	},

	animalInfo: function (event) {
		var name = $(event.target).text();
		alert('You clicked on ' + name)
	}
});

$(document).ready(function () {
	var zooView = new ZooView({collection: zoo});
	zooView.render();
});