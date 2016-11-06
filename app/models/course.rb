class Course < ApplicationRecord
  belongs_to :subcategory

  has_many		:pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
