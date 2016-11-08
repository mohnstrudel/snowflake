class CreateSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :sliders do |t|
      t.string :image
      t.string :first_row
      t.string :second_row
      t.string :third_row
      t.boolean :right
      t.boolean :show_text

      t.timestamps
    end
  end
end
