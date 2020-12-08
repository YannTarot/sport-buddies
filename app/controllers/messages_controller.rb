class MessagesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    @message.user = current_user
    if @message.save
      redirect_to event_path(@event)
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id, :event_id)
  end
end
