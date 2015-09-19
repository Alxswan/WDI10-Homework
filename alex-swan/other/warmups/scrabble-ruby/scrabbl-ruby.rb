 class Scrabble

 	attr_accessor :letter_name, :letter_value

	def initialize(letter_array, value)
		@letter_name = letter_array
		@letter_value = value
	end

end

val_1 = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
val_2 = ['D', 'G']
val_3 = ['B', 'C', 'M', 'P']
val_4 = ['F', 'H', 'V', 'W', 'Y']
val_5 = ['K']
val_8 = ['J', 'X']
val_10 = ['Q', 'Z']


	points_1 = Scrabble.new(val_1, 1)
	points_2 = Scrabble.new(val_2, 2)
	points_3 = Scrabble.new(val_3, 3)
	points_4 = Scrabble.new(val_4, 4)
	points_5 = Scrabble.new(val_5, 5)
	points_8 = Scrabble.new(val_8, 8)
	points_10 = Scrabble.new(val_10, 10)

all_points = []
all_points << points_1 << points_2 << points_3 << points_4 << points_5 << points_8 << points_10

require 'pry'
binding.pry
# 	def play(word)
# 		word.upcase
# 		total_score = 0
# 		word.each_char do |i|
# 			points = Scrabble.find_by(letter_name.include?(i))
# 			score = points.letter_value
# 			total_score += score
# 		end
# 		puts total_score
# 	end
# require 'pry'
# binding.pry

# 	play('cabbage')


# # Mike's Solution

# 	require 'pry'
# class Scrabble
#   def initialize word
#     @word = word.downcase
#     score
#   end
#   def scores
#     {
#       "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1,
#       "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
#       "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1,
#       "p" => 3, "q" => 10, "r" => 1, "s" =>1, "t" => 1,
#       "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4,
#       "z" => 10
#     }
#   end
#   def score
#     sum = 0
#     @word.chars.each do |char|
#       sum += scores[ char ]
#     end
#     puts "The score for #{ @word } is #{ sum }"
#   end
# end
# scrabble = Scrabble.new "cabbage"