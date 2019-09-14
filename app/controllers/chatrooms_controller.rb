class ChatroomsController < ApplicationController
  def index
  	@chatroom = Chatroom.first
  end
end
