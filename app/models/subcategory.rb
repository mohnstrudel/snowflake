class Subcategory < ApplicationRecord
  belongs_to :category

  has_many :services
  mount_uploader :picture, PictureUploader

  # scope :cheapest, -> { joins(:services).where('service.power' => voltage) }

  def cheapest_service
  	return services.cheapest
  end
end
