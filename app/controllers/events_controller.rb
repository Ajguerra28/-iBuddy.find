class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @events = policy_scope(Event)
  end

  def my_events
    @events = Event.where(user_id: current_user)
    authorize @events
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    @event.save ? (redirect_to user_path(@event.user)) : (render :new)
  end

  def update
    @event.update(event_params)
    @event.save ? (redirect_to event_path(@event)) : (render :new)
  end

  private

  def event_params
    params.require(:event).permit(:location, :name, :category, :date, :description)
  end
end
