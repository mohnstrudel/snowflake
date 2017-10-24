class AddTitleToSliders < ActiveRecord::Migration[5.0]
  def change
    add_column :sliders, :title, :string
  end
end
