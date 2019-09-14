class BroadcastLogoutJob < ApplicationJob
  queue_as :default

  def perform(usr)
  	msg = "#{usr.username} has left the chat"
    ActionCable.server.broadcast "users", msg: msg
  end
end
