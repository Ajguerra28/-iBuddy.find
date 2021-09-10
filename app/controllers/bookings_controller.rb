class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]


  def create
    @event_day = EventDay.find(params[:event_day_id])
    @booking = Booking.new(event_day: @event_day)
    @booking.user = current_user

    authorize @booking

    @booking.save!

    redirect_to @event_day.event
  end
end
