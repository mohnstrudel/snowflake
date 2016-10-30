class AddNameToGenerals < ActiveRecord::Migration[5.0]
  def change
    add_column :generals, :name, :string
  end
end
