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
  validates :title, presence: true
  validates :image, presence: true
  validates :privacy, presence: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :birthday, presence: true
  validates :birthplace, presence: true
  validates :place, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :year, presence: true

end
