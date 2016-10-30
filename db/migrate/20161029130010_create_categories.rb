class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
