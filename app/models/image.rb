class Image < ApplicationRecord
  belongs_to :profile
  mount_uploader :photo, ImagePhotoUploader
end