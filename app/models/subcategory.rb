class Subcategory < ApplicationRecord
  belongs_to :category

  has_many :services
  mount_uploader :picture, PictureUploader
end
