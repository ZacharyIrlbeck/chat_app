class MessagesChannel < ApplicationCable::Channel
  def subscribed
		stream_from "messages"
  end

  def receive(data)
    Message.create(
    	msg: data['msg'],
    	user: current_user,
    	chatroom: Chatroom.first
    )
  end 
end 