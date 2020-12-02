class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :status, inclusion: { in: ["pending", "confirmed", "denied"] }
end
