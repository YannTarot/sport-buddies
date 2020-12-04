class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
  end

  def create
    @event = Event.find(params[:event_id])
    @participation = Participation.new(user: current_user, status: "confirmed", event: @event)
    if @participation.save

      redirect_to event_path(@event)
      flash[:notice] = "Inscription confirmée !"
    else
      redirect_to event_path(@event)
      flash[:alert] = "Votre inscription n'a pas été prise en compte !"
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :event_id, :status)
  end
end
