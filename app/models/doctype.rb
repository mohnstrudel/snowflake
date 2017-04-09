class Doctype < ApplicationRecord
	has_many :document, dependent: :destroy
end
