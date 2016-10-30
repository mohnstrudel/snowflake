class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.references :category, foreign_key: true
      t.references :subcategory, foreign_key: true
      t.string :picture

      t.timestamps
    end
  end
end
