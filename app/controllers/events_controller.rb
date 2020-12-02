class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @events = Event.all

   # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end
end
