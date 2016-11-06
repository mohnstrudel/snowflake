class AddDocrefToPictures < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :document, foreign_key: true
  end
end
