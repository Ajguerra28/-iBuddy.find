class ReviewsController < ApplicationController

  def new
    @user = User.find(current_user)
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `user_id` to associate review with corresponding user
    @user = User.find(params[:user_id])
    @review.user = @user
    if @review.save
      redirect_to events_path(@user)
    else
      render 'events/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
