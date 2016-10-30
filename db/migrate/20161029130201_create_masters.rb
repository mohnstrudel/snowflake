class CreateMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :masters do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
