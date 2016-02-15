class MeasurementsController < ApplicationController
  def new
  	@measurement = Measurement.new
  end

  def index
  	@measurement = Measurement.find(params[:id])
  end

  def create
  	@measurement = Measurement.new(safe_params)
  	@measurement.user_id = current_user.id
  	@measurement.save
  	redirect_to measurements_path(id: @measurement.id)
  end

  private

  def safe_params
  	params.require(:measurement).permit(:shoulders, :sleeve, :chest, :stomach, :jacket_length, 
  																			:front, :back, :waist, :hips, :crotch, :pants_length, 
  																			:thigh, :knee, :ankle)
  end
end
