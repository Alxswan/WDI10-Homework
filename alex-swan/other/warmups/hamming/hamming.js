// Hamming Distance Warmup
// A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA. Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell. Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute. In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic mutations over many generations.

// The simplest and most common type of nucleic acid mutation is a point mutation, which replaces one base with another at a single nucleotide.

// By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

// This is called the 'Hamming distance'

// GAGCCTACTAACGGGAT
// CATCGTAATGACGGCCT
// ^ ^ ^  ^ ^    ^^
// The Hamming distance between these two DNA strands is 7.

// Write a program that can calculate the Hamming difference between two DNA strands.

var Hamming = {

	compare: function(str1, str2) {
		mutationCount = 0;
		for (var i = 0; i < str1.length; i++)
			if (str1[i] !== str2[i]) {
				mutationCount ++;
			}
			return mutationCount;
	},

	getString: function() {
		return prompt("Strand");
	},
};

str1 = Hamming.getString();
str2 = Hamming.getString();

console.log(Hamming.compare(str1,str2));

var Nucleotide = function( nucleotide ) {
	this.nucleotide = nucleotide;
	this.hammingDistance = function ( other_nucleotide ) {
		var difference = 0;
		var nucleotide = this.nucleotide

		for ( var i = 0; i < nucleotide.length; i++ ) {
			if ( nucleotide[i] !== other_nucleotide[i] ) {
				difference += 1;
			}
		}
		console.log ( difference );
		return difference;
	}
}

var nucleotide_one = new Nucleotide("AEDKJASD")
var nucleotide_two = new Nucleotide ("AASDJAJK")
nucleotide_one.hammingDistance(nucleotide_two.nucleotide)

