class UsersChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room#{params['room']}users"
  end
end