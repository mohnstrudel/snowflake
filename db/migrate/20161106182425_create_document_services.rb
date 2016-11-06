class CreateDocumentServices < ActiveRecord::Migration[5.0]
  def change
    create_table :document_services do |t|
      t.belongs_to :document, foreign_key: true
      t.belongs_to :service, foreign_key: true

      t.timestamps
    end
  end
end
