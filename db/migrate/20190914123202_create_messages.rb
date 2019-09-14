class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :msg
      t.references :user
      t.references :chatroom 

      t.timestamps
    end
  end
end
