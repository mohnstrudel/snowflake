class Master < ApplicationRecord
  belongs_to :category

  mount_uploader :picture, PictureUploader
end
