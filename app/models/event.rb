class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  def should_generate_new_friendly_id?
    title_changed?
  end
   mount_uploader :event_image, EventImageUploader
   process_in_background :event_image

end
