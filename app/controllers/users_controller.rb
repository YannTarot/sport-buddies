class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @friend_with_current_user = current_user.friends.where(id: @user.id).exists?
    @confirmed_participations = @user.participations.where(status: "confirmed")
    @pending_participations = @user.participations.where(status: "pending")
    @past_events = @user.joined_events.where(id: @confirmed_participations.pluck(:event_id)).where("starts_at < ?", Time.now)
    @future_events = @user.joined_events.where(id: @confirmed_participations.pluck(:event_id) + @pending_participations.pluck(:event_id)).where("starts_at > ?", Time.now)
  end
end
