class UsersController < ApplicationController
  before_action :set_event, only: %i[show]

  def show
    if @user.latitude.present? && @user.longitude.present?
      @markers = [
        {
          lat: @user.latitude,
          lng: @user.longitude,
          info_window: render_to_string(partial: "info_window", locals: { user: @user }),
        #   image_url: helpers.asset_url('logosocks.png')
        }
      ]
    end
  end

  def index
    @users = police_scope(User)
  end

  private

  def set_event
    @user = User.find(params[:id])
    @events = Event.where(owner: current_user)
    authorize @user
  end
end
