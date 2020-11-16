class CreateCalendarRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_rooms do |t|
      t.string     :child_name, null: false
      t.date       :birth_date, null: false
      t.string     :sex,        null: false
      t.string     :blood_type, null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end

