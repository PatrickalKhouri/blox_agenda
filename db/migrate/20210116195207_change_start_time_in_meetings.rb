class ChangeStartTimeInMeetings < ActiveRecord::Migration[6.0]
  def change
    change_column :meetings, :start_time, "time USING CAST(NULLIF(start_time, '') AS time)"
    #change_column :meetings, :date, :date, 'date USING CAST(date AS date)'
  end
end
