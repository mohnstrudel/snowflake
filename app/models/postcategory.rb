class Postcategory < ApplicationRecord
  has_many :posts, dependent: :destroy
end
