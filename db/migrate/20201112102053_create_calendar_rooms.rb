class CreateCalendarRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_rooms do |t|
      t.string     :child_name,    null: false
      t.date       :birth_date,    null: false
      t.integer    :sex_id,        null: false
      t.integer    :blood_type_id, null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end

