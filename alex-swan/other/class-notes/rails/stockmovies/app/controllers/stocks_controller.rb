class StocksController < ApplicationController
	
	def home
	end

	def price 
		@stock_symbol = params[:stock].upcase
		unless @stock_symbol.empty?
			info = YahooFinance.get_quotes(YahooFinance::StandardQuote, @stock_symbol)
			@price = info[@stock_symbol].lastTrade
			@name = info[@stock_symbol].name
		end

	end
end