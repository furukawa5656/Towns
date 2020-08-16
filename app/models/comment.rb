class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :station
	belongs_to :category

	validates :body, presence: true

	ratyrate_rateable "治安", "グルメ", "自然", "子育て", "交通の利便性"

end
