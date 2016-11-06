class Picture < ApplicationRecord
  belongs_to :service
  belongs_to :course
  belongs_to :document

  mount_uploader :image, PictureUploader
end
