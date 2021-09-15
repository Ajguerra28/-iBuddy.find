class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new(params[:content])
    authorize @chatroom
  end

  def create
    @event = Event.find(params[:event_id])
    @chatroom = Chatroom.create(user: current_user, event: @event)
    authorize @chatroom

    redirect_to chatroom_path(@chatroom)
  end

  def my_chatrooms
    @chatrooms = Chatroom.where(user_id: current_user)
    authorize @chatrooms
  end
end
