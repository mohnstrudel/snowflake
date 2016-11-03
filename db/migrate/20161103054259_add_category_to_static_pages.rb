class AddCategoryToStaticPages < ActiveRecord::Migration[5.0]
  def change
    add_column :static_pages, :sp_category, :string
  end
end
