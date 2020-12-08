class InvitationsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    params[:friend_ids].each do |friend_id|
      @invitation = Participation.new(user_id: friend_id, status: "pending", event: @event)
      @invitation.save!
    end
    flash[:notice] = "Invitation envoyée !"
    redirect_to event_path(@event)
  end

  private

  def invitation_params
    params.require(:invitation).permit(:user_id, :event_id, :status)
  end
end
