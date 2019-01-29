class Post < ApplicationRecord
    belongs_to :category
    has_many :comment
    mount_uploader :image, ImageUploader
    validates_presence_of :content, :message => "Email is required."
end
