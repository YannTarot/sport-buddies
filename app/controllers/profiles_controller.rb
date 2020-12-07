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
    @confirmed_participations = current_user.participations.where(status: "confirmed")
    @pending_participations = current_user.participations.where(status: "pending")
    @past_events = current_user.joined_events.where(id: @confirmed_participations.pluck(:event_id)).where("starts_at < ?", Time.now)
    @future_events = current_user.joined_events.where(id: @confirmed_participations.pluck(:event_id) || @pending_participations.pluck(:event_id)).where("starts_at > ?", Time.now)
  end

  def update
  end




  private

end
