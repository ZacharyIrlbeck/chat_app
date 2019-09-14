class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(msg)

    ActionCable.server.broadcast "messages", 
      msg: msg,
      usr: msg.user.username
  end
end
