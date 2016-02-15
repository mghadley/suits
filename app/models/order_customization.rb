class OrderCustomization < ActiveRecord::Base
	belongs_to :order
	belongs_to :customization
end
