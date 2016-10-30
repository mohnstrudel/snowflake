class AddEmailToGenerals < ActiveRecord::Migration[5.0]
  def change
    add_column :generals, :email, :string
  end
end
