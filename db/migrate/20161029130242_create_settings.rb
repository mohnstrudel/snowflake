class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :address
      t.string :phone
      t.text :description
      t.string :opening_hours

      t.timestamps
    end
  end
end
