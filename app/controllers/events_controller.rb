class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.geocoded

    # if params[:location].present?
    #   # raise
    #   # @events = @events.near(params[:city], 1, units: :km)
    #   @events = Event.where(["location ILIKE ?", "Nantes"])
    # end
    if params[:location].present?
      @events = @events.where("location ILIKE ?", "%#{params[:location]}%")
    end
    if params[:sport].present?
      # raise
      @events = @events.where(sport: params[:sport])
    end
    if params[:starts_at].present?
      @events = @events.where("starts_at::date = :starts_at", starts_at: params[:starts_at])
    end

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url("#{event.sport}_marker.png")
      }
    end
    @basket
  end

  def show
    @user  = current_user
    @message = Message.new
    @event = Event.geocoded.find(params[:id])
    @messages = @event.messages.order(created_at: :asc)
    @event_date = @event.starts_at
    @confirmed_participation = @event.participations.where(status: "confirmed")
    @user_confirmed_participation = User.where(id: @confirmed_participation.pluck(:user_id))

    @already_suscribed = @event.participations.map { |participation| participation[:user_id] }

    @friends_to_invite = current_user.friends - @event.users

    @markers =
      [{
        lat: @event.latitude,
        lng: @event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: @event }),
        image_url: helpers.asset_url("#{@event.sport}_marker.png")
      }]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.owner = current_user
    if @event.save
      @participation = Participation.create(user: current_user, status: "confirmed", event: @event)
      redirect_to event_path(@event)
    else
      render :new
    end
  end

def edit
  @event = Event.find(params[:id])
end

def update
  @event = Event.find(params[:id])
  @event.update(event_params)

  redirect_to event_path(@event)
end

  private

  def event_params
    new_params = event_params_raw
    new_params[:expected_participants_count] = nil if new_params[:expected_participants_count].to_i == 0
    new_params
  end

  def event_params_raw
    params.require(:event).permit(:name, :description, :location, :starts_at, :expected_participants_count, :sport, :expected_level)
  end
end
