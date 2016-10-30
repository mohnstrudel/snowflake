class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
