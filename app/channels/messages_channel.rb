class MessagesChannel < ApplicationCable::Channel
  def subscribed
		stream_from "messages"
  end

  def receive(data)
  	puts "Current User ========================="
  	puts current_user
  	message = Message.new
  	message.msg = data['msg']
  	message.user = current_user
  	message.chatroom = Chatroom.first
  	message.save!
  end 
end 