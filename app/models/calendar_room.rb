class CalendarRoom < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
  belongs_to_active_hash :blood_type

  belongs_to :user
  belongs_to :calendar

  with_options presence: true do
    validates :child_name
    validates :birth_date
    validates :sex_id,        numericality: { other_than: 1 }
    validates :blood_type_id, numericality: { other_than: 1 }
  end
end
