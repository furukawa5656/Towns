class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :station
	belongs_to :category

	validates :body, presence: true
end
