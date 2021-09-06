class BookingsController < ApplicationController
  def create
    @booking = Booking.new(status: 0)
    @event = Event.find(params[:event_id])
    @booking.event = @event
    # @booking.user = current_user

    # authorize @booking

    if @booking.save
      redirect_to event_path(@event, booked: true)#, notice: 'Great! You just bought an amazing pair of socks!'
    else
      render '/events/show'
    end
  end
end
