class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

	validates :name, presence: true
end
