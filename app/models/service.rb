class Service < ApplicationRecord
  belongs_to :category
  belongs_to :subcategory

  has_many		:pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true

  scope :cheapest, -> { minimum(:price) }
end
