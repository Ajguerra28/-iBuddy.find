class ReviewUsersController < ApplicationController
  def new
    @review = ReviewUser.new()
    authorize @review
  end

  def create
    @review = ReviewUser.new(review_params)
    @user = User.find(params[:user_id])
    @review.user = @user
    if @review
      ser.save
      redirect_to events_path(@user)
    else
      render 'events/show'
    end
  end

  private

  def review_params
    params.require(:review_user).permit(:rating, :content)
  end
end

