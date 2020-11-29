class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :chat_room, foreign_key: true
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
