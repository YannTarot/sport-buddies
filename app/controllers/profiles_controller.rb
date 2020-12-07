class ProfilesController < ApplicationController
  def show
    @confirmed_participations = current_user.participations.where(status: "confirmed")
    @pending_participations = current_user.participations.where(status: "pending")
    @past_events = current_user.joined_events.where(id: @confirmed_participations.pluck(:event_id)).where("starts_at < ?", Time.now)
    @future_events = current_user.joined_events.where(id: @confirmed_participations.pluck(:event_id) || @pending_participations.pluck(:event_id)).where("starts_at > ?", Time.now)
  end

  def update
  end

end

private
