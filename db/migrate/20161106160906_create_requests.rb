class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :type
      t.string :name
      t.string :phone
      t.string :comment

      t.timestamps
    end
  end
end
