class OrdersController < ApplicationController

	def choose_measurements
	end

	def new
		#render body: YAML::dump(params[:measurements])
		@order = Order.new
		@suit = Suit.find(params[:id])
	end

	def update
		render body: YAML::dump(params)
	end

	def create
		#render body: YAML::dump(params)
		@order = Order.new({user_id: current_user.id})
		@suit = Suit.find(params[:suit_id])
		if @order.save
			@suit.update({order_id: @order.id})
		end
	end

	def update_measurements
	end

	def index
	end
end
