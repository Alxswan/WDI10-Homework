// Setting up our models (as we might do in Rails)
var Post = Backbone.Model.extend({
	default: {
		title: 'Untitled',
		content: 'This space for rent',
	}
});

// This posts collection is similar to an ActiveRecord collection.
// It has additional methods such as puck() and get() which arrays lack.
// See docs for the additional underscore methods.
var Posts = Backbone.Collection.extend({
	model: Post
});

// seeds.rb
// Later we will see how to retrieve these posts from a Rails databsse.
var blogPosts = new Posts([
	new Post({id: 1, title: 'Post 1', content: 'Content of first post'}),
	new Post({id: 2, title: 'Post 2', content: 'Different content of the second post'}),
	new Post({id: 3, title: 'Third post', content: 'yaayya'}),
	new Post({id: 4, title: 'Another', content: 'I bet you think you know this story'})
]);

// Views have a render() method to actually display something on the screen.
// They also optionally keep track of the events that apply to them

var AppView = Backbone.View.extend({
	el: '#main',
	render: function() {
		var html = $('#appView').html();
		this.$el.html(html);

		this.collection.each(function (post){
			var postListView = new PostListView({model: post});
			postListView.render();
		});
	}
});

var PostListView = Backbone.View.extend({
	tagName: 'li',
	events: {
		'click': 'showPost'
	},
	render: function () {
		var postListTemplate = $('#postListView').html();
		var postListHTML = _.template(postListTemplate);
		var postList = postListHTML( this.model.toJSON());
		this.$el.html(postList);
		this.$el.appendTo('#posts');
	},
	showPost: function () {
		router.navigate('posts/' + this.model.get('id'), true);
	}
});

var PostView = Backbone.View.extend({
	el: '#main',
	render: function () {
		var postTemplate = $('#postView').html();
		var postHTML = _.template(postTemplate);
		var post = postHTML( this.model.toJSON() );	
		this.$el.html(post);	
	}

});

var AppRouter = Backbone.Router.extend({
	routes: {
		'': 'index',
		'posts/:id': 'viewPost'
	},

	index: function () {
		var appView = new AppView({collection: blogPosts});
		appView.render();
	},

	viewPost: function(id) {
		var post = blogPosts.get(id);
		var postView = new PostView({model: post});
		postView.render();
	}
});

var router;
$(document).ready(function () {
	router = new AppRouter();
	Backbone.history.start();
});