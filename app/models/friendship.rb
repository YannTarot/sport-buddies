class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :other_user, class_name: "User"

  validates :status, inclusion: { in: ["pending", "accepted", "denied" ] }
end
