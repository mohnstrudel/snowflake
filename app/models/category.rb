class Category < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many :subcategories, dependent: :destroy
  has_many :services, dependent: :destroy

	has_many :masters
end
