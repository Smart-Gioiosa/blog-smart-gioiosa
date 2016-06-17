class Project < ApplicationRecord
  mount_uploader :image_preview, ImagePreviewUploader
  process_in_background :image_preview
  validates :image_preview, presence: true
end
