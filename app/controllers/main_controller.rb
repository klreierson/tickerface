class MainController < ApplicationController
	def index
		render :index and return
	end

	def company
		@name = MarketBeat.company params["symbol"]
		@symbol = MarketBeat.symbol params["symbol"]
		@price 	= MarketBeat.last_trade_real_time params["symbol"]
		@change = MarketBeat.change_and_percent_change params["symbol"]
		@volume = MarketBeat.volume params["symbol"]
		@days_range = MarketBeat.days_range params["symbol"]
		@eps = MarketBeat.earnings_to_share params["symbol"]
		@pe = MarketBeat.pe_ratio params["symbol"]
		@stock_exchange = MarketBeat.stock_exchange params["symbol"]


		market_cap = MarketBeat.market_capitalization params["symbol"]
		# @market_cap is rounded to billions
		@market_cap = market_cap.to_i / 1000

		render :company and return
	end

	def profile
	  @profile = Profile.first
	  halt erb(:profile)

	  render :profile and return
	end






end