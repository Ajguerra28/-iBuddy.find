class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:category]
      @events = policy_scope(Event).where(category: params[:category]) 
    else
      @events = policy_scope(Event)
      @markers = []
      @events.each { |event| add_marker(event) } 
    end
  end

  def my_events
    @events = Event.where(user_id: current_user)
    authorize @events
  end

  def show
    @event = Event.find(params[:id])
    @markers = []

    add_marker(@event)

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

  def add_marker(event)
    if event.latitude.present? && event.longitude.present?
      @markers << {
        lat: event.latitude,
        lng: event.longitude,
        # info_window: render_to_string(partial: "info_window", locals: { event }),
        image_url: helpers.asset_url('buddy-no-bg.png')
      }
    end
  end

  def event_params
    params.require(:event).permit(:location, :name, :category, :date, :description)
  end
end
