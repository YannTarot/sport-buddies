class FriendshipsController < ApplicationController
  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.status = "accepted"
      redirect_to profile_path
  end

  def deny
    @friendship = Friendship.find(params[:id])
    @friendship.status = "denied"
    redirect_to profile_path
  end
end
