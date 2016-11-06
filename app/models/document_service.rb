class DocumentService < ApplicationRecord
  belongs_to :document
  belongs_to :service
end
