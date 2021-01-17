class Meeting < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :date, :start_time, :duration_minutes, :title, presence: true
  validates :duration_minutes, :numericality => { greater_than_or_equal_to: 15}

  private

  def meeting_conflicts
  end

  def end_time
    end_time = self.start_time + duration_minutes
  end
end
