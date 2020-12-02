class Event < ApplicationRecord
  SPORTS = ['rugby', 'football', 'basketball', 'running', 'tennis', 'cyclisme', 'fitness', 'escalade', 'randonnée']
  LEVELS = ['débutant', 'intermédiaire', 'confirmé']

  belongs_to :owner, class_name: "User"

  has_many :participations
  has_many :messages


  validates :sport, inclusion: { in: SPORTS }
  validates :expected_level, inclusion: { in: LEVELS }

  geocoded_by :location
    after_validation :geocode, if: :will_save_change_to_location?

end
