class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :genders
	has_many :final_users, through: :genders


  enum role: {guest: 0, basic: 1, admin: 2}
end
