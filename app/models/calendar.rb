class Calendar < ApplicationRecord
  belongs_to :calendar_room
  belongs_to :user
end
