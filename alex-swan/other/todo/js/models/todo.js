var app = app || {};

//Todo Model
// ------
// Our basic **Todo** model has 'title' and 'completed' attributes.

app.Todo = Backbone.Model.extend({

  // Default attributes ensute that each todo create has 'title' and 'completed' keys.
  default: {
    title: '',
    completed: false
  },

  //Toggle the 'completed' state of this todo item.
  toggle: function() { 
    this.save({
      completed: !this.get('completed')
    });
  }
});