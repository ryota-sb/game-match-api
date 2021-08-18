class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  
  has_many :swipes, foreign_key: :to_user
  has_many :to_users, through: :swipes, source: :from_user
  has_many :reverse_of_swipes, class_name: 'Swipe', foreign_key: :from_user
  has_many :from_users, through: :reverse_of_swipes, source: :to_user

  def self.from_token_payload(payload)
    find_by(sub: payload['sub']) || create!(sub: payload['sub'])
  end
end
