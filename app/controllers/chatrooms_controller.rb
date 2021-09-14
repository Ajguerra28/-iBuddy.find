class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new(params[:content])
    authorize @chatroom
  end
end
