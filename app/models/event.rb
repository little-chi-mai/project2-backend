class Event < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :restaurant, :optional => true

  has_many :chats
  has_many :attendants
end
