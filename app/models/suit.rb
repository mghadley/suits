class Suit < ActiveRecord::Base
	has_many :order_customizations
	has_many :customizations, through: :order_customizations
	belongs_to :order 
end
