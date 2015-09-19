class PagesController < ApplicationController
	
	def home
	end

	def numbers
		@amount = 234
		@large_number = 23405092809238
		@phone = 2125551212

	end

	def text
		@numbers = (1..30).to_a
		@error_count1 = 1
		@error_count2 = 23
		@story = "A long time ago in a galaxy far far away"
	end

	def assets
	end

	def url
	end

end
