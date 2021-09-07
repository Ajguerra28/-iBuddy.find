class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  # def my_events
  #   @events = Event.where(user_id: current_user)
  #   authorize @events
  # end

  def show
    @event = Event.find(params[:id])
    # authorize @event
  end

  def new
    @event = Event.new
    # authorize @event
  end

  def create
    @event = Event.new(event_params)
    # @event.id_user = current_user
    # authorize @event
    if @event.save
      # redirect_to user_path(@event.id_user)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :name, :category, :date, :description)
  end
end
