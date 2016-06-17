class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  def should_generate_new_friendly_id?
    name_changed?
  end
  has_and_belongs_to_many :posts
end
