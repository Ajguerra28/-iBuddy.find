class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @event = Event.find(params[:id])
    @message = Message.new(params[:content])
    authorize @chatroom
  end

  def create
    @event = Event.find(params[:event_id])
    @chatroom = Chatroom.new(user: current_user, event: @event)
    authorize @chatroom
    authorize @event
    if @chatroom.save
       redirect_to chatroom_path(@chatroom)
    else
      redirect_to @event, notice: 'You already have a chatroom'
    end
  end

  def my_chatrooms
    @chatrooms = Chatroom.where(user_id: current_user)
    authorize @chatrooms
  end
end
