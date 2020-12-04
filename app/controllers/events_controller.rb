class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.geocoded

    if params[:city].present?
      # raise
      @events = @events.near(params[:city])
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
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def show
    @event = Event.find(params[:id])

    @event_location = Event.geocoded
    @markers = @event_location.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.owner = current_user
    if @event.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :starts_at, :expected_participants_count, :sport, :level)
  end
end
