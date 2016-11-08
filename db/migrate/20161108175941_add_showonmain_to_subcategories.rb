class AddShowonmainToSubcategories < ActiveRecord::Migration[5.0]
  def change
    add_column :subcategories, :show_on_landing, :boolean
  end
end
