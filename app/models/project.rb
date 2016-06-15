class Project < ApplicationRecord
  mount_uploader :image_preview, ImagePreviewUploader
end
