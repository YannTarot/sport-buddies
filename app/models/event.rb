class Event < ApplicationRecord
  SPORTS = ['rugby', 'football', 'basketball', 'running', 'tennis', 'cyclisme', 'fitness', 'escalade', 'randonnée',]
  belongs_to :owner, class_name: "User"

  has_many :participations
  has_many :messages
end
