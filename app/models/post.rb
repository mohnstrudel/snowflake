class Post < ApplicationRecord
  belongs_to :postcategory

  mount_uploader :mainpic, PictureUploader
end
