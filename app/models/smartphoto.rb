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
  validates :name, presence: true
  validates :surname, presence: true
  validates :birthday, presence: true
  validates :birthplace, presence: true
  validates :address, presence: true
  validates :place, presence: true
  validates :privacy, presence: true
  validates :category, presence: true
  validates :telephone, presence: true
  validates :title, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:  {maximum: 255},
                   format: { with: VALID_EMAIL_REGEX}



end
