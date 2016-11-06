class AddDoctypeToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :documents, :doctype, foreign_key: true
  end
end
