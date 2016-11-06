class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.references :subcategory, foreign_key: true
      t.text :description
      t.float :price
      t.string :duration
      t.string :max_people

      t.timestamps
    end
  end
end
