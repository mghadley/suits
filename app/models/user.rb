class User < ActiveRecord::Base

	has_many :orders
	has_one :measurement
	before_save { self.name = name.titleize }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
end
