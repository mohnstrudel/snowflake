class Subcategory < ApplicationRecord
  belongs_to :category

  has_many :services
  mount_uploader :picture, PictureUploader

  scope :on_landing, ->{where(show_on_landing: true)}

  def cheapest_service
  	return services.cheapest
  end
end
