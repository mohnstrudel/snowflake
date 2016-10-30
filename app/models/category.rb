class Category < ApplicationRecord
	mount_uploader :picture, PictureUploader

	has_many :subcategories
end
