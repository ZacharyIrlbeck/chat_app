class MessagesController < ApplicationController
  def create
  	@message = Message.new permitted_params
  	@message.user = current_user
  	@message.save!
  end

  private

  def permitted_params
  	params.require(:message).permit(:msg, :chatroom_id)
  end
end
