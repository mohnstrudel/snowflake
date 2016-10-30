class AddWeekdaysToGenerals < ActiveRecord::Migration[5.0]
  def change
    add_column :generals, :monday, :string
    add_column :generals, :thuesday, :string
    add_column :generals, :wednesday, :string
    add_column :generals, :thursday, :string
    add_column :generals, :friday, :string
    add_column :generals, :saturday, :string
    add_column :generals, :sunday, :string
  end
end
