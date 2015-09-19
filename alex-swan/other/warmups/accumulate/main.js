// Accumulate
var Calculate = function( array ) {
	this.array = array;
	this.square = function ( ) {
		this.squares = [];
		for (i = 0; i < this.array.length; i++){
			this.square = this.array[i] * this.array[i]
			this.squares.push(this.square);
		}
		return this.squares;
	};

	this.sqroot = function ( ) {
		this.roots = [];
		for (i = 0; i < this.array.length; i++){
			this.root = Math.sqrt(this.array[i])
			this.roots.push(this.root);
		}
		return this.roots;
	};

	this.cube = function ( ) {
		this.cubes = [];
		for (i = 0; i < this.array.length; i++){
			this.cube = this.array[i] * this.array[i] * this.array[i];
			this.cubes.push(this.cube);
		}
		return this.cubes;
	};

	this.evens = function ( ) {
		this.evens = [];
		for (i = 0; i < this.array.length; i++){
			this.even = this.array[i] % 2 == 0;
			this.evens.push(this.even);
		}
		return this.evens;
	};

	this.evens();
	this.cube();
	this.square();

}

var array = new Calculate([1,2,3,4,5]);




