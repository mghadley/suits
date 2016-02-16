class Customization < ActiveRecord::Base
	has_many :order_customizations
	has_many :suits, through: :order_customizations
end
