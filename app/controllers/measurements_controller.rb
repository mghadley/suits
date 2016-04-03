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

  def edit
    @measurement = Measurement.find_by(user_id: current_user.id)
  end

  def update
    @measurement = Measurement.find_by(user_id: current_user.id)
    #render body: YAML::dump(params)
    if @measurement.update_attributes(safe_params)
      if params[:measurement][:source] == 'order'
        redirect_to new_suit_path(measurements: 'user')
      else
        redirect_to measurements_path(id: @measurement.id)
      end
    else
      redirect_to edit_measurements_path
    end 
  end

  def update_from_order
    @measurement = Measurement.find_by(user_id: current_user.id)
    @order = Order.find(params[:id])
    @measurement.update({shoulders: @order.suit.shoulders, sleeve: @order.suit.sleeve, chest: @order.suit.chest, 
                        stomach: @order.suit.stomach, jacket_length: @order.suit.jacket_length, front: @order.suit.front, 
                        back: @order.suit.back, waist: @order.suit.waist, hips: @order.suit.hips, crotch: @order.suit.crotch,
                        pants_length: @order.suit.pants_length, thigh: @order.suit.thigh, knee: @order.suit.knee,
                        ankle: @order.suit.ankle})
    redirect_to orders_path(id: @order.id)
  end

  private

  def safe_params
  	params.require(:measurement).permit(:shoulders, :sleeve, :chest, :stomach, :jacket_length, 
  																			:front, :back, :waist, :hips, :crotch, :pants_length, 
  																			:thigh, :knee, :ankle)
  end
end
