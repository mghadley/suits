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
		# render body: YAML::dump(params)
		@order = Order.new({user_id: current_user.id})
		@suit = Suit.find(params[:suit_id])
		if @order.save
			@suit.update({order_id: @order.id})
				if measurements_changed?
					render "measurements/update_from_order", id: @order.id
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

	private

	def measurements_changed?
		measurements_arr = [:shoulders, :sleeve, :chest, :stomach, :jacket_length, :front, :back, :waist, :hips, 
										:crotch, :pants_length, :thigh, :knee, :ankle]
		change_count = 0
		measurements_arr.each do |measurement_point|
			if @order.suit.send(measurement_point) != current_user.measurement.send(measurement_point)
				change_count += 1
			end
		end
		if change_count > 0
			return true
		else
			return false
		end
	end
end
