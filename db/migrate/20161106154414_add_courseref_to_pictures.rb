class AddCourserefToPictures < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :course, foreign_key: true
  end
end
