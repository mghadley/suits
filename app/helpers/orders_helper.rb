module OrdersHelper

	def measurements_changed?(order)
		measurements_arr = [:shoulders, :sleeve, :chest, :stomach, :jacket_length, :front, :back, :waist, :hips, 
										:crotch, :pants_length, :thigh, :knee, :ankle]
		change_count = 0
		measurements_arr.each do |measurement_point|
			if order.suit.send(measurement_point) != current_user.measurement.send(measurement_point)
				change_count += 1
			end
			if change_count > 0
				return true
			else
				return false
			end
		end
	end
end
