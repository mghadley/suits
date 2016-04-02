class OrdersController < ApplicationController
	include OrdersHelper

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
		# render body: YAML::dump(params)
		@order = Order.new({user_id: current_user.id})
		@suit = Suit.find(params[:suit_id])
		if @order.save
			@suit.update({order_id: @order.id})
				if measurements_changed?(@order)
					render "measurements/update_from_order"
				else
					redirect_to orders_path(id: @order.id)
				end
		else
			redirect_to root_path
		end
	end

	def update_measurements
	end

	def index
		@order = Order.find(params[:id])
	end
end
