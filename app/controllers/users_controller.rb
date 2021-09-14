class UsersController < ApplicationController
  before_action :set_event, only: %i[show]

  def show
  end

  def index
    @users = police_scope(User)
  end

  private

  def set_event
    @user = User.find(params[:id])
    @events = Event.where(user: current_user)
    authorize @user
  end
end
