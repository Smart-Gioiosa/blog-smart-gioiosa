class Post < ApplicationRecord
   mount_uploader :image_preview, ImagePreviewUploader
   process_in_background :image_preview
end
