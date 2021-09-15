class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @user = User.find(current_user[:id])
    @bookings = Bookings.where(user_id: cuurent_user)
  end

  def create
    @event_day = EventDay.find(params[:event_day_id])
    @booking = Booking.new(event_day: @event_day)
    @booking.user = current_user

    authorize @booking

    @booking.save!

    redirect_to @event_day.event
  end
end
