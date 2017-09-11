class Gender < ApplicationRecord
	has_many :songs
	has_many :users, through: :user_songs
end
