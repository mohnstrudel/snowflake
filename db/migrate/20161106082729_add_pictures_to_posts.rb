class AddPicturesToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :mainpic, :string
  end
end
