# Nucleotide Count
# DNA is represented by an alphabet of the following symbols: 'A', 'C', 'G', and 'T'.

# Each symbol represents a nucleotide, which is a fancy name for the particular molecules that happen to make up a large part of DNA.

# Shortest intro to biochemistry EVAR:

# twigs are to birds nests as
# nucleotides are to DNA and RNA as
# amino acids are to proteins as
# sugar is to starch as
# oh crap lipids
# I'm not going to talk about lipids because they're crazy complex.

# So back to nucleotides.

# There are 5 types of nucleotides. 4 of these occur in DNA: A, C, G, and T. 4 occur in RNA: A, C, G, U.

# There are no other nucleotides.

# Do this in Ruby!


print "Give me a string: "
str = gets.chomp.downcase

count_a = str.count('a')
count_c = str.count('c')
count_g = str.count('g')
count_t = str.count('t')
count_u = str.count('u')

puts "Your string contains the following nucleotides: "
puts "A: #{count_a}"
puts "C: #{count_c}"
puts "G: #{count_g}"
puts "T: #{count_t}"
puts "U: #{count_u}"



def count(nucleotide, strand)
	strand.upcase.count( nucleotide )
end

def nucleotide_counts( strand )
	{
		:A => count( "A", strand), 
		:C => count( "C", strand),
		:G => count( "G", strand),
		:T => count( "T", strand),
		:U => count( "U", strand),
	}
end

nucleotide_counts("ASLDKJASDLKJASD")

