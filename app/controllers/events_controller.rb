class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @events = Event.all

   # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end
end
