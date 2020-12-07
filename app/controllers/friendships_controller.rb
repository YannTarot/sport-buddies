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
end
