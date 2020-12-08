class FriendshipsController < ApplicationController
  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.status = "accepted"
    @friendship.save!
      redirect_to profile_path
  end

  def deny
    @friendship = Friendship.find(params[:id])
    @friendship.status = "denied"
    @friendship.save!
    redirect_to profile_path
  end

  def create
    @user = current_user
    @other_user = User.find(params[:user_id])
    @friendship = Friendship.new(user: @user, other_user: @other_user)
    @friendship.status = "pending"
    @friendship.save!
    redirect_to profile_path
  end

  private

  def user_is_not_equal_friend
    errors.add(:friend, "can't be the same as the user") if self.user == self.friend
  end

end
