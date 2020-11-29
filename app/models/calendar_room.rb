class CalendarRoom < ApplicationRecord
  belongs_to :user
  belongs_to :calendar

  with_options presence: true do
    validates :child_name
    validates :birth_date
    validates :sex,        numericality: { other_than: 1 }
    validates :blood_type, numericality: { other_than: 1 }
  end
end
