class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  def should_generate_new_friendly_id?
    title_changed?
  end
  mount_uploader :image_preview, ImagePreviewUploader
  process_in_background :image_preview
  validates :image_preview, presence: true
end
