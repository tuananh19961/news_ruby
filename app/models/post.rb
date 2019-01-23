class Post < ApplicationRecord
    belongs_to :category
    mount_uploader :image, ImageUploader
end
