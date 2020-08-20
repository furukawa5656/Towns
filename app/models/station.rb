class Station < ApplicationRecord
	has_many :comments

	ratyrate_rateable "駅"
end
