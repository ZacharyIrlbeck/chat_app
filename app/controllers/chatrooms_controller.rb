class ChatroomsController < ApplicationController
  def index
  	@chatrooms = Chatroom.all
  end

  def show
  	@chatroom = Chatroom.find(params[:id])
  end

  def create
  	@chatroom = Chatroom.create permitted_params
  end

  private

  def permitted_params
  	params.require(:chatroom).permit(:name)
  end
end
