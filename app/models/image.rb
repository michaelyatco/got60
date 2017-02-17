class Image < ApplicationRecord
  belongs_to :profile

  validates :url, presence: true
end
