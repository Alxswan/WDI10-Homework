class MovieController < ApplicationController
	def movies
		@title = params[:title]
		url = "http://omdbapi.com/?t=#{@title}"
		movie_info = HTTParty.get url
		@poster = movie_info['Poster']
	end

	def list
		@list_title = params[:list]
		list_url = "http://omdbapi.com/?s=#{@list_title}"
		search = HTTParty.get list_url
		@list = search['Search']

		if @list.length <=1
			@title = @list[0]['Title']
			url = "http://omdbapi.com/?t=#{@title}"
			movie_info = HTTParty.get url
			@poster = movie_info['Poster']
			redirect_to :movie 
		end
		end
end
