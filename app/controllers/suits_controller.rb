class SuitsController < ApplicationController

	def index
		@suit = Suit.find(params[:id])
	end

	def choose_measurements
	end

	def new
		@measurement = Measurement.find_by(user_id: current_user.id)
		@suit = Suit.new({shoulders: @measurement.shoulders, sleeve: @measurement.sleeve, chest: @measurement.chest, 
												stomach: @measurement.stomach, jacket_length: @measurement.jacket_length, front: @measurement.front, 
												back: @measurement.back, waist: @measurement.waist, hips: @measurement.hips, crotch: @measurement.crotch,
												pants_length: @measurement.pants_length, thigh: @measurement.thigh, knee: @measurement.knee,
												ankle: @measurement.ankle})
	end

	def create
		@suit = Suit.new(safe_params)
		if @suit.save
			flash[:success] = "Suit built successfully"
			redirect_to review_path(id: @suit.id)
		else
			flash[:danger] = "Something went wrong"
		end

	end

	def review
		@suit = Suit.find(params[:id])
	end

	def update
	end

	private

	def safe_params
		params.require(:suit).permit(:shoulders, :sleeve, :chest, :stomach, :jacket_length, 
  																			:front, :back, :waist, :hips, :crotch, :pants_length, 
  																			:thigh, :knee, :ankle, :lapel, :vents, :buttons)
	end

end
