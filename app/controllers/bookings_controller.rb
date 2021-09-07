class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_booking, only: %i[create]

  def create
    @booking = Booking.new(status: 0)
    @booking.event = @event
    @booking.user = current_user

    if @booking.save
      @booking.max_people -= 1
      @booking.save
      redirect_to event_path(@event, booked: true)#, notice: 'Great! You just bought an amazing pair of socks!'
    else
      render '/events/show'
    end
  end

  private

  def set_booking
    @event = Event.find(params[:event_id])
    authorize @booking
  end
end
