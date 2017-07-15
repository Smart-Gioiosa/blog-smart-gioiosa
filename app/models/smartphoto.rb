class Smartphoto < ApplicationRecord
  belongs_to :user
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  def slug_candidates
    [
      [:title, :user_id]
    ]
  end
  def should_generate_new_friendly_id?
    title_changed?
  end
  mount_uploader :image, SmartphotoUploader
  process_in_background :image

  validates :year, presence: true

end
