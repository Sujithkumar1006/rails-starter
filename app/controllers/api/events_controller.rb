class Api::EventsController < ApplicationController
  def index
    events = Event.all
    render json: events.as_json
  end

  def create
    p event_params
    event = Event.new(event_params)
    if event.save
      render json: event, status: :created
    else
      render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def event_params
    p params
    params.require(:event).permit(:name, :email, :phoneNumber, :guests, :eventName, :date, :time)
  end
end
