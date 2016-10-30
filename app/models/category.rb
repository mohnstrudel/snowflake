class Category < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many :subcategories

	has_many :masters
end
