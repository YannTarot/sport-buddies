class ProfilesController < ApplicationController

  def accept_friendship
    @friendship = Friendship.find(params[:id])
    @friendship.status = "accepted"
      redirect_to profile_path
  end

  def deny_friendship
    @friendship = Friendship.find(params[:id])
    @friendship.status = "denied"
    redirect_to profile_path
  end

  def show
  end

  def update
  end

  private

end
