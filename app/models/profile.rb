class Profile < ApplicationRecord
  belongs_to :competitor
  has_many :images

  validates :birthdate, :gender, presence: true
  validates :bio, length: { maximum: 500 }

  acts_as_votable
end
