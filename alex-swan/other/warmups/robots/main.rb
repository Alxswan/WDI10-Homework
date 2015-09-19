class Robots
	
	# @robot_array = []

	# attr_accessor :robot_index, :robot_name

	def initialize(name, id)
		letters = ("A".."C").to_a.sample(2).join("")
		numbers = (0..9).to_a.sample(2).join("")
		@name="#{letters}8#{numbers}"
		@id=id
	end

end


#solution

class Robot

	attr_accessor :name

	def initialize
		generate_name
	end

	def generate_name
		@name = "#{ generate_letters }#{ generate_numbers }"
	end

	def generate_letters
		alphabet = ("A".."Z").to_a
		alphabet.sample( 2 ).join( '' )
	end

	def generate_numbers
		Random.rand 100..999
	end

	def reset_name
		generate_name
	end

end

larry = Robot.new

require 'pry'
binding.pry

puts ""
