class AddUserToChatroom < ActiveRecord::Migration[5.2]
  def change
  	add_reference :chatrooms, :user, index: true
  end
end
