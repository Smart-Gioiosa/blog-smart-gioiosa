class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  def should_generate_new_friendly_id?
    title_changed?
  end
   mount_uploader :image_preview, ImagePreviewUploader
   process_in_background :image_preview
   has_and_belongs_to_many :tags
   has_and_belongs_to_many :categories
   validates :image_preview, presence: true
end
