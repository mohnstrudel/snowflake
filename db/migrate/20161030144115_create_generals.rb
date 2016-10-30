class CreateGenerals < ActiveRecord::Migration[5.0]
  def change
    create_table :generals do |t|
      t.string :address
      t.string :phone
      t.text :description
      t.string :opening_hours
      t.string :vk
      t.string :fb
      t.string :instagram

      t.timestamps
    end
  end
end
