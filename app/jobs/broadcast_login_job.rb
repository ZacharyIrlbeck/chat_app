class BroadcastLoginJob < ApplicationJob
  queue_as :default

  def perform(usr)
  	msg = "#{usr.username} has joined the chat"
    ActionCable.server.broadcast "users", msg: msg
  end
end
