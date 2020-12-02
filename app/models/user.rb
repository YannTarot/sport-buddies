class User < ApplicationRecord
  LEVELS = ['débutant', 'intermédiaire', 'confirmé']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :events, foreign_key: :owner_id #as owner
  has_many :participations
  has_many :joined_events, through: :participations, source: :events
  has_many :requested_friendships, class_name: "Friendship" #as requester
  has_many :received_friendships, class_name: "Friendship", foreign_key: :other_user_id

  def friends
    invited_friend_ids  = requested_friendships.where(status: 'accepted').pluck(:other_user_id)
    received_friend_ids = received_friendships.where(status: 'accepted').pluck(:user_id)

    friend_ids = invited_friend_ids + received_friend_ids

    User.where(id: friend_ids)
  end


end
