class BroadcastLoginJob < ApplicationJob
  queue_as :default

  def perform(user)
  	user.update(active: true)
    ActionCable.server.broadcast "users",
      userid: user.id,
      active: user.active,
      username: user.username
  end
end
