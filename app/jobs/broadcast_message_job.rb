class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    msg = "#{message.user.username}:#{message.msg}"
    ActionCable.server.broadcast "room#{message.chatroom.id}messages", 
      msg: msg  
  end
end
