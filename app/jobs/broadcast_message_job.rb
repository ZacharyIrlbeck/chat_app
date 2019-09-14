class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    msg = "#{message.user.username}:#{message.msg}"
    ActionCable.server.broadcast "messages", 
      msg: msg  
  end
end
