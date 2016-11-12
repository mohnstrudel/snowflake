class AddLogoToGenerals < ActiveRecord::Migration[5.0]
  def change
    add_column :generals, :logo, :string
  end
end
