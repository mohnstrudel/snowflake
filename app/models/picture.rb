class Picture < ApplicationRecord
  belongs_to :service

  mount_uploader :image, PictureUploader
end
