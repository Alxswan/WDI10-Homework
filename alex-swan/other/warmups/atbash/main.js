var Atbash = {

	plain:  ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'],
	cipher: ['z','y','x','w','v','u','t','s','r','q','p','o','n','m','l','k','j','i','h','g','f','e','d','c','b','a'],

	encode: function (string) {
		var str = string.toLowerCase();
		var code = [];
		for (i = 0; i < str.length; i++) {
			for (j = 0; j < this.plain.length; j++) {
				if (str[i] == this.plain[j]) {
					code.push(this.cipher[j]);
				}
			}
		}
		var encode = code.join('');
		return encode;
	},

	decode: function (string) {
		var str = string.toLowerCase();
		var code = [];
		for (i = 0; i < str.length; i++) {
			for (j = 0; j < this.cipher.length; j++) {
				if (str[i] == this.cipher[j]) {
					code.push(this.plain[j]);
				}
			}
		}
		var decode = code.join('');
		return decode;
	}
}

var LETTERS = 'abcdefghijklmnopqrstuvwxyz';
var REVERSED_LETTERS = LETTERS.split('').reverse().join('');

var encode = function ( string ) {
	string = string.toLowerCase();
	var encodedText = "";
	for ( var i = 0; i < string.length; i++ ) {
		var indexOfChar = LETTERS.indexOf(string[i]);
		var reversedChar = REVERSED_LETTERS.charAt( indexOfChar );
		encodedText += reversedChar;
	}
	console.log( encodedText )
};


	
