class ReviewUsersController < ApplicationController
  
  def new
    @event = Event.find(params[:event_id])
    @review = ReviewUser.new()
    authorize @review
  end

  def create
    @review = ReviewUser.new(review_params)
    @review.reviewer = current_user
    @event = Event.find(params[:event_id])
    @review.reviewee = @event.user
    authorize @review
    if @review.save
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

