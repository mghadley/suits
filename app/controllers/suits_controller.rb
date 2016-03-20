class SuitsController < ApplicationController

	def choose_measurements
	end

	def new
		@measurement = Measurement.find_by(user_id: current_user.id)
		if params[:measurements] == 'user'
			@suit = Suit.new({shoulders: @measurement.shoulders, sleeve: @measurement.sleeve, chest: @measurement.chest, 
												stomach: @measurement.stomach, jacket_length: @measurement.jacket_length, front: @measurement.front, 
												back: @measurement.back, waist: @measurement.waist, hips: @measurement.hips, crotch: @measurement.crotch,
												pants_length: @measurement.pants_length, thigh: @measurement.thigh, knee: @measurement.knee,
												ankle: @measurement.ankle})
		else
			@suit = Suit.new


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
		end
	end

	def update
	end

end
