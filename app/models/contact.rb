class Contact < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :subject, presence: true
  validates :message, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:  {maximum: 255},
                    format: { with: VALID_EMAIL_REGEX}
end
