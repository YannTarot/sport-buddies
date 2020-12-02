class Event < ApplicationRecord
  SPORTS = ['rugby', 'football', 'basketball', 'running', 'tennis', 'cyclisme', 'fitness', 'escalade', 'randonnée',]
  belongs_to :owner, class_name: "User"

  has_many :participations
  has_many :messages

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
