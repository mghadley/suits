class OrderCustomization < ActiveRecord::Base
	belongs_to :suit
	belongs_to :customization
end
