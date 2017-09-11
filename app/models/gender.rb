class Gender < ApplicationRecord
	has_many :songs
	has_many :users, through: :final_users
end
