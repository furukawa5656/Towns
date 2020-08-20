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
  enum age_group: {
    teens: 0,
    twenties: 1,
    thirties: 2,
    forties: 3,
    fifties: 4
  }
  enum family_structure: { lone: 0, couple: 1, family: 2}
  enum is_active: {Available: true, Invalid: false}
  def active_for_authentication?
		super && (self.is_active === "Available")
  end

  has_many :comments

  ratyrate_rater

end
