class AddDocumentrefToDoctype < ActiveRecord::Migration[5.0]
  def change
    add_reference :doctypes, :document, foreign_key: true
  end
end
