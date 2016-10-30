class AddAboutUsToGenerals < ActiveRecord::Migration[5.0]
  def change
    add_column :generals, :upper_text, :text
    add_column :generals, :lower_text, :text
    add_column :generals, :first_image, :string
    add_column :generals, :second_image, :string
  end
end
