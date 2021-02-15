class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  validates :name, length: { minimum: 3 }

  has_many :chats
  has_many :events
  has_many :attendants
end
