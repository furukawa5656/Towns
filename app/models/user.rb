class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :gender, presence: true
  validates :age_group, presence: true
  validates :family_structure, presence: true

  enum gender: { man: 0, woman: 1}
  enum is_active: {Available: true, Invalid: false}
  def active_for_authentication?
		super && (self.is_active === "Available")
  end

  has_many :comments

  ratyrate_rater

end
