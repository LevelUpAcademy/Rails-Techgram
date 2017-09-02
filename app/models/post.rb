class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  mount_uploader :post_image, PostImageUploader
end
