class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @events = Sock.where(owner: current_user)
    authorize @user
    if @user.latitude.present? && @user.longitude.present?
        @markers = [
        {
            lat: @user.latitude,
            lng: @user.longitude,
            info_window: render_to_string(partial: "info_window", locals: { user: @user }),
            # image_url: helpers.asset_url('logosocks.png')
        }]
    end
  end
end
