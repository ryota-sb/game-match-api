class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :discord_id, presence: true
  validates :message, presence: true, length: { maximum: 144 }
end
