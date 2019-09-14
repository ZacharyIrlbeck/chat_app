class ChatroomsController < ApplicationController
	before_action :set_chatroom, only: [:show, :destroy]
  def index
  	@chatrooms = Chatroom.all
  end

  def show
  end

  def create
  	@chatroom = Chatroom.create permitted_params
  end

  def destroy
  	@chatroom.delete
  end

  private

  def set_chatroom
  	@chatroom = Chatroom.find(params[:id])
  end

  def permitted_params
  	params.require(:chatroom).permit(:name)
  end
end
