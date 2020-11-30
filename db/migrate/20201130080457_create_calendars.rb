class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.text       :detail
      t.references :calendar_room, foreign_key: true
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
