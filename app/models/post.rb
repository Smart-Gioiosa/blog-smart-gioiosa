class Post < ApplicationRecord
   mount_uploader :image_preview, ImagePreviewUploader
   process_in_background :image_preview
   has_and_belongs_to_many :tags
   validates :image_preview, presence: true
end
