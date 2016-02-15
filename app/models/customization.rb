class Customization < ActiveRecord::Base
	has_many :order_customizations
	has_many :orders, through: :order_customizations
end
