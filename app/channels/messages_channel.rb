class MessagesChannel < ApplicationCable::Channel
  def subscribed
		stream_from "room#{params['room']}messages"
  end

  def receive(data)
    Message.create(
    	msg: data['msg'],
    	user: current_user,
    	chatroom: Chatroom.find(data['id'].to_i)
    )
  end
end 