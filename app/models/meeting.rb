class Meeting < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :date, :start_time, :duration_minutes, presence: true
  validates :duration_minutes, :numericality => { greater_than_or_equal_to: 15}
end
