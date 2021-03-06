class Document < ApplicationRecord
	
	has_many		:pictures, dependent: :destroy
	accepts_nested_attributes_for :pictures, allow_destroy: true

	belongs_to :doctype

	has_many	:document_services, dependent: :destroy
	has_many	:services, through: :document_services, dependent: :destroy

	accepts_nested_attributes_for :document_services
	
end
