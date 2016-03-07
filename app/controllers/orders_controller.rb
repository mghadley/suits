class OrdersController < ApplicationController

	def choose_measurements
	end

	def new
		#@measurements = params[:measurements]
		#render body: YAML::dump(params[:measurements])
		@order = Order.new
		@suit = Suit.new
		@measurement = Measurement.find_by(user_id: current_user.id)
		if params[:measurements] == 'existing'
			render 
			# @measurements = {
			# 	shoulders: Measurement.find_by(user_id: current_user.id).shoulders,
			# 	sleeve: Measurement.find_by(user_id: current_user.id).sleeve,
			# 	chest: Measurement.find_by(user_id: current_user.id).chest,
			# 	stomach: Measurement.find_by(user_id: current_user.id).stomach,
			# 	jacket_length: Measurement.find_by(user_id: current_user.id).jacket_length,
			# 	front: Measurement.find_by(user_id: current_user.id).front,
			# 	back: Measurement.find_by(user_id: current_user.id).back,
			# 	waist: Measurement.find_by(user_id: current_user.id).waist,
			# 	hips: Measurement.find_by(user_id: current_user.id).hips,
			# 	crotch: Measurement.find_by(user_id: current_user.id).crotch,
			# 	pants_length: Measurement.find_by(user_id: current_user.id).pants_length,
			# 	thigh: Measurement.find_by(user_id: current_user.id).thigh,
			# 	knee: Measurement.find_by(user_id: current_user.id).knee,
			# 	ankle: Measurement.find_by(user_id: current_user.id).ankle
			# }
		end
	end

	def index
	end
end
