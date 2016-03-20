class OrdersController < ApplicationController

	def choose_measurements
	end

	def new
		#render body: YAML::dump(params[:measurements])
		@order = Order.new
	end

	def update
		render body: YAML::dump(params)
	end

	def create
		render body: YAML::dump(params)
	end

	def update_measurements
	end

	def index
	end
end
