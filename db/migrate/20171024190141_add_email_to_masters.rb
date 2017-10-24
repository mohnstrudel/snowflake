class AddEmailToMasters < ActiveRecord::Migration[5.0]
  def change
    add_column :masters, :email, :string
  end
end
