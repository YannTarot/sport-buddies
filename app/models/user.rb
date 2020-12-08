class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :invitations
  has_many :pending_invitations, -> { where confirmed: false }, class_name: 'Invitation', foreign_key: "friend_id"
  has_many :events, foreign_key: :owner_id #as owner
  has_many :participations
  has_many :joined_events, through: :participations, source: :event
  has_many :requested_friendships, class_name: "Friendship" #as requester
  has_many :received_friendships, class_name: "Friendship", foreign_key: :other_user_id

  has_one_attached :avatar

  validate :sports_and_levels_included_in_list

  def friends
    invited_friend_ids  = requested_friendships.where(status: 'accepted').pluck(:other_user_id)
    received_friend_ids = received_friendships.where(status: 'accepted').pluck(:user_id)

    friend_ids = invited_friend_ids + received_friend_ids

    User.where(id: friend_ids)
  end

  def invitations
    received_friendships.where(status: "pending")
  end

  def send_invitation
    requested_friendships.create(friend_id: user.id)
  end

  private

  def sports_and_levels_included_in_list
    return if sports.blank?

    sports.each do |sport, level|
      if !Event::SPORTS.include?(sport)
        return errors.add(:sports, "sport not included in the list")
      end

      if !Event::LEVELS.include?(level)
        return errors.add(:sports, "level not included in the list")
      end
    end
  end

end
# def friends
#   friends_i_sent_invitation = Invitation.where(user_id: id, confirmed: true).pluck(:friend_id)
#   friends_i_got_invitation = Invitation.where(friend_id: id, confirmed: true).pluck(:user_id)
#   ids = friends_i_sent_invitation + friends_i_got_invitation
#   User.where(id: ids)
# end

# def friend_with?(user)
#   Invitation.confirmed_record?(id, user.id)
# end
