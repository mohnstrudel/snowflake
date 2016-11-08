class AddFieldsToGenerals < ActiveRecord::Migration[5.0]
  def change
    add_column :generals, :footer_text, :text
    add_column :generals, :instagram_hashtag, :string
  end
end
