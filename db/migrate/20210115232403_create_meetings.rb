class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :date
      t.string :start_time
      t.integer :duration_minutes

      t.timestamps
    end
  end
end
