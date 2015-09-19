class Roman

	def numerals
		{'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
	end

	def convert number
		number.to_i

		mod_1000 = number % 1000
		mod_500 = number % 500
		mod_100 = number % 100
		mod_50 = number % 50
		mod_10 = numer % 10
		mod_5 = number % 5
		mod_1 = number % 1

		if number > 1000
		M = mod_1000 - mod_1000
		end 
		
		if mod_1000 > 500		
		D = mod_1000 - mod_500
		end	
	 	
	 	if mod_500 > 100
		C = mod_500 - mod_100
		end

		if mod_100 > 50
		L = mod_100 - mod_50
		end

		if mod_100 > 10 
		X = mod_100 % mod_10
		end
	
		if mod_10 > 5
		V = mod_10 % mod_5
		end

		if mod_5 > 1
		I = mod_10 % mod_5

		puts "#{M,D,C,L,X,V,I}"


		
	end


end

test = Roman.new

require 'pry'
binding.pry

	