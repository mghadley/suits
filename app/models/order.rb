class Order < ActiveRecord::Base
	belongs_to :user
	has_many :customizations
	has_one :material
	has_one :measurement

end
