class Picture < ApplicationRecord
  belongs_to :service
  belongs_to :course

  mount_uploader :image, PictureUploader
end
